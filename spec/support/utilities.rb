def build_attributes(*args)
 FactoryGirl.build(*args).attributes.delete_if do |k, v|
  ["id", "created_at", "updated_at"].member?(k)
 end
end

def wait_for_ajax
 Timeout.timeout(Capybara.default_wait_time) do
  loop until finished_all_ajax_requests?
 end
end

def finished_all_ajax_requests?
 page.evaluate_script('jQuery.active').zero?
end
