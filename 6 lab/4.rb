def fib(n)
    result = [0, 1]
    if n < 2
        result[0..n]
    else
        prev, fib = 0, 1
        (n-1).times do |i|
            prev, fib = fib, fib + prev
            result[i+1] = prev
        end
        result.append(fib)
    end
end

(0..10).map { |i| puts "#{i}: #{fib(i)}" }




a = fib(2)
