class Venue


  attr_reader :name, :fee

  def initialize(name, fee)
    @name = name
    @fee = fee
  end

  def fee_for_room
    @fee
  end
  
end
