CREATE TABLE games (
	gameId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
    bgImageURL VARCHAR(100) NOT NULL,
    renderImageURL VARCHAR(100) NOT NULL,
    coverImageURL VARCHAR(100) NOT NULL,
    spineImageURL VARCHAR(100) NOT NULL,
    discImageURL VARCHAR(100) NOT NULL,
    price DECIMAL(2,2) NOT NULL
    inStock BIT NOT NULL,
    synopsis VARCHAR(500) NOT NULL,	
    releaseDate DATE NOT NULL,
    developer VARCHAR(50),
    rating DECIMAL(1,1),
    players VARCHAR(3)
);

CREATE TABLE users (
    userId INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    username VARCHAR(50) NOT NULL, 
    password VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    isAdmin BIT NOT NULL
);

CREATE TABLE shoppingCart (
    cartId INT NOT NULL AUTO_INCREMENT PRIMARY KEY
    FOREIGN KEY (userId) REFERENCES users(userId),
    FOREIGN KEY (gameId) REFERENCES games(gameId)
);
/* 
Games
- Mario Kart Double Dash
- Wario World
- Super Monkey Ball ½
- Metroid Prime
- Luigi’s Mansion
- Sonic Riders
- Spyro Enter The Dragonfly
- Super Mario Sunshine
- Sonic Heroes
- Shadow The Hedgehog
- F-Zero GX
- Pokemon XD Gale Of Darkness

Info
- Name
- Stock (# of copies, in stock?)
- Synopsis
- Release date
- Developer
- Rating
- Players
- Link to images(background, render, cover/cover spine)
*/
INSERT INTO games (name, bgImageUrl, renderImageURL, coverImageURL, spineImageURL, discImageURL, price, inStock, synopsis, releaseDate, developer, rating, players) VALUES
("Mario Kart Double Dash", 
"./img/bg/Mario-Kart-Double-Dash/doubledash-bg-1.jpg", 
"./img/renders/Mario-Kart-Double-Dash/doubledash-render.png",
"./img/boxes/doubledash-box.png", 
"./img/boxes/spine/doubledash-spine.jpg", 
"./img/discs/doubledash-disc.jpg", 
89.99,
0, 
"Take all the crazy action of the celebrated Mario Kart series... and multiply it by two! In Mario Kart: Double Dash!!, each kart holds two racers that can switch places at any time, so choose from a huge cast of characters and pair them up any way you see fit!",
'2003-11-17', 
"Nintendo", 
4.8, 
"1-4"),

("Wario World",
 "./img/bg/Wario-World/warioworld-bg-1.jpg",
"./img/renders/Wario-World/warioworld-render.png",
"./img/boxes/warioworld-box.png", 
"./img/boxes/spine/warioworld-spine.jpg", 
"./img/discs/warioworld-disc.jpg",
49.99,
1, 
"You'd BETTER be ready, punk! Some evil jewel transformed all of my treasure into monsters, and now I gotta go to this weird world and beat it out of 'em! There are plenty of goons waiting for a shot at old Wario, but don't worry about me, baby - I'm ready to brawl! I'll be throwing punches, charging through crowds, and piledriving ugly mugs right and left. What you gotta worry about is keeping me alive. Can you handle that, or do I have to give you a knuckle sandwich too?", 
'2003-06-20', 
"Nintendo", 
3.9, 
"1"),

("Super Monkey Ball", 
"./img/bg/Super-Monkey-Ball/smb1-bg-1.jpg",
"./img/renders/Super-Monkey-Ball/smb1-render.png", 
"./img/boxes/smb1-box.png", 
"./img/boxes/spine/smb1-spine.jpg", 
"./img/discs/smb1-disc.jpg", 
24.99,
1, 
"Call you friends and warn your neighbours, it's time to have a ball! Go bananas with 90+ stages, multiplayer madness, and 7 cool ways to play! Equal parts 'party' and 'game', Super Monkey Ball could be the most 'well-rounded' game you've ever played!", 
'2003-11-17', 
"Amusement Vision",
4.5, 
"1-4"), 

("Super Monkey Ball 2", 
"./img/bg/Super-Monkey-Ball/smb2-bg-1.jpg", 
"./img/renders/Super-Monkey-Ball/smb2-render.png", 
"./img/boxes/smb2-box.png", 
"./img/boxes/spine/smb2-spine.jpg", 
"./img/discs/smb2-disc.jpg", 
29.99,
1, 
"Your favorite monkeys are back with 12 unbelievable party games, an all-new Story Mode, and over 150 new stages! Let the good times roll!", 
'2003-11-17', 
"Amusement Vision", 
4.7, 
"1-4"),

("Metroid Prime", 
"./img/bg/Metroid-Prime/metroidprime-bg-1.jpg", 
"./img/renders/Metroid-Prime/metroidprime-render.png", 
"./img/boxes/metroidprime-box.png", 
"./img/boxes/spine/metroidprime-spine.jpg", 
"./img/discs/metroidprime-disc.jpg", 
59.99,
1,
"Something sinister lurks in the depths of Planet Tallon IV. Intersteller bounty hunter Samus Aran is the only one who can destroy this evil... but first it must be found.", 
'2002-11-22', 
"Nintendo", 
4.6, 
"1"),

("Luigi's Mansion", 
"./img/bg/Luigis-Mansion/luigimansion-bg-1.jpg", 
"./img/renders/Metroid-Prime/luigimansion-render.png", 
"./img/boxes/luigismansion-box.png", 
"./img/boxes/spine/luigismansion-spine.jpg", 
"./img/discs/luigismansion-disc.jpg", 
59.99,
1,
"Something sinister lurks in the depths of Planet Tallon IV. Intersteller bounty hunter Samus Aran is the only one who can destroy this evil... but first it must be found.", 
'2002-11-22', 
"Nintendo", 
4.6, 
"1"),

