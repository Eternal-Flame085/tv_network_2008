class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator,characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = 0
    @characters.each do |actor|
      total += actor.salary
    end
    total
  end

  def highest_paid_actor
    @characters.max_by {|actor| actor.salary}.actor
  end

  def actors
    @characters.map {|actor| actor.actor}
  end
end
