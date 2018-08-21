# Auto-Generated OpenAPI Bindings to `SwaggyJenkins`

The library in `lib` provides auto-generated-from-OpenAPI bindings to the SwaggyJenkins API.

## Installation

Installation follows the standard approach to installing Stack-based projects.

1. Install the [Haskell `stack` tool](http://docs.haskellstack.org/en/stable/README).
2. Run `stack install` to install this package.

## Main Interface

The main interface to this library is in the `SwaggyJenkins.API` module, which exports the SwaggyJenkinsBackend type. The SwaggyJenkinsBackend
type can be used to create and define servers and clients for the API.

## Creating a Client

A client can be created via the `createSwaggyJenkinsClient` function, which, if provided with a hostname and a port, will generate
a client that can be used to access the API if it is being served at that hostname / port combination. For example, if
`localhost:8080` is serving the SwaggyJenkins API, you can write:

```haskell
{-# LANGUAGE RecordWildCards #-}

import SwaggyJenkins.API

main :: IO ()
main = do
  SwaggyJenkinsBackend{..} <- createSwaggyJenkinsClient (ServerConfig "localhost" 8080)
  -- Any SwaggyJenkins API call can go here.
  return ()
```

## Creating a Server

In order to create a server, you must use the `runSwaggyJenkinsServer` function. However, you unlike the client, in which case you *got* a `SwaggyJenkinsBackend`
from the library, you must instead *provide* a `SwaggyJenkinsBackend`. For example, if you have defined handler functions for all the
functions in `SwaggyJenkins.Handlers`, you can write:

```haskell
{-# LANGUAGE RecordWildCards #-}

import SwaggyJenkins.API

-- A module you wrote yourself, containing all handlers needed for the SwaggyJenkinsBackend type.
import SwaggyJenkins.Handlers

-- Run a SwaggyJenkins server on localhost:8080
main :: IO ()
main = do
  let server = SwaggyJenkinsBackend{..}
  runSwaggyJenkinsServer (ServerConfig "localhost" 8080) server
```

You could use `optparse-applicative` or a similar library to read the host and port from command-line arguments:
```
{-# LANGUAGE RecordWildCards #-}

module Main (main) where

import SwaggyJenkins.API (runSwaggyJenkinsServer, SwaggyJenkinsBackend(..), ServerConfig(..))

import Control.Applicative ((<$>), (<*>))
import Options.Applicative (execParser, option, str, auto, long, metavar, help)

main :: IO ()
main = do
  config <- parseArguments
  runSwaggyJenkinsServer config SwaggyJenkinsBackend{}

-- | Parse host and port from the command line arguments.
parseArguments :: IO ServerConfig
parseArguments =
  execParser $
    ServerConfig
      <$> option str  (long "host" <> metavar "HOST" <> help "Host to serve on")
      <*> option auto (long "port" <> metavar "PORT" <> help "Port to serve on")
```
