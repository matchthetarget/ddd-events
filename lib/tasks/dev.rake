namespace :dev do
  desc "Pre-populate database with dummy data"
  task prime: :environment do

    User.destroy_all
    users = [
      {id: 81, first_name: "Galen", last_name: Faker::Name.last_name, email: "galen@example.com", created_at: "2015-01-19 09:24:34", updated_at: "2019-10-08 10:25:00"},
      {id: 82, first_name: "Trina", last_name: Faker::Name.last_name, email: "trina@example.com", created_at: "2014-09-02 06:05:56", updated_at: "2019-10-08 10:25:00"},
      {id: 83, first_name: "Tyree", last_name: Faker::Name.last_name, email: "tyree@example.com", created_at: "2017-06-23 22:31:32", updated_at: "2019-10-08 10:25:00"},
      {id: 84, first_name: "Alice", last_name: Faker::Name.last_name, email: "alice@example.com", created_at: "2014-09-23 01:03:23", updated_at: "2019-10-08 10:25:00"},
      {id: 85, first_name: "Judith", last_name: Faker::Name.last_name, email: "judith@example.com", created_at: "2014-08-02 12:55:21", updated_at: "2019-10-08 10:25:00"},
      {id: 86, first_name: "Bob", last_name: Faker::Name.last_name, email: "bob@example.com", created_at: "2018-03-05 07:37:08", updated_at: "2019-10-08 10:25:00"},
      {id: 87, first_name: "Carol", last_name: Faker::Name.last_name, email: "carol@example.com", created_at: "2015-05-29 04:13:06", updated_at: "2019-10-08 10:25:00"},
      {id: 88, first_name: "Vanetta", last_name: Faker::Name.last_name, email: "vanetta@example.com", created_at: "2017-11-07 09:36:41", updated_at: "2019-10-08 10:25:00"},
      {id: 89, first_name: "Jackie", last_name: Faker::Name.last_name, email: "jackie@example.com", created_at: "2016-10-28 00:47:57", updated_at: "2019-10-08 10:25:00"},
      {id: 90, first_name: "Lucius", last_name: Faker::Name.last_name, email: "lucius@example.com", created_at: "2014-06-15 07:42:16", updated_at: "2019-10-08 10:25:00"},
      {id: 91, first_name: "Phylicia", last_name: Faker::Name.last_name, email: "phylicia@example.com", created_at: "2016-11-11 04:22:51", updated_at: "2019-10-08 10:25:00"},
      {id: 92, first_name: "Trey", last_name: Faker::Name.last_name, email: "trey@example.com", created_at: "2015-03-19 22:51:10", updated_at: "2019-10-08 10:25:00"},
      {id: 93, first_name: "Wilford", last_name: Faker::Name.last_name, email: "wilford@example.com", created_at: "2018-07-03 04:50:16", updated_at: "2019-10-08 10:25:00"},
      {id: 94, first_name: "Tristan", last_name: Faker::Name.last_name, email: "tristan@example.com", created_at: "2016-04-11 04:31:49", updated_at: "2019-10-08 10:25:00"},
      {id: 95, first_name: "Leilani", last_name: Faker::Name.last_name, email: "leilani@example.com", created_at: "2016-07-07 15:54:04", updated_at: "2019-10-08 10:25:00"},
      {id: 96, first_name: "Jolie", last_name: Faker::Name.last_name, email: "jolie@example.com", created_at: "2018-12-19 04:59:05", updated_at: "2019-10-08 10:25:00"},
      {id: 97, first_name: "Roselee", last_name: Faker::Name.last_name, email: "roselee@example.com", created_at: "2018-09-23 23:09:31", updated_at: "2019-10-08 10:25:00"},
      {id: 98, first_name: "Catherina", last_name: Faker::Name.last_name, email: "catherina@example.com", created_at: "2019-01-10 14:30:55", updated_at: "2019-10-08 10:25:00"},
      {id: 99, first_name: "Jackson", last_name: Faker::Name.last_name, email: "jackson@example.com", created_at: "2018-08-18 12:42:06", updated_at: "2019-10-08 10:25:00"},
      {id: 100, first_name: "Bratty", last_name: Faker::Name.last_name, email: "bratty@example.com", created_at: "2018-05-05 13:27:22", updated_at: "2019-10-08 10:25:00"},
      {id: 101, first_name: "Catty", last_name: Faker::Name.last_name, email: "catty@example.com", created_at: "2015-03-06 21:22:35", updated_at: "2019-10-08 10:25:00"},
      {id: 102, first_name: "Austin", last_name: Faker::Name.last_name, email: "austin@example.com", created_at: "2014-07-27 22:35:21", updated_at: "2019-10-08 10:25:00"},
      {id: 103, first_name: "Lea", last_name: Faker::Name.last_name, email: "lea@example.com", created_at: "2016-01-27 07:56:16", updated_at: "2019-10-08 10:25:00"},
      {id: 104, first_name: "Ester", last_name: Faker::Name.last_name, email: "ester@example.com", created_at: "2016-09-23 04:05:25", updated_at: "2019-10-08 10:25:00"},
      {id: 105, first_name: "Robin", last_name: Faker::Name.last_name, email: "robin@example.com", created_at: "2017-02-27 23:11:30", updated_at: "2019-10-08 10:25:00"},
      {id: 106, first_name: "Debbi", last_name: Faker::Name.last_name, email: "debbi@example.com", created_at: "2017-01-08 22:09:33", updated_at: "2019-10-08 10:25:00"},
      {id: 107, first_name: "Rosaria", last_name: Faker::Name.last_name, email: "rosaria@example.com", created_at: "2016-01-20 03:28:52", updated_at: "2019-10-08 10:25:00"},
      {id: 108, first_name: "Maida", last_name: Faker::Name.last_name, email: "maida@example.com", created_at: "2018-12-30 20:20:47", updated_at: "2019-10-08 10:25:00"},
      {id: 109, first_name: "Augustine", last_name: Faker::Name.last_name, email: "augustine@example.com", created_at: "2015-12-21 09:36:27", updated_at: "2019-10-08 10:25:00"},
      {id: 110, first_name: "Desmond", last_name: Faker::Name.last_name, email: "desmond@example.com", created_at: "2014-10-16 06:47:43", updated_at: "2019-10-08 10:25:00"},
      {id: 111, first_name: "Diego", last_name: Faker::Name.last_name, email: "diego@example.com", created_at: "2016-03-10 19:09:29", updated_at: "2019-10-08 10:25:00"},
      {id: 112, first_name: "Cristina", last_name: Faker::Name.last_name, email: "cristina@example.com", created_at: "2016-02-16 02:31:11", updated_at: "2019-10-08 10:25:00"},
      {id: 113, first_name: "Osvaldo", last_name: Faker::Name.last_name, email: "osvaldo@example.com", created_at: "2016-06-17 12:20:22", updated_at: "2019-10-08 10:25:00"},
      {id: 114, first_name: "Chi", last_name: Faker::Name.last_name, email: "chi@example.com", created_at: "2014-06-25 05:21:58", updated_at: "2019-10-08 10:25:00"},
      {id: 115, first_name: "Johnie", last_name: Faker::Name.last_name, email: "johnie@example.com", created_at: "2014-11-30 09:49:10", updated_at: "2019-10-08 10:25:00"},
      {id: 116, first_name: "Dominique", last_name: Faker::Name.last_name, email: "dominique@example.com", created_at: "2019-02-06 09:54:37", updated_at: "2019-10-08 10:25:00"},
      {id: 117, first_name: "Anisa", last_name: Faker::Name.last_name, email: "anisa@example.com", created_at: "2019-03-05 12:06:26", updated_at: "2019-10-08 10:25:00"},
      {id: 118, first_name: "Isidro", last_name: Faker::Name.last_name, email: "isidro@example.com", created_at: "2017-09-20 21:46:36", updated_at: "2019-10-08 10:25:00"},
      {id: 119, first_name: "Nakita", last_name: Faker::Name.last_name, email: "nakita@example.com", created_at: "2017-06-02 16:55:13", updated_at: "2019-10-08 10:25:00"},
      {id: 120, first_name: "Elmer", last_name: Faker::Name.last_name, email: "elmer@example.com", created_at: "2017-11-24 23:32:54", updated_at: "2019-10-08 10:25:00"}
    ]
    User.insert_all!(users)

    if User.method_defined?(:password) || User.has_attribute?(:password_digest)
      User.find_each do |user|
        user.password = "password"
        user.save
      end
    end

    events = [
      { id: 10, name: "Rooftop Dia De Los Muertos Party", address: "Joy District", starts_at: "11-01-2021 07:00 PM CDT", ends_at: "02-11-2021 02:00 AM CDT" },
      { id: 11, name: "Lightscape At Chicago Botanic Garden", address: "Chicago Botanic Garden", starts_at: "11-12-2021 05:30 PM CDT", ends_at: "11-12-2021 09:00 PM CDT" },
      { id: 12, name: "The Wood Brothers", address: "The Riviera Theatre", starts_at: "06-11-2021 08:00 PM CDT", ends_at: "07-11-2021 00:00 AM CDT" },
      { id: 13, name: "Frida Festival", address: "Dvorak Park", starts_at: "06-11-2021 11:00 AM CDT", ends_at: "06-11-2021 05:30 PM CDT" },
      { id: 14, name: "Friday Late Night Standup Comedy", address: "Laugh Factory", starts_at: "05-11-2021 11:00 PM CDT", ends_at: "06-11-2021 01:00 AM CDT" },
      { id: 15, name: "360 Sky Yoga", address: "360 Chicago", starts_at: "07-11-2021 09:00 AM CDT", ends_at: "07-11-2021 10:00 AM CDT" },
      { id: 16, name: "Cirque Alcatraz '21 Tour", address: "Gurnee Mills", starts_at: "04-11-2021 07:30 PM CDT", ends_at: "04-11-2021 09:30 PM CDT" },
      { id: 17, name: "C2E2 2021", address: "C2E2", starts_at: "10-12-2021 10:00 AM CST", ends_at: "12-12-2021 05:00 PM CST" },
      { id: 18, name: "Haru Nemuri", address: "Sleeping Village", starts_at: "02-11-2021 08:00 PM CDT", ends_at: "02-11-2021 11:30 PM CDT" },
      { id: 19, name: "Tree Lighting", address: "Gallagher Way Chicago", starts_at: "29-11-2021 06:00 PM CST", ends_at: "30-11-2021 00:00 AM CST" },
      { id: 20, name: "Decemberg: Winter in the Woods 2021", address: "Chicago, IL", starts_at: "11-12-2021 07:30 AM CST", ends_at: "12-12-2021 04:30 PM CST" },
      { id: 21, name: "Pouya at Park West", address: "Park West", starts_at: "19-11-2021 07:00 PM CST", ends_at: "19-11-2021 10:30 PM CST" },
      { id: 22, name: "Dog Admission Day", address: "The Morton Arboretum", starts_at: "07-11-2021 07:00 AM CST", ends_at: "07-11-2021 04:00 PM CST" },
      { id: 23, name: "lovelytheband", address: "House of Blues Chicago", starts_at: "23-11-2021 05:00 PM CST", ends_at: "23-11-2021 08:00 PM CST" },
      { id: 24, name: "Indoor Garage Sale", address: "Jean Shepherd Community Center", starts_at: "13-12-2021 10:00 AM CST", ends_at: "13-12-2021 03:00 PM CST" },
      { id: 25, name: "Open Jam", address: "Uptown Plainfield", starts_at: "10-01-2022 08:00 PM CST", ends_at: "11-01-2022 00:00 AM CST" },
      { id: 26, name: "Open Jam", address: "Uptown Plainfield", starts_at: "02-12-2021 08:00 PM CST", ends_at: "02-12-2021 00:00 AM CST" },
      { id: 27, name: "Bingo", address: "The Hideout", starts_at: "01-11-2021 06:30 PM CDT", ends_at: "01-11-2021 08:00 PM CDT" },
      { id: 28, name: "Bingo", address: "The Hideout", starts_at: "01-12-2021 06:30 PM CST", ends_at: "01-12-2021 08:00 PM CST" },
      { id: 29, name: "Highland Park Class of 2010 Eleven Year Reunion", address: "Rizzo's Bar & Inn", starts_at: "27-11-2021 08:00 PM CST", ends_at: "27-11-2021 11:00 PM CST" },
      { id: 30, name: "CHVRCHES with special guest Donna Missal", address: "Byline Bank Aragon Ballroom", starts_at: "19-12-2021 07:30 PM CST", ends_at: "19-12-2021 11:00 PM CST" },
    ]

    Event.insert_all!(events)
    Event.find_each do |event|
      event.update(details: Faker::ChuckNorris.fact)
    end

    
  end
end
