defmodule MessagingApi.Repo do
  use Ecto.Repo,
    otp_app: :messaging_api,
    adapter: Ecto.Adapters.Postgres
end
