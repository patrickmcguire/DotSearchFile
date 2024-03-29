class ListOwnership < ActiveRecord::Base
  belongs_to :list
  belongs_to :user
  
  before_save :default_public
  
  validates_uniqueness_of :list_id, :scope => :user_id
  
  private
    def default_public
      self.public = true if self.public.nil?
    end

end
