class Design < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  
  validates_presence_of :description, :on => :create, :message => "can't be blank"
  validates_presence_of :user, :on => :create, :message => "can't be blank"  
  validates_presence_of :project, :on => :create, :message => "can't be blank"  
  
  has_attached_file :thumbnail, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/:style/:filename"  
  has_attached_file :zip_package, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/:style/:filename"  
  
end
