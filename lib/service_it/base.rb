# frozen_string_literal: true

module ServiceIt
  # Inherit this class and implement perform method
  #
  # Documentation:
  #   https://github.com/iago-silva/service_it
  class Base
    private_class_method :new

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
    def self.call(**args)
      new(args).perform
    end

    def initialize(args)
      args.each do |key, value|
        define_ivar(key, value)
        define_private_reader(key)
      end
    end

    # Implement this method to run your service
    def perform
      raise NotImplementedError,
            "Please implement 'perform' method in your #{self.class.name}"
    end

    private

    def define_ivar(key, value)
      instance_variable_set("@#{key}", value)
    end

    def define_private_reader(key)
      self.class.class_eval do
        private

        attr_reader key.to_sym
      end
    end
  end
end
