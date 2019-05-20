module B801
  def coding
    p "#@name 写代码"
  end

  def study 
  end

end

module B802
  def talk
    p self
    p "#@name 吹水"
  end

  def coding
    p "#@name 不写代码"
  end

  def sell
  end
end

# ducking typing
class Yeezon
  # mixin
  p self
  include B801
  include B802

  def initialize(name)
    @name = name
  end
end

youhaosuda = Yeezon.new "胖几"
youhaosuda.coding # 801
youhaosuda.talk # 802

module Nothing
  def do_nothing
    p '什么也不做'
  end
end

class String
  include Nothing
end

"sss".do_nothing
