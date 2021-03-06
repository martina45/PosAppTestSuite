require 'calabash-android/calabash_steps'
require 'calabash-android/steps/enter_text_steps'

When("I login to tenant {string} as user {string} with password {string}") do |tenantId, user, password|
	steps %{
		Then I clear input field with id "SetupTenantIdET"
		Then I enter text "#{tenantId}" into field with id "SetupTenantIdET"
		Then I press the enter button
		Then I clear input field with id "SetupTenantUsernameET"
		Then I enter text "#{user}" into field with id "SetupTenantUsernameET"
		Then I press the enter button
		Then I clear input field with id "SetupTenantPasswordET"
		Then I enter text "#{password}" into field with id "SetupTenantPasswordET"
		Then I press the enter button
		Then I press "SetupNextButton"
	}
end

Then /^I scroll "([^\"]*)" to text "([^\"]*)" and touch it$/ do |listId,name|
    element="* text:'#{name}'"      
    if !element_exists(element)
        wait_poll(:until_exists => "* text:'#{name}'", :timeout => 20) do
            scroll("* id:\"#{listId}\"", :down)
        end
        if element_exists(element)
            touch(element)
        else
            screenshot_and_raise "could not find the cell"
        end
        else
            touch(element)
        end
end

Then("I choose the {string} store") do |store| 
	select_item_from_spinner("* text:'#{store}'")

	steps %{ 
		Then I press "SetupNextButton"
	}

end


Then("I login as a cashier {string} with {int}{int}{int}{int}") do |cashier,pin1,pin2,pin3,pin4| 
	steps %{
		Then I press "LoginUsersSpinner"
	}
	steps %{
		Then I scroll "LoginUsersList" to text "#{cashier}" and touch it
		Then I press "LoginButton#{pin1}"
		Then I press "LoginButton#{pin2}"
		Then I press "LoginButton#{pin3}"
		Then I press "LoginButton#{pin4}"
	}
end


When("I'm logged in with {int}{int}{int}{int}") do |pin1,pin2,pin3,pin4| 
  steps %{
		Then I press "LoginButton#{pin1}"
		Then I press "LoginButton#{pin2}"
		Then I press "LoginButton#{pin3}"
		Then I press "LoginButton#{pin4}"
	}
end

Then("I press {string} and I add {string} to my basket {int} time(s) and I press {string}") do |name1,name2,count,name3|
  steps %{
  Then I press "#{name1}"
  }
        	
       count.to_i.times do 
           touch("* text:'#{name2}'")    
       end   
       
  steps %{
  Then I press "#{name3}"
  Then I wait for 2 seconds
}
end

Then("I logout") do
  steps %{
  Then I press "LocafoxToolbarCashier"
}
end

Then /^I (?:press|touch)"([^\"]*)"$/ do |name|
touch("button marked:'#{name}'")
sleep(STEP_PAUSE)
end


Then("I add {string} to my basket {int} time(s)") do |name,count| 
	
	count.to_i.times do 
		touch("* text:'#{name}'")

    end
end

Then("I press {int}{int}{int}{int}") do |pad1,pad2,pad3,pad4|
  steps %{
    
        Then I press "btnCashNumpad#{pad1}"
		Then I press "btnCashNumpad#{pad2}"
		Then I press "btnCashNumpad#{pad3}"
		Then I press "btnCashNumpad#{pad4}"
  }
end

Then ("I press id {string} with text {string}") do |id,text|
  tap_when_element_exists("* id:'#{id}' text:'#{text}'")
end  

Then /^I select field-id "([^\"]*)" and enter text "([^\"]*)"$/ do |id,text|
  enter_text("android.widget.EditText id:'#{id}'", text)
end

Then /^I enter "([^\"]*)"$/ do |text_to_type|
  wait_for_keyboard()
  keyboard_enter_text text_to_type
  sleep(STEP_PAUSE)
end

Then /^I press enter button$/ do
  press_enter_button
end

Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |id, text|
      wait_for_element_exists("* id:'#{id}' text:'#{text}'")
end

Then("I press {string} for {int} time(s)") do |name,count| 
	
	count.to_i.times do 
		touch("* id:'#{name}'")

    end
end

