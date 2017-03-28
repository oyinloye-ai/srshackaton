Institution.destroy_all
Expenditure.destroy_all
Saving.destroy_all
Guarantor.destroy_all
Employment.destroy_all
User.destroy_all


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