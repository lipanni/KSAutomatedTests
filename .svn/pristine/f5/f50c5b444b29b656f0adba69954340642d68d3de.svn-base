When /^I search course offerings by subject code$/ do
  @course_offering = make CourseOffering, :course=>"CHEM142"
  @course_offering.search_by_subjectcode
end

Then /^I view the course offering details$/ do
  @course_offering.view_course_details
  on ManageCourseDetails do |page|
    page.close
    end
end

When /^I can edit the course offering$/ do
  on ManageCourseOfferingList do |page|
    page.edit @course_offering.course
  end
end

When /^I can return to search using the cancel button$/ do
   on CourseOfferingEdit do |page|
     page.cancel
   end
end

When /^I edit a course offering with multiple format types$/ do
  @course_offering = make CourseOffering, :course=>"CHEM142"
  @course_offering.create_co_copy
  @course_offering.manage
  on ManageCourseOfferings do |page|
    page.edit_offering
  end
end

When /^I select a final exam type of "([^"]*)"$/ do |final_option|
     @course_offering.select_final_option(final_option)
end

When /^a delivery format-type of "([^"]*)"$/ do |delivery_format|
  on CourseOfferingEdit do |page|
    page.delivery_format_row(delivery_format)
  end
end

When /^a grade roster level of "([^"]*)"$/ do |grade_format|
  on CourseOfferingEdit do |page|
    page.select_grade_roster_level(grade_format)
  end
end

Then /^I can submit and the course offering is updated$/ do
  on CourseOfferingEdit do |page|
    page.submit
  end
  @course_offering.search_by_subjectcode
  @course_offering.view_course_details
  on ManageCourseDetails do  |page|
       page.grading_options.should == "Letter"
       page.registration_options.should == "None available"
       page.final_exam_type.should == @course_offering.final_exam_type
       page.waited_list.should == @course_offering.wait_list
       page.honors_flag.should == @course_offering.honors_flag
  end
end


When /^a final exam driver of "([^"]*)"$/ do |final_driver|
  on CourseOfferingEdit do |page|
    page.select_final_exam_driver(final_driver)
  end
end

When /^I edit a course offering$/ do
  @course_offering = make CourseOffering, :course=>"CHEM162", :affiliated_person =>"user1"
  @course_offering.create_co_copy
  @course_offering.manage
  on ManageCourseOfferings do |page|
    page.edit_offering
  end
end

When /^I add an affiliated person$/ do
  on CourseOfferingEdit do |page|
    page.lookup_person
  end
  on PersonnelLookup do |page|
    page.principal_name.set @course_offering.affiliated_person
    page.search
    page.return_value(@course_offering.affiliated_person)
  end
  on CourseOfferingEdit do |page|
    page.add_affiliation.select("Instructor")
    page.add_personnel
  end
end

When /^I activate a wait list with a level of "([^"]*)" and type of "([^"]*)"$/ do |list_level, list_type|
   @course_offering.select_wait_list_on(list_level,list_type)
end

When /^I add an administering organization$/ do
     on CourseOfferingEdit do |page|
       page.lookup_org
     end

    on OrgLookupPopUp do |page|
      page.short_name.set "Chemical"
      page.search
      page.return_value("Chemical")
    end

    on CourseOfferingEdit do |page|
      page.add_org
    end

end

When /^activate the honors flag$/ do
  @course_offering.honors_flag_on
end