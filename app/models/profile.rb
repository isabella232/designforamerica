class Profile < ActiveRecord::Base
  belongs_to :user
  if Rails.env.production?
    has_attached_file :avatar, :storage => :s3, :bucket => 'projekts', :s3_credentials => { :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}
  else
    has_attached_file :avatar
  end
end
