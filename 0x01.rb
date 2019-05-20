# a = [1, 2]
# p 'one liner'
# a.each {|x| puts x}
# p 'do end'
# a.each do |x|
#   puts x
# end

# p 'Proc.new is ok'
# p1 = proc do |x|
#   puts x
# end

# a.each &p1

# p 'lambda'
# l1 = lambda do |x|
#   puts x
# end
# a.each &l1

# l2 = -> { x + 1}

# p a.map { |x| x.to_f }
# p a.map(&:to_f)
# # p a.map(&(lambda do |x| return x.to_f end))
# # p a.map { |x| return x.to_f}

p ENV.fetch('rvm_stored_umask1') { |missing|
  p missing
  " SQL: select from abc"
}

def return_what(n)
  n = -> { return n + 1}.call
  proc { return n + 1}.call
  return 3
end

p return_what 5

def yieldf
  if block_given?
    yield 'calvin'
  else
    1
  end
end

p yieldf

p yieldf do |str|
  2 if str == 'calvin'
  3
end



