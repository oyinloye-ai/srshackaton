require "json"
##TODO:
      #Create a gem that allow the creation of dummy data for specific projects


Dailup.destroy_all
Message.destroy_all
Institution.destroy_all
Expenditure.destroy_all
Saving.destroy_all
Guarantor.destroy_all
Employment.destroy_all
Payment.destroy_all
Loan.destroy_all
MobileData.destroy_all
User.destroy_all

@country_ary  = ["Ghana", "Nigeria", "Togo", "Benin", "Cote-D\'Ivroire", "Kenya", "South-Africa"]

@filename ="#{Rails.root}/test/dummy.json"

def read_file(filename)
        data_hash= {}
        file = File.read(filename)
        data_hash = JSON.parse(file)

end

@image_ary = ["https://d3iw72m71ie81c.cloudfront.net/female-94.jpg","https://d3iw72m71ie81c.cloudfront.net/female-8.jpg","https://d3iw72m71ie81c.cloudfront.net/female-98.jpg","https://d3iw72m71ie81c.cloudfront.net/female-61.jpg","https://d3iw72m71ie81c.cloudfront.net/female-52.jpg","https://d3iw72m71ie81c.cloudfront.net/female-3.jpg","https://d3iw72m71ie81c.cloudfront.net/female-70.jpg","https://d3iw72m71ie81c.cloudfront.net/female-53.jpg","https://d3iw72m71ie81c.cloudfront.net/female-44.jpg","https://d3iw72m71ie81c.cloudfront.net/female-58.jpg","https://d3iw72m71ie81c.cloudfront.net/female-102.jpg","https://d3iw72m71ie81c.cloudfront.net/female-96.jpg","https://d3iw72m71ie81c.cloudfront.net/female-34.jpg","https://d3iw72m71ie81c.cloudfront.net/jeselle.jpg","https://d3iw72m71ie81c.cloudfront.net/female-25.JPG","https://d3iw72m71ie81c.cloudfront.net/female-17.jpg","https://d3iw72m71ie81c.cloudfront.net/female-7.jpg","https://d3iw72m71ie81c.cloudfront.net/female-37.jpg","https://d3iw72m71ie81c.cloudfront.net/female-41.jpg","https://d3iw72m71ie81c.cloudfront.net/female-59.jpg","https://d3iw72m71ie81c.cloudfront.net/female-85.jpg","https://d3iw72m71ie81c.cloudfront.net/female-30.jpg","https://d3iw72m71ie81c.cloudfront.net/female-47.jpg","https://d3iw72m71ie81c.cloudfront.net/180ef954-bbe4-4bef-bb2d-b23142433915-avatar.jpeg","https://d3iw72m71ie81c.cloudfront.net/female-40.jpg","https://d3iw72m71ie81c.cloudfront.net/female-68.jpg","https://d3iw72m71ie81c.cloudfront.net/female-51.jpg","https://d3iw72m71ie81c.cloudfront.net/female-65.jpg","https://d3iw72m71ie81c.cloudfront.net/female-93.jpg","https://d3iw72m71ie81c.cloudfront.net/female-99.jpg","https://d3iw72m71ie81c.cloudfront.net/female-42.jpg","https://d3iw72m71ie81c.cloudfront.net/female-20.jpeg","https://d3iw72m71ie81c.cloudfront.net/female-62.jpg","https://d3iw72m71ie81c.cloudfront.net/female-103.jpg","https://d3iw72m71ie81c.cloudfront.net/female-104.JPG","https://d3iw72m71ie81c.cloudfront.net/female-2.jpg","https://d3iw72m71ie81c.cloudfront.net/female-69.jpg","https://d3iw72m71ie81c.cloudfront.net/female-5.jpg","https://d3iw72m71ie81c.cloudfront.net/female-10.jpg","https://d3iw72m71ie81c.cloudfront.net/female-66.jpg","https://d3iw72m71ie81c.cloudfront.net/female-13.jpg","https://d3iw72m71ie81c.cloudfront.net/female-31.jpg","https://d3iw72m71ie81c.cloudfront.net/stephanie.jpg","https://d3iw72m71ie81c.cloudfront.net/female-84.jpg","https://d3iw72m71ie81c.cloudfront.net/female-16.jpeg","https://d3iw72m71ie81c.cloudfront.net/israel.jpeg","https://d3iw72m71ie81c.cloudfront.net/female-1.jpg","https://d3iw72m71ie81c.cloudfront.net/female-14.jpeg","https://d3iw72m71ie81c.cloudfront.net/male-33.jpg","https://d3iw72m71ie81c.cloudfront.net/male-61.jpg","https://d3iw72m71ie81c.cloudfront.net/3fa3b0c2-df93-4962-a3d9-7cad201135b3-jpg","https://d3iw72m71ie81c.cloudfront.net/male-51.jpg","https://d3iw72m71ie81c.cloudfront.net/male-83.jpg","https://d3iw72m71ie81c.cloudfront.net/male-93.jpg","https://d3iw72m71ie81c.cloudfront.net/marvell.png","https://d3iw72m71ie81c.cloudfront.net/male-63.jpg","https://d3iw72m71ie81c.cloudfront.net/male-101.jpg","https://d3iw72m71ie81c.cloudfront.net/male-42.jpg","https://d3iw72m71ie81c.cloudfront.net/male-6.jpg","https://d3iw72m71ie81c.cloudfront.net/male-15.jpg","https://d3iw72m71ie81c.cloudfront.net/male-16.jpg","https://d3iw72m71ie81c.cloudfront.net/male-38.jpg","https://d3iw72m71ie81c.cloudfront.net/88b95197-fd1e-4e11-8793-2903a5cfd06e-10584053_10153749310922416_3125632463004974493_n.jpg","https://d3iw72m71ie81c.cloudfront.net/male-82.jpg","https://d3iw72m71ie81c.cloudfront.net/male-60.jpg","https://d3iw72m71ie81c.cloudfront.net/male-25.jpg","https://d3iw72m71ie81c.cloudfront.net/male-66.jpg","https://d3iw72m71ie81c.cloudfront.net/male-17.jpg","https://d3iw72m71ie81c.cloudfront.net/male-79.jpg","https://d3iw72m71ie81c.cloudfront.net/male-18.jpg","https://d3iw72m71ie81c.cloudfront.net/male-11.jpg","https://d3iw72m71ie81c.cloudfront.net/male-58.jpg","https://d3iw72m71ie81c.cloudfront.net/male-23.jpg","https://d3iw72m71ie81c.cloudfront.net/male-55.jpg","https://d3iw72m71ie81c.cloudfront.net/male-102.jpg","https://d3iw72m71ie81c.cloudfront.net/7b96a496-e490-4765-93aa-4a93ab9e1742-AkEsx79M.jpeg","https://d3iw72m71ie81c.cloudfront.net/male-86.jpg","https://d3iw72m71ie81c.cloudfront.net/male-21.jpg","https://d3iw72m71ie81c.cloudfront.net/male-77.jpg","https://d3iw72m71ie81c.cloudfront.net/caesar.jpg","https://d3iw72m71ie81c.cloudfront.net/male-78.jpg","https://d3iw72m71ie81c.cloudfront.net/gaurav.JPG","https://d3iw72m71ie81c.cloudfront.net/male-67.jpg","https://d3iw72m71ie81c.cloudfront.net/male-92.jpg","https://d3iw72m71ie81c.cloudfront.net/male-68.jpg","https://d3iw72m71ie81c.cloudfront.net/male-8.jpg","https://d3iw72m71ie81c.cloudfront.net/male-65.jpg","https://d3iw72m71ie81c.cloudfront.net/male-96.jpg","https://d3iw72m71ie81c.cloudfront.net/male-53.jpg","https://d3iw72m71ie81c.cloudfront.net/male-70.JPG","https://d3iw72m71ie81c.cloudfront.net/male-1.jpg","https://d3iw72m71ie81c.cloudfront.net/male-89.jpg","https://d3iw72m71ie81c.cloudfront.net/male-74.jpg","https://d3iw72m71ie81c.cloudfront.net/male-75.jpg","https://d3iw72m71ie81c.cloudfront.net/male-22.jpg","https://d3iw72m71ie81c.cloudfront.net/male-19.jpg","https://d3iw72m71ie81c.cloudfront.net/male-13.jpg","https://d3iw72m71ie81c.cloudfront.net/male-85.jpg"]

