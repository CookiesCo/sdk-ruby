# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Describes material or operational regarding about a Cookies strain.
  class MaterialInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Breeder(s) who produced a strain.
    # @return [String]
    attr_accessor :breeder

    # Aroma notes for a strain.
    # @return [String]
    attr_accessor :aroma

    # Flavor notes for a strain.
    # @return [String]
    attr_accessor :flavor

    # Experience notes for a strain.
    # @return [String]
    attr_accessor :experience

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['breeder'] = 'breeder'
      @_hash['aroma'] = 'aroma'
      @_hash['flavor'] = 'flavor'
      @_hash['experience'] = 'experience'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        breeder
        aroma
        flavor
        experience
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(breeder = nil,
                   aroma = nil,
                   flavor = nil,
                   experience = nil)
      @breeder = breeder unless breeder == SKIP
      @aroma = aroma unless aroma == SKIP
      @flavor = flavor unless flavor == SKIP
      @experience = experience unless experience == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      breeder = hash.key?('breeder') ? hash['breeder'] : SKIP
      aroma = hash.key?('aroma') ? hash['aroma'] : SKIP
      flavor = hash.key?('flavor') ? hash['flavor'] : SKIP
      experience = hash.key?('experience') ? hash['experience'] : SKIP

      # Create object from extracted values.
      MaterialInfo.new(breeder,
                       aroma,
                       flavor,
                       experience)
    end
  end
end
