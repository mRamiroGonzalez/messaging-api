FROM elixir:1.8.2-alpine

ENV MIX_ENV=prod

RUN apk update && \
  apk upgrade --no-cache && \
  apk add --no-cache git build-base && \
  mix local.rebar --force && \
  mix local.hex --force

WORKDIR /app

COPY mix* ./
RUN mix do deps.get, deps.compile

COPY . .

CMD ["mix", "do", "ecto.migrate",",","phx.server"]