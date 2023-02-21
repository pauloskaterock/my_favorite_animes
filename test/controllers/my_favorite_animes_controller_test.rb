require "test_helper"

class MyFavoriteAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_favorite_anime = my_favorite_animes(:one)
  end

  test "should get index" do
    get my_favorite_animes_url
    assert_response :success
  end

  test "should get new" do
    get new_my_favorite_anime_url
    assert_response :success
  end

  test "should create my_favorite_anime" do
    assert_difference("MyFavoriteAnime.count") do
      post my_favorite_animes_url, params: { my_favorite_anime: { description: @my_favorite_anime.description, text: @my_favorite_anime.text, title: @my_favorite_anime.title } }
    end

    assert_redirected_to my_favorite_anime_url(MyFavoriteAnime.last)
  end

  test "should show my_favorite_anime" do
    get my_favorite_anime_url(@my_favorite_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_favorite_anime_url(@my_favorite_anime)
    assert_response :success
  end

  test "should update my_favorite_anime" do
    patch my_favorite_anime_url(@my_favorite_anime), params: { my_favorite_anime: { description: @my_favorite_anime.description, text: @my_favorite_anime.text, title: @my_favorite_anime.title } }
    assert_redirected_to my_favorite_anime_url(@my_favorite_anime)
  end

  test "should destroy my_favorite_anime" do
    assert_difference("MyFavoriteAnime.count", -1) do
      delete my_favorite_anime_url(@my_favorite_anime)
    end

    assert_redirected_to my_favorite_animes_url
  end
end
