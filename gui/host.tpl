<!doctype html>
<html lang="us">
	<head>
		<meta charset="utf-8">
		<title>MongoDB Performance Benchmarks</title>
        <script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script>
		<link href="static/css/perf_style.css" rel="stylesheet">
		%import json, datetime
		%host = json.dumps(host, default=lambda obj:obj.isoformat() if isinstance(obj, datetime.datetime) else None)
		<script>
			$(window).on('load', function() {
				var data = $('#host_info').data('dump')
				var stringified = JSON.stringify(data, undefined, 4)
				$('body').append($('<pre>').append(stringified))
			});
		</script>
	</head>
	<body>
		<div id="host_info" data-dump="{{host}}"></div>
		<h1>MongoDB Benchmark Host (<a href="/">Home</a>)</h1>
	</body>
</html>