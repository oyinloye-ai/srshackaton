Saving.destroy_all
Guarantor.destroy_all
Employment.destroy_all
User.destroy_all


ayo = User.create!(
          firstname: "Ayo",
          lastname: "Deji",
          email: "ayo@gmail.com",
          password: "ayo@gmail.com"
            )

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

john = User.create!(
          firstname: "John",
          lastname: "Doe",
          email: "john@gmail.com",
          password: "john@gmail.com"
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



mary = User.create!(
          firstname: "Mary",
          lastname: "Barke",
          email: "mary@gmail.com",
          password: "mary@gmail.com"
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
