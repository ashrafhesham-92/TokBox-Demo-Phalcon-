<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>OpenTok Demo App</title>
</head>
<body>
    <h2>Create a session</h2>

    <form role="form" action="{{url('tokbox/generateSession')}}" method="post" enctype="multipart/form-data">
    	<input type="submit" value="Create Session">
    </form>
</body>
</html>