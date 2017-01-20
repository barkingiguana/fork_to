module BarkingIguana
  module ForkCalls
    class Forker
      attr_accessor :receivers
      private :receivers=, :receivers

      def initialize *receivers
        self.receivers = receivers
      end

      def method_missing name, *args, &block
        receivers.each do |receiver|
          receiver.__send__ name, *args, &block
        end
      end
    end
  end
end
