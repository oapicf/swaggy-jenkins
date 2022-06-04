# SwaggyJenkins

Jenkins API clients generated from Swagger / Open API specification

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `swaggy_jenkins` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:swaggy_jenkins, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/swaggy_jenkins](https://hexdocs.pm/swaggy_jenkins).


## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your configuration files.
```elixir
config :swaggy_jenkins, base_url: "http://localhost"
```