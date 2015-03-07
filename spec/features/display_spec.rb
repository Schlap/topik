feature "User sees header" do

  scenario "when visiting the homepage" do
    visit '/'
    expect(page).to have_content "Topik"
  end

end
