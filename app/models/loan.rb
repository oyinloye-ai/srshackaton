class Loan < ApplicationRecord
      belongs_to :user


      has_many :payments, dependent: :destroy


      monetize :requested_amount_cents

      validates :requested_amount, presence: true,
              numericality: { less_than_or_equal_to: 15000, greater_than: 0 }


      after_commit :create_payments_proposed, :on => [:create]

      def live?
        status == "Outstanding"
      end

      #Return true if one loan has missed payment
      def any_missed_payment?
        payments.any? {|payment| payment.missed_payment?}
      end

      #Return true if one any payment is delayed.
      def any_delayed_payment?
        payments.any? {|payment| payment.delayed_payment?}
      end


      #Returns true if any payment defaulted

      #PAYMENT METHODS
      def next_payment?
        payments.where('due_date > ?', DateTime.now).first
      end

      # Return the most recent paymentt which has passed it's due date
      def most_recent_due_payment
        payments.where('due_date < ?', DateTime.now).last
      end

      #Return amount owed on the loan
      def amount_owed
        amount = 0
        payments.each do |payment|
          amount += payment.amount_cents unless payment.paid
        end
        amount
      end

      #Return the amount that is overdue for payment
      def amount_overdue
        amount_overdue = 0
        payments.each do |payment|
            if payment.due_date < DateTime.now && payment.paid == false
              amount_overdue += payment.amount_cents
            end
        amount_overdue
        end
      end

      #Return the remaining capital on the loan
      def remaining_capital
        total_unpaid = 0
        payments.each do |payment|
          total_unpaid += payment.amount_cents if payment.paid == false
        end
      end


      def total_amount_repaid
        sum = Money.new(0)
        payments.each do |payment|
          sum += payment.amount_cents unless payment.paid == false
        end
        sum
      end

      ##LOAN FILTERS
      #Return loans which has no missed/delayed payments
      def self.good_loans
        result = order(start_date: :desc).where(status: "Loan Outstanding").reject {|loan| Loan.missed_payment_loans.include?(loan)}
      end


      #Return loans which has missed payment (due_date + 7 days)
      def self.missed_payment_loans
        order(start_date: :desc).where(status: "Loan Outstanding").joins(:payments).where('payments.due_date < ?', (DateTime.now.end_of_day + 7.day)).where(payments: {paid: false})
      end

      #Return loans which have delayed payments (less than 7 days since due date)
      def self.delayed_payment_loans
        order(start_date: :desc).where(status: "Loan Outstanding").joins(:payments).where(payments: {due_date: (DateTime.now.end_of_day - 7.day..DateTime.now.end_of_day)}).where(payments: {paid: false})
        result.select{|loan| loan unless missed_payment_loans.include?(loan)}
      end

      #TODO:
                    #When a user decide to change the frequency of payment of a loan
                    #Then this loan needs to be closed and a new one need to open

      #This method is used to create the payments which are shown in the user before confirming/accepting the loan
      ##NOTE: Interest_rate is yearly and in percentage
      def create_payments_proposed
              #Calculate the payment amount in a month
              # it multiplied by 100 to convert it to cent
              payment_amount = ((proposed_amount_cents * (1+interest_rate.fdiv(100)/12))/payment_frequency)*100

              counter = 1
              payment_frequency.times do
              payment = payments.build(
                                                                amount_cents: payment_amount,
                                                                due_date:          (DateTime.now.end_of_day + counter.month)
                                                              )
              payment.save
              counter +=1
              end
      end

      # This method is used to create the final payments based on the agreed amount accepted by the user taking the loan
      # Old payment based on the proposed amount would be deleted
      # All values are stored in cents, integers
      def update_payments_to_agreed_amount
        payments.destroy_all

        payment_amount = ((agreed_amount_cents * (1+ interest_rate.fdiv(100)/12))/payment_frequency) * 100
        counter = 1
        payment_frequency.times do
          payment = payments.build(
                                                          due_date: (start_date.end_of_day + counter.month),
                                                          amount_cents: payment_amount
                                                        )
          payment.save
          counter +=1
        end
      end

      #OUTSTANDING LOAN CLASSIFICATION
      def loan_classification
              if status == "Loan Outstanding" && most_recent_due_payment.present?
                    if any_missed_payemnt?
                      "Missed Paymend"
                    elsif any_delayed_payment?
                      "Delayed Payment"
                    else
                      "Good Book"
                    end
              elsif status == "Loan Outstanding"
                "Good Book"
              end
      end

      def accept(arguments)
        update(status: "Loan Outstanding")
        update(arguments)
      end

    def credit_score

      if most_recent_due_payment.present?
          payment = most_recent_due_payment
          due_date = payment.due_date

          if due_date.nil?
              if due_date > 24.day
                payment_credit_score = 55
              elsif due_date >11
                payment_credit_score =25
              elsif due_date > 5
                payment_credit_score = 15
              else
                payment_credit_score = 10
              end
          else
              payment_credit_score = 75
          end
      else
        payment_credit_score = 20
      end
    #The payment credit is a score percentage of 30
    score = (payment_credit_score * 30/75) * 800/100

    end

end
