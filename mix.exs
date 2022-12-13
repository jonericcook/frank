defmodule Frank.MixProject do
  use Mix.Project

  def project do
    [
      app: :frank,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Frank.Application, []}
    ]
  end

  defp deps do
    [
      {:doug, git: "https://github.com/jonericcook/doug.git", branch: "main"}
    ]
  end
end