Then("I run a search for {string}") do |searchTerm| 
	steps %{
		Then I press "searchProductsImageView"
		Then I enter text "#{searchTerm}" into field with id "searchProductsEditText"
		Then I press the enter button
	}
end

Then("I conduct a cash transaction for {string}") do |amount|
  steps %{
    Then I press "#{amount}"
    Then I press "checkoutCloseButton"
    Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
    Then I wait for 2 seconds
    Then I press "SuccessNewTransaction"
    Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
    Then I wait for 2 seconds
  }
end

Then /^I hide keyboard$/ do
    hide_soft_keyboard()
end

Then ("I conduct a {string} invoice payment") do |name|
  steps %{
         Then I press "DownPaymentSearch"
         Then I enter text "864" into field with id "DownPaymentSearch"
         Then I press "DownPaymentSearchResults"
         Then I hide keyboard
         Then I press 2000
         Then I press "SpecialTransactionsAccept"
         Then I scroll "DownPaymentCheckoutPaymentTabLayout" to text "#{name}" and touch it
         Then I press "DownPaymentCheckoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds      
      }
end

Then ("I conduct an invoice payment in cash") do
  steps %{
         Then I press "DownPaymentSearch"
         Then I enter text "864" into field with id "DownPaymentSearch"
         Then I press "DownPaymentSearchResults"
         Then I hide keyboard
         Then I press 2000
         Then I press "SpecialTransactionsAccept"
         Then I press "$20.00"
         Then I press "DownPaymentCheckoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds      
      }
end

Then ("I change the first name of the selected customer to {string} in the CRM") do |name|
  steps %{
         Then I select field-id "customerSearchEditText" and enter text "Schmidt"
         Then I press "customerSearchItemClick"
         Then I press "customerDetailsEditImageView"
         Then I clear input field with id "customerNameEditText"
         Then I enter text "#{name}" into field with id "customerNameEditText"
         Then I hide keyboard
         Then I press "customerDetailsSaveButton"   
      }
end

Then ("I validate the new name of the customer {string} in the basket") do |name|
    steps %{
         Then the "CartCustomerName" field should contain "#{name}"
         Then I press "CartCustomerLayout"
         Then I press "CartCustomerDelete"   
       }
end

Then /^I enter random email address$/ do
      random_string = random_string()
      random_email = "auto#{random_string}@qa.test"
      steps %{
      Then I enter text "#{random_email}" into field with id "customerCreateEmailEditText"
      }
end

Then /^I enter random first name$/ do
      random_string = random_string()
      random_firstname = "auto#{random_string}"
      steps %{
      Then I enter text "#{random_firstname}" into field with id "customerCreateNameEditText"
      }
end

Then /^I enter random surname$/ do
      random_string = random_string()
      random_surname = "auto#{random_string}"
      steps %{
      Then I enter text "#{random_surname}" into field with id "customerCreateLastNameEditText"
      }
end

Then ("I add the voucher code and press {int}{int}{int}{int}{int}{int}{int}{int}{int}{int}") do |pad1,pad2,pad3,pad4,pad5,pad6,pad7,pad8,pad9,pad10|
  steps %{   
    Then I press "btnCashNumpad#{pad1}"
    Then I press "btnCashNumpad#{pad2}"
    Then I press "btnCashNumpad#{pad3}"
    Then I press "btnCashNumpad#{pad4}"
    Then I press "btnCashNumpad#{pad5}"
    Then I press "btnCashNumpad#{pad6}"
    Then I press "btnCashNumpad#{pad7}"
    Then I press "btnCashNumpad#{pad8}"
    Then I press "btnCashNumpad#{pad9}"
    Then I press "btnCashNumpad#{pad10}"
  }
end

Then ("I conduct a card payment with {string}") do |name|
    steps %{
         Then I press "#{name}"
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
       }
end 

Then ("I conduct a payment with foreign voucher") do
  steps %{   
         Then I press "Gutschein"
         Then I press "Fremder Gutschein"
         Then I press 3000
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
  }
end 

Then ("I conduct a payment with Locafox voucher") do
  steps %{   
         Then I press "Gutschein"
         Then I add the voucher code and press 2062666789
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
  }
end 





