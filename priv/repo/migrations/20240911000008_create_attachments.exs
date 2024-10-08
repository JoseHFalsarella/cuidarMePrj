defmodule CuidarMePrj.Repo.Migrations.CreateAttachments do
  use Ecto.Migration

  def change do
    create table(:attachments) do
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
      add :malware_scan_result, :string
      add :malware_access_override, :string
      add :inserted_at, :utc_datetime
      add :updated_at, :utc_datetime
      add :comment_id, references(:comments)
    end
  end
end
