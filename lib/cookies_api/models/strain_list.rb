# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Describes a list of Cookies strain records.
  class StrainList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Array of resulting strain records.
    # @return [List of Strain]
    attr_accessor :strain

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['strain'] = 'strain'
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

    def initialize(strain = nil)
      @strain = strain unless strain == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      strain = nil
      unless hash['strain'].nil?
        strain = []
        hash['strain'].each do |structure|
          strain << (Strain.from_hash(structure) if structure)
        end
      end

      strain = SKIP unless hash.key?('strain')

      # Create object from extracted values.
      StrainList.new(strain)
    end
  end
end
