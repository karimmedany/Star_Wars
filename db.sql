Skip to content
Search or jump to…
Pull requests
Issues
Marketplace
Explore
 
@karimmedany 
PrototypeInteractive
/
prototype-recruitment-database-schema
Public
4
02
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
prototype-recruitment-database-schema/script.sql
@vleontyev
vleontyev add related data into SQL script
Latest commit b0876ac on Dec 11, 2019
 History
 1 contributor
1785 lines (1733 sloc)  146 KB
   

CREATE TABLE [dbo].[films](
	[id] [int] NOT NULL,
	[created] DATETIME NULL,
	[director] [nvarchar](max) NULL,
	[edited] DATETIME NULL,
	[episode_id] [int] NULL,
	[opening_crawl] [nvarchar](max) NULL,
	[producer] [nvarchar](max) NULL,
	[release_date] DATETIME NULL,
	[title] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
)
CREATE TABLE [dbo].[films_characters] (
	[film_id] [int] NOT NULL,
	[people_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([film_id] ASC, [people_id] ASC)
)
CREATE TABLE [dbo].[films_planets](
	[film_id] [int] NOT NULL,
	[planet_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([film_id] ASC, [planet_id] ASC)
)
CREATE TABLE [dbo].[films_species](
	[film_id] [int] NOT NULL,
	[species_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([film_id] ASC, [species_id] ASC)
)
CREATE TABLE [dbo].[films_starships](
	[film_id] [int] NOT NULL,
	[starship_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([film_id] ASC, [starship_id] ASC)
)
CREATE TABLE [dbo].[films_vehicles](
	[film_id] [int] NOT NULL,
	[vehicle_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([film_id] ASC, [vehicle_id] ASC)
)
CREATE TABLE [dbo].[people](
	[id] [int] NOT NULL,
	[birth_year] [nvarchar](max) NULL,
	[created] DATETIME NULL,
	[edited] DATETIME NULL,
	[eye_color] [nvarchar](max) NULL,
	[gender] [nvarchar](max) NULL,
	[hair_color] [nvarchar](max) NULL,
	[height] [nvarchar](max) NULL,
	[homeworld] [int] NULL,
	[mass] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[skin_color] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
)
CREATE TABLE [dbo].[planets](
	[id] [int] NOT NULL,
	[climate] [nvarchar](max) NULL,
	[created] DATETIME NULL,
	[diameter] [nvarchar](max) NULL,
	[edited] DATETIME NULL,
	[gravity] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[orbital_period] [nvarchar](max) NULL,
	[population] [nvarchar](max) NULL,
	[rotation_period] [nvarchar](max) NULL,
	[surface_water] [nvarchar](max) NULL,
	[terrain] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
)

CREATE TABLE [dbo].[species](
	[id] [int] NOT NULL,
	[average_height] [nvarchar](max) NULL,
	[average_lifespan] [nvarchar](max) NULL,
	[classification] [nvarchar](max) NULL,
	[created] DATETIME NULL,
	[designation] [nvarchar](max) NULL,
	[edited] DATETIME NULL,
	[eye_colors] [nvarchar](max) NULL,
	[hair_colors] [nvarchar](max) NULL,
	[homeworld] [int] NULL,
	[language] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[skin_colors] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC) 
)

CREATE TABLE [dbo].[species_people](
	[species_id] [int] NOT NULL,
	[people_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([species_id] ASC, [people_id] ASC)
)

CREATE TABLE [dbo].[starships](
	[id] [int] NOT NULL,
	[MGLT] [nvarchar](max) NULL,
	[hyperdrive_rating] [nvarchar](max) NULL,
	[starship_class] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED 
    ([id] ASC)
)
CREATE TABLE [dbo].[starships_pilots](
	[starship_id] [int] NOT NULL,
	[people_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[starship_id] ASC,
	[people_id] ASC
)
)

CREATE TABLE [dbo].[transports](
	[id] [int] NOT NULL,
	[cargo_capacity] [nvarchar](max) NULL,
	[consumables] [nvarchar](max) NULL,
	[cost_in_credits] [nvarchar](max) NULL,
	[created] DATETIME NULL,
	[crew] [nvarchar](max) NULL,
	[edited] DATETIME NULL,
	[length] [nvarchar](max) NULL,
	[manufacturer] [nvarchar](max) NULL,
	[max_atmosphering_speed] [nvarchar](max) NULL,
	[model] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[passengers] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
)

CREATE TABLE [dbo].[vehicles](
	[id] [int] NOT NULL,
	[vehicle_class] [nvarchar](max) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
)
CREATE TABLE [dbo].[vehicles_pilots](
	[vehicle_id] [int] NOT NULL,
	[people_id] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([vehicle_id] ASC,[people_id] ASC)
)



INSERT INTO [films] ([created], [director], [edited], [episode_id], [id], [opening_crawl], [producer], [release_date], [title])
    VALUES
        (N'2014-12-19T16:52:55.740Z', N'George Lucas', N'2014-12-20T10:54:07.216Z', 1, 4, N'Turmoil has engulfed the
Galactic Republic. The taxation
of trade routes to outlying star
systems is in dispute.
Hoping to resolve the matter
with a blockade of deadly
battleships, the greedy Trade
Federation has stopped all
shipping to the small planet
of Naboo.
While the Congress of the
Republic endlessly debates
this alarming chain of events,
the Supreme Chancellor has
secretly dispatched two Jedi
Knights, the guardians of
peace and justice in the
galaxy, to settle the conflict....', N'Rick McCallum', N'1999-05-19', N'The Phantom Menace');
INSERT INTO [films] ([created], [director], [edited], [episode_id], [id], [opening_crawl], [producer], [release_date], [title])
    VALUES
        (N'2014-12-10T14:23:31.880Z', N'George Lucas', N'2014-12-20T19:49:45.256Z', 4, 1, N'It is a period of civil war.
Rebel spaceships, striking
from a hidden base, have won
their first victory against
the evil Galactic Empire.
During the battle, Rebel
spies managed to steal secret
plans to the Empire''s
ultimate weapon, the DEATH
STAR, an armored space
station with enough power
to destroy an entire planet.
Pursued by the Empire''s
sinister agents, Princess
Leia races home aboard her
starship, custodian of the
stolen plans that can save her
people and restore
freedom to the galaxy....', N'Gary Kurtz, Rick McCallum', N'1977-05-25', N'A New Hope');
INSERT INTO [films] ([created], [director], [edited], [episode_id], [id], [opening_crawl], [producer], [release_date], [title])
    VALUES
        (N'2014-12-12T11:26:24.656Z', N'Irvin Kershner', N'2014-12-15T13:07:53.386Z', 5, 2, N'It is a dark time for the
Rebellion. Although the Death
Star has been destroyed,
Imperial troops have driven the
Rebel forces from their hidden
base and pursued them across
the galaxy.
Evading the dreaded Imperial
Starfleet, a group of freedom
fighters led by Luke Skywalker
has established a new secret
base on the remote ice world
of Hoth.
The evil lord Darth Vader,
obsessed with finding young
Skywalker, has dispatched
thousands of remote probes into
the far reaches of space....', N'Gary Kurtz, Rick McCallum', N'1980-05-17', N'The Empire Strikes Back');
INSERT INTO [films] ([created], [director], [edited], [episode_id], [id], [opening_crawl], [producer], [release_date], [title])
    VALUES
        (N'2014-12-18T10:39:33.255Z', N'Richard Marquand', N'2014-12-20T09:48:37.462Z', 6, 3, N'Luke Skywalker has returned to
his home planet of Tatooine in
an attempt to rescue his
friend Han Solo from the
clutches of the vile gangster
Jabba the Hutt.
Little does Luke know that the
GALACTIC EMPIRE has secretly
begun construction on a new
armored space station even
more powerful than the first
dreaded Death Star.
When completed, this ultimate
weapon will spell certain doom
for the small band of rebels
struggling to restore freedom
to the galaxy...', N'Howard G. Kazanjian, George Lucas, Rick McCallum', N'1983-05-25', N'Return of the Jedi');
INSERT INTO [films] ([created], [director], [edited], [episode_id], [id], [opening_crawl], [producer], [release_date], [title])
    VALUES
        (N'2014-12-20T10:57:57.886Z', N'George Lucas', N'2014-12-20T20:18:48.516Z', 2, 5, N'There is unrest in the Galactic
Senate. Several thousand solar
systems have declared their
intentions to leave the Republic.
This separatist movement,
under the leadership of the
mysterious Count Dooku, has
made it difficult for the limited
number of Jedi Knights to maintain 
peace and order in the galaxy.
Senator Amidala, the former
Queen of Naboo, is returning
to the Galactic Senate to vote
on the critical issue of creating
an ARMY OF THE REPUBLIC
to assist the overwhelmed
Jedi....', N'Rick McCallum', N'2002-05-16', N'Attack of the Clones');
INSERT INTO [films] ([created], [director], [edited], [episode_id], [id], [opening_crawl], [producer], [release_date], [title])
    VALUES
        (N'2014-12-20T18:49:38.403Z', N'George Lucas', N'2014-12-20T20:47:52.073Z', 3, 6, N'War! The Republic is crumbling
under attacks by the ruthless
Sith Lord, Count Dooku.
There are heroes on both sides.
Evil is everywhere.
In a stunning move, the
fiendish droid leader, General
Grievous, has swept into the
Republic capital and kidnapped
Chancellor Palpatine, leader of
the Galactic Senate.
As the Separatist Droid Army
attempts to flee the besieged
capital with their valuable
hostage, two Jedi Knights lead a
desperate mission to rescue the
captive Chancellor....', N'Rick McCallum', N'2005-05-19', N'Revenge of the Sith');


INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'41.9BBY', N'2014-12-10T15:18:20.704Z', N'2014-12-20T21:17:50.313Z', N'yellow', N'male', N'none', N'202', 1, 4, N'136', N'Darth Vader', N'white');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'19BBY', N'2014-12-09T13:50:51.644Z', N'2014-12-20T21:17:56.891Z', N'blue', N'male', N'blond', N'172', 1, 1, N'77', N'Luke Skywalker', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'19BBY', N'2014-12-10T15:20:09.791Z', N'2014-12-20T21:17:50.315Z', N'brown', N'female', N'brown', N'150', 2, 5, N'49', N'Leia Organa', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'52BBY', N'2014-12-10T15:52:14.024Z', N'2014-12-20T21:17:50.317Z', N'blue', N'male', N'brown, grey', N'178', 1, 6, N'120', N'Owen Lars', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'47BBY', N'2014-12-10T15:53:41.121Z', N'2014-12-20T21:17:50.319Z', N'blue', N'female', N'brown', N'165', 1, 7, N'75', N'Beru Whitesun lars', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-10T15:57:50.959Z', N'2014-12-20T21:17:50.321Z', N'red', N'n/a', N'n/a', N'97', 1, 8, N'32', N'R5-D4', N'white, red');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'24BBY', N'2014-12-10T15:59:50.509Z', N'2014-12-20T21:17:50.323Z', N'brown', N'male', N'black', N'183', 1, 9, N'84', N'Biggs Darklighter', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'33BBY', N'2014-12-10T15:11:50.376Z', N'2014-12-20T21:17:50.311Z', N'red', N'n/a', N'n/a', N'96', 8, 3, N'32', N'R2-D2', N'white, blue');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'112BBY', N'2014-12-10T15:10:51.357Z', N'2014-12-20T21:17:50.309Z', N'yellow', N'n/a', N'n/a', N'167', 1, 2, N'75', N'C-3PO', N'gold');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'200BBY', N'2014-12-10T16:42:45.066Z', N'2014-12-20T21:17:50.332Z', N'blue', N'male', N'brown', N'228', 14, 13, N'112', N'Chewbacca', N'unknown');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'41.9BBY', N'2014-12-10T16:20:44.310Z', N'2014-12-20T21:17:50.327Z', N'blue', N'male', N'blond', N'188', 1, 11, N'84', N'Anakin Skywalker', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'57BBY', N'2014-12-10T16:16:29.192Z', N'2014-12-20T21:17:50.325Z', N'blue-gray', N'male', N'auburn, white', N'182', 20, 10, N'77', N'Obi-Wan Kenobi', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'29BBY', N'2014-12-10T16:49:14.582Z', N'2014-12-20T21:17:50.334Z', N'brown', N'male', N'brown', N'180', 22, 14, N'80', N'Han Solo', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'64BBY', N'2014-12-10T16:26:56.138Z', N'2014-12-20T21:17:50.330Z', N'blue', N'male', N'auburn, grey', N'180', 21, 12, N'unknown', N'Wilhuff Tarkin', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'44BBY', N'2014-12-10T17:03:30.334Z', N'2014-12-20T21:17:50.336Z', N'black', N'male', N'n/a', N'173', 23, 15, N'74', N'Greedo', N'green');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'600BBY', N'2014-12-10T17:11:31.638Z', N'2014-12-20T21:17:50.338Z', N'orange', N'hermaphrodite', N'n/a', N'175', 24, 16, N'1,358', N'Jabba Desilijic Tiure', N'green-tan, brown');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-12T11:16:56.569Z', N'2014-12-20T21:17:50.343Z', N'blue', N'male', N'brown', N'180', 26, 19, N'110', N'Jek Tono Porkins', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'21BBY', N'2014-12-12T11:08:06.469Z', N'2014-12-20T21:17:50.341Z', N'hazel', N'male', N'brown', N'170', 22, 18, N'77', N'Wedge Antilles', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'896BBY', N'2014-12-15T12:26:01.042Z', N'2014-12-20T21:17:50.345Z', N'brown', N'male', N'white', N'66', 28, 20, N'17', N'Yoda', N'green');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'82BBY', N'2014-12-15T12:48:05.971Z', N'2014-12-20T21:17:50.347Z', N'yellow', N'male', N'grey', N'170', 8, 21, N'75', N'Palpatine', N'pale');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'15BBY', N'2014-12-15T12:51:10.076Z', N'2014-12-20T21:17:50.351Z', N'red', N'none', N'none', N'200', 28, 23, N'140', N'IG-88', N'metal');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'53BBY', N'2014-12-15T12:53:49.297Z', N'2014-12-20T21:17:50.355Z', N'red', N'male', N'none', N'190', 29, 24, N'113', N'Bossk', N'green');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'31BBY', N'2014-12-15T12:56:32.683Z', N'2014-12-20T21:17:50.357Z', N'brown', N'male', N'black', N'177', 30, 25, N'79', N'Lando Calrissian', N'dark');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'37BBY', N'2014-12-15T13:01:57.178Z', N'2014-12-20T21:17:50.359Z', N'blue', N'male', N'none', N'175', 6, 26, N'79', N'Lobot', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'31.5BBY', N'2014-12-15T12:49:32.457Z', N'2014-12-20T21:17:50.349Z', N'brown', N'male', N'black', N'183', 10, 22, N'78.2', N'Boba Fett', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'41BBY', N'2014-12-18T11:07:50.584Z', N'2014-12-20T21:17:50.362Z', N'orange', N'male', N'none', N'180', 31, 27, N'83', N'Ackbar', N'brown mottle');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-18T11:16:33.020Z', N'2014-12-20T21:17:50.367Z', N'brown', N'male', N'brown', N'unknown', 28, 29, N'unknown', N'Arvel Crynyd', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'48BBY', N'2014-12-18T11:12:38.895Z', N'2014-12-20T21:17:50.364Z', N'blue', N'female', N'auburn', N'150', 32, 28, N'unknown', N'Mon Mothma', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'8BBY', N'2014-12-18T11:21:58.954Z', N'2014-12-20T21:17:50.369Z', N'brown', N'male', N'brown', N'88', 7, 30, N'20', N'Wicket Systri Warrick', N'brown');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-18T11:26:18.541Z', N'2014-12-20T21:17:50.371Z', N'black', N'male', N'none', N'160', 33, 31, N'68', N'Nien Nunb', N'grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'92BBY', N'2014-12-19T16:54:53.618Z', N'2014-12-20T21:17:50.375Z', N'blue', N'male', N'brown', N'193', 28, 32, N'89', N'Qui-Gon Jinn', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'46BBY', N'2014-12-19T17:28:26.926Z', N'2014-12-20T21:17:50.381Z', N'brown', N'female', N'brown', N'185', 8, 35, N'45', N'Padmé Amidala', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'52BBY', N'2014-12-19T17:29:32.489Z', N'2014-12-20T21:17:50.383Z', N'orange', N'male', N'none', N'196', 8, 36, N'66', N'Jar Jar Binks', N'orange');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-19T17:32:56.741Z', N'2014-12-20T21:17:50.385Z', N'orange', N'male', N'none', N'224', 8, 37, N'82', N'Roos Tarpals', N'grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-19T17:33:38.909Z', N'2014-12-20T21:17:50.388Z', N'orange', N'male', N'none', N'206', 8, 38, N'unknown', N'Rugor Nass', N'green');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'91BBY', N'2014-12-19T17:21:45.915Z', N'2014-12-20T21:17:50.379Z', N'blue', N'male', N'blond', N'170', 9, 34, N'unknown', N'Finis Valorum', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-19T17:45:01.522Z', N'2014-12-20T21:17:50.392Z', N'blue', N'male', N'brown', N'183', 8, 39, N'unknown', N'Ric Olié', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-19T17:48:54.647Z', N'2014-12-20T21:17:50.395Z', N'yellow', N'male', N'black', N'137', 34, 40, N'unknown', N'Watto', N'blue, grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'62BBY', N'2014-12-19T17:55:43.348Z', N'2014-12-20T21:17:50.399Z', N'brown', N'male', N'black', N'183', 8, 42, N'unknown', N'Quarsh Panaka', N'dark');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-19T17:05:57.357Z', N'2014-12-20T21:17:50.377Z', N'red', N'male', N'none', N'191', 18, 33, N'90', N'Nute Gunray', N'mottled green');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T09:47:02.512Z', N'2014-12-20T21:17:50.407Z', N'pink', N'male', N'none', N'180', 37, 45, N'unknown', N'Bib Fortuna', N'pale');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'54BBY', N'2014-12-19T18:00:41.929Z', N'2014-12-20T21:17:50.403Z', N'yellow', N'male', N'none', N'175', 36, 44, N'80', N'Darth Maul', N'red');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'48BBY', N'2014-12-20T09:48:01.172Z', N'2014-12-20T21:17:50.409Z', N'hazel', N'female', N'none', N'178', 37, 46, N'55', N'Ayla Secura', N'blue');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T09:53:15.086Z', N'2014-12-20T21:17:50.410Z', N'unknown', N'male', N'none', N'79', 38, 47, N'15', N'Ratts Tyerel', N'grey, blue');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'72BBY', N'2014-12-19T17:57:41.191Z', N'2014-12-20T21:17:50.401Z', N'brown', N'female', N'black', N'163', 1, 43, N'unknown', N'Shmi Skywalker', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T09:57:31.858Z', N'2014-12-20T21:17:50.414Z', N'yellow', N'male', N'none', N'94', 39, 48, N'45', N'Dud Bolt', N'blue, grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:02:12.223Z', N'2014-12-20T21:17:50.416Z', N'black', N'male', N'none', N'122', 40, 49, N'unknown', N'Gasgano', N'white, blue');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-19T17:53:02.586Z', N'2014-12-20T21:17:50.397Z', N'orange', N'male', N'none', N'112', 35, 41, N'40', N'Sebulba', N'grey, red');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:08:33.777Z', N'2014-12-20T21:17:50.417Z', N'orange', N'male', N'none', N'163', 41, 50, N'65', N'Ben Quadinaros', N'grey, green, yellow');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'72BBY', N'2014-12-20T10:12:30.846Z', N'2014-12-20T21:17:50.420Z', N'brown', N'male', N'none', N'188', 42, 51, N'84', N'Mace Windu', N'dark');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:29:11.661Z', N'2014-12-20T21:17:50.432Z', N'blue', N'female', N'none', N'184', 9, 55, N'50', N'Adi Gallia', N'dark');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'92BBY', N'2014-12-20T10:15:32.293Z', N'2014-12-20T21:17:50.422Z', N'yellow', N'male', N'white', N'198', 43, 52, N'82', N'Ki-Adi-Mundi', N'pale');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:26:47.902Z', N'2014-12-20T21:17:50.427Z', N'brown', N'male', N'black', N'171', 45, 54, N'unknown', N'Eeth Koth', N'brown');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:32:11.669Z', N'2014-12-20T21:17:50.434Z', N'orange', N'male', N'none', N'188', 47, 56, N'unknown', N'Saesee Tiin', N'pale');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'22BBY', N'2014-12-20T10:49:19.859Z', N'2014-12-20T21:17:50.439Z', N'black', N'male', N'none', N'188', 49, 58, N'80', N'Plo Koon', N'orange');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:34:48.725Z', N'2014-12-20T21:17:50.437Z', N'yellow', N'male', N'none', N'264', 48, 57, N'unknown', N'Yarael Poof', N'white');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:53:26.457Z', N'2014-12-20T21:17:50.442Z', N'blue', N'male', N'none', N'196', 50, 59, N'unknown', N'Mas Amedda', N'blue');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T11:10:10.381Z', N'2014-12-20T21:17:50.445Z', N'brown', N'male', N'black', N'185', 8, 60, N'85', N'Gregar Typho', N'dark');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T10:18:57.202Z', N'2014-12-20T21:17:50.424Z', N'black', N'male', N'none', N'196', 44, 53, N'87', N'Kit Fisto', N'green');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'82BBY', N'2014-12-20T15:59:03.958Z', N'2014-12-20T21:17:50.451Z', N'blue', N'male', N'brown', N'183', 1, 62, N'unknown', N'Cliegg Lars', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T11:11:39.630Z', N'2014-12-20T21:17:50.449Z', N'brown', N'female', N'brown', N'157', 8, 61, N'unknown', N'Cordé', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'40BBY', N'2014-12-20T16:46:40.440Z', N'2014-12-20T21:17:50.457Z', N'blue', N'female', N'black', N'166', 51, 65, N'50', N'Barriss Offee', N'yellow');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T16:40:43.977Z', N'2014-12-20T21:17:50.453Z', N'yellow', N'male', N'none', N'183', 11, 63, N'80', N'Poggle the Lesser', N'green');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'102BBY', N'2014-12-20T16:52:14.726Z', N'2014-12-20T21:17:50.462Z', N'brown', N'male', N'white', N'193', 52, 67, N'80', N'Dooku', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'58BBY', N'2014-12-20T16:45:53.668Z', N'2014-12-20T21:17:50.455Z', N'blue', N'female', N'black', N'170', 51, 64, N'56.2', N'Luminara Unduli', N'yellow');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'67BBY', N'2014-12-20T16:53:08.575Z', N'2014-12-20T21:17:50.463Z', N'brown', N'male', N'black', N'191', 2, 68, N'unknown', N'Bail Prestor Organa', N'tan');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T16:49:14.640Z', N'2014-12-20T21:17:50.460Z', N'brown', N'female', N'brown', N'165', 8, 66, N'unknown', N'Dormé', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'66BBY', N'2014-12-20T16:54:41.620Z', N'2014-12-20T21:17:50.465Z', N'brown', N'male', N'black', N'183', 53, 69, N'79', N'Jango Fett', N'tan');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T16:57:44.471Z', N'2014-12-20T21:17:50.468Z', N'yellow', N'female', N'blonde', N'168', 54, 70, N'55', N'Zam Wesell', N'fair, green, yellow');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T17:28:27.248Z', N'2014-12-20T21:17:50.470Z', N'yellow', N'male', N'none', N'198', 55, 71, N'102', N'Dexter Jettster', N'brown');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T17:30:50.416Z', N'2014-12-20T21:17:50.473Z', N'black', N'male', N'none', N'229', 10, 72, N'88', N'Lama Su', N'grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T17:31:21.195Z', N'2014-12-20T21:17:50.474Z', N'black', N'female', N'none', N'213', 10, 73, N'unknown', N'Taun We', N'grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T17:32:51.996Z', N'2014-12-20T21:17:50.476Z', N'blue', N'female', N'white', N'167', 9, 74, N'unknown', N'Jocasta Nu', N'fair');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T17:43:36.409Z', N'2014-12-20T21:17:50.478Z', N'red, blue', N'female', N'none', N'96', 28, 75, N'unknown', N'R4-P17', N'silver, red');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T18:44:01.103Z', N'2014-12-20T21:17:50.486Z', N'black', N'female', N'none', N'178', 58, 78, N'57', N'Shaak Ti', N'red, blue, white');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T19:43:53.348Z', N'2014-12-20T21:17:50.488Z', N'green, yellow', N'male', N'none', N'216', 59, 79, N'159', N'Grievous', N'brown, white');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T19:46:34.209Z', N'2014-12-20T21:17:50.491Z', N'blue', N'male', N'brown', N'234', 14, 80, N'136', N'Tarfful', N'brown');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T17:53:52.607Z', N'2014-12-20T21:17:50.481Z', N'unknown', N'male', N'none', N'193', 56, 76, N'48', N'Wat Tambor', N'green, grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T19:49:35.583Z', N'2014-12-20T21:17:50.493Z', N'brown', N'male', N'brown', N'188', 2, 81, N'79', N'Raymus Antilles', N'light');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T20:18:37.619Z', N'2014-12-20T21:17:50.496Z', N'white', N'female', N'none', N'178', 60, 82, N'48', N'Sly Moore', N'pale');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T20:35:04.260Z', N'2014-12-20T21:17:50.498Z', N'black', N'male', N'none', N'206', 12, 83, N'80', N'Tion Medon', N'grey');
INSERT INTO [people] ([birth_year], [created], [edited], [eye_color], [gender], [hair_color], [height], [homeworld], [id], [mass], [name], [skin_color])
    VALUES
        (N'unknown', N'2014-12-20T17:58:17.049Z', N'2014-12-20T21:17:50.484Z', N'gold', N'male', N'none', N'191', 57, 77, N'unknown', N'San Hill', N'grey');


INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'arid', N'2014-12-09T13:50:49.641Z', N'10465', N'2014-12-20T20:58:18.411Z', N'1 standard', 1, N'Tatooine', N'304', N'200000', N'23', N'1', N'desert');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'frozen', N'2014-12-10T11:39:13.934Z', N'7200', N'2014-12-20T20:58:18.423Z', N'1.1 standard', 4, N'Hoth', N'549', N'unknown', N'23', N'100', N'tundra, ice caves, mountain ranges');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'murky', N'2014-12-10T11:42:22.590Z', N'8900', N'2014-12-20T20:58:18.425Z', N'N/A', 5, N'Dagobah', N'341', N'unknown', N'23', N'8', N'swamp, jungles');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T11:43:55.240Z', N'118000', N'2014-12-20T20:58:18.427Z', N'1.5 (surface), 1 standard (Cloud City)', 6, N'Bespin', N'5110', N'6000000', N'12', N'0', N'gas giant');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T11:50:29.349Z', N'4900', N'2014-12-20T20:58:18.429Z', N'0.85 standard', 7, N'Endor', N'402', N'30000000', N'18', N'8', N'forests, mountains, lakes');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T11:52:31.066Z', N'12120', N'2014-12-20T20:58:18.430Z', N'1 standard', 8, N'Naboo', N'312', N'4500000000', N'26', N'12', N'grassy hills, swamps, forests, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T11:54:13.921Z', N'12240', N'2014-12-20T20:58:18.432Z', N'1 standard', 9, N'Coruscant', N'368', N'1000000000000', N'24', N'unknown', N'cityscape, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T11:35:48.479Z', N'12500', N'2014-12-20T20:58:18.420Z', N'1 standard', 2, N'Alderaan', N'364', N'2000000000', N'24', N'40', N'grasslands, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate, tropical', N'2014-12-10T11:37:19.144Z', N'10200', N'2014-12-20T20:58:18.421Z', N'1 standard', 3, N'Yavin IV', N'4818', N'1000', N'24', N'8', N'jungle, rainforests');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate, arid, windy', N'2014-12-10T12:49:01.491Z', N'12900', N'2014-12-20T20:58:18.439Z', N'1 standard', 12, N'Utapau', N'351', N'95000000', N'27', N'0.9', N'scrublands, savanna, canyons, sinkholes');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T12:45:06.577Z', N'19720', N'2014-12-20T20:58:18.434Z', N'1 standard', 10, N'Kamino', N'463', N'1000000000', N'27', N'100', N'ocean');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'hot', N'2014-12-10T12:50:16.526Z', N'4200', N'2014-12-20T20:58:18.440Z', N'1 standard', 13, N'Mustafar', N'412', N'20000', N'36', N'0', N'volcanoes, lava rivers, mountains, caves');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'tropical', N'2014-12-10T13:32:00.124Z', N'12765', N'2014-12-20T20:58:18.442Z', N'1 standard', 14, N'Kashyyyk', N'381', N'45000000', N'26', N'60', N'jungle, forests, lakes, rivers');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'artificial temperate ', N'2014-12-10T13:33:46.405Z', N'0', N'2014-12-20T20:58:18.444Z', N'0.56 standard', 15, N'Polis Massa', N'590', N'1000000', N'24', N'0', N'airless asteroid');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'frigid', N'2014-12-10T13:43:39.139Z', N'10088', N'2014-12-20T20:58:18.446Z', N'1 standard', 16, N'Mygeeto', N'167', N'19000000', N'12', N'unknown', N'glaciers, mountains, ice canyons');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'hot, humid', N'2014-12-10T13:44:50.397Z', N'9100', N'2014-12-20T20:58:18.447Z', N'0.75 standard', 17, N'Felucia', N'231', N'8500000', N'34', N'unknown', N'fungus forests');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate, arid', N'2014-12-10T12:47:22.350Z', N'11370', N'2014-12-20T20:58:18.437Z', N'0.9 standard', 11, N'Geonosis', N'256', N'100000000000', N'30', N'5', N'rock, desert, mountain, barren');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'hot', N'2014-12-10T13:47:46.874Z', N'14920', N'2014-12-20T20:58:18.450Z', N'unknown', 19, N'Saleucami', N'392', N'1400000000', N'26', N'unknown', N'caves, desert, mountains, volcanoes');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate, moist', N'2014-12-10T13:46:28.704Z', N'0', N'2014-12-20T20:58:18.449Z', N'1 standard', 18, N'Cato Neimoidia', N'278', N'10000000', N'25', N'unknown', N'mountains, fields, forests, rock arches');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T16:49:12.453Z', N'11000', N'2014-12-20T20:58:18.456Z', N'1 standard', 22, N'Corellia', N'329', N'3000000000', N'25', N'70', N'plains, urban, hills, forests');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'polluted', N'2014-12-10T16:26:54.384Z', N'13490', N'2014-12-20T20:58:18.454Z', N'1 standard', 21, N'Eriadu', N'360', N'22000000000', N'24', N'unknown', N'cityscape');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T16:16:26.566Z', N'0', N'2014-12-20T20:58:18.452Z', N'1 standard', 20, N'Stewjon', N'unknown', N'unknown', N'unknown', N'unknown', N'grass');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'hot', N'2014-12-10T17:03:28.110Z', N'7549', N'2014-12-20T20:58:18.458Z', N'1 standard', 23, N'Rodia', N'305', N'1300000000', N'29', N'60', N'jungles, oceans, urban, swamps');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T17:11:29.452Z', N'12150', N'2014-12-20T20:58:18.460Z', N'1 standard', 24, N'Nal Hutta', N'413', N'7000000000', N'87', N'unknown', N'urban, oceans, swamps, bogs');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-10T17:23:29.896Z', N'9830', N'2014-12-20T20:58:18.461Z', N'1 standard', 25, N'Dantooine', N'378', N'1000', N'25', N'unknown', N'oceans, savannas, mountains, grasslands');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-15T12:23:41.661Z', N'14050', N'2014-12-20T20:58:18.464Z', N'1 standard', 27, N'Ord Mantell', N'334', N'4000000000', N'26', N'10', N'plains, seas, mesas');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-12T11:16:55.078Z', N'6400', N'2014-12-20T20:58:18.463Z', N'unknown', 26, N'Bestine IV', N'680', N'62000000', N'26', N'98', N'rocky islands, oceans');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-15T12:25:59.569Z', N'0', N'2014-12-20T20:58:18.466Z', N'unknown', 28, N'unknown', N'0', N'unknown', N'0', N'unknown', N'unknown');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'arid', N'2014-12-15T12:53:47.695Z', N'0', N'2014-12-20T20:58:18.468Z', N'0.62 standard', 29, N'Trandosha', N'371', N'42000000', N'25', N'unknown', N'mountains, seas, grasslands, deserts');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-18T11:11:51.872Z', N'13500', N'2014-12-20T20:58:18.472Z', N'1', 32, N'Chandrila', N'368', N'1200000000', N'20', N'40', N'plains, forests');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-19T17:47:54.403Z', N'7900', N'2014-12-20T20:58:18.476Z', N'1', 34, N'Toydaria', N'184', N'11000000', N'21', N'unknown', N'swamps, lakes');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'superheated', N'2014-12-18T11:25:40.243Z', N'12780', N'2014-12-20T20:58:18.474Z', N'1', 33, N'Sullust', N'263', N'18500000000', N'20', N'5', N'mountains, volcanoes, rocky deserts');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-18T11:07:01.792Z', N'11030', N'2014-12-20T20:58:18.471Z', N'1', 31, N'Mon Cala', N'398', N'27000000000', N'21', N'100', N'oceans, reefs, islands');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'arid, temperate, tropical', N'2014-12-19T17:52:13.106Z', N'18880', N'2014-12-20T20:58:18.478Z', N'1.56', 35, N'Malastare', N'201', N'2000000000', N'26', N'unknown', N'swamps, deserts, jungles, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-19T18:00:40.142Z', N'10480', N'2014-12-20T20:58:18.480Z', N'0.9', 36, N'Dathomir', N'491', N'5200', N'24', N'unknown', N'forests, deserts, savannas');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate, arid, subartic', N'2014-12-20T09:46:25.740Z', N'10600', N'2014-12-20T20:58:18.481Z', N'1', 37, N'Ryloth', N'305', N'1500000000', N'30', N'5', N'mountains, valleys, deserts, tundra');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T09:52:23.452Z', N'unknown', N'2014-12-20T20:58:18.483Z', N'unknown', 38, N'Aleen Minor', N'unknown', N'unknown', N'unknown', N'unknown', N'unknown');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate, artic', N'2014-12-20T09:56:58.874Z', N'14900', N'2014-12-20T20:58:18.485Z', N'1', 39, N'Vulpter', N'391', N'421000000', N'22', N'unknown', N'urban, barren');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'arid', N'2014-12-15T12:56:31.121Z', N'0', N'2014-12-20T20:58:18.469Z', N'1 standard', 30, N'Socorro', N'326', N'300000000', N'20', N'unknown', N'deserts, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T10:01:37.395Z', N'unknown', N'2014-12-20T20:58:18.487Z', N'unknown', 40, N'Troiken', N'unknown', N'unknown', N'unknown', N'unknown', N'desert, tundra, rainforests, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-20T10:14:48.178Z', N'unknown', N'2014-12-20T20:58:18.493Z', N'1', 43, N'Cerea', N'386', N'450000000', N'27', N'20', N'verdant');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T10:07:29.578Z', N'12190', N'2014-12-20T20:58:18.489Z', N'unknown', 41, N'Tund', N'1770', N'0', N'48', N'unknown', N'barren, ash');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-20T10:12:28.980Z', N'10120', N'2014-12-20T20:58:18.491Z', N'0.98', 42, N'Haruun Kal', N'383', N'705300', N'25', N'unknown', N'toxic cloudsea, plateaus, volcanoes');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'tropical, temperate', N'2014-12-20T10:18:26.110Z', N'15600', N'2014-12-20T20:58:18.495Z', N'1', 44, N'Glee Anselm', N'206', N'500000000', N'33', N'80', N'lakes, islands, swamps, seas');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'arid, rocky, windy', N'2014-12-20T10:31:32.413Z', N'unknown', N'2014-12-20T20:58:18.500Z', N'1', 47, N'Iktotch', N'481', N'unknown', N'22', N'unknown', N'rocky');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T10:26:05.788Z', N'unknown', N'2014-12-20T20:58:18.497Z', N'unknown', 45, N'Iridonia', N'413', N'unknown', N'29', N'unknown', N'rocky canyons, acid pools');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T10:34:08.249Z', N'unknown', N'2014-12-20T20:58:18.502Z', N'unknown', 48, N'Quermia', N'unknown', N'unknown', N'unknown', N'unknown', N'unknown');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-20T10:48:36.141Z', N'13400', N'2014-12-20T20:58:18.504Z', N'1', 49, N'Dorin', N'409', N'unknown', N'22', N'unknown', N'unknown');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T16:44:46.318Z', N'unknown', N'2014-12-20T20:58:18.508Z', N'unknown', 51, N'Mirial', N'unknown', N'unknown', N'unknown', N'unknown', N'deserts');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T10:28:31.117Z', N'unknown', N'2014-12-20T20:58:18.498Z', N'unknown', 46, N'Tholoth', N'unknown', N'unknown', N'unknown', N'unknown', N'unknown');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T16:52:13.357Z', N'unknown', N'2014-12-20T20:58:18.510Z', N'unknown', 52, N'Serenno', N'unknown', N'unknown', N'unknown', N'unknown', N'rainforests, rivers, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-20T10:52:51.524Z', N'unknown', N'2014-12-20T20:58:18.506Z', N'1', 50, N'Champala', N'318', N'3500000000', N'27', N'unknown', N'oceans, rainforests, plateaus');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T16:54:39.909Z', N'unknown', N'2014-12-20T20:58:18.512Z', N'unknown', 53, N'Concord Dawn', N'unknown', N'unknown', N'unknown', N'unknown', N'jungles, forests, deserts');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T16:56:37.250Z', N'unknown', N'2014-12-20T20:58:18.514Z', N'unknown', 54, N'Zolan', N'unknown', N'unknown', N'unknown', N'unknown', N'unknown');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'frigid', N'2014-12-20T17:27:41.286Z', N'unknown', N'2014-12-20T20:58:18.516Z', N'unknown', 55, N'Ojom', N'unknown', N'500000000', N'unknown', N'100', N'oceans, glaciers');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-20T17:57:47.420Z', N'13800', N'2014-12-20T20:58:18.519Z', N'1', 57, N'Muunilinst', N'412', N'5000000000', N'28', N'25', N'plains, forests, hills, mountains');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'unknown', N'2014-12-20T20:18:36.256Z', N'unknown', N'2014-12-20T20:58:18.525Z', N'unknown', 60, N'Umbara', N'unknown', N'unknown', N'unknown', N'unknown', N'unknown');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'arid, temperate, tropical', N'2014-12-20T19:43:51.278Z', N'13850', N'2014-12-20T20:58:18.523Z', N'1', 59, N'Kalee', N'378', N'4000000000', N'23', N'unknown', N'rainforests, cliffs, canyons, seas');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-20T17:50:47.864Z', N'unknown', N'2014-12-20T20:58:18.517Z', N'1', 56, N'Skako', N'384', N'500000000000', N'27', N'unknown', N'urban, vines');
INSERT INTO [planets] ([climate], [created], [diameter], [edited], [gravity], [id], [name], [orbital_period], [population], [rotation_period], [surface_water], [terrain])
    VALUES
        (N'temperate', N'2014-12-20T18:43:14.049Z', N'unknown', N'2014-12-20T20:58:18.521Z', N'1', 58, N'Shili', N'unknown', N'unknown', N'unknown', N'unknown', N'cities, savannahs, seas, plains');



INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'120', N'mammal', N'2014-12-10T13:52:11.567Z', N'sentient', N'2014-12-20T21:36:42.136Z', N'brown, blue, green, hazel, grey, amber', N'blonde, brown, black, red', 9, 1, N'Galactic Basic', N'Human', N'caucasian, black, asian, hispanic');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'170', N'unknown', N'sentient', N'2014-12-10T17:05:26.471Z', N'reptilian', N'2014-12-20T21:36:42.144Z', N'black', N'n/a', 23, 4, N'Galatic Basic', N'Rodian', N'green, blue');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'300', N'1000', N'gastropod', N'2014-12-10T17:12:50.410Z', N'sentient', N'2014-12-20T21:36:42.146Z', N'yellow, red', N'n/a', 24, 5, N'Huttese', N'Hutt', N'green, brown, tan');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'66', N'900', N'mammal', N'2014-12-15T12:27:22.877Z', N'sentient', N'2014-12-20T21:36:42.148Z', N'brown, green, yellow', N'brown, white', 28, 6, N'Galactic basic', N'Yoda''s species', N'green, yellow');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'160', N'unknown', N'amphibian', N'2014-12-18T11:09:52.263Z', N'sentient', N'2014-12-20T21:36:42.153Z', N'yellow', N'none', 31, 8, N'Mon Calamarian', N'Mon Calamari', N'red, blue, brown, magenta');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'200', N'unknown', N'reptile', N'2014-12-15T13:07:47.704Z', N'sentient', N'2014-12-20T21:36:42.151Z', N'yellow, orange', N'none', 29, 7, N'Dosh', N'Trandoshan', N'brown, green');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'100', N'unknown', N'mammal', N'2014-12-18T11:22:00.285Z', N'sentient', N'2014-12-20T21:36:42.155Z', N'orange, brown', N'white, brown, black', 7, 9, N'Ewokese', N'Ewok', N'brown');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'210', N'400', N'mammal', N'2014-12-10T16:44:31.486Z', N'sentient', N'2014-12-20T21:36:42.142Z', N'blue, green, yellow, brown, golden, red', N'black, brown', 14, 3, N'Shyriiwook', N'Wookie', N'gray');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'n/a', N'indefinite', N'artificial', N'2014-12-10T15:16:16.259Z', N'sentient', N'2014-12-20T21:36:42.139Z', N'n/a', N'n/a', NULL, 2, N'n/a', N'Droid', N'n/a');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'unknown', N'unknown', N'2014-12-19T17:07:31.319Z', N'sentient', N'2014-12-20T21:36:42.160Z', N'red, pink', N'none', 18, 11, N'Neimoidia', N'Neimodian', N'grey, green');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'120', N'91', N'mammal', N'2014-12-19T17:48:56.893Z', N'sentient', N'2014-12-20T21:36:42.165Z', N'yellow', N'none', 34, 13, N'Toydarian', N'Toydarian', N'blue, green, grey');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'100', N'unknown', N'mammal', N'2014-12-19T17:53:11.214Z', N'sentient', N'2014-12-20T21:36:42.167Z', N'yellow, blue', N'none', 35, 14, N'Dugese', N'Dug', N'brown, purple, grey, red');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'80', N'79', N'reptile', N'2014-12-20T09:53:16.481Z', N'sentient', N'2014-12-20T21:36:42.171Z', N'unknown', N'none', 38, 16, N'Aleena', N'Aleena', N'blue, gray');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'200', N'unknown', N'mammals', N'2014-12-20T09:48:02.406Z', N'sentient', N'2014-12-20T21:36:42.169Z', N'blue, brown, orange, pink', N'none', 37, 15, N'Twi''leki', N'Twi''lek', N'orange, yellow, blue, green, pink, purple, tan');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'unknown', N'mammal', N'2014-12-18T11:26:20.103Z', N'sentient', N'2014-12-20T21:36:42.157Z', N'black', N'none', 33, 10, N'Sullutese', N'Sullustan', N'pale');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'100', N'unknown', N'unknown', N'2014-12-20T09:57:33.128Z', N'sentient', N'2014-12-20T21:36:42.173Z', N'yellow', N'none', 39, 17, N'vulpterish', N'Vulptereen', N'grey');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'200', N'unknown', N'unknown', N'2014-12-20T10:08:36.795Z', N'sentient', N'2014-12-20T21:36:42.177Z', N'orange', N'none', 41, 19, N'Tundan', N'Toong', N'grey, green, yellow');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'190', N'unknown', N'amphibian', N'2014-12-19T17:30:37.341Z', N'sentient', N'2014-12-20T21:36:42.163Z', N'orange', N'none', 8, 12, N'Gungan basic', N'Gungan', N'brown, green');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'200', N'unknown', N'mammal', N'2014-12-20T10:15:33.765Z', N'sentient', N'2014-12-20T21:36:42.179Z', N'hazel', N'red, blond, black, white', 43, 20, N'Cerean', N'Cerean', N'pale pink');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'125', N'unknown', N'unknown', N'2014-12-20T10:02:13.915Z', N'sentient', N'2014-12-20T21:36:42.175Z', N'black', N'none', 40, 18, N'Xextese', N'Xexto', N'grey, yellow, purple');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'70', N'amphibian', N'2014-12-20T10:18:58.610Z', N'sentient', N'2014-12-20T21:36:42.181Z', N'black', N'none', 44, 21, N'Nautila', N'Nautolan', N'green, blue, brown, red');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'unknown', N'mammal', N'2014-12-20T10:26:59.894Z', N'sentient', N'2014-12-20T21:36:42.183Z', N'brown, orange', N'black', 45, 22, N'Zabraki', N'Zabrak', N'pale, brown, red, orange, yellow');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'unknown', N'unknown', N'mammal', N'2014-12-20T10:29:13.798Z', N'sentient', N'2014-12-20T21:36:42.186Z', N'blue, indigo', N'unknown', 46, 23, N'unknown', N'Tholothian', N'dark');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'unknown', N'unknown', N'2014-12-20T10:32:13.046Z', N'sentient', N'2014-12-20T21:36:42.188Z', N'orange', N'none', 47, 24, N'Iktotchese', N'Iktotchi', N'pink');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'240', N'86', N'mammal', N'2014-12-20T10:34:50.827Z', N'sentient', N'2014-12-20T21:36:42.189Z', N'yellow', N'none', 48, 25, N'Quermian', N'Quermian', N'white');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'70', N'unknown', N'2014-12-20T10:49:21.692Z', N'sentient', N'2014-12-20T21:36:42.191Z', N'black, silver', N'none', 49, 26, N'Kel Dor', N'Kel Dor', N'peach, orange, red');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'178', N'unknown', N'insectoid', N'2014-12-20T16:40:45.618Z', N'sentient', N'2014-12-20T21:36:42.195Z', N'green, hazel', N'none', 11, 28, N'Geonosian', N'Geonosian', N'green, brown');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'190', N'unknown', N'amphibian', N'2014-12-20T10:53:28.795Z', N'sentient', N'2014-12-20T21:36:42.193Z', N'blue', N'none', 50, 27, N'Chagria', N'Chagrian', N'blue');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'178', N'75', N'amphibian', N'2014-12-20T17:28:28.821Z', N'sentient', N'2014-12-20T21:36:42.200Z', N'yellow', N'none', 55, 31, N'besalisk', N'Besalisk', N'brown');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'70', N'reptilian', N'2014-12-20T16:57:46.171Z', N'sentient', N'2014-12-20T21:36:42.199Z', N'yellow', N'none', 54, 30, N'Clawdite', N'Clawdite', N'green, yellow');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'220', N'80', N'amphibian', N'2014-12-20T17:31:24.838Z', N'sentient', N'2014-12-20T21:36:42.202Z', N'black', N'none', 10, 32, N'Kaminoan', N'Kaminoan', N'grey, blue');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'unknown', N'mammal', N'2014-12-20T16:46:48.290Z', N'sentient', N'2014-12-20T21:36:42.197Z', N'blue, green, red, yellow, brown, orange', N'black, brown', 51, 29, N'Mirialan', N'Mirialan', N'yellow, green');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'190', N'100', N'mammal', N'2014-12-20T17:58:19.088Z', N'sentient', N'2014-12-20T21:36:42.207Z', N'black', N'none', 57, 34, N'Muun', N'Muun', N'grey, white');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'unknown', N'unknown', N'mammal', N'2014-12-20T17:53:54.515Z', N'sentient', N'2014-12-20T21:36:42.204Z', N'unknown', N'none', 56, 33, N'Skakoan', N'Skakoan', N'grey, green');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'180', N'94', N'mammal', N'2014-12-20T18:44:03.246Z', N'sentient', N'2014-12-20T21:36:42.209Z', N'red, orange, yellow, green, blue, black', N'none', 58, 35, N'Togruti', N'Togruta', N'red, white, orange, yellow, green, blue');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'170', N'80', N'reptile', N'2014-12-20T19:45:42.537Z', N'sentient', N'2014-12-20T21:36:42.210Z', N'yellow', N'none', 59, 36, N'Kaleesh', N'Kaleesh', N'brown, orange, tan');
INSERT INTO [species] ([average_height], [average_lifespan], [classification], [created], [designation], [edited], [eye_colors], [hair_colors], [homeworld], [id], [language], [name], [skin_colors])
    VALUES
        (N'190', N'700', N'mammal', N'2014-12-20T20:35:06.777Z', N'sentient', N'2014-12-20T21:36:42.212Z', N'black', N'none', 12, 37, N'Utapese', N'Pau''an', N'grey');


INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'10', N'4.0', 9, N'Deep Space Mobile Battlestation');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'60', N'2.0', 2, N'corvette');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'80', N'1.0', 11, N'assault starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'75', N'0.5', 10, N'Light freighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'100', N'1.0', 12, N'Starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'105', N'1.0', 13, N'Starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'40', N'2.0', 15, N'Star dreadnought');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'70', N'3.0', 21, N'Patrol craft');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'20', N'4.0', 17, N'Medium transport');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'50', N'1.0', 22, N'Armed government transport');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'40', N'2.0', 23, N'Escort ship');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'60', N'1.0', 27, N'Star Cruiser');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'120', N'1.0', 28, N'Starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'91', N'2.0', 29, N'Assault Starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'70', N'1.0', 5, N'landing craft');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.0', 39, N'Starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'60', N'2.0', 3, N'Star Destroyer');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'2.0', 32, N'Droid control ship');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.8', 40, N'yacht');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'2.0', 31, N'Space cruiser');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.5', 41, N'Space Transport');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'0.7', 43, N'Diplomatic barge');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'unknown', 47, N'freighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.0', 48, N'Starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'0.6', 52, N'assault ship');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'0.9', 49, N'yacht');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.5', 59, N'capital ship');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.0', 61, N'transport');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.0', 63, N'star destroyer');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'0.5', 64, N'yacht');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'100', N'1.0', 66, N'starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.0', 65, N'starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.0', 68, N'cruiser');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'6', 74, N'starfighter');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.5', 58, N'yacht');
INSERT INTO [starships] ([MGLT], [hyperdrive_rating], [id], [starship_class])
    VALUES
        (N'unknown', N'1.0', 75, N'starfighter');


INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'3000000', N'1 year', N'3500000', N'2014-12-10T14:20:33.369Z', N'30-165', N'2014-12-20T21:23:49.867Z', 2, N'150', N'Corellian Engineering Corporation', N'950', N'CR90 corvette', N'CR90 corvette', N'600');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'180000', N'1 month', N'240000', N'2014-12-10T15:48:00.586Z', N'5', N'2014-12-20T21:23:49.873Z', 5, N'38', N'Sienar Fleet Systems, Cyngus Spaceworks', N'1000', N'Sentinel-class landing craft', N'Sentinel-class landing craft', N'75');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'50', N'0', N'14500', N'2014-12-10T16:01:52.434Z', N'1', N'2014-12-20T21:30:21.665Z', 6, N'10.4 ', N'Incom Corporation', N'1200', N'T-16 skyhopper', N'T-16 skyhopper', N'1');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'5', N'unknown', N'10550', N'2014-12-10T16:13:52.586Z', N'1', N'2014-12-20T21:30:21.668Z', 7, N'3.4 ', N'SoroSuub Corporation', N'250', N'X-34 landspeeder', N'X-34 landspeeder', N'1');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'65', N'2 days', N'unknown', N'2014-12-10T16:33:52.860Z', N'1', N'2014-12-20T21:30:21.670Z', 8, N'6.4', N'Sienar Fleet Systems', N'1200', N'Twin Ion Engine/Ln Starfighter', N'TIE/LN starfighter', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'1000000000000', N'3 years', N'1000000000000', N'2014-12-10T16:36:50.509Z', N'342,953', N'2014-12-20T21:26:24.783Z', 9, N'120000', N'Imperial Department of Military Research, Sienar Fleet Systems', N'n/a', N'DS-1 Orbital Battle Station', N'Death Star', N'843,342');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'100000', N'2 months', N'100000', N'2014-12-10T16:59:45.094Z', N'4', N'2014-12-20T21:23:49.880Z', 10, N'34.37', N'Corellian Engineering Corporation', N'1050', N'YT-1300 light freighter', N'Millennium Falcon', N'6');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'36000000', N'2 years', N'150000000', N'2014-12-10T15:08:19.848Z', N'47,060', N'2014-12-20T21:23:49.870Z', 3, N'1,600', N'Kuat Drive Yards', N'975', N'Imperial I-class Star Destroyer', N'Star Destroyer', N'n/a');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'50000', N'2 months', N'150000', N'2014-12-10T15:36:25.724Z', N'46', N'2014-12-20T21:30:21.661Z', 4, N'36.8 ', N'Corellia Mining Corporation', N'30', N'Digger Crawler', N'Sand Crawler', N'30');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'110', N'1 week', N'134999', N'2014-12-12T11:00:39.817Z', N'2', N'2014-12-20T21:23:49.883Z', 11, N'14', N'Koensayr Manufacturing', N'1000km', N'BTL Y-wing', N'Y-wing', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'110', N'1 week', N'149999', N'2014-12-12T11:19:05.340Z', N'1', N'2014-12-20T21:23:49.886Z', 12, N'12.5', N'Incom Corporation', N'1050', N'T-65 X-wing', N'X-wing', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'250000000', N'6 years', N'1143350000', N'2014-12-15T12:31:42.547Z', N'279,144', N'2014-12-20T21:23:49.893Z', 15, N'19000', N'Kuat Drive Yards, Fondor Shipyards', N'n/a', N'Executor-class star dreadnought', N'Executor', N'38000');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'10', N'none', N'unknown', N'2014-12-15T12:22:12Z', N'2', N'2014-12-20T21:30:21.672Z', 14, N'4.5', N'Incom corporation', N'650', N't-47 airspeeder', N'Snowspeeder', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'none', N'2 days', N'unknown', N'2014-12-15T12:33:15.838Z', N'1', N'2014-12-20T21:30:21.675Z', 16, N'7.8', N'Sienar Fleet Systems', N'850', N'TIE/sa bomber', N'TIE bomber', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'19000000', N'6 months', N'unknown', N'2014-12-15T12:34:52.264Z', N'6', N'2014-12-20T21:23:49.895Z', 17, N'90', N'Gallofree Yards, Inc.', N'650', N'GR-75 medium transport', N'Rebel transport', N'90');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'1000', N'unknown', N'unknown', N'2014-12-15T12:38:25.937Z', N'5', N'2014-12-20T21:30:21.677Z', 18, N'20', N'Kuat Drive Yards, Imperial Department of Military Research', N'60', N'All Terrain Armored Transport', N'AT-AT', N'40');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'200', N'none', N'unknown', N'2014-12-15T12:46:42.384Z', N'2', N'2014-12-20T21:30:21.679Z', 19, N'2', N'Kuat Drive Yards, Imperial Department of Military Research', N'90', N'All Terrain Scout Transport', N'AT-ST', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'10', N'1 day', N'75000', N'2014-12-15T12:58:50.530Z', N'2', N'2014-12-20T21:30:21.681Z', 20, N'7', N'Bespin Motors', N'1500', N'Storm IV Twin-Pod', N'Storm IV Twin-Pod cloud car', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'150', N'5 days', N'unknown', N'2014-12-12T11:21:32.991Z', N'1', N'2014-12-20T21:23:49.889Z', 13, N'9.2', N'Sienar Fleet Systems', N'1200', N'Twin Ion Engine Advanced x1', N'TIE Advanced x1', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'70000', N'1 month', N'unknown', N'2014-12-15T13:00:56.332Z', N'1', N'2014-12-20T21:23:49.897Z', 21, N'21.5', N'Kuat Systems Engineering', N'1000', N'Firespray-31-class patrol and attack', N'Slave 1', N'6');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'80000', N'2 months', N'240000', N'2014-12-15T13:04:47.235Z', N'6', N'2014-12-20T21:23:49.900Z', 22, N'20', N'Sienar Fleet Systems', N'850', N'Lambda-class T-4a shuttle', N'Imperial shuttle', N'20');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'6000000', N'2 years', N'8500000', N'2014-12-15T13:06:30.813Z', N'854', N'2014-12-20T21:23:49.902Z', 23, N'300', N'Kuat Drive Yards', N'800', N'EF76 Nebulon-B escort frigate', N'EF76 Nebulon-B escort frigate', N'75');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'135000', N'1 day', N'8000', N'2014-12-18T10:48:03.208Z', N'5', N'2014-12-20T21:30:21.688Z', 25, N'9.5', N'Ubrikkian Industries', N'250', N'Bantha-II', N'Bantha-II cargo skiff', N'16');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'75', N'2 days', N'unknown', N'2014-12-18T10:50:28.225Z', N'1', N'2014-12-20T21:30:21.691Z', 26, N'9.6', N'Sienar Fleet Systems', N'1250', N'Twin Ion Engine Interceptor', N'TIE/IN interceptor', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'2 years', N'104000000', N'2014-12-18T10:54:57.804Z', N'5400', N'2014-12-20T21:23:49.904Z', 27, N'1200', N'Mon Calamari shipyards', N'n/a', N'MC80 Liberty type Star Cruiser', N'Calamari Cruiser', N'1200');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'40', N'1 week', N'175000', N'2014-12-18T11:16:34.542Z', N'1', N'2014-12-20T21:23:49.907Z', 28, N'9.6', N'Alliance Underground Engineering, Incom Corporation', N'1300', N'RZ-1 A-wing Interceptor', N'A-wing', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'45', N'1 week', N'220000', N'2014-12-18T11:18:04.763Z', N'1', N'2014-12-20T21:23:49.909Z', 29, N'16.9', N'Slayn & Korpil', N'950', N'A/SF-01 B-wing starfighter', N'B-wing', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'2000000', N'Live food tanks', N'285000', N'2014-12-18T10:44:14.217Z', N'26', N'2014-12-20T21:30:21.684Z', 24, N'30', N'Ubrikkian Industries Custom Vehicle Division', N'100', N'Modified Luxury Sail Barge', N'Sail barge', N'500');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'4', N'1 day', N'8000', N'2014-12-18T11:20:04.625Z', N'1', N'2014-12-20T21:30:21.693Z', 30, N'3', N'Aratech Repulsor Company', N'360', N'74-Z speeder bike', N'Imperial Speeder Bike', N'1');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-19T17:01:31.488Z', N'9', N'2014-12-20T21:23:49.912Z', 31, N'115', N'Corellian Engineering Corporation', N'900', N'Consular-class cruiser', N'Republic Cruiser', N'16');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'0', N'none', N'unknown', N'2014-12-19T17:09:53.584Z', N'0', N'2014-12-20T21:30:21.697Z', 33, N'3.5', N'Haor Chall Engineering, Baktoid Armor Workshop', N'1200', N'Vulture-class droid starfighter', N'Vulture Droid', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'4000000000', N'500 days', N'unknown', N'2014-12-19T17:04:06.323Z', N'175', N'2014-12-20T21:23:49.915Z', 32, N'3170', N'Hoersch-Kessel Drive, Inc.', N'n/a', N'Lucrehulk-class Droid Control Ship', N'Droid control ship', N'139000');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-19T17:13:29.799Z', N'4', N'2014-12-20T21:30:21.703Z', 35, N'9.75', N'Baktoid Armor Workshop', N'55', N'Armoured Assault Tank', N'Armored Assault Tank', N'6');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'1600', N'unknown', N'unknown', N'2014-12-19T17:37:37.924Z', N'1', N'2014-12-20T21:30:21.710Z', 38, N'15', N'Otoh Gunga Bongameken Cooperative', N'85', N'Tribubble bongo', N'Tribubble bongo', N'2');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'none', N'none', N'2500', N'2014-12-19T17:15:09.511Z', N'1', N'2014-12-20T21:30:21.705Z', 36, N'2', N'Baktoid Armor Workshop', N'400', N'Single Trooper Aerial Platform', N'Single Trooper Aerial Platform', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'1800000', N'1 day', N'200000', N'2014-12-19T17:20:36.373Z', N'140', N'2014-12-20T21:30:21.707Z', 37, N'210', N'Haor Chall Engineering', N'587', N'C-9979 landing craft', N'C-9979 landing craft', N'284');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'65', N'7 days', N'200000', N'2014-12-19T17:39:17.582Z', N'1', N'2014-12-20T21:23:49.917Z', 39, N'11', N'Theed Palace Space Vessel Engineering Corps', N'1100', N'N-1 starfighter', N'Naboo fighter', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'2500000', N'30 days', N'55000000', N'2014-12-20T09:39:56.116Z', N'1', N'2014-12-20T21:23:49.922Z', 41, N'26.5', N'Republic Sienar Systems', N'1180', N'Star Courier', N'Scimitar', N'6');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'2', N'unknown', N'4000', N'2014-12-20T10:09:56.095Z', N'1', N'2014-12-20T21:30:21.712Z', 42, N'1.5', N'Razalon', N'180', N'FC-20 speeder bike', N'Sith speeder', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-19T17:45:03.506Z', N'8', N'2014-12-20T21:23:49.919Z', 40, N'76', N'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', N'920', N'J-type 327 Nubian royal starship', N'Naboo Royal Starship', N'unknown');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'1 year', N'2000000', N'2014-12-20T11:05:51.237Z', N'5', N'2014-12-20T21:23:49.925Z', 43, N'39', N'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', N'2000', N'J-type diplomatic barge', N'J-type diplomatic barge', N'10');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'12000', N'unknown', N'138000', N'2014-12-19T17:12:04.400Z', N'4', N'2014-12-20T21:30:21.700Z', 34, N'31', N'Baktoid Armor Workshop', N'35', N'Multi-Troop Transport', N'Multi-Troop Transport', N'112');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'200', N'none', N'5750', N'2014-12-20T16:24:16.026Z', N'1', N'2014-12-20T21:30:21.714Z', 44, N'3.68', N'Mobquet Swoops and Speeders', N'350', N'Zephyr-G swoop bike', N'Zephyr-G swoop bike', N'1');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-20T17:24:23.509Z', N'unknown', N'2014-12-20T21:23:49.928Z', 47, N'390', N'Botajef Shipyards', N'unknown', N'Botajef AA-9 Freighter-Liner', N'AA-9 Coruscant freighter', N'30000');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'60', N'7 days', N'180000', N'2014-12-20T17:35:23.906Z', N'1', N'2014-12-20T21:23:49.930Z', 48, N'8', N'Kuat Systems Engineering', N'1150', N'Delta-7 Aethersprite-class interceptor', N'Jedi starfighter', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-20T17:46:46.847Z', N'4', N'2014-12-20T21:23:49.932Z', 49, N'47.9', N'Theed Palace Space Vessel Engineering Corps', N'8000', N'H-type Nubian yacht', N'H-type Nubian yacht', N'unknown');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'170', N'unknown', N'unknown', N'2014-12-20T18:01:21.014Z', N'6', N'2014-12-20T21:30:21.723Z', 50, N'17.4', N'Rothana Heavy Engineering', N'620', N'Low Altitude Assault Transport/infrantry', N'LAAT/i', N'30');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'40000', N'unknown', N'unknown', N'2014-12-20T18:02:46.802Z', N'1', N'2014-12-20T21:30:21.725Z', 51, N'28.82', N'Rothana Heavy Engineering', N'620', N'Low Altitude Assault Transport/carrier', N'LAAT/c', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'11250000', N'2 years', N'unknown', N'2014-12-20T18:08:42.926Z', N'700', N'2014-12-20T21:23:49.935Z', 52, N'752', N'Rothana Heavy Engineering', N'unknown', N'Acclamator I-class assault ship', N'Republic Assault ship', N'16000');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'80', N'unknown', N'unknown', N'2014-12-20T17:17:33.526Z', N'1', N'2014-12-20T21:30:21.716Z', 45, N'6.6', N'Desler Gizh Outworld Mobility Corporation', N'800', N'Koro-2 Exodrive airspeeder', N'Koro-2 Exodrive airspeeder', N'1');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-20T17:19:19.991Z', N'1', N'2014-12-20T21:30:21.719Z', 46, N'6.23', N'Narglatch AirTech prefabricated kit', N'720', N'XJ-6 airspeeder', N'XJ-6 airspeeder', N'1');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'10000', N'21 days', N'unknown', N'2014-12-20T18:10:07.560Z', N'6', N'2014-12-20T21:30:21.728Z', 53, N'13.2', N'Rothana Heavy Engineering, Kuat Drive Yards', N'60', N'All Terrain Tactical Enforcer', N'AT-TE', N'36');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'500', N'7 days', N'unknown', N'2014-12-20T18:12:32.315Z', N'25', N'2014-12-20T21:30:21.731Z', 54, N'140', N'Rothana Heavy Engineering', N'35', N'Self-Propelled Heavy Artillery', N'SPHA', N'30');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'8000', N'2014-12-20T18:15:20.312Z', N'1', N'2014-12-20T21:30:21.735Z', 55, N'2', N'Huppla Pasa Tisc Shipwrights Collective', N'634', N'Flitknot speeder', N'Flitknot speeder', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'1000', N'7 days', N'unknown', N'2014-12-20T18:25:44.912Z', N'2', N'2014-12-20T21:30:21.739Z', 56, N'20', N'Haor Chall Engineering', N'880', N'Sheathipede-class transport shuttle', N'Neimoidian shuttle', N'6');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-20T18:34:12.541Z', N'1', N'2014-12-20T21:30:21.742Z', 57, N'9.8', N'Huppla Pasa Tisc Shipwrights Collective', N'20000', N'Nantex-class territorial defense', N'Geonosian starfighter', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'240', N'7 days', N'35700', N'2014-12-20T18:37:56.969Z', N'3', N'2014-12-20T21:23:49.937Z', 58, N'15.2', N'Huppla Pasa Tisc Shipwrights Collective', N'1600', N'Punworcca 116-class interstellar sloop', N'Solar Sailer', N'11');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-20T19:50:58.559Z', N'2', N'2014-12-20T21:30:21.749Z', 62, N'unknown', N'unknown', N'unknown', N'Fire suppression speeder', N'Emergency Firespeeder', N'unknown');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'20000000', N'2 years', N'59000000', N'2014-12-20T19:52:56.232Z', N'7400', N'2014-12-20T21:23:49.946Z', 63, N'1137', N'Kuat Drive Yards, Allanteen Six shipyards', N'975', N'Senator-class Star Destroyer', N'Republic attack cruiser', N'2000');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'50000000', N'4 years', N'125000000', N'2014-12-20T19:40:21.902Z', N'600', N'2014-12-20T21:23:49.941Z', 59, N'1088', N'Rendili StarDrive, Free Dac Volunteers Engineering corps.', N'1050', N'Providence-class carrier/destroyer', N'Trade Federation cruiser', N'48247');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'50000', N'56 days', N'1000000', N'2014-12-20T19:48:40.409Z', N'5', N'2014-12-20T21:23:49.944Z', 61, N'18.5', N'Cygnus Spaceworks', N'2000', N'Theta-class T-2c shuttle', N'Theta-class T-2c shuttle', N'16');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'unknown', N'unknown', N'unknown', N'2014-12-20T19:55:15.396Z', N'3', N'2014-12-20T21:23:49.948Z', 64, N'29.2', N'Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated', N'1050', N'J-type star skiff', N'Naboo star skiff', N'3');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'60', N'2 days', N'320000', N'2014-12-20T19:56:57.468Z', N'1', N'2014-12-20T21:23:49.951Z', 65, N'5.47', N'Kuat Systems Engineering', N'1500', N'Eta-2 Actis-class light interceptor', N'Jedi Interceptor', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'110', N'5 days', N'155000', N'2014-12-20T20:03:48.603Z', N'3', N'2014-12-20T21:23:49.953Z', 66, N'14.5', N'Incom Corporation, Subpro Corporation', N'1000', N'Aggressive Reconnaissance-170 starfighte', N'arc-170', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'0', N'none', N'20000', N'2014-12-20T20:05:19.992Z', N'1', N'2014-12-20T21:30:21.752Z', 67, N'5.4', N'Colla Designs, Phlac-Arphocc Automata Industries', N'1180', N'tri-fighter', N'Droid tri-fighter', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'10', N'none', N'15000', N'2014-12-20T19:43:54.870Z', N'1', N'2014-12-20T21:30:21.745Z', 60, N'3.5', N'Z-Gomot Ternbuell Guppat Corporation', N'330', N'Tsmeu-6 personal wheel bike', N'Tsmeu-6 personal wheel bike', N'1');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'40000000', N'2 years', N'57000000', N'2014-12-20T20:07:11.538Z', N'200', N'2014-12-20T21:23:49.956Z', 68, N'825', N'Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries', N'unknown', N'Munificent-class star frigate', N'Banking clan frigte', N'unknown');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'50', N'3 days', N'12125', N'2014-12-20T20:20:53.931Z', N'2', N'2014-12-20T21:30:21.756Z', 69, N'15.1', N'Appazanna Engineering Works', N'420', N'Oevvaor jet catamaran', N'Oevvaor jet catamaran', N'2');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'30000', N'20 days', N'350000', N'2014-12-20T20:24:45.587Z', N'20', N'2014-12-20T21:30:21.762Z', 71, N'49.4', N'Kuat Drive Yards', N'160', N'HAVw A6 Juggernaut', N'Clone turbo tank', N'300');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'0', N'none', N'60000', N'2014-12-20T20:32:05.687Z', N'0', N'2014-12-20T21:30:21.768Z', 73, N'12.3', N'Baktoid Fleet Ordnance, Haor Chall Engineering', N'820', N'HMP droid gunship', N'Droid gunship', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'none', N'none', N'49000', N'2014-12-20T20:26:55.522Z', N'0', N'2014-12-20T21:30:21.765Z', 72, N'10.96', N'Techno Union', N'100', N'NR-N99 Persuader-class droid enforcer', N'Corporate Alliance tank droid', N'4');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'140', N'7 days', N'168000', N'2014-12-20T20:38:05.031Z', N'1', N'2014-12-20T21:23:49.959Z', 74, N'6.71', N'Feethan Ottraw Scalable Assemblies', N'1100', N'Belbullab-22 starfighter', N'Belbullab-22 starfighter', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'20', N'1 day', N'40000', N'2014-12-20T20:47:49.189Z', N'1', N'2014-12-20T21:30:21.772Z', 76, N'3.2', N'Kuat Drive Yards', N'90', N'All Terrain Recon Transport', N'AT-RT', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'60', N'15 hours', N'102500', N'2014-12-20T20:43:04.349Z', N'1', N'2014-12-20T21:23:49.961Z', 75, N'7.9', N'Kuat Systems Engineering', N'1050', N'Alpha-3 Nimbus-class V-wing starfighter', N'V-wing', N'0');
INSERT INTO [transports] ([cargo_capacity], [consumables], [cost_in_credits], [created], [crew], [edited], [id], [length], [manufacturer], [max_atmosphering_speed], [model], [name], [passengers])
    VALUES
        (N'20', N'none', N'14750', N'2014-12-20T20:21:55.648Z', N'2', N'2014-12-20T21:30:21.759Z', 70, N'7', N'Appazanna Engineering Works', N'310', N'Raddaugh Gnasp fluttercraft', N'Raddaugh Gnasp fluttercraft', N'0');




INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (7, N'repulsorcraft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (14, N'airspeeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (16, N'space/planetary bomber');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (8, N'starfighter');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (18, N'assault walker');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (19, N'walker');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (24, N'sail barge');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (25, N'repulsorcraft cargo skiff');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (26, N'starfighter');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (30, N'speeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (33, N'starfighter');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (34, N'repulsorcraft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (35, N'repulsorcraft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (36, N'repulsorcraft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (4, N'wheeled');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (37, N'landing craft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (6, N'repulsorcraft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (38, N'submarine');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (44, N'repulsorcraft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (20, N'repulsorcraft');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (42, N'speeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (45, N'airspeeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (46, N'airspeeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (53, N'walker');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (54, N'walker');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (51, N'gunship');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (56, N'transport');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (55, N'speeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (57, N'starfighter');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (62, N'fire suppression ship');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (60, N'wheeled walker');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (50, N'gunship');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (67, N'droid starfighter');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (70, N'air speeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (69, N'airspeeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (71, N'wheeled walker');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (72, N'droid tank');

INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (73, N'airspeeder');
INSERT INTO [vehicles] ([id], [vehicle_class])
    VALUES
        (76, N'walker');

INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 2)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 3)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 10)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 11)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 16)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 20)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 21)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 32)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 33)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 34)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 35)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 36)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 37)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 38)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 39)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 40)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 41)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 42)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 43)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 44)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 46)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 47)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 48)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 49)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 50)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 51)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 52)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 53)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 54)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 55)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 56)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 57)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 58)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (4, 59)

INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 1)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 2)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 3)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 4)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 5)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 6)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 7)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 8)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 9)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 10)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 12)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 13)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 14)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 15)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 16)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 18)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 19)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (1, 81)

INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 1)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 2)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 3)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 4)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 5)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 10)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 13)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 14)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 18)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 20)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 21)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 22)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 23)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 24)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 25)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (2, 26)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 1)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 2)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 3)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 4)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 5)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 10)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 13)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 14)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 16)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 18)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 20)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 21)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 22)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 25)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 27)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 28)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 29)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 30)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 31)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (3, 45)

INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 2)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 3)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 6)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 7)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 10)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 11)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 20)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 21)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 22)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 33)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 35)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 36)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 40)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 43)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 46)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 51)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 52)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 53)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 58)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 59)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 60)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 61)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 62)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 63)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 64)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 65)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 66)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 67)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 68)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 69)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 70)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 71)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 72)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 73)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 74)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 75)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 76)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 77)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 78)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (5, 82)

INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 1)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 2)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 3)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 4)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 5)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 6)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 7)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 10)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 11)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 12)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 13)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 20)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 21)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 33)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 35)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 46)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 51)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 52)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 53)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 54)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 55)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 56)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 58)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 63)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 64)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 67)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 68)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 75)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 78)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 79)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 80)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 81)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 82)
INSERT [dbo].[films_characters] ([film_id], [people_id]) VALUES (6, 83)

INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (4, 1)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (4, 8)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (4, 9)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (1, 1)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (1, 2)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (1, 3)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (2, 4)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (2, 5)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (2, 6)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (2, 27)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (3, 1)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (3, 5)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (3, 7)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (3, 8)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (3, 9)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (5, 1)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (5, 8)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (5, 9)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (5, 10)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (5, 11)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 1)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 2)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 5)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 8)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 9)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 12)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 13)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 14)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 15)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 16)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 17)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 18)
INSERT [dbo].[films_planets] ([film_id], [planet_id]) VALUES (6, 19)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 1)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 2)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 6)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 11)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 12)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 13)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 14)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 15)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 16)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 17)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 18)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 19)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 20)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 21)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 22)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 23)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 24)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 25)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 26)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (4, 27)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (1, 1)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (1, 2)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (1, 3)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (1, 4)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (1, 5)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (2, 1)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (2, 2)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (2, 3)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (2, 6)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (2, 7)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 1)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 2)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 3)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 5)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 6)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 8)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 9)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 10)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (3, 15)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 1)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 2)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 6)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 12)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 13)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 15)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 28)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 29)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 30)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 31)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 32)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 33)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 34)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (5, 35)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 1)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 2)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 3)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 6)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 15)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 19)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 20)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 23)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 24)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 25)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 26)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 27)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 28)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 29)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 30)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 33)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 34)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 35)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 36)
INSERT [dbo].[films_species] ([film_id], [species_id]) VALUES (6, 37)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (4, 31)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (4, 32)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (4, 39)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (4, 40)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (4, 41)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 2)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 3)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 5)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 9)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 10)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 11)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 12)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (1, 13)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 3)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 10)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 11)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 12)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 15)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 17)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 21)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 22)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (2, 23)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 2)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 3)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 10)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 11)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 12)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 15)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 17)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 22)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 23)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 27)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 28)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (3, 29)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 21)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 32)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 39)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 43)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 47)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 48)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 49)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 52)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (5, 58)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 2)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 32)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 48)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 59)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 61)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 63)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 64)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 65)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 66)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 68)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 74)
INSERT [dbo].[films_starships] ([film_id], [starship_id]) VALUES (6, 75)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (4, 33)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (4, 34)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (4, 35)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (4, 36)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (4, 37)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (4, 38)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (4, 42)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (1, 4)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (1, 6)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (1, 7)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (1, 8)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (2, 8)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (2, 14)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (2, 16)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (2, 18)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (2, 19)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (2, 20)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 8)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 16)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 18)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 19)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 24)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 25)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 26)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (3, 30)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 4)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 44)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 45)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 46)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 50)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 51)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 53)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 54)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 55)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 56)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (5, 57)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 33)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 50)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 53)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 56)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 60)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 62)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 67)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 69)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 70)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 71)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 72)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 73)
INSERT [dbo].[films_vehicles] ([film_id], [vehicle_id]) VALUES (6, 76)

INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (1, 66)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (1, 67)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (1, 68)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (1, 74)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (4, 15)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (5, 16)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (6, 20)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (8, 27)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (7, 24)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (9, 30)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (3, 13)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (3, 80)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (2, 2)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (2, 3)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (2, 8)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (2, 23)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (11, 33)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (13, 40)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (14, 41)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (16, 47)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (15, 45)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (15, 46)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (10, 31)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (17, 48)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (19, 50)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (12, 36)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (12, 37)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (12, 38)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (20, 52)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (18, 49)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (21, 53)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (22, 44)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (22, 54)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (23, 55)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (24, 56)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (25, 57)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (26, 58)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (28, 63)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (27, 59)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (31, 71)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (30, 70)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (32, 72)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (32, 73)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (29, 64)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (29, 65)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (34, 77)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (33, 76)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (35, 78)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (36, 79)
INSERT [dbo].[species_people] ([species_id], [people_id]) VALUES (37, 83)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (10, 13)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (10, 14)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (10, 25)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (10, 31)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (12, 1)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (12, 9)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (12, 18)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (12, 19)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (13, 4)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (21, 22)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (22, 1)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (22, 13)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (22, 14)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (28, 29)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (39, 11)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (39, 35)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (39, 60)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (40, 39)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (41, 44)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (48, 10)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (48, 58)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (49, 35)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (59, 10)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (59, 11)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (64, 10)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (64, 35)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (65, 10)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (65, 11)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (74, 10)
INSERT [dbo].[starships_pilots] ([starship_id], [people_id]) VALUES (74, 79)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (14, 1)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (14, 18)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (19, 13)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (30, 1)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (30, 5)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (38, 10)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (38, 32)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (44, 11)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (42, 44)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (45, 70)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (46, 11)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (55, 67)
INSERT [dbo].[vehicles_pilots] ([vehicle_id], [people_id]) VALUES (60, 79)

ALTER TABLE [dbo].[films_characters] WITH CHECK ADD  CONSTRAINT [s3t_characters_films_0] FOREIGN KEY([film_id]) REFERENCES [dbo].[films] ([id])
ALTER TABLE [dbo].[films_characters] WITH CHECK ADD  CONSTRAINT [s3t_characters_films_1] FOREIGN KEY([people_id]) REFERENCES [dbo].[people] ([id])
ALTER TABLE [dbo].[films_characters] CHECK CONSTRAINT [s3t_characters_films_0]
ALTER TABLE [dbo].[films_characters] CHECK CONSTRAINT [s3t_characters_films_1]

ALTER TABLE [dbo].[films_planets]  WITH CHECK ADD  CONSTRAINT [s3t_films_planets_films_0] FOREIGN KEY([film_id]) REFERENCES [dbo].[films] ([id])
ALTER TABLE [dbo].[films_planets]  WITH CHECK ADD  CONSTRAINT [s3t_films_planets_films_1] FOREIGN KEY([planet_id]) REFERENCES [dbo].[planets] ([id])
ALTER TABLE [dbo].[films_planets] CHECK CONSTRAINT [s3t_films_planets_films_0]
ALTER TABLE [dbo].[films_planets] CHECK CONSTRAINT [s3t_films_planets_films_1]

ALTER TABLE [dbo].[films_species]  WITH CHECK ADD  CONSTRAINT [s3t_films_species_films_0] FOREIGN KEY([film_id]) REFERENCES [dbo].[films] ([id])
ALTER TABLE [dbo].[films_species]  WITH CHECK ADD  CONSTRAINT [s3t_films_species_films_1] FOREIGN KEY([species_id]) REFERENCES [dbo].[species] ([id])
ALTER TABLE [dbo].[films_species] CHECK CONSTRAINT [s3t_films_species_films_0]
ALTER TABLE [dbo].[films_species] CHECK CONSTRAINT [s3t_films_species_films_1]

ALTER TABLE [dbo].[films_starships]  WITH CHECK ADD  CONSTRAINT [s3t_films_starships_films_0] FOREIGN KEY([film_id]) REFERENCES [dbo].[films] ([id])
ALTER TABLE [dbo].[films_starships]  WITH CHECK ADD  CONSTRAINT [s3t_films_starships_films_1] FOREIGN KEY([starship_id]) REFERENCES [dbo].[starships] ([id])
ALTER TABLE [dbo].[films_starships] CHECK CONSTRAINT [s3t_films_starships_films_0]
ALTER TABLE [dbo].[films_starships] CHECK CONSTRAINT [s3t_films_starships_films_1]

ALTER TABLE [dbo].[films_vehicles]  WITH CHECK ADD  CONSTRAINT [s3t_films_vehicles_films_0] FOREIGN KEY([film_id]) REFERENCES [dbo].[films] ([id])
ALTER TABLE [dbo].[films_vehicles]  WITH CHECK ADD  CONSTRAINT [s3t_films_vehicles_films_1] FOREIGN KEY([vehicle_id]) REFERENCES [dbo].[vehicles] ([id])
ALTER TABLE [dbo].[films_vehicles] CHECK CONSTRAINT [s3t_films_vehicles_films_0]
ALTER TABLE [dbo].[films_vehicles] CHECK CONSTRAINT [s3t_films_vehicles_films_1]

ALTER TABLE [dbo].[species_people]  WITH CHECK ADD  CONSTRAINT [s3t_species_people_species_0] FOREIGN KEY([species_id]) REFERENCES [dbo].[species] ([id])
ALTER TABLE [dbo].[species_people]  WITH CHECK ADD  CONSTRAINT [s3t_species_people_species_1] FOREIGN KEY([people_id]) REFERENCES [dbo].[people] ([id])
ALTER TABLE [dbo].[species_people] CHECK CONSTRAINT [s3t_species_people_species_0]
ALTER TABLE [dbo].[species_people] CHECK CONSTRAINT [s3t_species_people_species_1]

ALTER TABLE [dbo].[starships_pilots]  WITH CHECK ADD  CONSTRAINT [s3t_starships_pilots_starships_0] FOREIGN KEY([starship_id]) REFERENCES [dbo].[starships] ([id])
ALTER TABLE [dbo].[starships_pilots]  WITH CHECK ADD  CONSTRAINT [s3t_starships_pilots_starships_1] FOREIGN KEY([people_id]) REFERENCES [dbo].[people] ([id])
ALTER TABLE [dbo].[starships_pilots] CHECK CONSTRAINT [s3t_starships_pilots_starships_0]
ALTER TABLE [dbo].[starships_pilots] CHECK CONSTRAINT [s3t_starships_pilots_starships_1]

ALTER TABLE [dbo].[vehicles_pilots]  WITH CHECK ADD  CONSTRAINT [s3t_veehicles_pilots_vehicles_0] FOREIGN KEY([vehicle_id]) REFERENCES [dbo].[vehicles] ([id])
ALTER TABLE [dbo].[vehicles_pilots]  WITH CHECK ADD  CONSTRAINT [s3t_veehicles_pilots_vehicles_1] FOREIGN KEY([people_id]) REFERENCES [dbo].[people] ([id])
ALTER TABLE [dbo].[vehicles_pilots] CHECK CONSTRAINT [s3t_veehicles_pilots_vehicles_0]
ALTER TABLE [dbo].[vehicles_pilots] CHECK CONSTRAINT [s3t_veehicles_pilots_vehicles_1]
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete