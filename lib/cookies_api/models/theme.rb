# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # OpenCannabis record which describes theming information for a given record.
  class Theme < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Primary color.
    # @return [Color]
    attr_accessor :primary

    # Secondary color.
    # @return [Color]
    attr_accessor :secondary

    # Alert color.
    # @return [Color]
    attr_accessor :alert

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['primary'] = 'primary'
      @_hash['secondary'] = 'secondary'
      @_hash['alert'] = 'alert'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        primary
        secondary
        alert
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(primary = nil,
                   secondary = nil,
                   alert = nil)
      @primary = primary unless primary == SKIP
      @secondary = secondary unless secondary == SKIP
      @alert = alert unless alert == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      primary = Color.from_hash(hash['primary']) if hash['primary']
      secondary = Color.from_hash(hash['secondary']) if hash['secondary']
      alert = Color.from_hash(hash['alert']) if hash['alert']

      # Create object from extracted values.
      Theme.new(primary,
                secondary,
                alert)
    end
  end
end
