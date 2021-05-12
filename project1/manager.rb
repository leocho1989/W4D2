
require_relative 'employee.rb'

class Manager < Employee
attr_reader :employees
    def initialize(name,title,salary,boss)
        @employees = []
        super
    end
    
    def bonus(multiplier)
    (@employees.map {|employee| employee.salary}).sum * multiplier
    end

    def add_employee(worker)
        @employees << worker
    end


end

a = Manager.new("Ned","Founder","1000",nil)
b = Manager.new("Darren","TA Manager","78","Ned")
c= Employee.new("Shawna","TA","12","Darren")
d= Employee.new("David","TA","10","Darren")
a.add_employee(b)
a.add_employee(c)
a.add_employee(d)
b.add_employee(c)
b.add_employee(d)

p a.bonus(5)
p b.bonus(4)
p d.bonus(3)

