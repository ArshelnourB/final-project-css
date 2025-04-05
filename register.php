<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nintendo Gamecube | Register</title>
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
            <section class="register-form">
                <h1>Register</h1>
                <form action="register-process.php" method="post">
                    <input required type="text" id="username" name="username" placeholder="Username">
                    <input required type="email" id="register-email" name="email" placeholder="Email">
                    <input required type="text" id="password" name="password" placeholder="Password">
                    <input required type="text" id="password-confirm" name="password-confirm" placeholder="Confirm Password">
                    <input required type="submit" id="submit" value="Register">
                    <p class="login-link">Already have an account? <a href="login.php">Log in</a></p>
                </form>
                <img src="./img/renders/Super-Monkey-Ball/smb2-render.png" alt="register render" class="register-img">
            </section>
        </main>
        <?php require ('./includes/footer.php'); ?>
    </body>
</html>