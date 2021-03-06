# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Descriptor which specifies a first-party or third-party brand.
  class BrandSpec < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # System ID for a brand. Do not key against this: it is guaranteed to
    # change.
    # @return [String]
    attr_accessor :id

    # Assigned ID for this brand. Immutable and reliable.
    # @return [String]
    attr_accessor :bid

    # OpenCannabis payload describing this brand.
    # @return [Brand]
    attr_accessor :brand

    # Whether this brand is owned by Cookies.
    # @return [Boolean]
    attr_accessor :owned

    # Media/asset icon for this brand.
    # @return [MediaItem]
    attr_accessor :icon

    # Negative-mode icon for this brand.
    # @return [MediaItem]
    attr_accessor :negative_icon

    # Whether this brand is live.
    # @return [Boolean]
    attr_accessor :live

    # Sort weight of this brand.
    # @return [Integer]
    attr_accessor :sort_weight

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['bid'] = 'bid'
      @_hash['brand'] = 'brand'
      @_hash['owned'] = 'owned'
      @_hash['icon'] = 'icon'
      @_hash['negative_icon'] = 'negativeIcon'
      @_hash['live'] = 'live'
      @_hash['sort_weight'] = 'sortWeight'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        owned
        icon
        negative_icon
        live
        sort_weight
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(id = nil,
                   bid = nil,
                   brand = nil,
                   owned = nil,
                   icon = nil,
                   negative_icon = nil,
                   live = nil,
                   sort_weight = nil)
      @id = id unless id == SKIP
      @bid = bid unless bid == SKIP
      @brand = brand unless brand == SKIP
      @owned = owned unless owned == SKIP
      @icon = icon unless icon == SKIP
      @negative_icon = negative_icon unless negative_icon == SKIP
      @live = live unless live == SKIP
      @sort_weight = sort_weight unless sort_weight == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      bid = hash.key?('bid') ? hash['bid'] : SKIP
      brand = Brand.from_hash(hash['brand']) if hash['brand']
      owned = hash.key?('owned') ? hash['owned'] : SKIP
      icon = MediaItem.from_hash(hash['icon']) if hash['icon']
      negative_icon = MediaItem.from_hash(hash['negativeIcon']) if hash['negativeIcon']
      live = hash.key?('live') ? hash['live'] : SKIP
      sort_weight = hash.key?('sortWeight') ? hash['sortWeight'] : SKIP

      # Create object from extracted values.
      BrandSpec.new(id,
                    bid,
                    brand,
                    owned,
                    icon,
                    negative_icon,
                    live,
                    sort_weight)
    end
  end
end
