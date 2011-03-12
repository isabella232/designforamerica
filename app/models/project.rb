class Project < ActiveRecord::Base
  belongs_to :user
  has_many :designs  
  validates_presence_of :name,  :organization,  :cause,  :location,  :description,  :tos,  :size_require,  :format_require,  :target_audience,  :three_things,  :colors_want,  :colors_donotwant,  :how_use,  :content_on_design
  has_attached_file :creative1, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/:style/:filename"  
  has_attached_file :creative2, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/:style/:filename"  
  has_attached_file :creative3, :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", :path => "/:style/:filename"  
  
  named_scope :published, where(:published => true)
end
