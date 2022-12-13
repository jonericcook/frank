defmodule Frank.Doug do
  @app_name :frank

  def app_name(), do: @app_name

  def on?(feature_flag) do
    Doug.on?(@app_name, feature_flag)
  end
end
