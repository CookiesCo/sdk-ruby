# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Enumerates types of Cookies stores.
  class StoreTypeEnum
    STORE_TYPE_ENUM = [
      # Describes a first-party Cookies store.
      FIRST_PARTY = 'FIRST_PARTY'.freeze,

      # Describes a third-party store that carries Cookies products.
      THIRD_PARTY = 'THIRD_PARTY'.freeze,

      # Describes a store affiliated with Cookies.
      NETWORK = 'NETWORK'.freeze
    ].freeze
  end
end
