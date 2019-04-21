# frozen_string_literal: true

module Rails
  module Generators
    # Generates a service by rails generator
    class ServiceGenerator < NamedBase
      source_root File.expand_path('templates', __dir__)

      def create_service_file
        template 'service.rb',
                 File.join('app/services', class_path, "#{file_name}.rb")
      end
    end
  end
end
