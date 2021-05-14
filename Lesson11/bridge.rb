class Bridge

  def initialize
    puts "Мост создан"
    @opened = false
  end

  def open
    puts "Мост открыт"
    @opened = true
  end

  def is_opened?
  return @opened
  end

end
