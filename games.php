<?php
require_once './get-games.php';
$games = getGames();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nintendo Gamecube | Games</title>
        <meta name="description" content="I will be making an online game store using HTML and CSS">
        <meta name="robots" content="noindex, nofollow">
        <link rel="stylesheet" href="./css/styles.css">
    </head>
    <body>
        <?php require ('./includes/header.php'); ?>
        <main>
            <video id="background-video" autoplay loop muted>
                <source src="./video/promo-video.mp4" type="video/mp4">
            </video>
            <section class="games-display">
                <h1>Games</h1>
                <?php if (!empty($games)) : ?>
                <table>
                    <thead class="game-heading">
                        <tr>
                            <th>Title</th>
                            <th>Price</th>
                            <th>Rating</th>
                        </tr>
                    </thead>
                    <tbody class="game-info">
                        <?php 
                        foreach ($games as $game) : ?>
                            <tr>
                                <td><?php echo htmlspecialchars($game['name']); ?></td>
                                <td><?php echo htmlspecialchars($game['price']); ?></td>
                                <td><?php echo htmlspecialchars($game['rating']); ?></td>
                            </tr>
                            <?php
                            ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <?php else : ?>
                    <p>No games found.</p>
                <?php endif; ?>
            </section>
        </main>
        <?php require ('./includes/footer.php'); ?>
    </body>
</html>