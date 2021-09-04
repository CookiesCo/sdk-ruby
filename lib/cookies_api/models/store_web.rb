# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Web information for a Cookies store, or partner store.
  class StoreWeb < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Main website link.
    # @return [String]
    attr_accessor :main

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['main'] = 'main'
      @_hash
    end

    # An array for optional fields
    def optionals
      []
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(main = nil)
      @main = main unless main == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      main = hash.key?('main') ? hash['main'] : SKIP

      # Create object from extracted values.
      StoreWeb.new(main)
    end
  end
end
