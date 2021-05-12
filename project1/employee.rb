class Employee
attr_reader :name, :title, :salary, :boss

    def initialize(name,title,salary,boss)
        @name = name
        @title = title
        @salary = salary.to_i
        @boss = boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end

    


end