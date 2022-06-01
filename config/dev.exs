use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
# goth configuration
apprent_db_user = System.get_env("APPRENT_DB_USERNAME", System.get_env("USER", "postgres"))
apprent_db_password = System.get_env("APPRENT_DB_PASSWORD", "")

# only needed by external_test
# Sandbox creds
# Production Creds for DEV testing should be in added to your dev.secret.exs
config :app_count, AppCount.Adapters.Twilio.Credential,
  sid: "ACb00a5b065ca8143b493adc85b6ac272b",
  token: "5e026d4b7abf61162fe1a837e6d9d9bc",
  phone_from: "+15005550006",
  url:
    "https://api.twilio.com/2010-04-01/Accounts/ACb00a5b065ca8143b493adc85b6ac272b/Messages.json"

#

config :honeybadger,
  environment_name: :dev

config :app_count,
       AppCountWeb.Endpoint,
       http: [
         port: 4002 + String.to_integer(System.get_env("PORT") || "0")
       ],
       https: [
         port: 4448 + String.to_integer(System.get_env("PORT") || "0"),
         keyfile: "priv/keys/wildcard.key",
         cipher_suite: :strong,
         certfile: "priv/keys/wildcard.cert",
         secure_renegotiate: false
       ],
       debug_errors: true,
       code_reloader: true,
       check_origin: false,
       watchers: [
         node: [
           "node_modules/webpack/bin/webpack.js",
           "--mode",
           "development",
           "--watch-stdin",
           cd: Path.expand("../assets", __DIR__)
         ]
       ]

# ## SSL Support
#
# In order to use HTTPS in development, a self-signed
# certificate can be generated by running the following
# command from your terminal:
#
#     openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com" -keyout priv/server.key -out priv/server.pem
#
# The `http:` config above can be replaced with:
#
#     https: [port: 4000, keyfile: "priv/server.key", certfile: "priv/server.pem"],
#
# If desired, both `http:` and `https:` keys can be
# configured to run both http and https servers on
# different ports.

# Watch static and templates for browser reloading.
config :app_count,
       AppCountWeb.Endpoint,
       live_reload: [
         patterns: [
           ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
           ~r{priv/gettext/.*(po)$},
           ~r{lib/app_count_web/views/.*(ex)$},
           ~r{lib/app_count_web/templates/.*(eex)$}
         ]
       ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 10
config :phoenix, :plug_init_mode, :runtime

# Configure your database
config :app_count,
       AppCount.Repo,
       username: apprent_db_user,
       password: apprent_db_password,
       database: "app_count_dev",
       hostname: "localhost",
       pool_size: 10

# Environment variables used throughout the app
config :app_count, AppCount, %{
  environment: :dev,
  authorize_env: :sandbox,
  apprent_crypt: %{
    secret: "wuivsaqr903423revuwf43q9r43iung2",
    sign: "affprent!"
  },
  forms_iv: "dev-environment!",
  rent_apply_key:
    Path.expand("./config/pub.key")
    |> File.read!()
    |> String.to_integer(),
  socket_path:
    Path.expand("server.sock")
    |> URI.encode_www_form(),
  crypto_server_path: Path.expand("crypto/crypto"),
  local_crypto_key: "dmgMPNnFavFkpv4J2OxhL46yYCDzdOU8kzQrCEXXaDg=",
  home_url: "https://appcount.appr:4448"
}

# ---- Stubs and Fakes -----------------------------------------
#
config :app_count, AppCountCom.Mailer.Dev, adapter: Bamboo.LocalAdapter
config :app_count, AppCount.Adapters.TwilioAdapter, AppCount.Support.Adapters.TwilioFake

config :app_count,
  adapters: [
    credit_card: AppCount.Support.Adapters.CreditCardAuthorizeSandbox,
    bank_account: AppCount.Support.Adapters.BankAccountPayscapeFake
  ]

config :app_count, AppCount.Adapters.SoftLedger.Credential,
  grant_type: "client_credentials",
  audience: "https://sl-sb.softledger.com",
  client_id: "kblnl4ynjhzeEX5OlTgKUZ5UQbvG1m9Q",
  client_secret: "BtH7ROLm0HHr7F-U2HMiPxkY5-HHmQga-WESKBritpbzSC8Uw5J1shU4LrUlZzix",
  tenantUUID: "01978f23-a529-4cdd-938e-219ea9e720b7"

config :app_count, AppCount.Adapters.SoftLedger.Config,
  url: "https://sb-api.softledger.com/api",
  # sandbox underscore_id for root location is 876
  parent_id: 876,
  # sandbox number for ar_account is 532_820
  # sandbox underscore_id for ar_account 10_855
  ar_account_id: 10_855

# ar_account_id: 532_820

config :app_count, AppCount.Core.FeatureFlags, using_soft_ledger: true

import_config "dev.secret.exs"

if Mix.env() == :dev do
  config :mix_test_watch, clear: true
end
