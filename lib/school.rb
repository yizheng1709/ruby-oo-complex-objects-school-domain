# code here!

class School 

    attr_accessor :roster

    def initialize(school)
        @roster = school  
        @roster = {}
    end 

    def add_student(name, grade)
        if !@roster.key?(grade)
            @roster[grade] = [] 
            @roster[grade] << name
        else 
            @roster[grade] << name
        end  
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        empty = {}
        @roster.each do |grade, name|
            empty[grade] = name.sort  
        end  
        empty.sort.to_h 
    end 

end 