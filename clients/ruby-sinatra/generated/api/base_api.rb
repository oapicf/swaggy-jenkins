require 'json'


MyApp.add_route('GET', '/crumbIssuer/api/json', {
  "resourcePath" => "/Base",
  "summary" => "",
  "nickname" => "get_crumb",
  "responseClass" => "DefaultCrumbIssuer",
  "endpoint" => "/crumbIssuer/api/json",
  "notes" => "Retrieve CSRF protection token",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end

