-module(openapi_default_crumb_issuer).

-export([encode/1]).

-export_type([openapi_default_crumb_issuer/0]).

-type openapi_default_crumb_issuer() ::
    #{ '_class' => binary(),
       'crumb' => binary(),
       'crumbRequestField' => binary()
     }.

encode(#{ '_class' := Class,
          'crumb' := Crumb,
          'crumbRequestField' := CrumbRequestField
        }) ->
    #{ '_class' => Class,
       'crumb' => Crumb,
       'crumbRequestField' => CrumbRequestField
     }.
