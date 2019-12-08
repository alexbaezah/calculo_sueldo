class Employee
  attr_accessor :salary, :month
  def initialize(salary, month)
    @salary = salary
    if @salary <= 0
        raise 'ingrese un sueldo válido '
    end
    @month = month 
    
  end
  
  def compensation
    @year = @month / 12.to_f
    if @year >= 0.58
      @indemnizacion = @salary * @year 
      self.float_format
      
    else 
      puts 'No recibes indemnización'
    end
  end
    
 
  def float_format
    if @year <= 1 && @year >= 0.58
        puts format("por haber trabajado #{@month} meses que cooresponde a %.1f año tu indemnización es de $%.0f", @year, @indemnizacion)
    elsif @year > 1
        puts format("por haber trabajado #{@month} meses que corresponde a %.1f años tu indemnizacion es de $%.0f", @year, @indemnizacion)
       
    end
  end
end



empleado = Employee.new(5000, 7)
empleado.compensation

empleado2 = Employee.new(2000, 12)
empleado2.compensation

empleado3 = Employee.new(3000, 24)
empleado3.compensation

empleado4 = Employee.new(-222, 12)
empleado4.compensation
  