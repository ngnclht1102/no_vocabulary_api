defmodule NoVocabularies.User do
    use Ecto.Schema
    import Ecto.Changeset
  
    @allow_fields [:full_name, :email, :phone, :date_of_birth]
    @required_fields [:email, :full_name]
  
    schema "users" do
      field(:full_name, :string)
      field(:email, :string)
      field(:phone, :string)
      field(:social_id, :string)
      field(:date_of_birth, :utc_datetime)
    end
  
    def changeset(%__MODULE__{} = model, attrs) do
      model
        |> cast(attrs, @allow_fields)
        |> validate_required(@required_fields)
    end
  
  end
  