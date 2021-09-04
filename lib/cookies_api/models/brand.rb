# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # OpenCannabis brand specification payload.
  class Brand < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Naming information for a brand.
    # @return [Name]
    attr_accessor :name

    # Media/known assets for a brand.
    # @return [List of BrandAsset]
    attr_accessor :media

    # Theme information for a brand.
    # @return [Theme]
    attr_accessor :theme

    # Slug assigned to this brand.
    # @return [String]
    attr_accessor :slug

    # Full URL for this brand.
    # @return [String]
    attr_accessor :link

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['media'] = 'media'
      @_hash['theme'] = 'theme'
      @_hash['slug'] = 'slug'
      @_hash['link'] = 'link'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        media
        theme
        slug
        link
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(name = nil,
                   media = nil,
                   theme = nil,
                   slug = nil,
                   link = nil)
      @name = name unless name == SKIP
      @media = media unless media == SKIP
      @theme = theme unless theme == SKIP
      @slug = slug unless slug == SKIP
      @link = link unless link == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = Name.from_hash(hash['name']) if hash['name']
      # Parameter is an array, so we need to iterate through it
      media = nil
      unless hash['media'].nil?
        media = []
        hash['media'].each do |structure|
          media << (BrandAsset.from_hash(structure) if structure)
        end
      end

      media = SKIP unless hash.key?('media')
      theme = Theme.from_hash(hash['theme']) if hash['theme']
      slug = hash.key?('slug') ? hash['slug'] : SKIP
      link = hash.key?('link') ? hash['link'] : SKIP

      # Create object from extracted values.
      Brand.new(name,
                media,
                theme,
                slug,
                link)
    end
  end
end
