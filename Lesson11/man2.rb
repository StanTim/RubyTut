# Объявим класс Person (Человек) с переменными экземпляра first_name (имя) и
# middle_name (отчество).
class Person
  # Конструктор вызывается при создании экземпляра класса из основной программы
  # с параметрами имя и отчество и записывает их в переменные экзепляра.
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age
  end

  # У экземпляра класса Person будет метод, который возвращает
  # полное имя человека для пожилого и только имя для молодого
  def full_name
    if @age > 60
    return "#{@first_name} #{@middle_name}"
  else return "#{@first_name} "
  end
  end

  def old?
    if @age > 60
    return "И ему #@age - пожилой"
    else return "И ему #@age - молодой"
    end
  end
end
