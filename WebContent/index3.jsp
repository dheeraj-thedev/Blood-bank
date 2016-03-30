<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
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
	</head>
	<body id="dt_example">
		<div id="container">
			
			<div id="demo">
<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
			<th>Rendering engine</th>
			<th>Browser</th>
			<th>Platform(s)</th>
			<th>Engine version</th>
			<th>CSS grade</th>
		</tr>
	</thead>
	<tbody>
		<tr >
			<td>Trident</td>
			<td>Internet
				 Explorer 4.0</td>
			<td>Win 95+</td>
			<td>4</td>
			<td>X</td>
		</tr>
		<tr >
			<td>Trident</td>
			<td>Internet
				 Explorer 5.0</td>
			<td>Win 95+</td>
			<td>5</td>
			<td>C</td>
		</tr>
		<tr >
			<td>Trident</td>
			<td>Internet
				 Explorer 5.5</td>
			<td>Win 95+</td>
			<td>5,5</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Trident</td>
			<td>Internet
				 Explorer 6</td>
			<td>Win 98+</td>
			<td>6</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Trident</td>
			<td>Internet Explorer 7</td>
			<td>Win XP SP2+</td>
			<td>7</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Trident</td>
			<td>AOL browser (AOL desktop)</td>
			<td>Win XP</td>
			<td>6</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Firefox 1.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1,7</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Firefox 1.5</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Firefox 2.0</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Firefox 3.0</td>
			<td>Win 2k+ / OSX.3+</td>
			<td>1,9</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Camino 1.0</td>
			<td>OSX.2+</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Camino 1.5</td>
			<td>OSX.3+</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Netscape 7.2</td>
			<td>Win 95+ / Mac OS 8.6-9.2</td>
			<td>1,7</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Netscape Browser 8</td>
			<td>Win 98SE+</td>
			<td>1,7</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Netscape Navigator 9</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.1</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1,1</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.2</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1,2</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.3</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1,3</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.4</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1,4</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.5</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1,5</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.6</td>
			<td>Win 95+ / OSX.1+</td>
			<td>1,6</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.7</td>
			<td>Win 98+ / OSX.1+</td>
			<td>1,7</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Mozilla 1.8</td>
			<td>Win 98+ / OSX.1+</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Seamonkey 1.1</td>
			<td>Win 98+ / OSX.2+</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Gecko</td>
			<td>Epiphany 2.20</td>
			<td>Gnome</td>
			<td>1,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Webkit</td>
			<td>Safari 1.2</td>
			<td>OSX.3</td>
			<td>125,5</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Webkit</td>
			<td>Safari 1.3</td>
			<td>OSX.3</td>
			<td>312,8</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Webkit</td>
			<td>Safari 2.0</td>
			<td>OSX.4+</td>
			<td>419,3</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Webkit</td>
			<td>Safari 3.0</td>
			<td>OSX.4+</td>
			<td>522,1</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Webkit</td>
			<td>OmniWeb 5.5</td>
			<td>OSX.4+</td>
			<td>420</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Webkit</td>
			<td>iPod Touch / iPhone</td>
			<td>iPod</td>
			<td>420,1</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Webkit</td>
			<td>S60</td>
			<td>S60</td>
			<td>413</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera 7.0</td>
			<td>Win 95+ / OSX.1+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera 7.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera 8.0</td>
			<td>Win 95+ / OSX.2+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera 8.5</td>
			<td>Win 95+ / OSX.2+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera 9.0</td>
			<td>Win 95+ / OSX.3+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera 9.2</td>
			<td>Win 88+ / OSX.3+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera 9.5</td>
			<td>Win 88+ / OSX.3+</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Opera for Wii</td>
			<td>Wii</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Nokia N800</td>
			<td>N800</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Presto</td>
			<td>Nintendo DS browser</td>
			<td>Nintendo DS</td>
			<td>8,5</td>
			<td>C/A<sup>1</sup></td>
		</tr>
		<tr >
			<td>KHTML</td>
			<td>Konqureror 3.1</td>
			<td>KDE 3.1</td>
			<td>3,1</td>
			<td>C</td>
		</tr>
		<tr >
			<td>KHTML</td>
			<td>Konqureror 3.3</td>
			<td>KDE 3.3</td>
			<td>3,3</td>
			<td>A</td>
		</tr>
		<tr >
			<td>KHTML</td>
			<td>Konqureror 3.5</td>
			<td>KDE 3.5</td>
			<td>3,5</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Tasman</td>
			<td>Internet Explorer 4.5</td>
			<td>Mac OS 8-9</td>
			<td>-</td>
			<td>X</td>
		</tr>
		<tr >
			<td>Tasman</td>
			<td>Internet Explorer 5.1</td>
			<td>Mac OS 7.6-9</td>
			<td>1</td>
			<td>C</td>
		</tr>
		<tr >
			<td>Tasman</td>
			<td>Internet Explorer 5.2</td>
			<td>Mac OS 8-X</td>
			<td>1</td>
			<td>C</td>
		</tr>
		<tr >
			<td>Misc</td>
			<td>NetFront 3.1</td>
			<td>Embedded devices</td>
			<td>-</td>
			<td>C</td>
		</tr>
		<tr >
			<td>Misc</td>
			<td>NetFront 3.4</td>
			<td>Embedded devices</td>
			<td>-</td>
			<td>A</td>
		</tr>
		<tr >
			<td>Misc</td>
			<td>Dillo 0.8</td>
			<td>Embedded devices</td>
			<td>-</td>
			<td>X</td>
		</tr>
		<tr >
			<td>Misc</td>
			<td>Links</td>
			<td>Text only</td>
			<td>-</td>
			<td>X</td>
		</tr>
		<tr >
			<td>Misc</td>
			<td>Lynx</td>
			<td>Text only</td>
			<td>-</td>
			<td>X</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>IE Mobile</td>
			<td>Windows Mobile 6</td>
			<td>-</td>
			<td>C</td>
		</tr>
		<tr>
			<td>Misc</td>
			<td>PSP browser</td>
			<td>PSP</td>
			<td>-</td>
			<td>C</td>
		</tr>
		<tr >
			<td>Other browsers</td>
			<td>All others</td>
			<td>-</td>
			<td>-</td>
			<td>U</td>
		</tr>
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
			</div>
			
			<style type="text/css">
				@import "css/shCore.css";
			</style>
			<script type="text/javascript" language="javascript" src="js/shCore.js"></script>
			</div>
			</body>
			</html>