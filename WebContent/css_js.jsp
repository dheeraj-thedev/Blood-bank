<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=153669694806602";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<script src="js/wufoo.js"></script>
<script language="javascript" type="text/javascript">
    FB.init({
        appId: '561303080587920',
        status: true, 
        cookie: true, 
        xfbml: true 
    });    
</script>

<script type="text/javascript" >
function blink(selector){
$(selector).fadeOut('slow', function(){
$(this).fadeIn('slow', function(){
blink(this);
});
});
}

blink('#msg');
</script>
<link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.widget.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker.min.js"></script>
<link href="css/sidebar.css" rel="stylesheet" type="text/css" />
<link href="css/new.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/list.css" rel="stylesheet" type="text/css" />
<link href="css/ddsmoothmenu.css" rel="stylesheet" type="text/css" />
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/jquery.fancybox-1.3.1.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">

<script type="text/javascript" src="js/Verdana_400-Verdana_700-Verdana_italic_400-Verdana_italic_700.font.js"></script>

<!--script type="text/javascript" src="js/wb.carousel.min.js"></script-->
<!-- // Javascripts // -->
<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/nivo.js"></script>
<script type="text/javascript" src="js/menu.js"></script>


<script type="text/javascript" src="js/Verdana_400-Verdana_700-Verdana_italic_400-Verdana_italic_700.font.js"></script>
</head>
<body>

</body>
</html>