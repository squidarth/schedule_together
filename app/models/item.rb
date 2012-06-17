class Item
  include Mongoid::Document
  embedded_in :list

  field :assignee_name,   :type => String
  field :description,     :type => String
  field :name,            :type => String
  field :due_date,        :type => Date
  field :priority,        :type => Integer
end
