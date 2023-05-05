package org.apache.jsp.View;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Sign Up</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("             \n");
      out.write("            <h1>Welcome to Ayu Hotel Booking System</h1>\n");
      out.write("            \n");
      out.write("            <form class=\"well form-horizontal\" action=\"../SignupController\" method=\"post\">\n");
      out.write("                <fieldset>\n");
      out.write("\n");
      out.write("                    <!-- Form Name -->\n");
      out.write("                    <legend>Sign Up</legend>\n");
      out.write("                    \n");
      out.write("                    <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\">Full Name</label>\n");
      out.write("                        <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input  name=\"name\" placeholder=\"John Doe\" class=\"form-control\"  type=\"text\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\">Email</label>\n");
      out.write("                        <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input  name=\"email\" placeholder=\"johnd@gmail.com\" class=\"form-control\"  type=\"email\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" >Phone Number</label> \n");
      out.write("                        <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input name=\"phone\" placeholder=\"0123456789\" class=\"form-control\"  type=\"tel\" pattern=\"[01]{2}[0-9]{8}\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\">Password</label>  \n");
      out.write("                        <div class=\"col-md-4 inputGroupContainer\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input name=\"password\" placeholder=\"Use a Strong Password\" class=\"form-control\" type=\"password\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Button -->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\"></label>\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-success\" >Sign Up</button>\n");
      out.write("                            <button type=\"reset\" class=\"btn btn-warning\" >Reset</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <!--Link to Login Page-->\n");
      out.write("                    <div>\n");
      out.write("                        <br><h6>Already have an account. <a href=\"login.jsp\">Login here!</a></h6>\n");
      out.write("                    </div>\n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
