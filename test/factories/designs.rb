# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :design do |f|
  f.user_id 1
  f.description "MyText"
  f.tos false
end