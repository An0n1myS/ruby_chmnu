require 'date'

class Hello
    def self.hello()
        hours = DateTime.now.hour
        case hours
        when (0..5)
            return 'Доброї ночі'
        when 6..11
            return "Доброго ранку"
        when 12..17
            return "Доброго дня"
        when 18..24
            return "Доброго вечора"
        else
            return 'Апокаліпсис!!! Земля призупинилась!!!'
        end
    end
end
