defmodule CuidarMePrj.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :type, :string
      add :author_id, :integer
      add :body, :text
      add :html_body, :text
      add :plain_body, :text
      add :public, :boolean
      add :audit_id, :integer
      add :ticket_id, :integer
      add :via, :text
      add :metadata, :text
      add :custom, :text
      timestamps(type: :utc_datetime)
    end
  end
end