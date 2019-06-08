# MessagingApi

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## App releases
https://hexdocs.pm/distillery/introduction/walkthrough.html  
## Using docker
https://hexdocs.pm/distillery/guides/working_with_docker.html  

## Notes to myself
`phx.gen.json [Context] [Schema Name] [plural schema name = db table name] [database field:data type]`  
`example: mix phx.gen.json Accounts User users email:unique password_hash:string`