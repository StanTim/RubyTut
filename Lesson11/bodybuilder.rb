class Bodybuilder
  def initialize(biceps, delta, trapeze, triceps)
    @biceps = biceps
    @delta = delta
    @trapeze = trapeze
    @triceps = triceps
  end

def musculpowerup(muscul)
    case muscul
    when "biceps"
      @biceps += 1
    when "delta"
      @delta += 1
    when "trapeze"
      @trapeze += 1
    when "triceps"
      @triceps += 1
    end

end

def musculpower()
   puts "Бицепсы: #{@biceps}"
   puts "Дельта: #{@delta}"
   puts "Трапеция: #{@trapeze}"
   puts "Трицепц: #{@triceps}"
end

end
