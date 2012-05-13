module ApplicationHelper
  def print_breadcrumbs(array_path)
    return_value = "<ul class=\"breadcrumb\">\n\t<li><a href=\"#{root_url}\">"+I18n.t('breadcrumb.dashboard', :default => "Dashboard")+"</a><span class=\"divider\">/</span></li>\n\t"
    last_element = array_path.pop

    array_path.each do |path|
      return_value += "<li><a href=\"#{path[1]}\">#{path[0]}</a><span class=\"divider\">/</span></li>\n\t"
    end

    return_value += "<li class=\"active\">#{last_element[0]}</li>\n\t"
    return_value += "</ul>\n"
  end
end
