=begin
Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

The version of the OpenAPI document: 1.1.1
Contact: blah@cliffano.com
Generated by: https://github.com/openapitools/openapi-generator.git

=end


class Hudson < ApplicationRecord

  serialize :assigned_labels, Array
  serialize :jobs, Array
  serialize :views, Array
end
