class School
  
  attr_accessor :name, :roster
  
  def initialize(name = "none")
    
    @name = name
    @roster = {}
    
  end
  
  def add_student(name, grade)
    
    if @roster.include?(grade)
      
      @roster[grade] << name
      
    else
      
       @roster[grade] = []
       @roster[grade] << name
    
    end
    
  end
  
  def grade(grade)
    
    @roster[grade]
    
  end
  
  def sort
    @roster.sort
    @roster
  end
  
end