class User
  include Mongoid::Document
  field :name, :type => String
  field :plan_detail, :type => String
end
