class Payment < ApplicationRecord
  belongs_to :loan

  validates :amount_cents, presence: true
  validates :due_date, presence:true


  def missed_payment?
        if(due_date < (DateTime.now.end_of_day - 7.day)) && paid == false
          true
        else
          false
        end
  end

  def delayed_payment?
    if  (due_date < DateTime.now.end_of_day ) && (due_date > DateTime.now.end_of_day - 7.days) && paid == false
      true
    else
      false
    end
  end

  def defaulted_payment?
    if (due_date < paid_date + 7) && paid == true
        true
    else
        false
    end


  end



  # extend ActiveModel::Callbacks

  #  define_model_callbacks :update, :created

   # def update (*args)

   #      run_callbacks(:update) do
   #           Payment.update(*args)
   #          defaulted
   #      end
   # end

  #  private

  # def defaulted
  #     if Payment.due_date < Payment.paid_date
  #       Payment.update(payment_defaulted: true)
  #     else
  #       Payment.update(payment_defaulted: false)
  #     end
  # end
end
