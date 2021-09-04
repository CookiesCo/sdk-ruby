# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Reference to a known media asset.
  class MediaItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique key assigned to, or generated for, this asset.
    # @return [MediaKey]
    attr_accessor :key

    # Type specifications for this asset.
    # @return [MediaType]
    attr_accessor :type

    # Serving URI, if available, for this asset.
    # @return [String]
    attr_accessor :serving_uri

    # Origin URI for this asset.
    # @return [String]
    attr_accessor :uri

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['key'] = 'key'
      @_hash['type'] = 'type'
      @_hash['serving_uri'] = 'servingUri'
      @_hash['uri'] = 'uri'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        type
        serving_uri
        uri
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(key = nil,
                   type = nil,
                   serving_uri = nil,
                   uri = nil)
      @key = key unless key == SKIP
      @type = type unless type == SKIP
      @serving_uri = serving_uri unless serving_uri == SKIP
      @uri = uri unless uri == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      key = MediaKey.from_hash(hash['key']) if hash['key']
      type = MediaType.from_hash(hash['type']) if hash['type']
      serving_uri = hash.key?('servingUri') ? hash['servingUri'] : SKIP
      uri = hash.key?('uri') ? hash['uri'] : SKIP

      # Create object from extracted values.
      MediaItem.new(key,
                    type,
                    serving_uri,
                    uri)
    end
  end
end