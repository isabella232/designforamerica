# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :interview do |f|
  f.name "MyString"
  f.role_id 1
  f.project_id 1
  f.summary "MyText"
  f.interview_text "MyText"
end