defmodule Module1.SchemaTest do
  use Module1.DataCase

  alias Module1.Schema

  describe "users" do
    alias Module1.Schema.User

    import Module1.SchemaFixtures

    @invalid_attrs %{email: nil, username: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Schema.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Schema.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{email: "some email", username: "some username"}

      assert {:ok, %User{} = user} = Schema.create_user(valid_attrs)
      assert user.email == "some email"
      assert user.username == "some username"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Schema.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{email: "some updated email", username: "some updated username"}

      assert {:ok, %User{} = user} = Schema.update_user(user, update_attrs)
      assert user.email == "some updated email"
      assert user.username == "some updated username"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Schema.update_user(user, @invalid_attrs)
      assert user == Schema.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Schema.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Schema.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Schema.change_user(user)
    end
  end

  describe "users" do
    alias Module1.Schema.Clocks

    import Module1.SchemaFixtures

    @invalid_attrs %{status: nil, time: nil}

    test "list_users/0 returns all users" do
      clocks = clocks_fixture()
      assert Schema.list_users() == [clocks]
    end

    test "get_clocks!/1 returns the clocks with given id" do
      clocks = clocks_fixture()
      assert Schema.get_clocks!(clocks.id) == clocks
    end

    test "create_clocks/1 with valid data creates a clocks" do
      valid_attrs = %{status: true, time: ~N[2022-10-24 15:11:00]}

      assert {:ok, %Clocks{} = clocks} = Schema.create_clocks(valid_attrs)
      assert clocks.status == true
      assert clocks.time == ~N[2022-10-24 15:11:00]
    end

    test "create_clocks/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Schema.create_clocks(@invalid_attrs)
    end

    test "update_clocks/2 with valid data updates the clocks" do
      clocks = clocks_fixture()
      update_attrs = %{status: false, time: ~N[2022-10-25 15:11:00]}

      assert {:ok, %Clocks{} = clocks} = Schema.update_clocks(clocks, update_attrs)
      assert clocks.status == false
      assert clocks.time == ~N[2022-10-25 15:11:00]
    end

    test "update_clocks/2 with invalid data returns error changeset" do
      clocks = clocks_fixture()
      assert {:error, %Ecto.Changeset{}} = Schema.update_clocks(clocks, @invalid_attrs)
      assert clocks == Schema.get_clocks!(clocks.id)
    end

    test "delete_clocks/1 deletes the clocks" do
      clocks = clocks_fixture()
      assert {:ok, %Clocks{}} = Schema.delete_clocks(clocks)
      assert_raise Ecto.NoResultsError, fn -> Schema.get_clocks!(clocks.id) end
    end

    test "change_clocks/1 returns a clocks changeset" do
      clocks = clocks_fixture()
      assert %Ecto.Changeset{} = Schema.change_clocks(clocks)
    end
  end

  describe "clocks" do
    alias Module1.Schema.Clock

    import Module1.SchemaFixtures

    @invalid_attrs %{status: nil, time: nil}

    test "list_clocks/0 returns all clocks" do
      clock = clock_fixture()
      assert Schema.list_clocks() == [clock]
    end

    test "get_clock!/1 returns the clock with given id" do
      clock = clock_fixture()
      assert Schema.get_clock!(clock.id) == clock
    end

    test "create_clock/1 with valid data creates a clock" do
      valid_attrs = %{status: true, time: ~N[2022-10-24 15:16:00]}

      assert {:ok, %Clock{} = clock} = Schema.create_clock(valid_attrs)
      assert clock.status == true
      assert clock.time == ~N[2022-10-24 15:16:00]
    end

    test "create_clock/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Schema.create_clock(@invalid_attrs)
    end

    test "update_clock/2 with valid data updates the clock" do
      clock = clock_fixture()
      update_attrs = %{status: false, time: ~N[2022-10-25 15:16:00]}

      assert {:ok, %Clock{} = clock} = Schema.update_clock(clock, update_attrs)
      assert clock.status == false
      assert clock.time == ~N[2022-10-25 15:16:00]
    end

    test "update_clock/2 with invalid data returns error changeset" do
      clock = clock_fixture()
      assert {:error, %Ecto.Changeset{}} = Schema.update_clock(clock, @invalid_attrs)
      assert clock == Schema.get_clock!(clock.id)
    end

    test "delete_clock/1 deletes the clock" do
      clock = clock_fixture()
      assert {:ok, %Clock{}} = Schema.delete_clock(clock)
      assert_raise Ecto.NoResultsError, fn -> Schema.get_clock!(clock.id) end
    end

    test "change_clock/1 returns a clock changeset" do
      clock = clock_fixture()
      assert %Ecto.Changeset{} = Schema.change_clock(clock)
    end
  end

  describe "workingtimes" do
    alias Module1.Schema.Workingtime

    import Module1.SchemaFixtures

    @invalid_attrs %{end: nil, start: nil}

    test "list_workingtimes/0 returns all workingtimes" do
      workingtime = workingtime_fixture()
      assert Schema.list_workingtimes() == [workingtime]
    end

    test "get_workingtime!/1 returns the workingtime with given id" do
      workingtime = workingtime_fixture()
      assert Schema.get_workingtime!(workingtime.id) == workingtime
    end

    test "create_workingtime/1 with valid data creates a workingtime" do
      valid_attrs = %{end: ~N[2022-10-24 15:25:00], start: ~N[2022-10-24 15:25:00]}

      assert {:ok, %Workingtime{} = workingtime} = Schema.create_workingtime(valid_attrs)
      assert workingtime.end == ~N[2022-10-24 15:25:00]
      assert workingtime.start == ~N[2022-10-24 15:25:00]
    end

    test "create_workingtime/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Schema.create_workingtime(@invalid_attrs)
    end

    test "update_workingtime/2 with valid data updates the workingtime" do
      workingtime = workingtime_fixture()
      update_attrs = %{end: ~N[2022-10-25 15:25:00], start: ~N[2022-10-25 15:25:00]}

      assert {:ok, %Workingtime{} = workingtime} = Schema.update_workingtime(workingtime, update_attrs)
      assert workingtime.end == ~N[2022-10-25 15:25:00]
      assert workingtime.start == ~N[2022-10-25 15:25:00]
    end

    test "update_workingtime/2 with invalid data returns error changeset" do
      workingtime = workingtime_fixture()
      assert {:error, %Ecto.Changeset{}} = Schema.update_workingtime(workingtime, @invalid_attrs)
      assert workingtime == Schema.get_workingtime!(workingtime.id)
    end

    test "delete_workingtime/1 deletes the workingtime" do
      workingtime = workingtime_fixture()
      assert {:ok, %Workingtime{}} = Schema.delete_workingtime(workingtime)
      assert_raise Ecto.NoResultsError, fn -> Schema.get_workingtime!(workingtime.id) end
    end

    test "change_workingtime/1 returns a workingtime changeset" do
      workingtime = workingtime_fixture()
      assert %Ecto.Changeset{} = Schema.change_workingtime(workingtime)
    end
  end
end