@status_ary = ["Application Pending", "Loan Outstanding", "Application Declined", "Loan Repaid"]
# A loan that is accepted is either Loan outstanding or loan Repaid
@category_ary = ["Personal", "Business"]
@purpose_perso_ary = ["Medical Expenses", "School Fees", "Transportation Expenses", "Other"]
@purpose_business_ary = ["New Equipment", "Inventory Purposes", "Refurbishment Work", "Liability Management", "Other"]
@description_ary = ["I need to pay for an important surgery",
  "I want to buy a large amount of cooking utensils for my kitchen as the restaurant is expanding",
  "I would like to open a clothes shop as there are none in this area",
  "I want to start my own tech business and I need the money to launch my product",
  "I want to learn how to code Ruby on Rails applications at Le Wagon"]
@decline_reason_ary = ["Credit score too low",
  "Insufficient mobile data", "Applicant has a criminal record"]
@start_date_outstanding_ary = [(DateTime.now - 3.day), (DateTime.now - 1.month),
  (DateTime.now - 2.month), (DateTime.now - 15.day),
  (DateTime.now - 8.day - 1.month)]
@start_date_repaid_ary = [(DateTime.now - 1.month), (DateTime.now - 2.month),
  (DateTime.now - 3.month), (DateTime.now - 20.day),
  (DateTime.now -3.day)]

