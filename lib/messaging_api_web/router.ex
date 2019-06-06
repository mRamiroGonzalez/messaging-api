defmodule MessagingApiWeb.Router do
  use MessagingApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", MessagingApiWeb do
    pipe_through :api

    resources "/users", UserController, only: [:create, :show]
  end
end
