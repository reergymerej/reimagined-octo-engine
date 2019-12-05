defmodule Simple.Items.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :text, :string
    field :hidden, :boolean

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
