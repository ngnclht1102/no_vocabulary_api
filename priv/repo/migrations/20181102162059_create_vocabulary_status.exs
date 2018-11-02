defmodule NoVocabularies.Repo.Migrations.CreateVocabularyStatus do
  use Ecto.Migration

  def change do
    create(table(:vocabulary_status)) do
      add(:name, :string)
    end
  end
end
