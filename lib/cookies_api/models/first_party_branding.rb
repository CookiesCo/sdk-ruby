# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Specifies first party branding for a store or other entity.
  class FirstPartyBranding < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Specifies a first-party brand owned or operated by Cookies.
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
      []
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
      FirstPartyBranding.new(brand)
    end
  end
end