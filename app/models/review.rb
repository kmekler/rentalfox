class Review
  include Mongoid::Document
  field :landlord, type: String
  field :building, type: String
  field :unit, type: String
  field :area, type: String
end
