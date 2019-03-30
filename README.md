# Blacktango

Interactive library for performing action `the elixir way`, conceveid for `software` mantainers which want to keep opensource projects healthy.

Blacktango is designed to be extendend to various API. 

Currently supported: 
- (GitHub `graphql`).

#### Erlang/Elixir instal:

Follow the upstream doc for installing `elixir/erlang`.

https://elixir-lang.org/install.html

# Quickstart:

1) clone this repo and ensure you have `elixir` installed.

2) On cloned repo create `.github_credentials.yaml` file with content
```yaml
---
token: "your_TOKEN"
github_repos: ["MalloZup/kubeojo", "MalloZup/blacktango", "MalloZup/bacheca"]
```

3) run `iex -S mix` for launching the console

Now you can use various `Blacktango API` calls.

## Blacktango USAGE:

(assuming you are in console mode) see step 3 of quickstart)

API:

`Github.comment_prs_and_issues(days)`

* days is a positive number, if omitted set by default to 30 days. Days is the limit you accept for a PR/ISSUE to be staled without an action.

What does this command do? On high-level it will help to keep projects healthy, reminding people on older issues with a gently comment on GitHub PR/ISSUE, if they are working on it.

It ill write a comment on GitHub Pull-requests and Issues, reminding that the issue is older then the XX days.

`example`: if you have 4 project with 4000 issues older then 30 days ( or more), blacktango will automatically leave a comment on the issue that say that the issue is older then 30/more days, and maybe it should be closed

Important: blacktango plan to be a `CLI` and not  a data retrival. Meaning that we want to perform some `active` action based on APIs. And not analyze data, retrieve/store it.


# Goals and roadmap:

In future we might support also `Jenkins` api and others.

Following action are plant to be implemented:

- an user specify a list of github repository via YAML where he/she want to perform operation

# devel documentation:

build client with `mix escript.build`

use `iex -S mix` for building and having elixir shell afterwards. (usefull for calling various component and debugging.)

# QUICKSTART ( this is for devel only currenlty)

0) Clone github repo.



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
