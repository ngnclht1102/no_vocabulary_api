defmodule NoVocabularies.Repo do
  use Ecto.Repo, otp_app: :no_vocabularies

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("NO_VOCABULARIES_DATABASE_URL"))}
  end
end
