# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
animal_list = [
  [ "Кошка", "Персидская" ],
  [ "Кошка", "Сибирская" ],
  [ "Кошка", "Британская" ],
  [ "Собака", "Дог" ],
  [ "Собака", "Овчарка" ],
  [ "Собака", "Пудель" ],
  [ "Попугай", "Волнистый" ],
  [ "Попугай", "Ара" ],
  [ "Попугай", "Жако" ],
  [ "Хомяк", "Ангорский" ],
  [ "Хомяк", "Карликовый" ],
  [ "Хомяк", "Джунгарский" ],
  [ "Рептилия", "Игуана" ],
  [ "Рептилия", "Варан" ],
  [ "Рептилия", "Геккон" ]
]

animal_list.each do |animal|
  Animal.create( :animals_type => animal[0], :breed => animal[1] )
end




#animal_id | seller_id | price | quantity | note | animal_picture | last_show_date | age | weight | height 