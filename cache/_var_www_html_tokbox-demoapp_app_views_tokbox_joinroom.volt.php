<html>
<head>
	 <meta charset="UTF-8"> 
    <title> OpenTok Room </title>
</head>
<body>
    <div id="videos">
        <div id="publisher"></div>
        <div id="subscribers"></div>
    </div>

    <script type="text/javascript">
    	$(document).ready(function()
		{
			var apiKey    = "<?= $api_key ?>";
			var sessionId = "<?= $session_id ?>";
			var token     = "<?= $token ?>";

			var session = OT.initSession(apiKey, sessionId);

			var publisher = OT.initPublisher('publisher');

			session.on('streamCreated', function(event) {
			  session.subscribe(event.stream, 'subscribers', {
			    insertMode: 'append'
			  }, function(error) {
			    if (error) {
			      console.error('Failed to subscribe', error);
			    }
			  });
			});

			session.connect(token, function(error) {
			  if (error) {
			    console.error('Failed to connect', error);
			  } else {
			    session.publish(publisher, function(error) {
			      if (error) {
			        console.error('Failed to publish', error);
			      }
			    });
			  }
			});
		});
	</script>
</body>
</html>