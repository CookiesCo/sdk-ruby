# cookies_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CookiesApi
  # Specifies errors that occurred in a given request/response cycle.
  class FaultResponseException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # Error report for a fatal exception.
    # @return [ErrorInfo]
    attr_accessor :fault

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @fault = ErrorInfo.from_hash(hash['fault']) if hash['fault']
    end
  end
end
