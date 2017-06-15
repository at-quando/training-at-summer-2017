##**Ex1:**
*a.*
```
def fibonacci(n)
    if (n==2 || n==1) then return 1 
    else return fibonacci(n-2)+fibonacci(n-1)
    end
end

puts fibonacci(4)
```

*b.*
```
require 'prime'
def prime_number?(number)
        	Prime.prime?(number)
end
puts prime_number?(7)
```
*c.*
```
def is_perf(n)
n == (1...n).select {|i| n % i == 0}.inject(:+)
end

puts is_perf(6)
```
*d.*

```
def centuryFromYear(year)
    cen=year/100
    	if year%100==0 then return cen 
    	else cen +1
    	end
end

puts centuryFromYear(150)
```
##**Ex2**
```
def series_sum(n)
    sum=0
    	if (n<0) then puts "n<0"
    	elsif (n==0) then puts "0=0"
    		else  (0..n).collect { |x| sum += x } 
end
end

print series_sum(78)

```

##**Ex 3:**
```
def get_squares(a)
    x=Math.sqrt(a.last)
    (1..x).collect{|x| x**2 }
end

print get_squares(1..100)
```
