defmodule Blacktango do
  require HTTPoison
  @options [ssl: [{:versions, [:"tlsv1.2"]}], recv_timeout: 500_000]
  @moduledoc """
  Documentation for Blacktango.
  """

  @doc """

  Blacktango actions.

  ## Examples

      # perform action on git issues/prs
      iex> Blacktango.githubIssues()

  """

  def githubIssues do
     credentials()
     github_repos()
     get_issues()
  end

  ## http client
  
  defp get_issues do
    url = "https://github.com/MalloZup/kubeojo/"
    headers = set_headers_with_credentials()

    case HTTPoison.get(url, headers, @options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        builds = body #|> Poison.decode!()
    end
  end

  defp set_headers_with_credentials do
    [:ok, user, pwd] = credentials()
    [Authorization: "#{user} #{pwd}", Accept: "Application/json; Charset=utf-8"]
  end
 
  ## yaml operations
  @root_dir File.cwd!()
  defp credentials do
    [config | _] = :yamerl_constr.file("#{@root_dir}/config/github_credentials.yaml")
    username = :proplists.get_value('username', config) |> List.to_string()
    password = :proplists.get_value('password', config) |> List.to_string()
    [:ok, username, password]
  end

  defp github_repos do
    [config | _] = :yamerl_constr.file("#{@root_dir}/config/github_credentials.yaml")
    :proplists.get_value('github_repos', config)
  end
end
