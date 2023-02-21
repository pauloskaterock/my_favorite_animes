require "application_system_test_case"

class MyFavoriteAnimesTest < ApplicationSystemTestCase
  setup do
    @my_favorite_anime = my_favorite_animes(:one)
  end

  test "visiting the index" do
    visit my_favorite_animes_url
    assert_selector "h1", text: "My favorite animes"
  end

  test "should create my favorite anime" do
    visit my_favorite_animes_url
    click_on "New my favorite anime"

    fill_in "Description", with: @my_favorite_anime.description
    fill_in "Text", with: @my_favorite_anime.text
    fill_in "Title", with: @my_favorite_anime.title
    click_on "Create My favorite anime"

    assert_text "My favorite anime was successfully created"
    click_on "Back"
  end

  test "should update My favorite anime" do
    visit my_favorite_anime_url(@my_favorite_anime)
    click_on "Edit this my favorite anime", match: :first

    fill_in "Description", with: @my_favorite_anime.description
    fill_in "Text", with: @my_favorite_anime.text
    fill_in "Title", with: @my_favorite_anime.title
    click_on "Update My favorite anime"

    assert_text "My favorite anime was successfully updated"
    click_on "Back"
  end

  test "should destroy My favorite anime" do
    visit my_favorite_anime_url(@my_favorite_anime)
    click_on "Destroy this my favorite anime", match: :first

    assert_text "My favorite anime was successfully destroyed"
  end
end
