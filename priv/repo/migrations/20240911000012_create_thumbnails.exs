defmodule CuidarMePrj.Repo.Migrations.CreateThumbnails do
  use Ecto.Migration

  def change do
    create table(:thumbnails) do
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
      add :attachment_id, references(:attachments)
      add :malware_access_override, :string
      add :malware_scan_result, :string
      add :photo_id, references(:photos)
    end
  end
end
