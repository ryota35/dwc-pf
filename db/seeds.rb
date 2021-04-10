# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: "test@test.com",
  password: "testtest"
  )

User.create!(
  email: "sasa@sasa.com",
  name: Gimei.kanji,
  password: "sasasa"
  )

Item.create!(
  user_id: 1,
  name: "モバイルバッテリー",
  maker: "anker"
  )

20.times do |n|
  Quiz.create!(
    question: "サンプル問題です#{n + 1}",
    choice1: "サンプル選択肢#{n + 1}_1",
    choice2: "サンプル選択肢#{n + 1}_2",
    choice3: "サンプル選択肢#{n + 1}_3",
    choice4: "サンプル選択肢#{n + 1}_4",
    answer: "3",
    level: 0
  )
end

20.times do |n|
  Quiz.create!(
    question: "サンプル問題です#{n + 21}",
    choice1: "サンプル選択肢#{n + 21}_1",
    choice2: "サンプル選択肢#{n + 21}_2",
    choice3: "サンプル選択肢#{n + 21}_3",
    choice4: "サンプル選択肢#{n + 21}_4",
    answer: "3",
    level: 1
  )
end

20.times do |n|
  Quiz.create!(
    question: "サンプル問題です#{n + 41}",
    choice1: "サンプル選択肢#{n + 41}_1",
    choice2: "サンプル選択肢#{n + 41}_2",
    choice3: "サンプル選択肢#{n + 41}_3",
    choice4: "サンプル選択肢#{n + 41}_4",
    answer: "3",
    level: 2
  )
end

10.times do |n|
  Article.create!(
    user_id: 1,
    title: "sample#{n + 1}",
    body: "sample#{n + 1}",
    level: 0
    )
  end

10.times do |n|
  Article.create!(
    user_id: 1,
    title: Faker::Lorem.characters(number:30),
    body: Faker::Lorem.characters(number:800),
    level: 1
    )
  end

10.times do |n|
  Article.create!(
    user_id: 1,
    title: "sample#{n + 21}",
    body: "sample#{n + 21}",
    level: 2
    )
  end