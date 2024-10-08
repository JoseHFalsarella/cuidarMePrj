defmodule CuidarMePrj.Repo.Migrations.CreatePhotos do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :url, :string
      add :file_name, :string
      add :content_url, :string
      add :mapped_content_url, :string
      add :content_type, :string
      add :size, :integer
      add :width, :integer
      add :height, :integer
      add :inline, :boolean
      add :deleted, :boolean
      add :inserted_at, :utc_datetime
      add :updated_at, :utc_datetime
      add :assignee_id, references(:assignees)
      add :requester_id, references(:requesters)
      add :submitter_id, references(:submitters)
      add :collaborator_id, references(:collaborators)

    end
  end
end
