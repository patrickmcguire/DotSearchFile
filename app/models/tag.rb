class Tag < ActiveRecord::Base
  has_many :filter_tags, :dependent => :destroy
  has_many :list_tags, :dependent => :destroy
  has_many :filters, :through => :filter_tags
  has_many :lists, :through => :list_tags
  
  validates :tag, :uniqueness => true
  
  before_save :format_tag
    
  private
    def format_tag
      self.tag = self.tag.downcase
    end
end
