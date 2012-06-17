class List
  include Mongoid::Document
  embeds_many :items
  belongs_to :user

  field :name,  :type => String

  def list_by_priority
    self.items.sort! {|a,b| a.priority <=> b.priority}
  end
end
