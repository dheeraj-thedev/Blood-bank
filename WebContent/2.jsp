<html>
<head>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/css">

</script>
<script type="text/javascript">
$(document).ready(function()
{
$(".uname").change(function()
{
var uname = $(this).val();
if(uname.length > 3)
{
$(".status").html("Checking availability...");
$.ajax
({
type: "POST",
url: "Check",
data: "uname="+ uname,
success: function(msg)
{
$(".status").ajaxComplete(function(event, request, settings)
{
$(".status").html(msg);
});
}
}); 
}

else
{
$(".status").html("username shold be 3 chars");
}

});
});

</script>
</head>
<body>
<div>
<label>user name :</label>
<input type="text" class="uname"/><span class="status"></span>
</div>
</body>
</html>