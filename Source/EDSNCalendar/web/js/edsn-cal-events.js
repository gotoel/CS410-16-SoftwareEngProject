/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// merry christmas errybody

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

function sendMail(eventID)
{
    if (window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    
    var url = "RejectionSender";
    xmlhttp.open("POST", url + "?eventID="+eventID,true);
    xmlhttp.onreadystatechange = function()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            console.log("DONE");
            document.getElementById("publisherResult").innerHTML = xmlhttp.responseText;
        }
    };
    
    xmlhttp.send();
    }
    
    


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

function displayEventsCount()
{
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var unapprovedCount = document.getElementById("unapprovedCount");         //  text is an id of a 
        unapprovedCount.innerHTML = xmlhttp.responseText;   
    }
    else {

    }
}

function displayEvents() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var approvalNeededTable = document.getElementById("approvalNeededTable");         //  text is an id of a 
        approvalNeededTable.innerHTML = xmlhttp.responseText;   
    }
    else {

    }
}
