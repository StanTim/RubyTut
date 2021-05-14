# Объявим класс Person (Человек) с переменными экземпляра first_name (имя) и
# middle_name (отчество).
class Person
  # Конструктор вызывается при создании экземпляра класса из основной программы
  # с параметрами имя и отчество и записывает их в переменные экзепляра.
  def initialize(first_name, middle_name, age)
    @first_name = first_name
    @middle_name = middle_name
    @age = age
    @fav_movie = nil
  end

  # У экземпляра класса Person будет единственные метод, который возвращает
  # полное имя человека
def full_name
  return "#{@first_name} #{@middle_name}"
end


def first_name
  return "#{@first_name}"
end
#Это сеттер. Он позволяет установить значение метода
#как экземпляра класса
# Этот метод дожен быть доступен из вне чере точку от Person

def fav_movie=(fav_movie) #знак равно = именно так и писать без пробелов как обычно
  @fav_movie = fav_movie
end


#Это геттер - метод, который позволяет "видеть" значение
# полей переменных за пределами класса *(как я понял)*
def fav_movie
  return @fav_movie
end

end
