-module(openapi_github_scm).

-export([encode/1]).

-export_type([openapi_github_scm/0]).

-type openapi_github_scm() ::
    #{ '_class' => binary(),
       '_links' => openapi_github_scmlinks:openapi_github_scmlinks(),
       'credentialId' => binary(),
       'id' => binary(),
       'uri' => binary()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'credentialId' := CredentialId,
          'id' := Id,
          'uri' := Uri
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'credentialId' => CredentialId,
       'id' => Id,
       'uri' => Uri
     }.
