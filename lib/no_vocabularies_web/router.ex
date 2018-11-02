defmodule NoVocabulariesWeb.Router do
  use NoVocabulariesWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", NoVocabulariesWeb do
    pipe_through :api
  end
end
