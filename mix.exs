defmodule AeternityNode.Mixfile do
  use Mix.Project

  def project do
    [
      app: :aepp_sdk_elixir,
      version: "0.1.0",
      elixir: "~> 1.8",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp description do
    "Elixir SDK for the revolutionary æternity blockchain, targeting the
     æternity node implementation."
  end

  defp package() do
    [
      licenses: ["ISC License"],
      links: %{"GitHub" => "https://github.com/aeternity/aepp-sdk-elixir"}
    ]
  end

  defp deps do
    [
      {:tesla, "~> 1.2"},
      {:poison, "~> 4.0"},
      {:ex_doc, "~> 0.19.3", runtime: false}
    ]
  end
end
