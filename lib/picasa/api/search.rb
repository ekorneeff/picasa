require "picasa/api/base"

module Picasa
  module API
    class Search < Base
      def list(options = {})
        path = '/data/feed/api/all'
        response = Connection.new.get(path: path, query: options)

        Presenter::Album.new(response.parsed_response["feed"])
      end
    end
  end
end
