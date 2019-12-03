class SalaryCalc 
    attr_accessor :salary 
    def initialize(salary = 0)
        if salary < 0
            raise "salary $#{salary} isn't valid"
        end
        @salary = salary 
    end

    def to_month
        @month = @salary
        puts "tu sueldo mensual es: #{@month} " 
    end

    def to_dayli
        dayli = @month / 20
        puts "tu sueldo por día es: #{dayli}" 
    end

    def to_weekly
        weekly = @month / 4
        puts "tu sueldo semanal es: #{weekly}" 
    end

    def to_yearly 
        yearly = @month * 12
        puts "tu sueldo anual es: #{yearly}"
    end

    
         
    
end

alex = SalaryCalc.new(5000)
alex.to_month
alex.to_weekly
alex.to_dayli
alex.to_yearly
