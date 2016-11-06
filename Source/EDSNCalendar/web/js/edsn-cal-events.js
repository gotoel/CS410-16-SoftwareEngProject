/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// merry christmas errybody

// Requests a list of unapproved events from the servlet.
function getApprovalNeededEvents() {
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    var url = "GetUnpublishedEvents?requestAction=eventsList";
    xmlhttp.open("POST", url, true);
    xmlhttp.onreadystatechange = displayEvents;
    xmlhttp.send();
}

// Requests the amount of unapproved events from servlet.
function getNumOfEventsForApproval()
{
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    var url = "GetUnpublishedEvents?requestAction=eventsCount";
    xmlhttp.open("POST", url, true);
    xmlhttp.onreadystatechange = displayEventsCount;
    xmlhttp.send();
}

// Changes the checked status of all checkboxes based on the
// checked status of the title checkbox.
function checkAllEvents()
{
    titleCheckbox = document.getElementById("title-checkbox"); 
    checkboxes = document.getElementsByTagName("input"); 

    for (var i = 0; i < checkboxes.length; i++) {
        var checkbox = checkboxes[i];
        if(checkbox.id !== "title-checkbox" ) {
            checkbox.checked = titleCheckbox.checked;
        }
    } 
}

// Executes a publish/delete action on a specified event.
function executePublishAction(eventID, action)
{
    console.log(eventID);
    console.log(action);
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    var url = "EventPublisher";
    xmlhttp.open("POST", url + "?eventID=" + eventID + "&action=" + action, true);
    xmlhttp.onreadystatechange = function()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            console.log("DONE");
            document.getElementById("publisherResult").innerHTML = xmlhttp.responseText;
            getApprovalNeededEvents();
        }
    };
    
    xmlhttp.send();
}

// Executes publish actions on all selected events.
function publishSelected()
{
    checkboxes = document.getElementsByTagName("input"); 

    for (var i = 0; i < checkboxes.length; i++) {
        var checkbox = checkboxes[i];
        if(checkbox.checked) 
        {
            var currentRow = checkbox.parentNode.parentNode;
            var secondColumn = currentRow.getElementsByTagName("td")[1];
            console.log(checkbox.checked);
            executePublishAction(secondColumn.textContent, 'publish');
        }
    } 
}

// Executes delete actions on all selected events.
function deleteSelected()
{
    checkboxes = document.getElementsByTagName("input"); 

    for (var i = 0; i < checkboxes.length; i++) {
        var checkbox = checkboxes[i];
        if(checkbox.checked) 
        {
            var currentRow = checkbox.parentNode.parentNode;
            var secondColumn = currentRow.getElementsByTagName("td")[1];
            console.log(checkbox.checked);
            executePublishAction(secondColumn.textContent, 'delete');
        }
    } 
}

// Callback to add the HTML for the small red label on the unapproved events button
// on the dashboard.
function displayEventsCount()
{
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var unapprovedCount = document.getElementById("unapprovedCount");
        unapprovedCount.innerHTML = xmlhttp.responseText;   
    }
    else {

    }
}

// Callback to set the unapproved table data.
function displayEvents() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var approvalNeededTable = document.getElementById("approvalNeededTable");
        approvalNeededTable.innerHTML = xmlhttp.responseText;   
    }
    else {

    }
}