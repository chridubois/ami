class Accomodation

  attr_accessor :path, :name, :night_price, :description, :comments_number, :photo_number, :hostname, :response_delay, :response_rate, :rating, :is_superhost

  def initialize
    # announce attributes
    @path
    @name
    @night_price
    @description
    @comments_number
    @photo_number
    # Host attributes
    @hostname
    @response_rate
    @response_delay
    @rating
    @is_superhost
  end

def is_superhost?
  @is_superhost
end

end
