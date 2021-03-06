# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Social media information for a first-party Cookies store.
  class StoreSocial < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Social media properties.
    # @return [List of SocialProperty]
    attr_accessor :property

    # Store Facebook page username.
    # @return [String]
    attr_accessor :facebook_user

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['property'] = 'property'
      @_hash['facebook_user'] = 'facebookUser'
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

    def initialize(property = nil,
                   facebook_user = nil)
      @property = property unless property == SKIP
      @facebook_user = facebook_user unless facebook_user == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      property = nil
      unless hash['property'].nil?
        property = []
        hash['property'].each do |structure|
          property << (SocialProperty.from_hash(structure) if structure)
        end
      end

      property = SKIP unless hash.key?('property')
      facebook_user = hash.key?('facebookUser') ? hash['facebookUser'] : SKIP

      # Create object from extracted values.
      StoreSocial.new(property,
                      facebook_user)
    end
  end
end
