module ApplicationHelper

  def prettify_role(role)
    case role
      when "admin"
        "Administrator"
      when "paying"
        "Paying Customer"
      else
        "Free Customer"
      end
  end
end
