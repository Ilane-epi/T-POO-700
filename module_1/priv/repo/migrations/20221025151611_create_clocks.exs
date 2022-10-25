defmodule Module1.Repo.Migrations.CreateClocks do
  use Ecto.Migration

  def change do
    create table(:clocks) do
      add :time, :naive_datetime
      add :status, :boolean, default: false, null: false
      add :user, references (:user, on_delete: :delete_all)
      timestamps()
    end
  end
end
