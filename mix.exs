defmodule OAuth2Example.Mixfile do
  use Mix.Project

  def project do
    [app: :oauth2_example,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {OAuth2Example, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger,
                    :phoenix_ecto, :postgrex, :oauth2]]
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 1.4.10"},
     {:phoenix_pubsub, "~> 1.1"},
     {:phoenix_ecto, "~> 4.0"},
     {:ecto_sql, "~>3.1"},
     {:postgrex, ">= 0.0.0"},
     {:phoenix_html, "~> 2.13.3"},
     {:gettext, "~> 0.17.0"},
     {:plug_cowboy, "~> 2.0"},
     {:oauth2, "~> 2.0"},
     {:poison, "~> 4.0.1"}
    ]
  end
end
