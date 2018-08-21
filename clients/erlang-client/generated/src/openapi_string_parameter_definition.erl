-module(openapi_string_parameter_definition).

-export([encode/1]).

-export_type([openapi_string_parameter_definition/0]).

-type openapi_string_parameter_definition() ::
    #{ '_class' => binary(),
       'defaultParameterValue' => openapi_string_parameter_value:openapi_string_parameter_value(),
       'description' => binary(),
       'name' => binary(),
       'type' => binary()
     }.

encode(#{ '_class' := Class,
          'defaultParameterValue' := DefaultParameterValue,
          'description' := Description,
          'name' := Name,
          'type' := Type
        }) ->
    #{ '_class' => Class,
       'defaultParameterValue' => DefaultParameterValue,
       'description' => Description,
       'name' => Name,
       'type' => Type
     }.
