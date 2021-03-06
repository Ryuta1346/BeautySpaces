# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.create!(name:                  "霜降り明星　せいや",
             tel:                   "08000000000",
             email:                 "test_user1@example.com",
             password:              "foobar",
             password_confirmation: "foobar",
             birth_year:            "1994")

User.create!(name:                  "霜降り明星　粗品",
             tel:                   "02000000000",
             email:                 "test_user2@example.com",
             password:              "foobar",
             password_confirmation: "foobar",
             birth_year:            "1994")

Category.create!(name: "Hair_salon")

Prefecture.create(name: "北海道")
Prefecture.create(name: "青森")
Prefecture.create(name: "岩手")
Prefecture.create(name: "宮城")
Prefecture.create(name: "秋田")
Prefecture.create(name: "山形")
Prefecture.create(name: "福島")
Prefecture.create(name: "茨城")
Prefecture.create(name: "栃木")
Prefecture.create(name: "群馬")
Prefecture.create(name: "埼玉")
Prefecture.create(name: "千葉")
Prefecture.create(name: "東京都")
Prefecture.create(name: "神奈川県")
Prefecture.create(name: "新潟")
Prefecture.create(name: "富山")
Prefecture.create(name: "石川")
Prefecture.create(name: "福井")
Prefecture.create(name: "山梨")
Prefecture.create(name: "長野")
Prefecture.create(name: "岐阜")
Prefecture.create(name: "静岡")
Prefecture.create(name: "愛知")
Prefecture.create(name: "三重")
Prefecture.create(name: "滋賀")
Prefecture.create(name: "京都")
Prefecture.create(name: "大阪")
Prefecture.create(name: "兵庫")
Prefecture.create(name: "奈良")
Prefecture.create(name: "和歌山")
Prefecture.create(name: "鳥取")
Prefecture.create(name: "島根")
Prefecture.create(name: "岡山")
Prefecture.create(name: "広島")
Prefecture.create(name: "山口")
Prefecture.create(name: "徳島")
Prefecture.create(name: "香川")
Prefecture.create(name: "愛媛")
Prefecture.create(name: "高知")
Prefecture.create(name: "福岡")
Prefecture.create(name: "佐賀")
Prefecture.create(name: "長崎")
Prefecture.create(name: "熊本")
Prefecture.create(name: "大分")
Prefecture.create(name: "宮崎")
Prefecture.create(name: "鹿児島")
Prefecture.create(name: "沖縄")
Prefecture.create(name: "None")

Salon.create(category_id:           1,
             prefecture_id:         48,
             name:                  "free",
             place:                 "None",
             email:                 "test@example.com",
             password:              "example1",
             password_confirmation: "example1",
             tel:                   "00000000000",
             manage:                "None",
             num_of_stylists:       9999,
             num_of_sheets:         9999,
             cut_price:             0,
             features:              "None")

Salon.create(category_id:           1,
             prefecture_id:         13,
             name:                  "Example Salon",
             place:                 "渋谷区道玄坂",
             email:                 "test1@example.com",
             password:              "example",
             password_confirmation: "example",
             tel:                   "01000000000",
             manage:                "Tester",
             num_of_stylists:       5,
             num_of_sheets:         8,
             cut_price:             5890,
             features:              "カット")

Salon.create(category_id:           1,
             prefecture_id:         13,
             name:                  "六本木 Salon",
             place:                 "港区六本木6丁目",
             email:                 "test3@example.com",
             password:              "example",
             password_confirmation: "example",
             tel:                   "03000000000",
             manage:                "Tester",
             num_of_stylists:       5,
             num_of_sheets:         8,
             cut_price:             7890,
             features:              "カット")

Salon.create(category_id:           1,
             prefecture_id:         13,
             name:                  "東京タワー Salon",
             place:                 "東京都港区芝公園4丁目",
             email:                 "test4@example.com",
             password:              "example",
             password_confirmation: "example",
             tel:                   "07000000000",
             manage:                "Tester",
             num_of_stylists:       5,
             num_of_sheets:         8,
             cut_price:             7890,
             features:              "カット")

