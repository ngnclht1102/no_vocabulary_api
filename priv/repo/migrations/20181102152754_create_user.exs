defmodule NoVocabularies.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create(table(:users)) do
      add(:full_name, :string)
      add(:email, :string)
      add(:phone, :string)
      add(:password, :string)
      add(:date_of_birth, :timestamptz)
      add(:social_id, :string)
      
      timestamps(type: :timestamptz)
    end
  end
end