@dummy = read_file(@filename)


# def create_user(n, model_name, *args)

# end
# ayo = User.create!(
#           firstname: "Ayo",
#           lastname: "Deji",
#           email: "ayo@gmail.com",
#           password: "ayo@gmail.com",
#           remote_image_url: "https://d3iw72m71ie81c.cloudfront.net/female-4.jpg"
#             )
# ##***********************************************
# ayo.savings.create(
#             account_number: "1234567890",
#             amount: 179.0,
#             date: DateTime.now - 5.days
#               )
# ayo.savings.create(
#             account_number: "1234567890",
#             amount: 400.0,
#             date: DateTime.now - 30.days
#               )

# ayo.savings.create(
#             account_number: "1234567890",
#             amount: 1000.0,
#             date: DateTime.now - 20.days
#               )


# ayo.guarantors.create(
#             fullname: "John Bull",
#             business: "Forex Entertainments",
#             annual_income: 1300983.89
#               )

# ayo.employments.create(
#             status: "Self-Employed",
#             start: DateTime.now - 10.years,
#             average_income: 60000
#               )


# ayo.expenditures.create(
#             expense_type: "Rent",
#             amount: 267.88,
#             period: 23
#               )

# ayo.expenditures.create(
#             expense_type: "Transportation",
#             amount: 3000.45,
#             period: 23
#               )

# ayo.expenditures.create(
#             expense_type: "Utility Bill",
#             amount: 267.88,
#             period: 23
#               )

# ayo.institutions.create(
#             name: "University of Ghana",
#             start: DateTime.now - 10.years,
#             end: DateTime.now - 5.years,
#             loan: "No",
#             degree:"BSc"
#               )

# ##***********************************************##
# ##***********************************************##
# john = User.create!(
#           firstname: "John",
#           lastname: "Doe",
#           email: "john@gmail.com",
#           password: "john@gmail.com",
#           remote_image_url: "https://d3iw72m71ie81c.cloudfront.net/female-7.jpg"
#             )

# john.savings.create(
#             account_number: "1234567890",
#             amount: 179.0,
#             date: DateTime.now - 5.days
#               )
# john.savings.create(
#             account_number: "1234567890",
#             amount: 400.0,
#             date: DateTime.now - 10.days
#               )

# john.employments.create(
#             status: "Unemployed",
#               )


# john.guarantors.create(
#             fullname: "Mike Adenuga",
#             business: "Galaxy TV",
#             annual_income: 130098388.89
#               )

# john.expenditures.create(
#             expense_type: "Rent",
#             amount: 900.88,
#             period: 23
#               )

# john.expenditures.create(
#             expense_type: "Transportation",
#             amount: 300.45,
#             period: 23
#               )

# john.expenditures.create(
#             expense_type: "Utility Bill",
#             amount: 567.88,
#             period: 23
#               )

# john.institutions.create(
#             name: "University of Ghana",
#             start: DateTime.now - 20.years,
#             end: DateTime.now - 15.years,
#             loan: "No",
#             degree:"BSc"
#               )


# ##***********************************************##
# ##***********************************************##
# mary = User.create!(
#           firstname: "Mary",
#           lastname: "Barke",
#           email: "mary@gmail.com",
#           password: "mary@gmail.com",
#           remote_image_url: "https://d3iw72m71ie81c.cloudfront.net/female-7.jpg"
#             )

