Given /^Make sure the SOC exists and not Scheduled for "(.*?)"$/ do |term|
  @manageSoc = make ManageSoc, :term_code=>term
  @manageSoc.search
  @manageSoc.check_lock_button_exists
end

When /^Change the SOC state to Locked$/ do
  @manageSoc.lockSoc
end

Then /^Verify the SOC has been enabled for Final edit$/ do
  @manageSoc.check_finaledit_button_exists
end