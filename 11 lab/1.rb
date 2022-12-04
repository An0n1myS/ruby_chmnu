class Integer
    def to_a(power = 2)
        if power <= 1
            power = 2
        end
        self.to_s(power).split("")
    end
end

pp 188.to_a(1)
