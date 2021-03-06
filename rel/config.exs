# Import all plugins from `rel/plugins`
# They can then be used by adding `plugin MyPlugin` to
# either an environment, or release definition, where
# `MyPlugin` is the name of the plugin module.
~w(rel plugins *.exs)
|> Path.join()
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
      # This sets the default environment used by `mix release`
    default_environment: :prod

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/config/distillery.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  # If you are running Phoenix, you should make sure that
  # server: true is set and the code reloader is disabled,
  # even in dev mode.
  # It is recommended that you build with MIX_ENV=prod and pass
  # the --env flag to Distillery explicitly if you want to use
  # dev mode.
  set dev_mode: true
  set include_erts: false
  set cookie: :"OM}ZR3gh>)@xu]h|9Hq,1ZX4epn8bST2=y75Iv=:[|oNo1B<WmZ)G0{}$3NSfDI{"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"{f(7V%SRn.V[A7%{I]vz?`<cX3QaK2u1;7P.[^Tz$Pmb3D_(s?cUz>|$fjSA{Dg*"
  set output_dir: "rel/app_count"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :app_count do
  set version: current_version(:app_count)
  set applications: [
    :runtime_tools
  ]
end
