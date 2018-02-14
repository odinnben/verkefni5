<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/static/stylee.css">
    <title>verkefni 5 - Viðburðir</title>
</head>
<body>
<h2>Viðburðarsíða</h2>
    <div class="iphone">
    % for event in data['results']:
        <div class="event">
            <h3>{{event['eventHallName']}}</h3>
            <h3>{{event['eventDateName']}}</h3>
            <h3>{{event['dateOfShow'][:10]}}</h3>
            <img src="{{event['imageSource']}}">
        </div>
    %end
        </div>

</body>
</html>
