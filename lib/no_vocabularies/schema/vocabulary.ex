defmodule NoVocabularies.Vocabulary do
    use Ecto.Schema
    import Ecto.Changeset

    alias LiveScore.{User, VocabularyStatus}
  
    @allow_fields [:name]
    @required_fields [:name]
  
    schema "vocabularies" do
      field(:name, :string)

      field(:meaning, :string)
      field(:example, :string)
      field(:created_at, :utc_datetime)
      field(:updated_at, :utc_datetime)
      
      belongs_to(:user, User)
      belongs_to(:vocabulary, VocabularyStatus)  
    end
  
    def changeset(%__MODULE__{} = model, attrs) do
      model
        |> cast(attrs, @allow_fields)
        |> validate_required(@required_fields)
    end
  
  end
  