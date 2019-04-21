# frozen_string_literal: true

module ServiceIt
  # Inherit this class and implement perform method
  #
  # Documentation:
  #   https://github.com/iago-silva/service_it
  class Base
    class << self
      # Call your service
      #
      # Example:
      #   Foo.call(arg1: 1, arg2: 2)
      #
      # Arguments:
      #   args: (Hash)
      #
      # Return:
      #   perform's return
      def call(**args)
        new_instance(args).perform
      end

      private

      def new_instance(args)
        instance = new

        args.each do |key, value|
          instance.instance_variable_set("@#{key}", value)
        end

        instance
      end
    end

    # Implement this method to run your service
    def perform
      raise NotImplementedError,
            "Please implement 'perform' method in your #{self.class.name}"
    end
  end
end
