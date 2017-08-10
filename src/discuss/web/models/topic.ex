defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
  end
  # Model validation
  # struct - Model of data
  # params - New data of model
  # cast() - Produces a changeset
  # validate_required - Add errors to the changeset
  # Finally the function returns a changeset
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
