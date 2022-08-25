<!DOCTYPE html>
<html>
 <head>
  <title>Seta App</title>
 </head>
<body>
    <center>
        <h1>BETA APP</h1>
        <h3>Display Raw Data</h3>

        <?php
        echo "<html><body><center><table>\n\n";

        // Open a file
        $file = fopen("attack.csv", "r");

        // Fetching data from csv file row by row
        while (($data = fgetcsv($file)) !== false) {

            // HTML tag for placing in row format
            echo "<tr>";
            foreach ($data as $i) {
                echo "<td>| " . htmlspecialchars($i) 
                    . "</td>";
            }
            echo "</tr> \n";
        }

        // Closing the file
        fclose($file);

        echo "\n</table></center></body></html>";
        ?>
    </center>
</body>

</html>
