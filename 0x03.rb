def p2(x)
  Proc.new do |y|
    x + y
  end
end

p3 = p2 2

p p3[1]
p p3.call 1
p p3.(1)
p p3.yield(1)
