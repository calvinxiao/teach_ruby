p1 = Proc.new do |x|
  x + 1
end


# p p1[1]
# p p1.call 1
# p p1.(1)
# p p1.yield(1)



arr = [1, 2, 8]
p mapa arr

N = 10
N.times { |i| at(i) }
N.even?

i = 0
while i < N
  at(i)
end
