# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

# 実行時の違いについて
# rails db:reset = seeds.rbのデータのみ作成される
# rails db:seed  = seeds.rbのデータが追加作成される

require "faker"
50.times do |user_number|
  User.create!(
    name: Gimei.kanji
  )
  5.times do |post_number|
    Post.create!(
      title: Faker::Movie.title,
      body: Faker::Number.number(digits: 10),
      user_id: "#{user_number + 1}"
    )
  end
end

# ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