<?php
require_once './includes/database.php';

function getGames() {
    global $conn;

    $sql = "SELECT gameId, name, bgImageUrl, renderImageURL, coverImageURL, spineImageURL, discImageURL, price, inStock, synopsis, releaseDate, developer, rating, players FROM games";
    $result = $conn->query($sql);

    if ($result){
        $games = $result->fetchAll(PDO::FETCH_ASSOC);
        return $games;
    }
    else{
        echo "Mysql Error: ". $conn->error;
        return [];
    }
}
?>