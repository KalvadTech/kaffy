defmodule Kaffy.MixProject do
  use Mix.Project

  @version "1.6.0-rc.0"

  def project do
    [
      app: :kaffy,
      version: @version,
      elixir: "~> 1.7",
      compilers: [:phoenix] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "Kaffy",
      source_url: "https://github.com/aesmail/kaffy",
      deps: deps(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Kaffy.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "1.5.6", only: [:dev, :test], runtime: false},
      {:ecto, "3.7.1"},
      {:ex_doc, "0.25.2", only: :dev, runtime: false},
      {:jason, "1.2.2"},
      {:mock, "0.3.7", only: :test},
      {:phoenix, "1.6.0-rc.0"},
      {:phoenix_html, "3.0.3"}
    ]
  end

  defp description() do
    "Powerfully simple admin package for phoenix applications"
  end

  defp package() do
    [
      maintainers: ["Abdullah Esmail"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/aesmail/kaffy",
        "Demo" => "https://kaffy.gigalixirapp.com/admin/"
      }
    ]
  end

  def docs() do
    [
      main: "readme",
      name: "Kaffy",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/kaffy",
      source_url: "https://github.com/aesmail/kaffy",
      extras: [
        "README.md"
      ]
    ]
  end
end
