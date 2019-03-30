# Blacktango

Interactive, minimalistic CLI for interacting with various APIs outside in the world.

For `software` mantainers which want to keep opensource projects healthy.

# Quickstart:

#### Erlang/Elixir instal:

Follow the upstream doc for installing `elixir/erlang`.

https://elixir-lang.org/install.html

1) clone this repo and ensure you have `elixir` installed.

2) On cloned repo create `.github_ops.yaml` file with content
```yaml
---
token: "your_TOKEN"
github_repos: ["MalloZup/kubeojo", "MalloZup/blacktango", "MalloZup/bacheca"]
# used by Github.comment_prs_and_issues
tolleration_days: 30
```
Define a list of GitHub repos where you want to perform actions.
- `tolleration_days` is positive number see API `Github.comment_prs_and_issues`


3) run `iex -S mix` for launching the console

Now let's look at `Blacktango API` calls.

## Blacktango API/Usage:

Assuming you are in console mode, see step 3 of quickstart, type in your terminal

`Github.comment_prs_and_issues`

What does this command do?
On a high-level perspective it will help to keep projects healthy, reminding people on older issues or PR with a gently comment on GitHub PR/ISSUE, if they are working on it.

It ill write a comment on GitHub Pull-requests and Issues, reminding that the issue is older then the 30 days. ( You can make the value bigger or smaller see `tolleration_days:`)

`example`: if you have 4 project with 4000 issues older then 30 days, blacktango will automatically leave a comment on the issue that say that the issue is older then 30/more days, and maybe it should be closed

here is a live example: ( data is faked but you will have this)

```elixir
iex(2)> Github.comment_prs_and_issues
checking Issues
adding comment to GitHub Issue https://github.com/MalloZup/il-bar-bro/issues/740
checking Pull-Requests
adding comment to GitHub PR https://github.com/MalloZup/tania/pull/705
adding comment to GitHub PR https://github.com/MalloZup/gino/pull/719
```

# Goals and roadmap:

API: Currently supported: 
- (GitHub API v4 `graphql`).

