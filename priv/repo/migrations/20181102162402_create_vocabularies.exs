defmodule NoVocabularies.Repo.Migrations.CreateVocabularies do
  use Ecto.Migration

  def change do
    create(table(:vocabularies)) do
      add(:name, :string)
      add(:meaning, :string)
      add(:example, :text)

      add(:user_id, references(:users), null: false)
      add(:status_id, references(:vocabulary_status), null: false)

      timestamps(type: :timestamptz)
    end

    create index("vocabularies", [:user_id], using: "hash")
    create index("vocabularies", [:status_id], using: "hash")
  end
end
