class SpaceAge
  attr_reader :age_in_seconds

  EARTH_DAYS = 365.25
  SECONDS_PER_DAY_ON_EARTH = 86400

  ORBITAL_PERIODS = {
    earth: 1.00,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
  end

  ORBITAL_PERIODS.each do |planet, orbital_period|
    define_method("on_#{planet}") do
      earth_age = age_in_seconds / (EARTH_DAYS * SECONDS_PER_DAY_ON_EARTH)
      earth_age / orbital_period
    end
  end
end
