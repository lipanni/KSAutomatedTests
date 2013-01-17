class ManageSocPage < BasePage

  expected_element :term_code

  wrapper_elements
  frame_element

  element(:term_code)  { |b| b.frm.text_field(name: "termCode") }
  element(:lock_button)  { |b| b.frm.button(id: "ManageSOCView-SchedulingDetails-LockSetButton") }
  element(:finalEdit_button)  { |b| b.frm.button(id: "ManageSOCView-SchedulingDetails-FinalEditButton") }

  action(:go) { |b| b.frm.button(id: "ManageSOCView-GoButton").click; b.loading.wait_while_present }
  action(:lock) { |b| b.frm.button(id: "ManageSOCView-SchedulingDetails-LockSetButton").click; b.loading.wait_while_present }
  action(:finalEdit) { |b| b.frm.button(id: "ManageSOCView-SchedulingDetails-FinalEditButton").click; b.loading.wait_while_present }

  element(:lock_delete_popup_div) { |b| b.div(id: "lockConfirmDialog") }
  action(:lock_confirm_delete) { |b| b.lock_delete_popup_div.checkbox(index: 0).click; b.loading.wait_while_present }
  action(:lock_cancel_delete) { |b| b.lock_delete_popup_div.checkbox(index: 1).click; b.loading.wait_while_present }

end