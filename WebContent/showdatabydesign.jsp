<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>	
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/media/images/favicon.ico" />
		
		<title>DataTables example</title>
		<style type="text/css" title="currentStyle">
			@import "css/demo_page.css";
			@import "css/demo_table.css";
		</style>
		<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
		<script>
    $("#datatable").dataTable();
</script>
		<!--
		<script type="text/javascript" charset="utf-8">
			/* Note 'unshift' does not work in IE6. A simply array concatenation would. This is used
			 * to give the custom type top priority
			 */
			jQuery.fn.dataTableExt.aTypes.unshift(
				function ( sData )
				{
					var sValidChars = "0123456789-,";
					var Char;
					var bDecimal = false;
					
					/* Check the numeric part */
					for ( i=0 ; i<sData.length ; i++ )
					{
						Char = sData.charAt(i);
						if (sValidChars.indexOf(Char) == -1)
						{
							return null;
						}
						
						/* Only allowed one decimal place... */
						if ( Char == "," )
						{
							if ( bDecimal )
							{
								return null;
							}
							bDecimal = true;
						}
					}
					
					return 'numeric-comma';
				}
			);
			
			jQuery.fn.dataTableExt.oSort['numeric-comma-asc']  = function(a,b) {
				var x = (a == "-") ? 0 : a.replace( /,/, "." );
				var y = (b == "-") ? 0 : b.replace( /,/, "." );
				x = parseFloat( x );
				y = parseFloat( y );
				return ((x < y) ? -1 : ((x > y) ?  1 : 0));
			};
			
			jQuery.fn.dataTableExt.oSort['numeric-comma-desc'] = function(a,b) {
				var x = (a == "-") ? 0 : a.replace( /,/, "." );
				var y = (b == "-") ? 0 : b.replace( /,/, "." );
				x = parseFloat( x );
				y = parseFloat( y );
				return ((x < y) ?  1 : ((x > y) ? -1 : 0));
			};
			
			$(document).ready(function() {
				$('#example').dataTable( {
					"sPaginationType": "full_numbers"
				} );
			} );
		</script>
	--></head>
	<body id="dt_example">
		<div id="container">
			
			<div id="demo">
			
			
	

<s:if test="str=='list'">
<table cellpadding="0" cellspacing="0" border="0" class="display" id="datatable">
	<thead>
		<tr>
			<th>Sr. No.</th>
				<th>Donor First Name</th>
				<th>Donor Middle Name</th>
				<th>Donor Phone No</th>
		</tr>
	</thead>
	<tbody>
			
			<s:iterator value="staffList" status="stat" >
			
				<tr>
		
					<td><s:property value="#stat.count" /></td>
					<td><s:property value="contactDetail.firstName" /></td>
					<td><s:property value="contactDetail.middleName" /></td>
					<td><s:property value="contactDetail.contactNo" /></td>
					<td>
					<s:url id="deleteUrl" action="DeleteStudent">
						<s:param name="student_id" value="%{studentId}" />
					</s:url> 
					<s:a href="%{deleteUrl}" onclick="return confirm('Are you sure you want to delete?')">Delete</s:a>
					</td> 
					<td>
					<s:url id="editUrl" action="EditStudent">
						<s:param name="student_id" value="%{studentId}" />
					</s:url> 
					<s:a href="%{editUrl}">Edit</s:a> 
					</td>
		
				</tr>
				
			
		
</s:iterator>
	</tbody>
	<tfoot>
		<tr>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
		</tr>
	</tfoot>
</table>

</s:if>


			</div>
			
			<style type="text/css">
				@import "css/shCore.css";
			</style>
			<script type="text/javascript" language="javascript" src="js/shCore.js"></script>
			</div>
			</body>
			</html>