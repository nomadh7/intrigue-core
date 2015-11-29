module Intrigue
module Entity
class NetSvc < Intrigue::Model::Entity

  def metadata
    {
      :description => "TODO"
    }
  end


  def validate
    @details["ip_address"].to_s =~ /^.*$/ &&
    @details["port_num"].to_s =~ /^\d{1,5}$/ &&
    @details["proto"].to_s =~ /^(tcp|udp)$/
  end

  def form
    output = super
    output << "<div class=\"form-group\"><label for=\"attrib_ip_address\" class=\"col-xs-4 control-label\">IPAddress</label><div class=\"col-xs-6\"><input type=\"text\" name=\"attrib_ip_address\" value=#{ _escape_html @details["ip_address"] } readonly></div></div>"
    output << "<div class=\"form-group\"><label for=\"attrib_ip_address\" class=\"col-xs-4 control-label\">Port Number</label><div class=\"col-xs-6\"><input type=\"text\" name=\"attrib_port_num\" value=#{ _escape_html @details["port_num"] } readonly></div></div>"
    output << "<div class=\"form-group\"><label for=\"attrib_ip_address\" class=\"col-xs-4 control-label\">Proto</label><div class=\"col-xs-6\"><input type=\"text\" name=\"attrib_proto\" value=#{ _escape_html @details["proto"] } readonly></div></div>"
  output
  end

end
end
end
