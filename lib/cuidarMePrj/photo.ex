defmodule CuidarMePrj.Photo do
  use Ecto.Schema
  import Ecto.Changeset

  alias CuidarMePrj.Thumbnail

  schema "photos" do
    field :url, :string
    field :file_name, :string
    field :content_url, :string
    field :mapped_content_url, :string
    field :content_type, :string
    field :size, :integer
    field :width, :integer
    field :height, :integer
    field :inline, :boolean
    field :deleted, :boolean

    has_many :thumbnails, Thumbnail

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(photo, attrs) do
    photo
    |> cast(attrs, [])
    |> validate_required([])
  end
end