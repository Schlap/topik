require 'spec_helper'

feature "User submits email" do
  scenario "when browsing the page" do
    expect(Contact.count).to eq(0)
    visit '/'
    submit_email("fazil@barefoot.com")
    expect(Contact.count).to eq 1
    contact = Contact.first
    expect(contact.email).to eq ("fazil@barefoot.com")
  end

    def submit_email(email)
      within(".new-email") do
      fill_in "email", :with => email
      click_button 'send'
    end
  end
end
