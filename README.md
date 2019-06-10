# MessagingApi

## Development
To start your Phoenix server:

  * Start a local database `sudo service postgresql start`
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Docker-compose
  * Build the image of the api `make build`
  * Start the docker-compose `docker-compose -f docker/docker-compose.yml up --build`

## App releases (not implemented yet)
Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).  

Distillery & Docker: https://hexdocs.pm/distillery/introduction/walkthrough.html  

## Notes to myself
`phx.gen.json [Context] [Schema Name] [plural schema name = db table name] [database field:data type]`  
`example: mix phx.gen.json Accounts User users email:unique password_hash:string`