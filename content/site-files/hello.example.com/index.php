<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>It works!</title>
</head>
<body>
    <p>Hello world :)</p>
    <p>
        <?php 
            echo ("PHP works fine!");
        ?>
    </p>
    <pre>
        <?php
            print_r(get_loaded_extensions());
        ?>
    </pre>
</body>
</html>