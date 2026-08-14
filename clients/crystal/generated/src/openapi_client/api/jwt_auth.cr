require "json"

module OpenAPIClient
  module Api
  class JwtAuth
    def initialize(@conn : Connection); end

    #  Retrieve JSON Web Token
    def token(*, expiry_time_in_mins : Int32? = nil, max_expiry_time_in_mins : Int32? = nil) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/jwt-auth/token",
        query: { "expiryTimeInMins" => expiry_time_in_mins, "maxExpiryTimeInMins" => max_expiry_time_in_mins },
        accept: %w[application/json],
        auth: %w[])
    end
  end
  end

end
