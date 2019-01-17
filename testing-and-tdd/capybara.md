* Feature tests in rspec (`feature 'something' do...end`) automatically use capybara.
* You need to go into the spec helper and require capybara, rspec, capybara/rspec, and your app.
  - You also need to set Capybara.app to your app.
* `page` will refer to whatever page your app is on.


## How to write feature tests
* Two steps to writing any capybara feature test:

  1. What does the user have to do?
  2. What does the user expect to see after doing it?

* example:

```
  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Dave'
      fill_in :player_2_name, with: 'Mittens'
      click_button 'Submit'
      expect(page).to have_content 'Dave vs. Mittens'
    end
  end
```
