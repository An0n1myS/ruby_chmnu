##
# Class about user

class User
  ##
  # output name
  def fio(first_name, second_name)
    puts first_name + " " + second_name
  end
  ##
  # output profession
  def profession(pro)
    puts pro
    end
end
a = User.new
a.fio('Dima', 'Dzundza')
a.profession('Programer')

