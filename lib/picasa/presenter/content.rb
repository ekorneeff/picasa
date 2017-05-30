require "picasa/presenter/base"

module Picasa
  module Presenter
    class Content < Base
      # @return [String]
      def type
        @type ||= safe_retrieve(parsed_body, "type")
      end

      def medium
        @medium ||= safe_retrieve(parsed_body, "medium")
      end

      # @return [String]
      def src
        @src ||= safe_retrieve(parsed_body, "src")
      end
    end
  end
end
