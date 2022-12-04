require_relative "2.rb"

class Group
    attr_accessor :users
    def initialize(*users)
        users.each do |i|
            if !i.is_a?(User)
                raise "Invalid type! Wanted: User Got: #{i.class}!"
            end
        end
        @users = users
    end

    def to_s
        "#{@users.to_s}"
    end

    def each
        @users.each do |i|
            puts i
        end
    end
end

a = User.new('Dima', 'Khomenko', 'Sergievuch')
b = User.new('Andij', 'Batuk', 'Grigorovich')
c = User.new('Orin', 'Raq', 'Garcia')
d = User.new('Vinson', 'King', 'Nyro')
e = User.new('Xanthos', 'Robinson', 'Myro')
q = User.new('Eduardo', 'Young', 'Ruby')
w = User.new('Pick', 'Rafael', 'Qas')
r = User.new('Rafael', 'Nick', 'Vas')
t = User.new('Tac', 'Kavkaz', 'Pas')
s = User.new('Nyro', 'Tac', 'Laplas')
d = User.new('Salamandra', 'Qdar', 'ZXC')


group = Group.new(a, b, c, d, e, q, w, r, t, s, d)
group.each
