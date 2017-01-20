require "barking_iguana/fork_calls/version"
require "barking_iguana/fork_calls/forker"

module BarkingIguana
  module ForkCalls
    def self.fork_to *receivers
      Forker.new *receivers
    end
  end
end
