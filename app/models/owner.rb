class Owner < ActiveRecord::Base
  has_many :articles
  
  def as_json(options = {})
    {
      owner_name: name
    }
  end
end
