When /^I manage a valid course offering$/ do
  @course_offering = make CourseOffering, :term=>"201605", :course=>"ENGL206"
  @course_offering.search_by_subjectcode
end

And /^I click the Add Course toolbar button$/ do
  on(ManageCourseOfferings).add_course
end

Then /^the term is retained in the term field on the Create Course Offering page$/ do
  on CreateCourseOffering do |page|
    page.target_term.text.should == @course_offering.term
  end
end


And /^I am able to create a Course Offering with this term$/ do
  pending # express the regexp above with the code you wish you had
end