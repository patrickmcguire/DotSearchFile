class FilterOwnership < ActiveRecord::Base
  belongs_to :filter
  belongs_to :user
  
  before_save :default_public
  
  private
    def default_public
      self.public = true if self.public.nil?
    end

end