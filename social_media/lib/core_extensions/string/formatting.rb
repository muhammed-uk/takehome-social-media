module CoreExtensions
  module String
    module Formatting
      def camelize
        self.split(/[_-]/).map(&:capitalize).join("")
      end
    end
  end
end