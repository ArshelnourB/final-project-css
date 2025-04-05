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
            <section class="login-form">
                <h1>Login</h1>
                <?php
                if (isset($_GET['error']) && $_GET['error'] === 'incorrect') {
                    echo '<p style="color: red;">Incorrect username or password.</p>';
                } elseif (isset($_GET['error']) && $_GET['error'] === 'notfound') {
                    echo '<p style="color: red;">User not found.</p>';
                }
                ?>
                <form method="post" action="login-process.php">
                    <input required type="text" id="username" name="username" placeholder="Username">
                    <input required type="text" id="password" name="password" placeholder="Password">
                    <input required type="submit" id="submit" value="Login">
                    <p class="register-link">Don't have an account? <a href="register.php">Register</a></p>
                </form>
                <img src="./img/renders/Super-Mario-Sunshine/mariosunshine-render.png" alt="login render" class="login-img">
            </section>
        </main>
        <?php require ('./includes/footer.php'); ?>
    </body>
</html>