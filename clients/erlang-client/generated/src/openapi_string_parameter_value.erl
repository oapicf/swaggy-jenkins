-module(openapi_string_parameter_value).

-export([encode/1]).

-export_type([openapi_string_parameter_value/0]).

-type openapi_string_parameter_value() ::
    #{ '_class' => binary(),
       'name' => binary(),
       'value' => binary()
     }.

encode(#{ '_class' := Class,
          'name' := Name,
          'value' := Value
        }) ->
    #{ '_class' => Class,
       'name' => Name,
       'value' => Value
     }.
