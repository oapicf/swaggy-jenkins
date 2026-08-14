require "json"

module OpenAPIClient
  module Api
  class JwtAuth::Jwks
    def initialize(@conn : Connection); end

    #  Retrieve JSON Web Key
    def get(key : Int32) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/jwt-auth/jwks/{key}".sub("{key}", OpenAPIClient.enc(key)),
        accept: %w[application/json],
        auth: %w[])
    end
  end
  end

end
