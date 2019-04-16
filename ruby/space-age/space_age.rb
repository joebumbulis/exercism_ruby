class SpaceAge
  attr_reader :age_in_seconds, :earth_year_in_seconds

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
    @earth_year_in_seconds = 31557600.00
  end

  def on_earth
    (age_in_seconds / earth_year_in_seconds).round(2)
  end

  def relative_to_earth(orbital_period)
    (on_earth / orbital_period).round(2)
  end

  def on_mercury
    relative_to_earth(0.2408467)
  end

  def on_venus
    relative_to_earth(0.61519726)
  end

  def on_mars
    relative_to_earth(1.8808158)
  end

  def on_jupiter
    relative_to_earth(11.862615)
  end

  def on_saturn
    relative_to_earth(29.447498 )
  end

  def on_uranus
    relative_to_earth(84.016846)
  end

  def on_neptune
    relative_to_earth(164.79132)
  end

end
