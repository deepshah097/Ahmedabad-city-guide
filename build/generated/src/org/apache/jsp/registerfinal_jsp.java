package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registerfinal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/headerjsp.jsp");
    _jspx_dependants.add("/Footer.jsp");
  }

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
      out.write("    <!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<!-- Mirrored from matveyan.ru/Themes/mycity/01.Default/html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Nov 2016 10:47:15 GMT -->\n");
      out.write("<!-- Added by HTTrack --><meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\" /><!-- /Added by HTTrack -->\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <title>Registration page | Ahmedabad City Guide</title>\n");
      out.write("  <script>\n");
      out.write("      function validate_name(name)\n");
      out.write("      {\n");
      out.write("          var letters = /^[A-Za-z]+$/;\n");
      out.write("\n");
      out.write("          var name=document.getElementById(name);\n");
      out.write("          if(name.length>20)\n");
      out.write("          {\n");
      out.write("              alert(\"Only 20 characters are allowed\");\n");
      out.write("          }\n");
      out.write("          if(name.value.match(letters))\n");
      out.write("          {\n");
      out.write("                return true;\n");
      out.write("          }\n");
      out.write("          else\n");
      out.write("          {\n");
      out.write("                alert(\"First name should contain alphabets letters\");\n");
      out.write("                name.value=\"\";\n");
      out.write("                name.focus();\n");
      out.write("                return false;\n");
      out.write("          }\n");
      out.write("\n");
      out.write("          \n");
      out.write("      }\n");
      out.write("     \n");
      out.write("      function checkemail()\n");
      out.write("      {\n");
      out.write("          \n");
      out.write("         // var re =/^([\\w-]+(?:\\.[\\w-]+)*)@((?:[\\w-]+\\.)*\\w[\\w-]{0,66})\\.([a-z]{2,6}(?:\\.[a-z]{2})?)$/i;\n");
      out.write("          var email1=document.getElementById(\"email_id\");\n");
      out.write("         //  alert(\"email called\");\n");
      out.write("          if(email1.value.match(re))\n");
      out.write("          {\n");
      out.write("              return true;\n");
      out.write("          }\n");
      out.write("          else\n");
      out.write("          {\n");
      out.write("              alert(\"Email id invalid \");\n");
      out.write("              return false;\n");
      out.write("          }\n");
      out.write("\n");
      out.write("       }\n");
      out.write("       \n");
      out.write("       function checkcontact()\n");
      out.write("       {\n");
      out.write("           var c=/^\\d{10}$/;\n");
      out.write("\n");
      out.write("           var cont=document.getElementById(\"contact_number\");\n");
      out.write("           \n");
      out.write("           if(cont.value.match(c))\n");
      out.write("           {\n");
      out.write("              return true; \n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           \n");
      out.write("           if(cont.length<9 || cont.length>9)\n");
      out.write("           {\n");
      out.write("                    alert(\"Contact number must be less than 9 and greater \");\n");
      out.write("            }\n");
      out.write("       }\n");
      out.write("       \n");
      out.write("       function checkpassword()\n");
      out.write("       {\n");
      out.write("          // var passw=/^[A-Za-z]\\w{7,14}$/;\n");
      out.write("           var pass=document.getElementById(password);\n");
      out.write("          // alert(\"password called\");\n");
      out.write("          var passlen=pass.value.length;\n");
      out.write("           if (passlen == 0 || passlen >= 15 || passid_len < 7)  \n");
      out.write("            {  \n");
      out.write("                alert(\"Password should not be empty / length be between 7 to 15\");  \n");
      out.write("                pass.focus(); \n");
      out.write("                return false;  \n");
      out.write("            }  \n");
      out.write("            return true;\n");
      out.write("\n");
      out.write("       }\n");
      out.write("       \n");
      out.write("  </script>\n");
      out.write("  <!-- Bootstrap -->\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/A.bootstrap.css.pagespeed.cf.9mpGY9jsOH.css\">\n");
      out.write("  <!--Main styles-->\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css%2badaptive.css%2bpushy.css%2bfont-awesome.css%2banimate.css.pagespeed.cc.Cq_V5fMv9Y.css\">\n");
      out.write("  <!--Adaptive styles-->\n");
      out.write("  \n");
      out.write("  <!--Swipe menu-->\n");
      out.write("  \n");
      out.write("  <!--fonts-->\n");
      out.write("  \n");
      out.write("  <!--animation css-->\n");
      out.write("  \n");
      out.write("  <!-- Slider Revolution -->\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"rs-plugin/css/A.settings.css.pagespeed.cf.mN2bMgp5AF.css\" media=\"screen\"/>\n");
      out.write("  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("<script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');ga('create','UA-78930914-1','auto');ga('send','pageview');</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"TravelGuide Site Template - Easly find places, guides, directions, info.\">\n");
      out.write("    <meta name=\"author\" content=\"Ansonika\">\n");
      out.write("    <title>Header | Ahmedabad City Guide</title>\n");
      out.write("\n");
      out.write("    <!-- Favicons-->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"img/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("    <link rel=\"apple-touch-icon\" type=\"image/x-icon\" href=\"img/apple-touch-icon-57x57-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon\" type=\"image/x-icon\" sizes=\"72x72\" href=\"img/apple-touch-icon-72x72-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon\" type=\"image/x-icon\" sizes=\"114x114\" href=\"img/apple-touch-icon-114x114-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon\" type=\"image/x-icon\" sizes=\"144x144\" href=\"img/apple-touch-icon-144x144-precomposed.png\">\n");
      out.write("\n");
      out.write("    <!-- GOOGLE FONT -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Roboto:400,500,700,300\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    <!-- BASE CSS -->\n");
      out.write("    <link href=\"css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/menu.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/icon_fonts/css/all_icons.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- SPECIFIC CSS -->\n");
      out.write("    <link href=\"layerslider/css/layerslider.min.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!-- YOUR CUSTOM CSS -->\n");
      out.write("    <link href=\"css/custom.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"js/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"js/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("        <header style=\"position:static;background-color: black;\">\n");
      out.write("        <div class=\"container-fluid\" >\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col--md-4 col-sm-3 col-xs-4\">\n");
      out.write("                    <div id=\"\">\n");
      out.write("                        <h1><a href=\"index.jsp\" title=\"Ahmedabad city guide header\"><img src=\"img/CityGuide1.jpg\" alt=\"img\" class=\"hidden-xs\" width=\"250\" height=\"50\" data-retina=\"true\"></a></h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <nav class=\"col--md-8 col-sm-9 col-xs-8\" style=\"padding-top: 35px;\">\n");
      out.write("                    \n");
      out.write("                    <a class=\"cmn-toggle-switch cmn-toggle-switch__htx open_close\" href=\"javascript:void(0);\"><span>Menu mobile</span></a>\n");
      out.write("                    <div class=\"main-menu\">\n");
      out.write("                        <div id=\"header_menu\">\n");
      out.write("                            <img src=\"img/logo_2.png\" alt=\"img\" data-retina=\"true\" width=\"170\" height=\"30\">\n");
      out.write("                        </div>\n");
      out.write("                        <a href=\"#\" class=\"open_close\" id=\"close_in\"><i class=\"icon_close\"></i></a>\n");
      out.write("                        <ul id=\"primary_nav\">\n");
      out.write("                            <li class=\"submenu\">\n");
      out.write("                                <a href=\"index.jsp\" class=\"show-submenu\">HOME<!--<i class=\"icon-down-open-mini\"></i>--></a>\n");
      out.write("                             \n");
      out.write("                 \n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"submenu\">\n");
      out.write("                                <a href=\"About.jsp\" class=\"show-submenu\">ABOUT US<!--<i class=\"icon-down-open-mini\"></i>--></a>\n");
      out.write("                             \n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"megamenu submenu\">\n");
      out.write("                                <a href=\"ContactUs.jsp\" class=\"show-submenu-mega\">CONTACT US<!--<i class=\"icon-down-open-mini\"></i>--></a>\n");
      out.write("                            </li>\n");
      out.write("                            \n");
      out.write("                            ");

                                if(session.getAttribute("user")==null)
                                {
                                    
                                
                            
      out.write("\n");
      out.write("                             <li id=\"buy\"><a href=\"login.jsp\">LOGIN</a> </li>  \n");
      out.write("                              \n");
      out.write("                                \n");
      out.write("                             \n");
      out.write("                            ");

                                 }
                                 else
                                 {
                                     
                            
                           
                                if(session.getAttribute("type").equals("B"))
                                { 
                            
      out.write("\n");
      out.write("                                <li id=\"wishlist\"><a href=\"ViewBusiness.jsp\">VIEW BUSINESS</a>\n");
      out.write("                                </li>\n");
      out.write("                             ");
 }
                             else
                                {
                             
      out.write("\n");
      out.write("                            <li id=\"wishlist\"><a href=\"bussiness.jsp\">ADD BUSINESS</a>\n");
      out.write("                                </li>\n");
      out.write("                               ");
 } 
      out.write("\n");
      out.write("                                <li id=\"login\"><a href=\"ViewProfile.jsp\">VIEW PROFILE</a>\n");
      out.write("                                </li>\n");
      out.write("                               <li id=\"login\"><a href=\"Feedback.jsp\">FEEDBACK</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li id=\"buy\"><a href=\"Logout_Servlet\">LOGOUT</a>\n");
      out.write("                                </li>\n");
      out.write("                               ");
 } 
      out.write("     \n");
      out.write("                                     \n");
      out.write("                            \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("\n");
      out.write("                         \n");
      out.write("                       \n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- End main-menu -->\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("            <!-- End row -->\n");
      out.write("        </div>\n");
      out.write("        <!-- End container -->\n");
      out.write("    </header>\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("</div>\n");
      out.write("<!--<div class=\"add_place none\" id=\"autorized\">-->\n");
      out.write("    <div class=\"place_form wid\" style=\"width:617px;\">\n");
      out.write("     \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      <h3>Register<span></span></h3>\n");
      out.write("      <form action=\"Register_Servlet\" method=\"post\">\n");
      out.write("          <label style=\"font-size: 15px;\">First Name: *<input type=\"text\"  name=\"fname\" placeholder=\"Enter First name\" id=\"fname\" onkeyup=\"validate_name('fname')\" required></label>\n");
      out.write("          <label style=\"font-size: 15px;\">Last Name: *<input type=\"text\" name=\"lname\" placeholder=\"Enter Last name\" id=\"lname\" onkeyup=\"validate_name('lname')\" required ></label>\n");
      out.write("          <label style=\"font-size: 15px;\">Email Id: *<input type=\"email\" name=\"email_id\" placeholder=\"Enter Email Id\" id=\"email_id\" onkeyup=\"checkemail()\" required></label>\n");
      out.write("        <label style=\"font-size: 15px;\">Password: *<input type=\"password\" name=\"password\" placeholder=\"Enter Password\" id=\"password\" required onkeyup=\"checkpassword()\"></label>\n");
      out.write("        <label style=\"font-size: 15px;\">Confirm-Password: *<input type=\"password\" name=\"confirm_password\" placeholder=\"Re-enter Password\" id=\"confirm_password\" required></label>\n");
      out.write("        <label style=\"font-size: 15px;\">Contact Number: *<input type=\"text\" name=\"contact_number\" placeholder=\"Enter Contact Number\" id=\"contact_number\" onkeyup=\"checkcontact()\" required></label>\n");
      out.write("        \n");
      out.write("        <span style=\"padding-left: 32px;font-family: sans-serif;\n");
      out.write("    font-size: 15px;\n");
      out.write("    color: #555555;\n");
      out.write("    text-transform: uppercase;\n");
      out.write("    font-weight: bold;\">Gender: *</span><input type=\"radio\" name=\"g\" value=\"Male\" style=\"height: 1.10em;width:50px;\"><span style=\"font-family: sans-serif;\n");
      out.write("    font-size: 15px;\n");
      out.write("    color: #555555;\n");
      out.write("    text-transform: uppercase;\n");
      out.write("    font-weight: bold;\">Male</span><input type=\"radio\" name=\"g\" value=\"Female\" style=\"height: 1.10em;width:50px;\"><span style=\"font-family: sans-serif;\n");
      out.write("    font-size: 15px;\n");
      out.write("    color: #555555;\n");
      out.write("    text-transform: uppercase;\n");
      out.write("    font-weight: bold;\">Female</span>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"submit\" class=\"btn btn-success\" style=\"width: 26%;\n");
      out.write("    margin-left: 135px;\n");
      out.write("    height: 60px;\" value=\"Register\">\n");
      out.write("     <input type=\"reset\" class=\"btn btn-success\" style=\"width: 26%;\n");
      out.write("    margin-left: 15px;\n");
      out.write("    height: 60px;\" value=\"Cancel\">\n");
      out.write("      <!--  <a href=\"#\"6+ class=\"btn btn-primary\"><i class=\"icon-facebook\"></i>New User?</a>-->\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("<div style=\"margin-top: 300px;\">\n");
      out.write("          ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Footer ================================================== -->\n");
      out.write("    <footer>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6 col-sm-12\">\n");
      out.write("                    <h3>About us</h3>\n");
      out.write("                    <p>To provide fast, free, reliable and comprehensive information to our users and  allow user to add their business in website.</p>\n");
      out.write("                    <p><img src=\"img/CityGuide.jpg\" alt=\"img\" class=\"hidden-xs\" width=\"170\" height=\"30\" data-retina=\"true\">\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 col-sm-4\">\n");
      out.write("                    <h3>About</h3>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"About.jsp\">About us</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"ContactUs.jsp\">Contacts</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <!-- End row -->\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-12\" style=\"text-align: center\">\n");
      out.write("                    © Ahmedabad City Guide 2017 - All Rights Reserved\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <!-- End row -->\n");
      out.write("        </div>\n");
      out.write("        <!-- End container -->\n");
      out.write("    </footer>\n");
      out.write("    <!-- End Footer =============================================== -->\n");
      out.write("  \n");
      out.write("      </div>\n");
      out.write("<!--</div>-->\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
