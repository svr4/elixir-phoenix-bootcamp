defmodule Discuss.Repo.Migrations.AddUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :provider, :string
      add :token, :string

      # Adds fields CreatedAt(date) & LastModifiedAt(date)
      timestamps()
    end
  end
end
