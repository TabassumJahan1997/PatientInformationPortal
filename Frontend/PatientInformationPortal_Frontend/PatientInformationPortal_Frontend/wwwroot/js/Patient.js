function submitForm() {
    var addedNcdList = document.getElementById('tblAddedNcdList');
    var ncdRows = addedNcdList.getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    //console.log(ncdRows);

    var ncds = [];
    for (var i = 0; i < ncdRows.length; i++) {
        var selectedRowValue = ncdRows[i].getElementsByTagName('td')[0].getAttribute('value');
        //console.log(selectedRowValue);
        ncds.push(selectedRowValue);
    }
    console.log(ncds);

    var addedAllergyList = document.getElementById('tblAddedAllergyList');
    var allergyRows = addedAllergyList.getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    //console.log(ncdRows);

    var allergies = [];
    for (var i = 0; i < allergyRows.length; i++) {
        var selectedRowValue = allergyRows[i].getElementsByTagName('td')[0].getAttribute('value');
        //console.log(selectedRowValue);
        ncds.push(selectedRowValue);
    }
    console.log(allergies);
}

function AddPatientNcds() {
    var selectedRow = $('#tblNcdList tbody tr .table-selected');
    selectedRow.removeClass('table-selected');
    selectedRow.parent().appendTo('#tblAddedNcdList tbody');
}

function RemovePatientNcds() {
    var selectedRow = $('#tblAddedNcdList tbody tr .table-selected');
    selectedRow.removeClass('table-selected');
    selectedRow.parent().appendTo('#tblNcdList tbody');
}

function AddPatientAllergies() {
    var selectedRow = $('#tblAllergyList tbody tr .table-selected');
    selectedRow.removeClass('table-selected');
    selectedRow.parent().appendTo('#tblAddedAllergyList tbody');
}

function RemovePatientAllergies() {
    var selectedRow = $('#tblAddedAllergyList tbody tr .table-selected');
    selectedRow.removeClass('table-selected');
    selectedRow.parent().appendTo('#tblAllergyList tbody');
}

$(document).ready(function () {
    $('#tblNcdList tbody tr td').click(function () {
        $('#tblNcdList tbody tr td').removeClass('table-selected');
        $(this).addClass('table-selected');
    });

    $('#tblAddedNcdList tbody tr td').click(function () {
        $('#tblAddedNcdList tbody tr td').removeClass('table-selected');
        $(this).addClass('table-selected');
    });

    $('#tblAllergyList tbody tr td').click(function () {
        $('#tblAllergyList tbody tr td').removeClass('table-selected');
        $(this).addClass('table-selected');
    });

    $('#tblAddedAllergyList tbody tr td').click(function () {
        $('#tblAddedAllergyList tbody tr td').removeClass('table-selected');
        $(this).addClass('table-selected');
    });

    $('#tblNcdList tbody tr').click(function () {
        var selectedData = {
            NCD_Id: $(this).find('td').attr('value'),
            NCD_Name: $(this).find('td').text().trim()
        };

        console.log(selectedData); // Output the selected data to the console
    });


    //$(document).on('click','#btnNcdAdd', function (e) {
    //    e.preventDefault();
    //    var selectedRow = $('#tblNcdList tbody tr.selected');
    //    if (selectedRow.length > 0) {
    //        console.log(selectedRow);
    //        var clonedRow = selectedRow.clone(); // Clone the selected row
    //        selectedRow.removeClass('selected'); // Remove selected class from the original row
    //        clonedRow.removeClass('selected'); // Remove selected class from the cloned row

    //        $('#tblAddedNcdList tbody').append(clonedRow); // Append the cloned row to the destination table
    //    }
    //});


});

//$(document).on('click', '#btnNcdAdd', function(e){
//    var selectedRow = $('#tblNcdList tbody tr.selected');

//        var clonedRow = selectedRow.clone(); // Clone the selected row
//        selectedRow.remove(); // Remove the selected row from tblNcdList

//        $('#tblAddedNcdList tbody').append(clonedRow); // Append the cloned row to tblAddedNcdList

//});

//function addNcd() {

//}

//function addNcds() {
//    var tblNcds = document.getElementById("tblList");
//    var tblAddedNcds = document.getElementById("tblAddedNcdList");
//    var selectedRow = document.getElementsByClassName("table-selected");

//    if (selectedRow.length != 0) {

//        var newRow = tblAddedNcds.insertRow(tblAddedNcds.length);
//        var newCell = newRow.insertCell(0);
//        newCell.innerHTML = tblNcds.row[0].cells[0].innerHTML;
//        console.log(newCell.innerHTML);
//    }
//}

