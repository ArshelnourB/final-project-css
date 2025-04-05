<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nintendo Gamecube | About</title>
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
            <section class="row-one">
                <img src="./img/logos/gc-logo-full.png" alt="logo" class="gamecube-logo">
                <h1 class="row-one-header">The Perfect Game System.</h1>
            </section>
            <section class="row-two">
                <h2 class="row-two-header">The Best Games You'll Find Anywhere</h2>
                <p>Enjoy our vast catalogue of affordable, high-quality games.</p>
                <p><a href="games.php">Browse our games</a></p>
            </section>
        </main>
        <?php require ('./includes/footer.php'); ?>
    </body>
</html>