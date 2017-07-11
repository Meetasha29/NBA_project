module ApplicationHelper
  def error_messages(object)
    render(:partial=>'application/error_message',:locals=>{:object=>object})
  end
end
