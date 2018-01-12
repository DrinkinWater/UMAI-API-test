class Article < ActiveRecord::Base
  belongs_to :owner

  def my_json(options = {})
    {
      owner_name: owner.name,
      id: id,
      name: name,
      price: price,
      description: description
    }
  end
end
