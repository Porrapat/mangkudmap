<?php
    // $file = fopen("1_mangosteen_2562.csv","r");
    // print_r(fgetcsv($file));

    $servername = "localhost";
    $username = "root";
    $password = "1234";
    $dbname = "mangkudmap";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // mysqli_set_charset($conn, "utf8mb4");

    echo "Connected successfully";
    echo "\n";


    $file = fopen("1_mangosteen_2562.csv","r");

    while(! feof($file))
    {
        $result = fgetcsv($file);
        echo $result[0];
        echo "\n";

        $sql = "SELECT id FROM thailand_province WHERE province_name='".$result[0]."'";
        echo $sql;
        // exit;
        // echo "\n";
        $result = $conn->query($sql);
        // print_r($result['id']);
        // echo $result->num_rows;
        // var_dump($result->num_rows);
        // exit;

        if ($result->num_rows > 0) {
        // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "id: " . $row["id"];
                echo "\n";
            }
        } else {
            echo "0 results";
        }


        // print_r(fgetcsv($file));
    }

    fclose($file);