defmodule MessagingApi.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :messaging_api,
                              module: MessagingApi.Guardian,
                              error_handler: MessagingApi.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end