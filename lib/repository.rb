require_relative 'accomodation'

class Repository
  def initialize(filepath)
    @filepath = filepath
    @accomodations = []
    CSV.open(filepath) do |line|
      @accomodations << Accomodation.new(path, name, night_price, description, comments_number, photo_number, hostname, response_delay, response_rate, rating, is_superhost)
    end
  end

  def create(accomodation)
    @accomodations << accomodation
    CSV.open(@filepath, "wb") do |csv|
      @accomodations.each_with_index do |element, index|
        csv << [index, element.path, element.name, element.night_price, element.description, element.comments_number, element.photo_number, element.hostname, element.response_delay, element.response_rate, rating, element.is_superhost]
      end
    end
  end

  def delete_all
    @accomodations = []
    CSV.open(@filepath, "wb") do |csv|
      @accomodations.each_with_index do |element, index|
        csv << [index, element.path, element.name, element.night_price, element.description, element.comments_number, element.photo_number, element.hostname, element.response_delay, element.response_rate, rating, element.is_superhost]
      end
    end
  end
end
