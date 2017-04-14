class Loan < ApplicationRecord
      belongs_to :user

      has_many :payments, dependent: :destroy

      # monetize :requested_amount

      # validates :user_id, presence: true
      # validates :requested_amount, presence: true,
      #                   numericality: { less_than_or_equal_to: 15000, greater_than: 0}
      #  validates :when_declining_a_loan, on: :update
      #  validates :category, presence: true
      #  validates :purpose, presence: true
      #  validates :description, presence: true,
      #                   length: { minimum: 20,
      #                                   too_short: "You need to exceed %{count} characters in your description"}

      after_commit :update_status

      # def live?
      #       status == "Loan Oustanding"
      # end

      # def any_delay_payment?
      #       payments.any?{|payment| payment.delayed_payment?}
      # end

      # def any_missed_payment?
      #       payments.any?{|payment| payment.missed_payment}
      # end

      # #PAYMENT METHOD

      # #Retrieve the most recent payment which has passed it's due date
      # def most_recent_payment
      #       payments.where("due_date < ?", DateTime.now).last
      # end

      # def amount_owed
      #       amount = 0
      #       payments.each do |payment|
      #           amount += payment.amount_paid unless payment.paid
      #       end
      #       amount
      # end

      # def amount_overdue
      #       amount_overdue = 0
      #       payments.each do |payment|
      #           if payment.due_date < DateTime.now && payment.paid
      #               amount_overdue += payment.amount
      #           end
      #       end
      #       amount_overdue
      # end

      # #Calculate the remaining capital on the loan
      # def remaining_capital

      #     payments_total = 0
      #     payments.each do |payment|
      #           payments_total +=payment.amount if payment.paid ==true
      #     end
      #     payments.to_a.reduce(0){|sum, payment| sum +=payment.amount} - payments_total
      # end

      # #Calculate the total repaid capital
      # def total_capital_repaid
      #   sum = Money.new(0)
      #   payments.each do |payment|
      #       sum += payment.amount if payment.paid == true
      #   end
      #   sum
      # end

      # def total_capital
      #   payments.reduce(0){|sum, p| sum +=payment.amount}
      # end

      # #LOAN FILTERS
      # #Finds loans which have no missed/delayed payments
      # def self.good_loans
      #   result = order(start_date: :desc).where(status: "Loan Outstanding").reject{|loan| Loan.missed_payment_loans.include?(loan)}
      #   result.reject {|loan| Loan.delayed_payment_loans.include?(loan)}
      # end

      # ##TODO: Make the method modula so that User can choose the allowed day of default
      # #Finds loans which have missed payment (due_date + 7 days)

      # def self.missed_payment_loans
      #       order(start_date: :desc).where(status: "Loan Oustanding").joins(:payments).where('payments.due_date <?', (DateTime.now.end_of_day - 7.day)).where(payments: {paid: false})
      # end

      # #Finds loans which have delayed payments (less than 7 days since due date)
      # def self.delayed_payment_loans
      #       result = order(start_date: :desc).where(status: "Loan Oustanding").joins(:payments).where(payments: {due_date: DateTime.now.end_of_day - 7.day ..DateTime.now.end_of_day}).where(payments: {paid: false})
      #       result.select {|loan| loan unless missed_payment_loans.include?(loan)}
      # end

      # #Find loan that payments which are shown to the user before confirming/accepting the loan
      # def create_payments_proposed
      #       payment_amount = ((proposed_amount.amount * (1 + interest_rate.fdiv(100)))/duration_months) *100

      #       counter = 1
      #       duration_months.times  do
      #           payment = payments.build(amount)
      #       end

      # end

      def self.update_status
            if self.loan_amount == self.total_loanpaided
                self.Loan.status("Loan Repaid")

            else
                self.Loan.status("Loan Outstanding")
           end
      end

      private
      #Takes a argument that defines if monthly, yearly or daily and return the loan amount to be paid
        def self.loaned_amount_to_be_pay(monthly = "monthly")
                 if monthly == "yearly"
                    (Loan.agreed_amount * (1+Loan.interest_rate)).round(2)
                 elsif monthly == "daily"
                    (Loan.agreed_amount * (1+Loan.interest_rate/(12*30))).round(2)
                 else
                    (Loan.agreed_amount * (1+Loan.interest_rate/12)).round(2)
                 end
        end

        #Take a loan and return the total amount paid on the loan
        def self.total_loanpaided
                totalpaided = 0
            Loan.payments.each do |payment|
                    totalpaided += payment.amount_paid
            end
            totalpaided.round(2)
        end

          def self.loan_amount
            #TODO:

                #If the total payment of the loan is eq to agreed_amount + interest
                #Make sure that on the view you would display
                #Loan amount (Loan.agreed_amount and Loan.interest_rate) and
                #Total amount that needs to be paid at the end of the LOAN
                loan_amount = loaned_amount_to_be_pay("dailly") * (Loan.start_date - Loan.final_date)
                loan_amount.round(2)
        end
end

