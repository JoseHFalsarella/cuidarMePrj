defmodule CuidarMePrj.CustomField do
  alias CuidarMePrj.Ticket
  use Ecto.Schema
  import Ecto.Changeset

  schema "custom_fields" do
    field :value, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(custom_field, attrs) do
    custom_field
    |> cast(attrs, [])
    |> validate_required([])
  end
end