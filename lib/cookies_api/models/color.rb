# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # OpenCannabis color specification.
  class Color < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Specifies a color in hex.
    # @return [String]
    attr_accessor :hex

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['hex'] = 'hex'
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

    def initialize(hex = nil)
      @hex = hex unless hex == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      hex = hash.key?('hex') ? hash['hex'] : SKIP

      # Create object from extracted values.
      Color.new(hex)
    end
  end
end