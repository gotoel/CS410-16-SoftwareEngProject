<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>EDSN Calendar - Events</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="events.html">EDSN Calendar - Events</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li><a href="index.html"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li class="active"> <a href="GetEvents"><i class="icon icon-list-alt"></i> <span>Events</span></a> </li>
    <li> <a href="organize.html"><i class="icon icon-tags"></i> <span>Organize</span></a> </li>
    <li><a href="settings.html"><i class="icon icon-wrench"></i> <span>Settings</span></a></li>
    <li><a href="users.html"><i class="icon icon-user"></i> <span>Users</span></a></li>
    <li><a href="widgetcreator.html"><i class="icon icon-pencil"></i> <span>Widget Creator</span></a></li>
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Events</a> </div>
    <h1>Events</h1>
    <div class="container-fluid">
    <hr>
    <div id="publisherResult">

    </div>
    <div id="approvalRequired" class="row-fluid">
      <div class="span12">
        <div id="approvalRequired" class="widget-box">
          <div class="widget-title"> <span class="icon">
            <input type="checkbox" id="title-checkbox" name="title-checkbox" onclick="checkAllEvents();"/>
            </span>
            <h5>Approval needed</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped with-check">
              <thead>
                  <tr>
                  <th></th>
                  <th>id</th>
                  <th>start_date</th>
                  <th>start_time</th>
                  <th>end_date</th>
                  <th>end_time</th>
                  <th>summary</th>
                  <th>description</th>
                  <th>location</th>
                  <th>colorId</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody id="approvalNeededTable">
              </tbody>
            </table>
          </div>
        </div>
        <div style="text-align: right;">
            <a href="#" class="btn btn-success btn" onclick="publishSelected();">Publish selected</a> 
            <a href="#" class="btn btn-danger btn" onclick="deleteSelected();">Delete selected</a>
        </div>
        <hr>
            <h5> Filter Events</h5>
    <div id="criteria" class="row-fluid">
        <form name="myform" action="Filter">
        <% ResultSet rs = (ResultSet)request.getAttribute("Scriteria");%>
        <select id="summary">
       <option value="">Summary</option>
         <% while(rs.next()){%>
         <option value=<%= rs.getString("summary") %>><%= rs.getString("summary") %> </option>
         <%}%>
       </select>
       <input type="hidden" id="critA" name="critA"value=""/>
       
       <% ResultSet rs1 = (ResultSet)request.getAttribute("Ccriteria");%>
        <select id="category">
       <option value="">Category</option>
       <% while(rs1.next() && rs1.getString("Category")!= null){%>
         <option value=<%= rs1.getString("Category") %>><%= rs1.getString("Category") %> </option>
         <%}%>
       </select>
       <input type="hidden" id="critB" name="critB"value=""/>
       <input type="submit" value="Filter" onclick="fcriteria();"> 
        </form>
    </div> 
    </div>
        <div id="allEvents" class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Events</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                  <tr>
                  <th>id</th>
                  <th>start_date</th>
                  <th>start_time</th>
                  <th>end_date</th>
                  <th>end_time</th>
                  <th>summary</th>
                  <th>description</th>
                  <th>location</th>
                  <th>colorId</th>
                  <th>isPublished</th>
                </tr>
              </thead>
              <tbody>
                  <% ResultSet resultSet = (ResultSet)request.getAttribute("events");%>
                      <%while(resultSet.next()){%>
                          <tr class="gradeX">
                              <td> <center><%= resultSet.getString("id") %></center></td>
                              <td> <center><%= resultSet.getString("start_date") %></center></td>
                              <td> <center><%= resultSet.getString("start_time") %></center></td>
                              <td> <center><%= resultSet.getString("end_date") %></center></td>
                              <td> <center><%= resultSet.getString("end_time") %></center></td>
                              <td> <center><%= resultSet.getString("summary") %></center></td>
                              <td> <center><%= resultSet.getString("description") %></center></td>
                              <td> <center><%= resultSet.getString("location") %></center></td>
                              <td> <center><%= resultSet.getString("colorId") %></center></td>
                              <td> <center><%= resultSet.getString("isPublished") %></center></td>
                          </tr>
                      <%}%>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@PAGE CODE GOES HERE@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

<!--End-Action boxes-->    


<!--end-main-container-part-->

<!--Footer-part-->

<!--end-Footer-part-->

<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 
<script src="js/edsn-cal-events.js"/></script>

<script type="text/javascript">
  getApprovalNeededEvents();
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

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
