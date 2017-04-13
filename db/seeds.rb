Dailup.destroy_all
Message.destroy_all
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
          image: "https://www.google.com.gh/search?q=profile+picture&client=ubuntu&hs=NTb&channel=fs&tbm=isch&imgil=MRkhaaXe7sJabM%253A%253BhMTSPJTK0ewS3M%253Bhttp%25253A%25252F%25252Fstackoverflow.com%25252Fquestions%25252F32116103%25252Fhow-to-cache-profile-picture-with-picasso-in-materialdrawer-library&source=iu&pf=m&fir=MRkhaaXe7sJabM%253A%252ChMTSPJTK0ewS3M%252C_&usg=__QHPBYHZTQ7vfLq9dHrKk_jip1jw%3D&biw=1295&bih=608&ved=0ahUKEwic7IXU4uTSAhUCUhQKHRBfAyQQyjcIJw&ei=AaHPWNznH4KkUZC-jaAC"
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
            content: "Some gibberish message",
            amount: 50
            )

ayo.messages.create(
            sent_at: DateTime.now - 20.days,
            content: "Some gibberish message",
            amount: 600
            )

ayo.messages.create(
            sent_at: DateTime.now - 20.days,
            content: "Some gibberish message",
            amount: 100
            )

ayo.messages.create(
            sent_at: DateTime.now - 20.days,
            content: "Some gibberish message",
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
          image: "https://www.google.com.gh/search?q=profile+picture&client=ubuntu&hs=NTb&channel=fs&tbm=isch&imgil=MRkhaaXe7sJabM%253A%253BhMTSPJTK0ewS3M%253Bhttp%25253A%25252F%25252Fstackoverflow.com%25252Fquestions%25252F32116103%25252Fhow-to-cache-profile-picture-with-picasso-in-materialdrawer-library&source=iu&pf=m&fir=MRkhaaXe7sJabM%253A%252ChMTSPJTK0ewS3M%252C_&usg=__QHPBYHZTQ7vfLq9dHrKk_jip1jw%3D&biw=1295&bih=608&ved=0ahUKEwic7IXU4uTSAhUCUhQKHRBfAyQQyjcIJw&ei=AaHPWNznH4KkUZC-jaAC#imgrc=RX37p4Yvc1BKpM:"
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
          image: "https://www.google.com.gh/search?q=profile+picture&client=ubuntu&hs=NTb&channel=fs&tbm=isch&imgil=MRkhaaXe7sJabM%253A%253BhMTSPJTK0ewS3M%253Bhttp%25253A%25252F%25252Fstackoverflow.com%25252Fquestions%25252F32116103%25252Fhow-to-cache-profile-picture-with-picasso-in-materialdrawer-library&source=iu&pf=m&fir=MRkhaaXe7sJabM%253A%252ChMTSPJTK0ewS3M%252C_&usg=__QHPBYHZTQ7vfLq9dHrKk_jip1jw%3D&biw=1295&bih=608&ved=0ahUKEwic7IXU4uTSAhUCUhQKHRBfAyQQyjcIJw&ei=AaHPWNznH4KkUZC-jaAC#imgrc=Pz4gzkRXu8rhbM:"
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