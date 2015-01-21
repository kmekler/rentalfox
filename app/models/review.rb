class Review
  include Mongoid::Document
  
  field :address, type:String
  field :landlord, type: String
  field :building, type: String
  field :unit, type: String
  field :area, type: String

end

