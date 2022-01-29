require "application_system_test_case"

class PlataformsTest < ApplicationSystemTestCase
  setup do
    @plataform = plataforms(:one)
  end

  test "visiting the index" do
    visit plataforms_url
    assert_selector "h1", text: "Plataforms"
  end

  test "should create plataform" do
    visit plataforms_url
    click_on "New plataform"

    check "Active" if @plataform.active
    fill_in "Name", with: @plataform.name
    click_on "Create Plataform"

    assert_text "Plataform was successfully created"
    click_on "Back"
  end

  test "should update Plataform" do
    visit plataform_url(@plataform)
    click_on "Edit this plataform", match: :first

    check "Active" if @plataform.active
    fill_in "Name", with: @plataform.name
    click_on "Update Plataform"

    assert_text "Plataform was successfully updated"
    click_on "Back"
  end

  test "should destroy Plataform" do
    visit plataform_url(@plataform)
    click_on "Destroy this plataform", match: :first

    assert_text "Plataform was successfully destroyed"
  end
end
