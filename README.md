# Blacktango

goals: beeing minimalistic and perform special actions in a distributed and different API world.

### TODO for v0.0.1:

- finish the CLI for basic action 01.
- change Public method for issue/repo

#### Erlang/Elixir instal:

Follow the upstream doc for installing `elixir/erlang`.

https://elixir-lang.org/install.html

# Goals and roadmap:

blacktango is a CLI that perform `actions` on various APIs in a functional and elixir way.

Currently on roadmap as datasource is `GitHub` Api V4 with `Graphql`.
In future we might support also `Jenkins` api and others.

Following action are plant to be implemented:

- an user specify a list of github repository via YAML where he/she want to perform operation

- 1) action: by default 30 days, comment to each issue/pr that is older then 30 days.
 
    example: if you have 4 project with 4000 issues older then 30 days ( or more), blacktango will automatically leave a comment on the issue that say that the issue is older then 30/more days, and maybe it should be closed

Important: blacktango plan to be a `CLI` and not  a data retrival. Meaning that we want to perform some `active` action based on APIs. And not analyze data, retrieve/store it.

# devel documentation:

build client with `mix escript.build`

use `iex -S mix` for building and having elixir shell afterwards. (usefull for calling various component and debugging.)

# QUICKSTART ( this is for devel only currenlty)

0) Clone github repo.

1) On same dir as blacktango executable, create `.github_credentials.yaml` file with content

```yaml
---
token: "your_TOKEN"
github_repos: ["MalloZup/kubeojo", "MalloZup/blacktango", "MalloZup/bacheca"]
```

3)run  `iex -S mix`

4) and `Github.issues`


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `blacktango` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:blacktango, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/blacktango](https://hexdocs.pm/blacktango).
