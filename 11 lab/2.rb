authors = {
    'Design Patterns in Ruby' => ['Russ Olsen'],
    'Eloquent Ruby' => ['Russ Olsen'],
    'The Well-Grounded Rubyist' => ['David A. Black'],
    'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
    'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
    'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
    'Ruby Under a Microscope' => ['Pat Shaughnessy'],
    'Ruby Performance Optimization' => ['Alexander Dymo'],
    'Ruby Performance Optimization2' => ['Alexander Dymo', 'Yukihiro Matsumoto', 'Russ Olsen'],
    'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}

newHash = {}
authors.each do |k, v|
    v.each do |author|
        if newHash.key?(author)
            newHash[author] = newHash[author] + 1
        else
            newHash[author] = 1
        end
    end
end

pp newHash

pp newHash.sort_by{|_key, value| value}.reverse

pp newHash.sort_by{|key, value| [value, key]}