Stylist.create!(salon_id:              1,
                category_id:           1,
                name:                  "西野　七瀬",
                tel:                   "00000000000",
                email:                 "stylist1@example.com",
                password:              "example",
                password_confirmation: "example",
                stylist_since:         "2015",
                activity_scope:        "渋谷区",
                cut_price:             6980,
                features:              "ショート〜ボブのカット")

Stylist.create!(salon_id:              2,
                category_id:           1,
                name:                  "白石　麻衣",
                tel:                   "01000000000",
                email:                 "stylist2@example.com",
                password:              "example",
                password_confirmation: "example",
                stylist_since:         "2014",
                activity_scope:        "渋谷区",
                cut_price:             7980,
                features:              "ロングヘアーのカット〜ケア")

Stylist.create!(salon_id:              3,
                category_id:           1,
                name:                  "渡辺 直美",
                tel:                   "05000000000",
                email:                 "stylist3@example.com",
                password:              "example",
                password_confirmation: "example",
                stylist_since:         "2011",
                activity_scope:        "港区",
                cut_price:             7980,
                features:              "ロングヘアーのカット〜ケア")

Stylist.create!(salon_id:              4,
                category_id:           1,
                name:                  "陣内　とものり",
                tel:                   "04000000000",
                email:                 "stylist4@example.com",
                password:              "example",
                password_confirmation: "example",
                stylist_since:         "2011",
                activity_scope:        "港区",
                cut_price:             8980,
                features:              "ロングヘアーのカット〜ケア")

Menu.create!(stylist_id:     1,
             menu_name:      "カット+シャンプー",
             menu_price:     6980,
             operation_time: 50,
             content:        "カット、シャンプー、ブロー",
             memo:           "時間内であれば軽めのセットまで可能です"
)

Menu.create!(stylist_id:     1,
             menu_name:      "カット+カラー",
             menu_price:     12980,
             operation_time: 120,
             content:        "カット、シャンプー、ブロー、カラー",
             memo:           "時間内であれば軽めのセットまで可能です"
)

Menu.create!(stylist_id:     2,
             menu_name:      "カット+シャンプー",
             menu_price:     7980,
             operation_time: 60,
             content:        "カット、シャンプー、ブロー",
             memo:           "時間内であれば軽めのセットまで可能です"
)

Menu.create!(stylist_id:     2,
             menu_name:      "カット+カラー",
             menu_price:     13890,
             operation_time: 140,
             content:        "カット、シャンプー、ブロー、カラー",
             memo:           "時間内であれば軽めのセットまで可能です"
)

10.times do |t|
  SalonReservation.create!(salon_id:  3,
                           book_time: "2019-06-#{1 + t} 12:00")
end

10.times do |t|
  SalonReservation.create!(salon_id:  2,
                           book_time: "2019-06-#{1 + t} 13:00")
end

10.times do |t|
  StylistReservation.create!(stylist_id:     1,
                             book_time:      "2019-06-#{1 + t} 12:00",
                             operation_time: 50,
                             memo:           "時間内なら施術後のセットまでOK")
end

10.times do |t|
  StylistReservation.create!(stylist_id:     2,
                             book_time:      "2019-06-#{1 + t} 13:00",
                             operation_time: 60,
                             memo:           "時間内なら施術後のセットまでOK")
end

Reservation.create!(user_id:                1,
                    salon_reservation_id:   1,
                    stylist_reservation_id: 1,
                    menu_id:                1)

Reservation.create!(user_id:                2,
                    salon_reservation_id:   5,
                    stylist_reservation_id: 5,
                    menu_id:                2)

Reservation.create!(user_id:                1,
                    salon_reservation_id:   9,
                    stylist_reservation_id: 9,
                    menu_id:                1)

Reservation.create!(user_id:                2,
                    salon_reservation_id:   14,
                    stylist_reservation_id: 14,
                    menu_id:                1)