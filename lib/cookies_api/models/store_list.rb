# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Describes a list of store records.
  class StoreList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # List of stores.
    # @return [List of Store]
    attr_accessor :store

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['store'] = 'store'
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

    def initialize(store = nil)
      @store = store unless store == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      store = nil
      unless hash['store'].nil?
        store = []
        hash['store'].each do |structure|
          store << (Store.from_hash(structure) if structure)
        end
      end

      store = SKIP unless hash.key?('store')

      # Create object from extracted values.
      StoreList.new(store)
    end
  end
end
