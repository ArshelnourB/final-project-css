<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nintendo Gamecube | Home</title>
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
            <section class="masthead">
                <h1 class="heading"><a href="about.php">BORN TO PLAY.</a></h1>
                <img src="./img/gifs/gamecube-spin.gif" alt="gif" class="gamecube-gif">
            </section>
            <section class="featured">
                <h2>FEATURED</h2>
                <div class="featured-game">
                    <h3>SUPER MONKEY BALL 2</h3>
                    <img src="./img/bg/Super-Monkey-Ball/smb2-aiai-title.jpg" alt="monkey ball 2 title">
                </div>
                <div class="gameplay-imgs">
                    <img src="./img/gameplay/smb2-shot01.jpg" alt="monkey ball 2 gameplay 1">
                    <img src="./img/gameplay/smb2-shot02.jpg" alt="monkey ball 2 gameplay 2">
                    <img src="./img/gameplay/smb2-shot03.jpg" alt="monkey ball 2 gameplay 3">
                    <img src="./img/gameplay/smb2-shot04.png" alt="monkey ball 2 gameplay 4">
                    <img src="./img/gameplay/smb2-shot05.png" alt="monkey ball 2 gameplay 5">
                    <img src="./img/gameplay/smb2-shot06.jpg" alt="monkey ball 2 gameplay 6">
                    <img src="./img/gameplay/smb2-shot-07.webp" alt="monkey ball 2 gameplay 7">
                </div>
            </section>
            <section class="newsletter">
                <h4>Sign Up For Our Newsletter!</h4>
                <form method="post">
                    <input required type="text" id="fname" name="fname" placeholder="First Name">
                    <input required type="text" id="lname" name="lname" placeholder="Last Name">
                    <input required type="email" id="email" name="email" placeholder="Email">
                    <input required type="submit" id="submit" value="Submit">
                </form>
                <img src="./img/renders/Mario-Kart-Double-Dash/4vwzntr1t8p91.png" alt="newsletter render1" class="newsletter-img1">
                <img src="./img/renders/F-Zero-GX/1200px-Samurai_Goroh_-_F-Zero_GX.webp" alt="newsletter render2" class="newsletter-img2">
            </section>
        </main>
        <?php require ('./includes/footer.php'); ?>
    </body>
</html>