require 'barking_iguana/fork_calls'

class Foo
  def initialize
    @thing = BarkingIguana::ForkCalls.fork_to Bar.new, Quux.new
  end

  def do_it
    @thing.other_call
  end
end

class Bar
  def other_call
    puts "bar"
  end
end

class Quux
  def other_call
    puts "quux"
  end
end

Foo.new.do_it
