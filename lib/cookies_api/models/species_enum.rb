# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # OpenCannabis species specifier.
  class SpeciesEnum
    SPECIES_ENUM = [
      # The item has no species, or the species value is not applicable.
      UNSPECIFIED = 'UNSPECIFIED'.freeze,

      # The item is assigned SATIVA species.
      SATIVA = 'SATIVA'.freeze,

      # The item is assigned HYBRID species that leans SATIVA.
      HYBRID_SATIVA = 'HYBRID_SATIVA'.freeze,

      # The item is assigned pure HYBRID species.
      HYBRID = 'HYBRID'.freeze,

      # The item is assigned HYBRID species that leans INDICA.
      HYBRID_INDICA = 'HYBRID_INDICA'.freeze,

      # The item is assigned INDICA species.
      INDICA = 'INDICA'.freeze
    ].freeze
  end
end
