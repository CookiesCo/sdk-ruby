# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Range/interval of hours.
  class HoursRange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Begin time for a given hours range.
    # @return [TimeSpec]
    attr_accessor :mbegin

    # End time for a given hours range.
    # @return [TimeSpec]
    attr_accessor :mend

    # Status to apply for a store.
    # @return [StoreStatusEnum]
    attr_accessor :status

    # Whether this hours rule is active.
    # @return [Boolean]
    attr_accessor :active

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mbegin'] = 'begin'
      @_hash['mend'] = 'end'
      @_hash['status'] = 'status'
      @_hash['active'] = 'active'
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

    def initialize(mbegin = nil,
                   mend = nil,
                   status = nil,
                   active = nil)
      @mbegin = mbegin unless mbegin == SKIP
      @mend = mend unless mend == SKIP
      @status = status unless status == SKIP
      @active = active unless active == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mbegin = TimeSpec.from_hash(hash['begin']) if hash['begin']
      mend = TimeSpec.from_hash(hash['end']) if hash['end']
      status = hash.key?('status') ? hash['status'] : SKIP
      active = hash.key?('active') ? hash['active'] : SKIP

      # Create object from extracted values.
      HoursRange.new(mbegin,
                     mend,
                     status,
                     active)
    end
  end
end
