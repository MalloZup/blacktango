defmodule Configuration.Yaml do  
  ## yaml operations
  @root_dir File.cwd!()
  def credentials do
    [config | _] = :yamerl_constr.file("#{@root_dir}/.github_ops.yaml")
    token = :proplists.get_value('token', config) |> List.to_string()
    [:ok, token]
  end

  def github_repos do
    [config | _] = :yamerl_constr.file("#{@root_dir}/.github_ops.yaml")
    :proplists.get_value('github_repos', config)
  end

  def tolleration_days do
    [config | _] = :yamerl_constr.file("#{@root_dir}/.github_ops.yaml")
    days = :proplists.get_value('tolleration_days', config) 
    [:ok, days]
  end

end
