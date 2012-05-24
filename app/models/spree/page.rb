module Spree
  class Page < ActiveRecord::Base
    validates :title, :presence => true
    validates :permalink, :uniqueness => true
    
    attr_accessible :title, :meta_keywords, :meta_description, :body, :permalink, :published
  
    scope :published, where(:published => true)

    paginates_per 50
  end
end
