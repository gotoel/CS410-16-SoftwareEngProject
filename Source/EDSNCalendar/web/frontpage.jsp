<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en">
<head>
  <title>EDSN Calendar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/frontstyle.css" type="text/css"/>
</head>

<body>
  <div class="align">
    <img src="img/edsnlogo.jpg">   
  </div>    
    <!--<a href="CalendarInsert"><i class="icon icon-list-alt"></i> <span>Debug event insertion</span></a>-->
  <div id="myCalendar" class="align" >
      <iframe src="https://calendar.google.com/calendar/embed?height=900&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=l0u6k0e8s4i26sgpoh68g9e2io%40group.calendar.google.com&amp;color=%235F6B02&amp;ctz=America%2FNew_York" style="border-width:0" width="1600" height="900" frameborder="0" scrolling="no"></iframe>
  </div>
  <div class="container">
    <div class="align">
      <button type="button" class="btn btn-primary btn-md paddin" data-toggle="modal" data-target="#myModal">
      <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> ADD EVENT</button>
    </div>
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">POST YOUR EVENT</h4>
            </div>
            <div class="modal-body">
              <form action="EventSubmit" method="POST">
                <input type="text" class="form-control margins" name="fullName" maxlength="50" placeholder="Your full name (required)">
                <input type="text" class="form-control margins" name="email" maxlength="50" placeholder="Your email (required)">
                <input type="text" class="form-control margins" name="title" maxlength="50" placeholder="Event title (required)">
                <input type="text" class="form-control margins" name="address" maxlength="20" placeholder="Address (required)">
                <input type="text" class="form-control margins" name="city" maxlength="20" placeholder="City (required)">
                <input type="text" class="form-control margins" name="state" maxlength="2" placeholder="State (required)">
                <input type="text" class="form-control margins" name="zip" maxlength="5" placeholder="Zip Code (required)">
                <label>Select category:</label>
                <select name="categories">
                    <option value="Education">Education</option>
                    <option value="Music">Music</option>
                    <option value="Religion">Religion</option>
                    <option value="Sport">Sport</option>
                </select>
                <table>
                  <tr>
                    <td class="align"><label>Start Date/Time:</label></td>
                    <td><input type="date" class="form-control margins" name="strdate" placeholder="mm/dd/yyyy"></td>
                    <td><input type="time" class="form-control margins" name="strtime" placeholder="00:00AM/PM"></td>
                  </tr>
                  <tr>
                    <td class="align"><label>End Date/Time:</label></td>
                    <td><input type="date" class="form-control margins" name="enddate" placeholder="mm/dd/yyyy"></td>
                    <td><input type="time" class="form-control margins" name="endtime" placeholder="00:00AM/PM"></td>
                  </tr>
                </table>
                  <textarea name="description" class="form-control margins" placeholder="Description (required - 100 character limit)" maxlength="100"></textarea>
                  <div class="modal-footer">              
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                  </div>
              </form>
            </div>
          </div>
        </div>
      </div>
  </div>
</body>
</html>
