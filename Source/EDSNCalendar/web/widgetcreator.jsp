<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>EDSN Calendar - Widget Creator</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/select2.css">
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="css/colorpicker.css">
<link rel="stylesheet" href="css/datepicker.css">
<link rel="stylesheet" href="css/uniform.css">
<link rel="stylesheet" href="css/select2.css">
<link rel="stylesheet" href="css/matrix-style.css">
<link rel="stylesheet" href="css/matrix-media.css">
<link rel="stylesheet" href="css/bootstrap-wysihtml5.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body onload="myFunction()">
<body class="wysihtml5-supported">
    <%
        if(request.getSession().getAttribute("username") == null ||
                ((String)request.getSession().getAttribute("username")).isEmpty())
        {
            response.sendRedirect("login.jsp");
        }
    %>
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.jsp">Widget Creator</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome <%=(String)session.getAttribute("username")%>  </span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="login.jsp"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="Settings"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.jsp"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="index.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="GetEvents"><i class="icon icon-list-alt"></i> <span>Events</span></a> </li>
    <li><a href="Settings"><i class="icon icon-wrench"></i> <span>Settings</span></a></li>
    <li><a href="GetUsers"><i class="icon icon-user"></i> <span>Users</span></a></li>
    <li class="active"><a href="widgetcreator.jsp"><i class="icon icon-pencil"></i> <span>Widget Creator</span></a></li>
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
        <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Widget Creator</a> </div>
    <h1>Widget Creator</h1>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->

<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Widget settings</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="javascript:generateWidget()" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Header text :</label>
              <div class="controls">
                <input type="text" class="span11" placeholder="Calendar header text" id="headerText"  value="EDSN Calendar">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Header text color :</label>
              <div class="controls">
                <div data-color-format="hex" data-color="#000000" class="input-append color colorpicker">
                  <input type="text" value="#000000" class="span11" id='headerTextColor' readonly>
                  <span class="add-on"><i style="background-color: rgb(117, 20, 20);"></i></span> </div>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Header image url :</label>
              <div class="controls">
                <input type="text" class="span11" placeholder="localhost/frog.png" id="headerURL" value="http://edsn.org/Portals/13/LogoEDSN01.jpg?ver=2013-08-19-075743-833">
              </div>
            </div>
            <div class="form-actions">
              <button class="btn btn-success">Create widget</button>
            </div>
          </form>
        </div>
      </div>
    </div>
      
    <div class="span5">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Paste this code onto your site:</h5>
        </div>
        <div class="widget-content" style="height: 300px;">
          <form action="#" >
                    <div class="controls">
            <textarea class="span11" readonly style="height: 300px; width: 100%;" id="widgetCode"></textarea>
        </div>
          </form>
        </div>
      </div>
  </div>
      
    <div class="span6" style="float: left;height: 100%;width: 89%">
      <div class="widget-box" >
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Preview:</h5>
        </div>
        <div class="widget-content" id="previewContent" >
        <div id='edsnCal'>
	<center>
		<img src='' id='previewImg'/><br>
		<h1 style="color:red;">test</h1>
	</center><br>
            <div id=myCalendar' class='align'>
                    <iframe src='https://calendar.google.com/calendar/embed?showTitle=0&amp;height=900&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=1b0fgl15no2em0s761g3nmsojk%40group.calendar.google.com&amp;color=%23125A12&amp;src=drcg5o2lrknp529espcaerom6g%40group.calendar.google.com&amp;color=%23B1365F&amp;src=4lc9vqncnpcs7l6j8v8fmi9k4o%40group.calendar.google.com&amp;color=%2323164E&amp;src=b9vn1j2c33h3t0q8rlhmq1tn9s%40group.calendar.google.com&amp;color=%238C500B&amp;ctz=America%2FNew_York' style='border-width:0' width='100%' height='600' frameborder='1' scrolling='no'></iframe>
            </div>
        </div>
        </div>
      </div>
  </div>
</div>

<!--End-Action boxes-->    


<!--end-main-container-part-->

<!--Footer-part-->

<!--end-Footer-part-->

<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-colorpicker.js"></script> 
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/jquery.toggle.buttons.js"></script> 
<script src="js/masked.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_common.js"></script> 
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script> 


<script type="text/javascript">
    
$(document).on('input', $('#headerText'), function(){
generateWidget();
});
$(document).on('change', $('#headerTextColor'), function(){
generateWidget();
});
$(document).on('input', $('#headerURL'), function(){
generateWidget();
});
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }
  
  function generateWidget()
  {
      var widgetCode = "";
      widgetCode += "<div id='edsnCal'>\n";
      widgetCode += "\t<center>\n";
      widgetCode += "\t\t<img src='" + document.getElementById("headerURL").value + "' id='previewImg'/><br>\n";
      widgetCode += "\t\t<h1 style='color:" + document.getElementById("headerTextColor").value+ ";'>" + document.getElementById("headerText").value + "</h1>\n";
      widgetCode += "\t</center><br>\n";
      widgetCode += "\t<div id=myCalendar' class='align'>\n";
      widgetCode += "\t\t<iframe src='https://calendar.google.com/calendar/embed?showTitle=0&amp;height=900&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=1b0fgl15no2em0s761g3nmsojk%40group.calendar.google.com&amp;color=%23125A12&amp;src=drcg5o2lrknp529espcaerom6g%40group.calendar.google.com&amp;color=%23B1365F&amp;src=4lc9vqncnpcs7l6j8v8fmi9k4o%40group.calendar.google.com&amp;color=%2323164E&amp;src=b9vn1j2c33h3t0q8rlhmq1tn9s%40group.calendar.google.com&amp;color=%238C500B&amp;ctz=America%2FNew_York' style='border-width:0' width='100%' height='600px' frameborder='1' scrolling='no'></iframe>\n";
      widgetCode += "\t</div>\n";
      widgetCode += "</div>";
      widgetCode += "";
      widgetCode += "";
      widgetCode += "";
      widgetCode += "";
      widgetCode += "";
      document.getElementById("widgetCode").value = widgetCode;
      document.getElementById("previewContent").innerHTML = widgetCode;
      //console.log(widgetCode);
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
