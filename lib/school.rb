class School
    attr_reader :model, :grade
    attr_accessor :roster, :sort

    def initialize(model)
        @model = model
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = @roster
        sorted_roster.each do |k, v|
            v.sort!
        end
        sorted_roster
    end
end