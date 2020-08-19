defmodule Wanderlist.Repo do
  use Ecto.Repo,
    otp_app: :wanderlist,
    adapter: Ecto.Adapters.Postgres
end
