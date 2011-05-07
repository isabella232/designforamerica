class Design < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  acts_as_voteable
  
  validates_presence_of :description, :on => :create, :message => "can't be blank"
  validates_presence_of :user, :on => :create, :message => "can't be blank"  
  validates_presence_of :project, :on => :create, :message => "can't be blank"  
  validates_presence_of :tos, :on => :create, :message => "can't be false"    
  
  if Rails.env.production?
   has_attached_file :thumbnail, :storage => :s3, :bucket => 'projekts', :s3_credentials => { :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}
    has_attached_file :zip_package, :storage => :s3, :bucket => 'projekts', :s3_credentials => { :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}
  else
    has_attached_file :thumbnail
    has_attached_file :zip_package
  end
   
end