# mary.savings.create(
#             account_number: "1234567890",
#             amount: 1000.0,
#               )

# mary.employments.create(
#             status: "Employed",
#             start: DateTime.now - 5.years,
#             average_income: 60000
#               )

# mary.guarantors.create(
#             fullname: "Misty Gerald",
#             business: "Mist designs",
#             annual_income: 19300000.89
#               )

# mary.expenditures.create(
#             expense_type: "Rent",
#             amount: 19000.88,
#             period: 23
#               )

# mary.expenditures.create(
#             expense_type: "Transportation",
#             amount: 6500.45,
#             period: 23
#               )

# mary.expenditures.create(
#             expense_type: "Utility Bill",
#             amount: 1567.88,
#             period: 23
#               )

# mary.institutions.create(
#             name: "University of Ghana",
#             start: DateTime.now - 5.years,
#             end: DateTime.now,
#             loan: "No",
#             degree:"BSc"
#               )

##TODO: Payment function
#Take loan model that has a load_repaid or loan_oustanding status and return payment model
def payment_dummy(loan_model, outstanding= true)
            freq = loan_model.payment_frequency

end

#Pending Applications
5.times  do
        user = @dummy.sample
        #Not to have duplicate user
        @dummy.delete(user)
        user_pending = User.create!(
                    firstname: (user["firstname"]).to_s,
                    lastname: (user["lastname"]).to_s,
                    email: (user["email"]).to_s,
                    password: (user["password"]).to_s,
                    phonenumber: "+"+ (user["phonenumber"]).to_s,
                    country: @country_ary.sample,
                    image:(@image_ary.sample).to_s
             )


        #Adding loan data of the User
        category = @category_ary.sample
        category == "Personal" ? purpose = @purpose_perso_ary.sample : purpose = @purpose_business_ary.sample
        loan = user_pending.loans.build(
                    category: category,
                    status:"Application Pending",
                    requested_amount_cents: rand(100...15000).round(-2)
                    )
        loan.update!(proposed_amount_cents: loan.requested_amount_cents, updated_at: DateTime.now - rand(0..21).day)
        loan.category == "Personal" ? loan.update!(purpose: @purpose_perso_ary.sample) : loan.update!(purpose: @purpose_business_ary.sample)
        loan.save
end



ayo = User.create!(
          firstname: "Ayo",
          lastname: "Deji",
          email: "ayo@gmail.com",
          password: "ayo@gmail.com",
          remote_image_url: "https://d3iw72m71ie81c.cloudfront.net/female-4.jpg"
            )
##***********************************************
ayo.savings.create(
            account_number: "1234567890",
            amount: 179.0,
            date: DateTime.now - 5.days
              )
ayo.savings.create(
            account_number: "1234567890",
            amount: 400.0,
            date: DateTime.now - 30.days
              )

ayo.savings.create(
            account_number: "1234567890",
            amount: 1000.0,
            date: DateTime.now - 20.days
              )


ayo.guarantors.create(
            fullname: "John Bull",
            business: "Forex Entertainments",
            annual_income: 1300983.89
              )

ayo.employments.create(
            status: "Self-Employed",
            start: DateTime.now - 10.years,
            average_income: 60000
              )


ayo.expenditures.create(
            expense_type: "Rent",
            amount: 267.88,
            period: 23
              )

ayo.expenditures.create(
            expense_type: "Transportation",
            amount: 3000.45,
            period: 23
              )

ayo.expenditures.create(
            expense_type: "Utility Bill",
            amount: 267.88,
            period: 23
              )

ayo.institutions.create(
            name: "University of Ghana",
            start: DateTime.now - 10.years,
            end: DateTime.now - 5.years,
            loan: "No",
            degree:"BSc"
              )

ayo.messages.create(
            sent_at: DateTime.now - 20.days,
            content: "Cash In received for GHS 5.00 from DIVINE 
            KAFUI AKPALU TSC GR -. Current Balance GHS 50.00  
            Available Balance GHS 50.00. Cash in (Deposit) is a free 
            transaction on MTN Mobile Money. Please do not pay any fees for it. 
              Thank you for using MTN MobileMoney. Fee charged: GHS 0.",
            amount: 50
            )

ayo.messages.create(
            sent_at: DateTime.now - 10.days,
            content: "Money Transfer Deposit received for GHS 75.00 
            from SANTOSH NAIR Token: 397121244007 Transaction ID: 1344240865. 
            TRANSACTION FEE IS 0",
            amount: 75
            )

