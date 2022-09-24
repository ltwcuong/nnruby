require_relative 'man.rb'



class Student < Human
  attr_accessor :grade1, :grade2, :grade3
  def initialize(grade1, grade2, grade3,name, hair, weight, height, age, phone, email, nation)
                               
    @grade1 = grade1
    @grade2 = grade2
    @grade3 = grade3
    super(name, hair, weight, height, age, phone, email, nation)

  end
  
  def average_grade 
    return (1.0*@grade1 + @grade2+ @grade3)/3
  end

  def to_s
    return "#{@name} #{@hair} #{@weight} #{@height} #{@age} #{@phone} #{@email} #{@nation} #{@grade1} #{@grade2} #{@grade3} "
  end
end






