n = 100

prime = (0..n).to_a
prime[0] = nil
prime[1] = nil

for i in 2..(n/2)
  if prime[i]
    j = i * i;
    while (j <= n)
      prime[j+i] = nil
      j = j + i
    end
  end
end

p prime.reject{|n| n == nil}