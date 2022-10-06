defmodule HelloPhoenix.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :boi, :string
    field :email, :string
    field :name, :string
    field :number_of_pets, :integer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :boi, :number_of_pets])
    |> validate_required([:name, :email, :boi, :number_of_pets])
  end
end
