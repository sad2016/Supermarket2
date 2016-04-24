# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(category_name:"Bakery");
Category.create(category_name:"Dry Grocery");
Category.create(category_name:"1");
Category.create(category_name:"2");

ProductUnit.create(product_unit_name:"kilogram", product_unit_abbreviation:"kg.");
ProductUnit.create(product_unit_name:"gram", product_unit_abbreviation:"g.");


