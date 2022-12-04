class User
  attr_accessor :first_name, :last_name, :middle_name
  def initialize(first_name, last_name, middle_name)
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end

  def to_s
    "#{@first_name} #{@last_name} #{@middle_name}"
  end

  def first_name
    @first_name
  end
  def first_name=(new_name)
    @first_name = new_name
  end

  def last_name
    @last_name
  end
  def last_name=(new_name)
      @last_name = new_name
  end

  def middle_name
    @middle_name
  end
  def middle_name=(new_name)
    @middle_name = new_name
  end
end

if __FILE__  == $0
  user = User.new('Dima', 'Khomenko', 'Sergeevich')
  puts "\n"
  puts user

  puts user.first_name
  puts user.last_name
  puts user.middle_name

  puts "\n"

  user.first_name = "Kostya"
  user.last_name = "Khurko"
  user.middle_name = "Volodumirovich"
  puts user

  puts user.first_name
  puts user.last_name
  puts user.middle_name
  puts "\n"
end
