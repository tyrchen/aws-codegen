defmodule AWS.CodeGen.Mixfile do
  use Mix.Project

  def project do
    [
      app: :aws_codegen,
      version: "0.1.0",
      elixir: "~> 1.7",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:earmark, "~> 1.1", only: :dev}, {:ex_doc, "~> 0.19", only: :dev}, {:jason, "~> 1.1.2"}]
  end
end
