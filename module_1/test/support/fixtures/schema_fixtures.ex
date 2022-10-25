defmodule Module1.SchemaFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Module1.Schema` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        username: "some username"
      })
      |> Module1.Schema.create_user()

    user
  end

  @doc """
  Generate a clocks.
  """
  def clocks_fixture(attrs \\ %{}) do
    {:ok, clocks} =
      attrs
      |> Enum.into(%{
        status: true,
        time: ~N[2022-10-24 15:11:00]
      })
      |> Module1.Schema.create_clocks()

    clocks
  end

  @doc """
  Generate a clock.
  """
  def clock_fixture(attrs \\ %{}) do
    {:ok, clock} =
      attrs
      |> Enum.into(%{
        status: true,
        time: ~N[2022-10-24 15:16:00]
      })
      |> Module1.Schema.create_clock()

    clock
  end

  @doc """
  Generate a workingtime.
  """
  def workingtime_fixture(attrs \\ %{}) do
    {:ok, workingtime} =
      attrs
      |> Enum.into(%{
        end: ~N[2022-10-24 15:25:00],
        start: ~N[2022-10-24 15:25:00]
      })
      |> Module1.Schema.create_workingtime()

    workingtime
  end
end
