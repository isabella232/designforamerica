class Profile < ActiveRecord::Base
  belongs_to :user
  if Rails.env.production?
    has_attached_file :avatar, :storage => :s3, :path => "/:style/:filename"
  else
    has_attached_file :avatar
  end
end
