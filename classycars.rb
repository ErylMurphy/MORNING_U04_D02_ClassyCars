class Cars
attr_accessor :make, :model, :year, :color, :miles

  def initialize(make, model, year, color, miles = 0)
    @make = make
    @model = model
    @year = year
    @color = color
    @miles = miles
  end

  def seen_another_year
    @miles = miles + 15000
  end
  
  def new_color
    return 'white'
  end

  def ahh_fresh_paint
    return "The new #{new_color} paint was a great choice."
  end

  def details 
    if miles > 50000
      return "This #{year.to_s} #{make} #{model} has #{miles.to_s} miles on it and the #{color} paint is really fading."
    else
      return "This #{year.to_s} #{make} #{model} has #{miles.to_s} miles on it."
  end

end 

autobianchi = Cars.new('Autobianchi', 'Bianchina Transformabile', 1957, 'red', 510000)

puts autobianchi.details

jaguar = Cars.new('Jaguar', 'XK120 Alloy Roadster', 1949 , 'blue sheen', 1000)

jaguar.seen_another_year
jaguar.seen_another_year
jaguar.seen_another_year
jaguar.seen_another_year
jaguar.seen_another_year

p jaguar.details 

p jaguar.miles

p jaguar.ahh_fresh_paint

end




