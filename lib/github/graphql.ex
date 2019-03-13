defmodule Github.Graphql do
  require Neuron

  # get open issues with milestone. later we will compare if the issue is to old.
  def get_repo_issues(owner, repo) do
    Neuron.query("""
    query {
      repository(owner:\"#{owner}\", name:\"#{repo}\") {
        issues(last:100, states:OPEN) {
          edges {
            node {
              title
              url
              id
              createdAt
              updatedAt
              milestone {
                title
                dueOn
                }
              }
            }
          }
        }
      }
  """)
    end

  def get_repo_prs(owner, repo) do
    Neuron.query("""
    query {
      repository(owner:\"#{owner}\", name:\"#{repo}\") {
        pullRequests(last:100, states:OPEN) {
          edges {
            node {
              title
              url
              id
              createdAt
              updatedAt
              milestone {
                title
                dueOn
                }
              }
            }
          }
        }
      }
  """)
    end




def add_comment(comment, issue_id) do
  Neuron.query("""
  mutation AddReactionToIssue {
    addComment(input:{subjectId:\"#{issue_id}\", body:\"#{comment}\"}) {
            subject {
              id
           }
          }
        }
   """)
end

end