defmodule NoVocabularies.VocabularyStatus do
    use Ecto.Schema
    import Ecto.Changeset
  
    @allow_fields [:name]
    @required_fields [:name]
  
    schema "vocabulary_status" do
      field(:name, :string)
    end
  
    def changeset(%__MODULE__{} = model, attrs) do
      model
        |> cast(attrs, @allow_fields)
        |> validate_required(@required_fields)
    end
  
  end
  