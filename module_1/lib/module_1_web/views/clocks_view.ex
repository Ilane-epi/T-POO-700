defmodule Module1Web.ClocksView do
  use Module1Web, :view
  alias Module1Web.ClocksView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, ClocksView, "clocks.json")}
  end

  def render("show.json", %{clocks: clocks}) do
    %{data: render_one(clocks, ClocksView, "clocks.json")}
  end

  def render("clocks.json", %{clocks: clocks}) do
    %{
      id: clocks.id,
      time: clocks.time,
      status: clocks.status
    }
  end
end
