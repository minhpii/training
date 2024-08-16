<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<body>
  <h1>Dear {{ $details['name'] }},</h1>
  <h5>Medium Score: {{ $details['mediumCourse'] }},</h5>
  <p>We would like to inform you that your average score in the subjects is below 5. Therefore, you will have to stop
    studying at school.</p>
  <p>We regret this decision and hope that you will continue your efforts in the future.</p>
  <p>Best regards,</p>
  <p>Training Room</p>
</body>

</html>
