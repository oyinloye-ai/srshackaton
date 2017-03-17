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
              )
ayo.savings.create(
            account_number: "1234567890",
            amount: 400.0,
              )

ayo.savings.create(
            account_number: "1234567890",
            amount: 1000.0,
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
              )
john.savings.create(
            account_number: "1234567890",
            amount: 400.0,
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