("Luigi's Mansion", 
"./img/bg/Luigis-Mansion/luigimansion-bg-1.jpg", 
"./img/renders/Metroid-Prime/luigimansion-render.png", 
"./img/boxes/luigismansion-box.png", 
"./img/boxes/spine/luigismansion-spine.jpg", 
"./img/discs/metroidprime-disc.jpg", 
59.99,
1,
"Luigi's won a mansion! The bad news is that it's crawling with ghosts...and Mario seems to be trapped inside...", 
'2001-09-14', 
"Nintendo",
4.9, 
"1"),

("Super Mario Sunshine", 
"./img/bg/Super-Mario-Sunshine/mariosunshine-bg-1.jpg", 
"./img/renders/Super-Mario-Sunshine/mariosunshine-render.png", 
"./img/boxes/mariosunshine-box.png", 
"./img/boxes/spine/mariosunshine-spine.jpg", 
"./img/discs/mariosunshine-disc.jpg", 
59.99,
1,
"Dark days on Isle Delfino! When Mario arrives on tropical Isle Delfino, the once-pristine island is polluted and plastered with graffiti. Even worse, he's being blamed for the mess! Now instead of enjoying a relaxing vacation, Mario has to clean up the place and track down the real culprit.", 
'2002-07-19', 
"Nintendo",
4.3, 
"1"),

("Shadow the Hedgehog", 
"./img/bg/Shadow-The-Hedgehog/shadow-bg-1.jpg", 
"./img/renders/Shadow-The-Hedgehog/shadow-render.png", 
"./img/boxes/shadow-box.png", 
"./img/boxes/spine/shadow-spine.jpg", 
"./img/discs/shadow-disc.jpg", 
49.99,
1,
"To destroy or to protect? Shadow the Hedgehog carries a dark past that is shrouded in mystery. Embark on a journey to unveil his true identity. The way you play the game will determine the outcome of Shadow's future...", 
'2005-11-15', 
"Sonic Team",
3.5, 
"1-2"),

("Sonic Heroes", 
"./img/bg/Sonic-Heroes/sonicheroes-bg-1.jpg", 
"./img/renders/Sonic-Heroes/sonicheroes-render.png", 
"./img/boxes/sonicheroes-box.png", 
"./img/boxes/spine/sonicheroes-spine.jpg", 
"./img/discs/sonicheroes-disc.jpg", 
49.99,
0,
"Sonic has returned with his long-time pals Knuckles and Tails to defeat the evil Dr. Eggman. Through teamwork, this powerful group of heroes, along with three other newly formed super teams, must dash past, soar over and bash through the villainous Eggman's forces, in the fight for world domination, which team will you join?", 
'2003-12-30', 
"Sonic Team",
3.8, 
"1-2"),

("Sonic Riders", 
"./img/bg/Sonic-Riders/sonicriders-bg-1.jpg", 
"./img/renders/Sonic-Riders/sonicriders-render.png", 
"./img/boxes/sonicriders-box.png", 
"./img/boxes/spine/sonicriders-spine.jpg", 
"./img/discs/sonicriders-disc.jpg", 
29.99,
1,
"Sonic takes on Dr. Eggman's call for the fastest air-rider at the World Grand Prix. Compete against new rivals - The Babylon Rogues - as you pull off insane tricks and catch massive air!", 
'2006-02-21', 
"Sonic Team",
4.3, 
"1-4"),

("Spyro Enter the Dragonfly", 
"./img/bg/Spyro-Enter-the-Dragonfly/spyroetd-bg-1.jpg", 
"./img/renders/Spyro-Enter-the-Dragonfly/spyroetd-render.png", 
"./img/boxes/spyroetd-box.png", 
"./img/boxes/spine/spyroetd-spine.jpg", 
"./img/discs/spyroetd-disc.jpg", 
19.99,
1,
"Dragonflies missing?! Future of Dragon Realms in jeopardy?! It seems Riot is back with an evil plan and everyone's favourite dragon is on a mission to stop him. Featuring stuttering gameplay, broken levels and all-new console crashes, this is definitely Spyro's trashiest adventure ever!
", 
'2002-11-05', 
"Universal",
2.1, 
"1"),

("Pokemon XD: Gale of Darkness", 
"./img/bg/Pokemon-XD/xd-bg-1.jpg", 
"./img/renders/Pokemon-XD/xd-render.png", 
"./img/boxes/xd-box.png", 
"./img/boxes/spine/xd-spine.jpg", 
"./img/discs/xd-disc.jpg", 
59.99,
0,
"Using Shadow Pokemon, an evil organization has unleashed a sinister plot of world domination. With Eevee as your companion, and with the help of numerous friends along the way, you must fight against terrible foes and race against time to snag and purify the Shadow Pokemon and save the world!
", 
'2005-08-04', 
"The Pokemon Company",
4.4, 
"1-4"),

("F-Zero GX", 
"./img/bg/F-Zero-GX/f-zero-bg-1.jpg", 
"./img/renders/F-Zero-GX/f-zero-render.png", 
"./img/boxes/fzero-box.png", 
"./img/boxes/spine/fzero-spine.jpg", 
"./img/discs/fzero-disc.jpg", 
39.99,
1,
"Race for glory in the Grand Prix cups, speed through an incredible storyline as Captain Falcon, take on up to three friends, build and customize your own machine, challenge your time ghosts, and much more! 30 pilots, 20 courses, ONE champion!
", 
'2003-07-25', 
"Amusement Vision",
4.6, 
"1-4");
--YYYY-MM-DD November 17, 2003


