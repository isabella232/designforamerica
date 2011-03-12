# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :profile do |f|
  f.first_name "MyString"
  f.last_name "MyString"
  f.screen_name "MyString"
  f.website "MyString"
  f.bio "MyText"
  f.agree false
end