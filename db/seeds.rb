# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# for devise sample users
User.create(email: 'admin@example.com',   password: 'password')
User.create(email: 'manager@example.com', password: 'password')
User.create(email: 'user@example.com',    password: 'password')

MakingToolCategory.create! name: '基本工作の道具'
MakingToolCategory.create! name: 'スミ入れの道具'
MakingToolCategory.create! name: '部分塗装の道具'
MakingToolCategory.create! name: '改造に使う道具'
MakingToolCategory.create! name: 'その他の道具'