ayo.messages.create(
            sent_at: DateTime.now - 20.days,
            content: "Money Transfer Deposit received for GHS 100.00 
            from SANTOSH NAIR Token: 397121244007 Transaction ID: 1344870890. 
            TRANSACTION FEE IS 0",
            amount: 100
            )

ayo.messages.create(
            sent_at: DateTime.now - 15.days,
            content: "Money Transfer Deposit received for GHS 300.00 
            from SANTOSH NAIR Token: 397121244007 Transaction ID: 2344240865. 
            TRANSACTION FEE IS 0",
            amount: 300
            )

ayo.dailups.create(
            called_at: DateTime.now - 3.days,
            number_called: "0803-802-2345",
            duration: 34
            )

ayo.dailups.create(
            called_at: DateTime.now - 10.days,
            number_called: "0803-802-2345",
            duration: 90
            )

ayo.dailups.create(
            called_at: DateTime.now - 15.days,
            number_called: "0803-802-2345",
            duration: 150
            )

##***********************************************##
##***********************************************##
john = User.create!(
          firstname: "John",
          lastname: "Doe",
          email: "john@gmail.com",
          password: "john@gmail.com",
          remote_image_url: "https://d3iw72m71ie81c.cloudfront.net/female-7.jpg"
            )

john.savings.create(
            account_number: "1234567890",
            amount: 179.0,
            date: DateTime.now - 5.days
              )
john.savings.create(
            account_number: "1234567890",
            amount: 400.0,
            date: DateTime.now - 10.days
              )

john.employments.create(
            status: "Unemployed",
              )


john.guarantors.create(
            fullname: "Mike Adenuga",
            business: "Galaxy TV",
            annual_income: 130098388.89
              )

john.expenditures.create(
            expense_type: "Rent",
            amount: 900.88,
            period: 23
              )

john.expenditures.create(
            expense_type: "Transportation",
            amount: 300.45,
            period: 23
              )

john.expenditures.create(
            expense_type: "Utility Bill",
            amount: 567.88,
            period: 23
              )

john.institutions.create(
            name: "University of Ghana",
            start: DateTime.now - 20.years,
            end: DateTime.now - 15.years,
            loan: "No",
            degree:"BSc"
              )

john.messages.create(
            sent_at: DateTime.now - 28.days,
            content: "Some gibberish message",
            amount: 90
            )

john.messages.create(
            sent_at: DateTime.now - 24.days,
            content: "Some gibberish message",
            amount: 500
            )

john.messages.create(
            sent_at: DateTime.now - 20.days,
            content: "Some gibberish message",
            amount: 200
            )

john.messages.create(
            sent_at: DateTime.now - 10.days,
            content: "Some gibberish message",
            amount: 30
            )

john.dailups.create(
            called_at: DateTime.now - 1.days,
            number_called: "0803-802-2345",
            duration: 34
            )

john.dailups.create(
            called_at: DateTime.now - 10.days,
            number_called: "0803-802-2345",
            duration: 90
            )

john.dailups.create(
            called_at: DateTime.now - 15.days,
            number_called: "0803-802-2345",
            duration: 150
            )


##***********************************************##
##***********************************************##
mary = User.create!(
          firstname: "Mary",
          lastname: "Barke",
          email: "mary@gmail.com",
          password: "mary@gmail.com",
          remote_image_url: "https://d3iw72m71ie81c.cloudfront.net/female-7.jpg"
            )

mary.savings.create(
            account_number: "1234567890",
            amount: 1000.0,
              )

mary.employments.create(
            status: "Employed",
            start: DateTime.now - 5.years,
            average_income: 60000
              )

mary.guarantors.create(
            fullname: "Misty Gerald",
            business: "Mist designs",
            annual_income: 19300000.89
              )

mary.expenditures.create(
            expense_type: "Rent",
            amount: 19000.88,
            period: 23
              )

mary.expenditures.create(
            expense_type: "Transportation",
            amount: 6500.45,
            period: 23
              )

mary.expenditures.create(
            expense_type: "Utility Bill",
            amount: 1567.88,
            period: 23
              )

mary.institutions.create(
            name: "University of Ghana",
            start: DateTime.now - 5.years,
            end: DateTime.now,
            loan: "No",
            degree:"BSc"
              )
