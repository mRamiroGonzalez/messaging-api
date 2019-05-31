defmodule MessagingApiWeb.Router do
  use MessagingApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MessagingApiWeb do
    pipe_through :api
  end
end
