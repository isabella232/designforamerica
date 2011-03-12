# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :project do |f|
  f.user_id 1
  f.name "MyString"
  f.organization "MyString"
  f.cause "MyString"
  f.location "MyString"
  f.description "MyText"
  f.tos false
  f.size_require "MyString"
  f.format_require "MyString"
  f.target_audience "MyText"
  f.three_things "MyText"
  f.colors_want "MyText"
  f.colors_donotwant "MyText"
  f.how_use "MyText"
  f.content_on_design "MyText"
end