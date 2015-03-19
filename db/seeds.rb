# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(:email => 'admin@admin.a' ,:password => "9ddX3hv8" , :password_confirmation => "9ddX3hv8")

    Category.create(name: 'Комплекти')
    Category.create(name: 'Консумативи')
    Category.create(name: 'Течности')
    Category.create(name: 'Бижута')

    SubCategory.create(name: 'Батерии' , category_id: 2)
    SubCategory.create(name: 'Нагреватели' , category_id: 2)
    SubCategory.create(name: 'Атомайзери' , category_id: 2)
    SubCategory.create(name: 'Зарядни' , category_id: 2)
    SubCategory.create(name: 'Аксесоари' , category_id: 2)

    SubCategory.create(name: 'Колиета' , category_id: 4)
    SubCategory.create(name: 'Гривни' , category_id: 4)
    SubCategory.create(name: 'Обеци' , category_id: 4)
    SubCategory.create(name: 'Пръстени' , category_id: 4)

    SubCategory.create(name: 'Numbers' , category_id: 3)
    SubCategory.create(name: 'Liqua' , category_id: 3)
    SubCategory.create(name: 'Exclusive' , category_id: 3)
    SubCategory.create(name: 'Classic' , category_id: 3)
    SubCategory.create(name: 'Mystique' , category_id: 3)
