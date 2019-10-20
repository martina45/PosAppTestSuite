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


Then("I press {string} and I add {string} to my basket {int} times and I press {string}") do |name1,name2,count,name3|
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

When("I'm logged in with {int}{int}{int}{int}") do |pin1,pin2,pin3,pin4| 
  steps %{
		Then I press "LoginButton#{pin1}"
		Then I press "LoginButton#{pin2}"
		Then I press "LoginButton#{pin3}"
		Then I press "LoginButton#{pin4}"
	}
end

Then /^I (?:press|touch)"([^\"]*)"$/ do |name|
        touch("button marked:'#{name}'")
                sleep(STEP_PAUSE)
                
end

Then("I add {string} to my basket {int} times") do |name,count| 
	
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
