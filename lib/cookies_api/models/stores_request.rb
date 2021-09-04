# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Specifies request details when listing stores.
  class StoresRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Optionally filter stores by first-party brand.
    # @return [CookiesBrandEnum]
    attr_accessor :brand

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand'] = 'brand'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        brand
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(brand = nil)
      @brand = brand unless brand == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand = hash.key?('brand') ? hash['brand'] : SKIP

      # Create object from extracted values.
      StoresRequest.new(brand)
    end
  end
end
