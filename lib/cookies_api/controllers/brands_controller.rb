# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # BrandsController
  class BrandsController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Retrieve a list of Cookies family brands.
    # @return [BrandList] response from the API call
    def list_brands
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::DEFAULT)
      _query_builder << '/app/v1/brands'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      CustomQueryAuth.apply(config, _request)
      _response = execute_request(_request)
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      BrandList.from_hash(decoded)
    end

    # Retrieve a single Cookies brand by its ID.
    # @param [String] id Required parameter: ID of the brand to fetch.
    # @return [BrandSpec] response from the API call
    def get_brand(id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::DEFAULT)
      _query_builder << '/app/v1/brands/{id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'id' => { 'value' => id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      CustomQueryAuth.apply(config, _request)
      _response = execute_request(_request)
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      BrandSpec.from_hash(decoded)
    end
  end
end