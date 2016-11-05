package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Tables_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Matrix Admin</title>\n");
      out.write("<meta charset=\"UTF-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap-responsive.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/uniform.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/select2.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/matrix-style.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/matrix-media.css\" />\n");
      out.write("<link href=\"font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Open+Sans:400,700,800\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!--Header-part-->\n");
      out.write("<div id=\"header\">\n");
      out.write("  <h1><a href=\"dashboard.html\">Matrix Admin</a></h1>\n");
      out.write("</div>\n");
      out.write("<!--close-Header-part--> \n");
      out.write("\n");
      out.write("<!--top-Header-menu-->\n");
      out.write("<div id=\"user-nav\" class=\"navbar navbar-inverse\">\n");
      out.write("  <ul class=\"nav\">\n");
      out.write("    <li  class=\"dropdown\" id=\"profile-messages\" ><a title=\"\" href=\"#\" data-toggle=\"dropdown\" data-target=\"#profile-messages\" class=\"dropdown-toggle\"><i class=\"icon icon-user\"></i>  <span class=\"text\">Welcome User</span><b class=\"caret\"></b></a>\n");
      out.write("      <ul class=\"dropdown-menu\">\n");
      out.write("        <li><a href=\"#\"><i class=\"icon-user\"></i> My Profile</a></li>\n");
      out.write("        <li class=\"divider\"></li>\n");
      out.write("        <li><a href=\"#\"><i class=\"icon-check\"></i> My Tasks</a></li>\n");
      out.write("        <li class=\"divider\"></li>\n");
      out.write("        <li><a href=\"login.html\"><i class=\"icon-key\"></i> Log Out</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </li>\n");
      out.write("    \n");
      out.write("    <li class=\"\"><a title=\"\" href=\"#\"><i class=\"icon icon-cog\"></i> <span class=\"text\">Settings</span></a></li>\n");
      out.write("    <li class=\"\"><a title=\"\" href=\"login.html\"><i class=\"icon icon-share-alt\"></i> <span class=\"text\">Logout</span></a></li>\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!--sidebar-menu-->\n");
      out.write("\n");
      out.write("<div id=\"sidebar\"> <a href=\"#\" class=\"visible-phone\"><i class=\"icon icon-th\"></i>Tables</a>\n");
      out.write("  <ul>\n");
      out.write("    <li><a href=\"index.html\"><i class=\"icon icon-home\"></i> <span>Dashboard</span></a> </li>\n");
      out.write("\n");
      out.write("    <li class=\"active\"><a href=\"tables.html\"><i class=\"icon icon-th\"></i> <span>Tables</span></a></li>\n");
      out.write("    <li class=\"submenu\"> <a href=\"#\"><i class=\"icon icon-th-list\"></i> <span>Forms</span> <span class=\"label label-important\">3</span></a>\n");
      out.write("      <ul>\n");
      out.write("        <li><a href=\"form-common.html\">Basic Form</a></li>\n");
      out.write("        <li><a href=\"form-validation.html\">Form with Validation</a></li>\n");
      out.write("        <li><a href=\"form-wizard.html\">Form with Wizard</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </li>\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"content\">\n");
      out.write("  <div id=\"content-header\">\n");
      out.write("    <div id=\"breadcrumb\"> <a href=\"#\" title=\"Go to Home\" class=\"tip-bottom\"><i class=\"icon-home\"></i> Home</a> <a href=\"#\" class=\"current\">Tables</a> </div>\n");
      out.write("    <h1>Events</h1>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <hr>\n");
      out.write("    <div class=\"row-fluid\">\n");
      out.write("      <div class=\"span12\">\n");
      out.write("       \n");
      out.write("        <div class=\"widget-box\">\n");
      out.write("          <div class=\"widget-title\"> <span class=\"icon\"><i class=\"icon-th\"></i></span>\n");
      out.write("            <h5>Data table</h5>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"widget-content nopadding\">\n");
      out.write("            <table class=\"table table-bordered data-table\">\n");
      out.write("              <thead>\n");
      out.write("                  <tr>\n");
      out.write("                  <th>Name</th>\n");
      out.write("                  <th>Location</th>\n");
      out.write("                  <th>Date</th>\n");
      out.write("                  <th>Time</th>\n");
      out.write("                  <th>Recurring</th>\n");
      out.write("                  <th>ID</th>\n");
      out.write("                </tr>\n");
      out.write("              </thead>\n");
      out.write("              <tbody>\n");
      out.write("                  ");
 ResultSet resultSet = (ResultSet)request.getAttribute("events");
      out.write("\n");
      out.write("                      ");
while(resultSet.next()){
      out.write("\n");
      out.write("                          <tr class=\"gradeX\">\n");
      out.write("                              <td> ");
      out.print( resultSet.getString("Name") );
      out.write("</td>\n");
      out.write("                              <td> ");
      out.print( resultSet.getString("Location") );
      out.write("</td>\n");
      out.write("                              <td> ");
      out.print( resultSet.getString("Date") );
      out.write("</td>\n");
      out.write("                              <td> ");
      out.print( resultSet.getString("Time") );
      out.write("</td>\n");
      out.write("                              <td> ");
      out.print( resultSet.getString("Recurring") );
      out.write("</td>\n");
      out.write("                              <td> ");
      out.print( resultSet.getString("ID") );
      out.write("</td>\n");
      out.write("                          </tr>\n");
      out.write("                      ");
}
      out.write("\n");
      out.write("              </tbody>\n");
      out.write("            </table>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!--Footer-part-->\n");
      out.write("<div class=\"row-fluid\">\n");
      out.write("  <div id=\"footer\" class=\"span12\"> 2013 &copy; Matrix Admin. Brought to you by <a href=\"http://themedesigner.in\">Themedesigner.in</a> </div>\n");
      out.write("</div>\n");
      out.write("<!--end-Footer-part-->\n");
      out.write("<script src=\"js/jquery.min.js\"></script> \n");
      out.write("<script src=\"js/jquery.ui.custom.js\"></script> \n");
      out.write("<script src=\"js/bootstrap.min.js\"></script> \n");
      out.write("<script src=\"js/jquery.uniform.js\"></script> \n");
      out.write("<script src=\"js/select2.min.js\"></script> \n");
      out.write("<script src=\"js/jquery.dataTables.min.js\"></script> \n");
      out.write("<script src=\"js/matrix.js\"></script> \n");
      out.write("<script src=\"js/matrix.tables.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
