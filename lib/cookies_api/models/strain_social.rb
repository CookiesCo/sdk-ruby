# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Describes social media properties for a given strain.
  class StrainSocial < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Count of available reviews for this strain.
    # @return [Integer]
    attr_accessor :review_count

    # Average rating for this strain, across available public reviews.
    # @return [Integer]
    attr_accessor :review_rating

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['review_count'] = 'reviewCount'
      @_hash['review_rating'] = 'reviewRating'
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

    def initialize(review_count = nil,
                   review_rating = nil)
      @review_count = review_count unless review_count == SKIP
      @review_rating = review_rating unless review_rating == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      review_count = hash.key?('reviewCount') ? hash['reviewCount'] : SKIP
      review_rating = hash.key?('reviewRating') ? hash['reviewRating'] : SKIP

      # Create object from extracted values.
      StrainSocial.new(review_count,
                       review_rating)
    end
  end
end
