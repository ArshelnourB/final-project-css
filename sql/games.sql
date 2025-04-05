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
- Wind Waker

Info
- Name
- Stock (# of copies, in stock?)
- Synopsis
- Release date
- Developer
- Rating
- Players
- Link to images(background, render, cover/cover spine)

ALTER TABLE Customers
ADD Email varchar(255);
*/
INSERT INTO games (name, bgImageUrl, renderImageURL, coverImageURL, spineImageURL, discImageURL, price, stock, synopsis, releaseDate, developer, rating, players) VALUES
("Mario Kart Double Dash", 
"./../img/bg/Mario-Kart-Double-Dash/doubledash-bg-1.jpg", 
"./../img/renders/Mario-Kart-Double-Dash/doubledash-render.png",
"./../img/boxes/doubledash-box.png", 
"./../img/boxes/spine/doubledash-spine.jpg", 
"./../img/discs/doubledash-disc.jpg", 
89.99,
0, 
"Take all the crazy action of the celebrated Mario Kart series... and multiply it by two! In Mario Kart: Double Dash!!, each kart holds two racers that can switch places at any time, so choose from a huge cast of characters and pair them up any way you see fit!",
'2003-11-17', 
"Nintendo", 
4.8, 
"1-4"),

("Wario World",
 "./../img/bg/Wario-World/warioworld-bg-1.jpg",
"./../img/renders/Wario-World/warioworld-render.png",
"./../img/boxes/warioworld-box.png", 
"./../img/boxes/spine/warioworld-spine.jpg", 
"./../img/discs/warioworld-disc.jpg",
49.99,
1, 
"You'd BETTER be ready, punk! Some evil jewel transformed all of my treasure into monsters, and now I gotta go to this weird world and beat it out of 'em! There are plenty of goons waiting for a shot at old Wario, but don't worry about me, baby - I'm ready to brawl! I'll be throwing punches, charging through crowds, and piledriving ugly mugs right and left. What you gotta worry about is keeping me alive. Can you handle that, or do I have to give you a knuckle sandwich too?", 
'2003-06-20', 
"Nintendo", 
3.9, 
"1"),

("Super Monkey Ball", 
"./../img/bg/Super-Monkey-Ball/smb1-bg-1.jpg",
"./../img/renders/Super-Monkey-Ball/smb1-render.png", 
"./../img/boxes/smb1-box.png", 
"./../img/boxes/spine/smb1-spine.jpg", 
"./../img/discs/smb1-disc.jpg", 
24.99,
1, 
"Call you friends and warn your neighbours, it's time to have a ball! Go bananas with 90+ stages, multiplayer madness, and 7 cool ways to play! Equal parts 'party' and 'game', Super Monkey Ball could be the most 'well-rounded' game you've ever played!", 
'2003-11-17', 
"Amusement Vision",
4.5, 
"1-4"), 

("Super Monkey Ball 2", 
"./../img/bg/Super-Monkey-Ball/smb2-bg-1.jpg", 
"./../img/renders/Super-Monkey-Ball/smb2-render.png", 
"./../img/boxes/smb2-box.png", 
"./../img/boxes/spine/smb2-spine.jpg", 
"./../img/discs/smb2-disc.jpg", 
29.99,
1, 
"Your favorite monkeys are back with 12 unbelievable party games, an all-new Story Mode, and over 150 new stages! Let the good times roll!", 
'2003-11-17', 
"Amusement Vision", 
4.7, 
"1-4"),

("Metroid Prime", 
"./../img/bg/Metroid-Prime/metroidprime-bg-1.jpg", 
"./../img/renders/Metroid-Prime/metroidprime-render.png", 
"./../img/boxes/metroidprime-box.png", 
"./../img/boxes/spine/metroidprime-spine.jpg", 
"./../img/discs/metroidprime-disc.jpg", 
59.99,
1,
"Something sinister lurks in the depths of Planet Tallon IV. Intersteller bounty hunter Samus Aran is the only one who can destroy this evil... but first it must be found.", 
'2002-11-22', 
"Nintendo", 
4.6, 
"1");

("Luigi's Mansion", 
"./img/bg/Luigis-Mansion/luigimansion-bg-1.jpg", 
"./img/renders/Metroid-Prime/luigimansion-render.png", 
"./img/boxes/luigismansion-box.png", 
"./img/boxes/spine/luigismansion-spine.jpg", 
"./img/discs/metroidprime-disc.jpg", 
59.99,
1,
"Something sinister lurks in the depths of Planet Tallon IV. Intersteller bounty hunter Samus Aran is the only one who can destroy this evil... but first it must be found.", 
'2002-11-22', 
"Nintendo", 
4.6, 
"1");
--YYYY-MM-DD November 17, 2003


