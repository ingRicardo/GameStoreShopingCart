
$(document).ready(function(){
	var totalPrice=0.00;
	var singlePrice=0.00;
	$('#idtable').DataTable({});
		
	function myDeleteFunction(index) {
		  document.getElementById("myTable").deleteRow(index);
		}
	
	function createTable(col1,col2,col3,col4) {
		  var table = document.getElementById("myTable");
		  var row = table.insertRow(0);
		  var cell1 = row.insertCell(0);
		  var cell2 = row.insertCell(1);
		  var cell3 = row.insertCell(2);
		  var cell4 = row.insertCell(3);
		  var cell5 = row.insertCell(4);
		  cell1.innerHTML = col1;
		  cell2.innerHTML = col2;
		  cell3.innerHTML = col3;
		  cell4.innerHTML = col4;
		  cell5.innerHTML = 'X';
		  row.classList.add("pcla");
		  cell5.classList.add("delbtn");
		  
		    var createClickHandler = function(row) {
		        return function() {
		          var cellPrice = row.getElementsByTagName("td")[2];
		          var price = cellPrice.innerHTML;
		          if (totalPrice>0)
		        	  totalPrice-=price;
		          
		          $("#totprice").html("<p><strong>TOTAL PRICE</strong>: <span class=\"totPrice\">$"+new Intl.NumberFormat().format(totalPrice)+"</span></p>");   // Create with jQuery	 
		          myDeleteFunction(row.rowIndex);
		        };
		      };
		      cell5.onclick = createClickHandler(row);
		}
	
    $("#idtable").on('click','.addbtn',function(){

         var currentRow=$(this).closest("tr"); 
         var col1=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
         var col2=currentRow.find("td:eq(1)").text(); // get current row 2nd TD
         var col3=currentRow.find("td:eq(2)").text(); // get current row 3rd TD
         var col4=currentRow.find("td:eq(3)").text(); // get current row 3rd TD
         var integerPrice = parseFloat($.trim(col3)); 
        
         totalPrice+=integerPrice;
         singlePrice=integerPrice;
         singlePrice.toFixed(2);

         $("#totprice").html("<p><strong>TOTAL PRICE</strong>: <span class=\"totPrice\">$"+new Intl.NumberFormat().format(totalPrice)+"</span></p>");   // Create with jQuery	 
         
         createTable($.trim(col1), $.trim(col2), $.trim(col3), $.trim(col4));
    });    
    
});


 