class Artist < ActiveRecord::Base
  
  has_many :songs
  has_many :genres, through: :songs
  
  def slug
    title = self.name
    slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    slug
  end 
  
  def self.find_by_slug(slug)
    unslug = slug.gsub('-', ' ').gsub(/\S+/, &:capitalize)
    Artist.all.each do |art|
      if art.name.include?(unslug)
       return art
      end 
    end 
  end 
end 