When /^I revise an AO's actual delivery logistics$/ do

  # setup - create a test CO and place it into "Planned"-status
  @course_offering = create CourseOffering, :create_by_copy=>(make CourseOffering, :term=>"201201")
  @course_offering.manage
  on ManageCourseOfferings do |page|
    page.select_all
    page.go
  end

  # test - change the AO's days-field
  on ManageCourseOfferings do |page|
    page.edit('A')
  end
  on ActivityOfferingMaintenance do |page|
    page.revise_actual_delivery_logistics
    page.edit_requested_delivery_logistics_row(1)
    page.new_request_delivery_logistics_days_field.value.should_not == "MTWHFSU"
    page.new_request_delivery_logistics_days_field.set("MTWHFSU")
    page.update_new_request
    page.days_for_requested_delivery_logistics_row(1).should == "M T W H F S U"
    page.save_and_process_requested_delivery_logistics
    page.submit
  end
end

Then /^the AO's delivery logistics shows the new schedule$/ do
  @course_offering.manage
  on ManageCourseOfferings do |page|
    page.select_all
    page.go
    page.edit('A')
  end
  on ActivityOfferingMaintenance do |page|
    page.days_for_actual_delivery_logistics_row(1).should == "M T W H F S U"
  end
end