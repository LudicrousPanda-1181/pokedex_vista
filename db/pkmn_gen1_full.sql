DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemon (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    pkmn_name TEXT,
    pkmn_type TEXT,
    pkmn_height REAL,
    pkmn_weight REAL,
    pkmn_evolves_at TEXT,
    pkmn_caught_counter REAL,
    pkmn_description TEXT,
    pkmn_gif TEXT
);

INSERT INTO pokemon VALUES
(1,'Bulbasaur','grass/poison',0.7,6.9,'16',0,'A strange seed was planted on its back at birth.','bulbasaur.gif'),
(2,'Ivysaur','grass/poison',1.0,13.0,'32',0,'The bulb on its back grows as it absorbs nutrients.','ivysaur.gif'),
(3,'Venusaur','grass/poison',2.0,100.0,'none',0,'The plant blooms when it absorbs solar energy.','venusaur.gif'),

(4,'Charmander','fire',0.6,8.5,'16',0,'The flame on its tail shows its life force.','charmander.gif'),
(5,'Charmeleon','fire',1.1,19.0,'36',0,'When it swings its burning tail it raises temperatures.','charmeleon.gif'),
(6,'Charizard','fire/flying',1.7,90.5,'none',0,'Spits fire hot enough to melt boulders.','charizard.gif'),

(7,'Squirtle','water',0.5,9.0,'16',0,'Shoots water at prey while in the water.','squirtle.gif'),
(8,'Wartortle','water',1.0,22.5,'36',0,'Often hides in water to stalk unwary prey.','wartortle.gif'),
(9,'Blastoise','water',1.6,85.5,'none',0,'A brutal Pokémon with pressurized water cannons.','blastoise.gif'),

(10,'Caterpie','bug',0.3,2.9,'7',0,'Its short feet are tipped with suction pads.','caterpie.gif'),
(11,'Metapod','bug',0.7,9.9,'10',0,'Hardens its shell to protect itself.','metapod.gif'),
(12,'Butterfree','bug/flying',1.1,32.0,'none',0,'Loves nectar from flowers.','butterfree.gif'),

(13,'Weedle','bug/poison',0.3,3.2,'7',0,'Often found in forests eating leaves.','weedle.gif'),
(14,'Kakuna','bug/poison',0.6,10.0,'10',0,'Almost incapable of moving.','kakuna.gif'),
(15,'Beedrill','bug/poison',1.0,29.5,'none',0,'Flies at high speed and attacks with poison stingers.','beedrill.gif'),

(16,'Pidgey','normal/flying',0.3,1.8,'18',0,'A common sight in forests and woods.','pidgey.gif'),
(17,'Pidgeotto','normal/flying',1.1,30.0,'36',0,'Very protective of its territory.','pidgeotto.gif'),
(18,'Pidgeot','normal/flying',1.5,39.5,'none',0,'This Pokémon flies at Mach 2 speed.','pidgeot.gif'),

(19,'Rattata','normal',0.3,3.5,'20',0,'Bites anything when it attacks.','rattata.gif'),
(20,'Raticate','normal',0.7,18.5,'none',0,'Its hind feet are webbed.','raticate.gif'),

(21,'Spearow','normal/flying',0.3,2.0,'20',0,'Inept at flying high.','spearow.gif'),
(22,'Fearow','normal/flying',1.2,38.0,'none',0,'A Pokémon that dates back many years.','fearow.gif'),

(23,'Ekans','poison',2.0,6.9,'22',0,'Moves silently through grass.','ekans.gif'),
(24,'Arbok','poison',3.5,65.0,'none',0,'The frightening patterns on its belly differ by region.','arbok.gif'),

(25,'Pikachu','electric',0.4,6.0,'thunder_stone',0,'Stores electricity in its cheeks.','pikachu.gif'),
(26,'Raichu','electric',0.8,30.0,'none',0,'Its long tail serves as a ground.','raichu.gif'),

(27,'Sandshrew','ground',0.6,12.0,'22',0,'Burrows deep underground in arid locations.','sandshrew.gif'),
(28,'Sandslash','ground',1.0,29.5,'none',0,'Curls up into a spiny ball when threatened.','sandslash.gif'),

(29,'NidoranF','poison',0.4,7.0,'16',0,'Although small its venomous barbs render foes helpless.','nidoranf.gif'),
(30,'Nidorina','poison',0.8,20.0,'moon_stone',0,'The female has a gentle temperament.','nidorina.gif'),
(31,'Nidoqueen','poison/ground',1.3,60.0,'none',0,'Its body is covered with hard scales.','nidoqueen.gif'),

(32,'NidoranM','poison',0.5,9.0,'16',0,'Stiffens its ears to sense danger.','nidoranm.gif'),
(33,'Nidorino','poison',0.9,19.5,'moon_stone',0,'An aggressive Pokémon quick to attack.','nidorino.gif'),
(34,'Nidoking','poison/ground',1.4,62.0,'none',0,'Uses its thick tail to smash enemies.','nidoking.gif'),

(35,'Clefairy','fairy',0.6,7.5,'moon_stone',0,'Often seen on moonlit nights.','clefairy.gif'),
(36,'Clefable','fairy',1.3,40.0,'none',0,'A timid fairy Pokémon rarely seen by humans.','clefable.gif'),

(37,'Vulpix','fire',0.6,9.9,'fire_stone',0,'At birth it has just one tail.','vulpix.gif'),
(38,'Ninetales','fire',1.1,19.9,'none',0,'Very smart and very vengeful.','ninetales.gif'),

(39,'Jigglypuff','normal/fairy',0.5,5.5,'moon_stone',0,'Uses its alluring eyes to lull foes to sleep.','jigglypuff.gif'),
(40,'Wigglytuff','normal/fairy',1.0,12.0,'none',0,'The body is soft and rubbery.','wigglytuff.gif'),

(41,'Zubat','poison/flying',0.8,7.5,'22',0,'Forms colonies in dark caves.','zubat.gif'),
(42,'Golbat','poison/flying',1.6,55.0,'none',0,'Once it strikes it will not stop draining energy.','golbat.gif'),

(43,'Oddish','grass/poison',0.5,5.4,'21',0,'During the day it keeps its face buried.','oddish.gif'),
(44,'Gloom','grass/poison',0.8,8.6,'leaf_stone',0,'Smells incredibly foul.','gloom.gif'),
(45,'Vileplume','grass/poison',1.2,18.6,'none',0,'The larger its petals the more toxic pollen.','vileplume.gif'),

(46,'Paras','bug/grass',0.3,5.4,'24',0,'Burrows to suck tree roots.','paras.gif'),
(47,'Parasect','bug/grass',1.0,29.5,'none',0,'The mushroom has taken over the bug host.','parasect.gif'),

(48,'Venonat','bug/poison',1.0,30.0,'31',0,'Lives in shadows of tall trees.','venonat.gif'),
(49,'Venomoth','bug/poison',1.5,12.5,'none',0,'The dust-like scales covering its wings are poisonous.','venomoth.gif'),

(50,'Diglett','ground',0.2,0.8,'26',0,'Lives underground where it feeds on roots.','diglett.gif'),
(51,'Dugtrio','ground',0.7,33.3,'none',0,'A team of Diglett triplets.','dugtrio.gif'),

(52,'Meowth','normal',0.4,4.2,'28',0,'Adores circular objects.','meowth.gif'),
(53,'Persian','normal',1.0,32.0,'none',0,'Very elegant but cruel.','persian.gif'),

(54,'Psyduck','water',0.8,19.6,'33',0,'Constant headaches trigger psychic powers.','psyduck.gif'),
(55,'Golduck','water',1.7,76.6,'none',0,'Often seen swimming elegantly.','golduck.gif'),

(56,'Mankey','fighting',0.5,28.0,'28',0,'Extremely quick to anger.','mankey.gif'),
(57,'Primeape','fighting',1.0,32.0,'none',0,'Becomes enraged if it sees its reflection.','primeape.gif'),

(58,'Growlithe','fire',0.7,19.0,'fire_stone',0,'Very protective of its territory.','growlithe.gif'),
(59,'Arcanine','fire',1.9,155.0,'none',0,'A legendary Pokémon in Chinese myths.','arcanine.gif'),

(60,'Poliwag','water',0.6,12.4,'25',0,'The spiral on its belly is its internal organs.','poliwag.gif'),
(61,'Poliwhirl','water',1.0,20.0,'water_stone',0,'Capable of living in or out of water.','poliwhirl.gif'),
(62,'Poliwrath','water/fighting',1.3,54.0,'none',0,'An adept swimmer.','poliwrath.gif'),

(63,'Abra','psychic',0.9,19.5,'16',0,'Sleeps 18 hours a day.','abra.gif'),
(64,'Kadabra','psychic',1.3,56.5,'trade',0,'Its brain emits psychic waves.','kadabra.gif'),
(65,'Alakazam','psychic',1.5,48.0,'none',0,'Has an IQ of over 5000.','alakazam.gif'),

(66,'Machop','fighting',0.8,19.5,'28',0,'Loves to build muscles.','machop.gif'),
(67,'Machoke','fighting',1.5,70.5,'trade',0,'Its muscular body is so powerful.','machoke.gif'),
(68,'Machamp','fighting',1.6,130.0,'none',0,'Has four incredibly strong arms.','machamp.gif'),

(69,'Bellsprout','grass/poison',0.7,4.0,'21',0,'Prefers hot and humid places.','bellsprout.gif'),
(70,'Weepinbell','grass/poison',1.0,6.4,'leaf_stone',0,'It spits out poison powder.','weepinbell.gif'),
(71,'Victreebel','grass/poison',1.7,15.5,'none',0,'Said to live in huge colonies deep in jungles.','victreebel.gif'),

(72,'Tentacool','water/poison',0.9,45.5,'30',0,'Drifts in shallow seas.','tentacool.gif'),
(73,'Tentacruel','water/poison',1.6,55.0,'none',0,'Its tentacles can stretch endlessly.','tentacruel.gif'),

(74,'Geodude','rock/ground',0.4,20.0,'25',0,'Found in fields and mountains.','geodude.gif'),
(75,'Graveler','rock/ground',1.0,105.0,'trade',0,'Often rolls down mountains.','graveler.gif'),
(76,'Golem','rock/ground',1.4,300.0,'none',0,'Its body resembles a boulder.','golem.gif'),

(77,'Ponyta','fire',1.0,30.0,'40',0,'Its hooves are harder than diamonds.','ponyta.gif'),
(78,'Rapidash','fire',1.7,95.0,'none',0,'Very competitive.','rapidash.gif'),

(79,'Slowpoke','water/psychic',1.2,36.0,'37',0,'Incredibly slow and dopey.','slowpoke.gif'),
(80,'Slowbro','water/psychic',1.6,78.5,'none',0,'The Shellder on its tail controls it.','slowbro.gif'),

(81,'Magnemite','electric/steel',0.3,6.0,'30',0,'Uses anti-gravity to stay suspended.','magnemite.gif'),
(82,'Magneton','electric/steel',1.0,60.0,'none',0,'Formed by several Magnemite.','magneton.gif'),

(83,'Farfetchd','normal/flying',0.8,15.0,'none',0,'Always seen carrying a leek.','farfetchd.gif'),

(84,'Doduo','normal/flying',1.4,39.2,'31',0,'Uses its two heads to stay alert.','doduo.gif'),
(85,'Dodrio','normal/flying',1.8,85.2,'none',0,'Three heads make it a fast runner.','dodrio.gif'),

(86,'Seel','water',1.1,90.0,'34',0,'Covered with thick blubber.','seel.gif'),
(87,'Dewgong','water/ice',1.7,120.0,'none',0,'Stores thermal energy in its body.','dewgong.gif'),

(88,'Grimer','poison',0.9,30.0,'38',0,'Appears in filthy areas.','grimer.gif'),
(89,'Muk','poison',1.2,30.0,'none',0,'Smells so awful it can cause fainting.','muk.gif'),

(90,'Shellder','water',0.3,4.0,'water_stone',0,'Its shell is extremely hard.','shellder.gif'),
(91,'Cloyster','water/ice',1.5,132.5,'none',0,'The shell opens only when attacking.','cloyster.gif'),

(92,'Gastly','ghost/poison',1.3,0.1,'25',0,'Almost invisible gas Pokémon.','gastly.gif'),
(93,'Haunter','ghost/poison',1.6,0.1,'trade',0,'Lurks in darkness to scare victims.','haunter.gif'),
(94,'Gengar','ghost/poison',1.5,40.5,'none',0,'Hides in shadows.','gengar.gif'),

(95,'Onix','rock/ground',8.8,210.0,'none',0,'Burrows at high speed underground.','onix.gif'),

(96,'Drowzee','psychic',1.0,32.4,'26',0,'Puts enemies to sleep.','drowzee.gif'),
(97,'Hypno','psychic',1.6,75.6,'none',0,'Uses a pendulum to hypnotize prey.','hypno.gif'),

(98,'Krabby','water',0.4,6.5,'28',0,'Its pincers are powerful weapons.','krabby.gif'),
(99,'Kingler','water',1.3,60.0,'none',0,'One claw grows massive.','kingler.gif'),

(100,'Voltorb','electric',0.5,10.4,'30',0,'Often mistaken for Poké Balls.','voltorb.gif'),
(101,'Electrode','electric',1.2,66.6,'none',0,'Explodes when irritated.','electrode.gif'),

(102,'Exeggcute','grass/psychic',0.4,2.5,'leaf_stone',0,'Often mistaken for eggs.','exeggcute.gif'),
(103,'Exeggutor','grass/psychic',2.0,120.0,'none',0,'Each head thinks independently.','exeggutor.gif'),

(104,'Cubone','ground',0.4,6.5,'28',0,'Wears its mothers skull.','cubone.gif'),
(105,'Marowak','ground',1.0,45.0,'none',0,'Uses bone like a boomerang.','marowak.gif'),

(106,'Hitmonlee','fighting',1.5,49.8,'none',0,'Its kicks are extremely powerful.','hitmonlee.gif'),
(107,'Hitmonchan','fighting',1.4,50.2,'none',0,'Throws punches faster than a boxer.','hitmonchan.gif'),

(108,'Lickitung','normal',1.2,65.5,'none',0,'Uses its long tongue to attack.','lickitung.gif'),

(109,'Koffing','poison',0.6,1.0,'35',0,'Because it stores gas inside it often explodes.','koffing.gif'),
(110,'Weezing','poison',1.2,9.5,'none',0,'Two Koffing fused together.','weezing.gif'),

(111,'Rhyhorn','ground/rock',1.0,115.0,'42',0,'Charges straight ahead destroying everything.','rhyhorn.gif'),
(112,'Rhydon','ground/rock',1.9,120.0,'none',0,'Protected by armor-like hide.','rhydon.gif'),

(113,'Chansey','normal',1.1,34.6,'none',0,'Rare Pokémon said to bring happiness.','chansey.gif'),

(114,'Tangela','grass',1.0,35.0,'none',0,'Hidden beneath a mass of vines.','tangela.gif'),

(115,'Kangaskhan','normal',2.2,80.0,'none',0,'Carries its baby in its pouch.','kangaskhan.gif'),

(116,'Horsea','water',0.4,8.0,'32',0,'Shoots ink to escape enemies.','horsea.gif'),
(117,'Seadra','water',1.2,25.0,'none',0,'Its spines are extremely sharp.','seadra.gif'),

(118,'Goldeen','water',0.6,15.0,'33',0,'The water queen of Pokémon.','goldeen.gif'),
(119,'Seaking','water',1.3,39.0,'none',0,'Powerful swimmer.','seaking.gif'),

(120,'Staryu','water',0.8,34.5,'water_stone',0,'Can regenerate missing limbs.','staryu.gif'),
(121,'Starmie','water/psychic',1.1,80.0,'none',0,'Its center gem glows.','starmie.gif'),

(122,'MrMime','psychic/fairy',1.3,54.5,'none',0,'Master of pantomime.','mrmime.gif'),

(123,'Scyther','bug/flying',1.5,56.0,'none',0,'Slices enemies with scythe arms.','scyther.gif'),

(124,'Jynx','ice/psychic',1.4,40.6,'none',0,'Moves rhythmically as if dancing.','jynx.gif'),

(125,'Electabuzz','electric',1.1,30.0,'none',0,'Often found near power plants.','electabuzz.gif'),

(126,'Magmar','fire',1.3,44.5,'none',0,'Its body burns with intense heat.','magmar.gif'),

(127,'Pinsir','bug',1.5,55.0,'none',0,'Grips prey with massive horns.','pinsir.gif'),

(128,'Tauros','normal',1.4,88.4,'none',0,'Known for its violent temperament.','tauros.gif'),

(129,'Magikarp','water',0.9,10.0,'20',0,'Weak and pathetic fish Pokémon.','magikarp.gif'),
(130,'Gyarados','water/flying',6.5,235.0,'none',0,'Rarely seen in the wild.','gyarados.gif'),

(131,'Lapras','water/ice',2.5,220.0,'none',0,'Carries people across the sea.','lapras.gif'),

(132,'Ditto','normal',0.3,4.0,'none',0,'Capable of copying enemies.','ditto.gif'),

(133,'Eevee','normal',0.3,6.5,'water_stone/thunder_stone/fire_stone',0,'Its genetic code is unstable.','eevee.gif'),
(134,'Vaporeon','water',1.0,29.0,'none',0,'Lives close to water.','vaporeon.gif'),
(135,'Jolteon','electric',0.8,24.5,'none',0,'Electricity crackles from its fur.','jolteon.gif'),
(136,'Flareon','fire',0.9,25.0,'none',0,'Stores thermal energy in its body.','flareon.gif'),

(137,'Porygon','normal',0.8,36.5,'none',0,'A virtual Pokémon created by science.','porygon.gif'),

(138,'Omanyte','rock/water',0.4,7.5,'40',0,'Revived from ancient fossil.','omanyte.gif'),
(139,'Omastar','rock/water',1.0,35.0,'none',0,'Uses tentacles to ensnare prey.','omastar.gif'),

(140,'Kabuto','rock/water',0.5,11.5,'40',0,'A fossil Pokémon revived by science.','kabuto.gif'),
(141,'Kabutops','rock/water',1.3,40.5,'none',0,'Its sickles can slice prey.','kabutops.gif'),

(142,'Aerodactyl','rock/flying',1.8,59.0,'none',0,'A ferocious ancient Pokémon.','aerodactyl.gif'),

(143,'Snorlax','normal',2.1,460.0,'none',0,'Very lazy and sleeps most of the day.','snorlax.gif'),

(144,'Articuno','ice/flying',1.7,55.4,'none',0,'Legendary bird that controls ice.','articuno.gif'),
(145,'Zapdos','electric/flying',1.6,52.6,'none',0,'Legendary bird that controls lightning.','zapdos.gif'),
(146,'Moltres','fire/flying',2.0,60.0,'none',0,'Legendary bird of fire.','moltres.gif'),

(147,'Dratini','dragon',1.8,3.3,'30',0,'Long considered mythical.','dratini.gif'),
(148,'Dragonair','dragon',4.0,16.5,'55',0,'A mystical dragon Pokémon.','dragonair.gif'),
(149,'Dragonite','dragon/flying',2.2,210.0,'none',0,'An extremely rare and powerful Pokémon.','dragonite.gif'),

(150,'Mewtwo','psychic',2.0,122.0,'none',0,'Created by genetic manipulation.','mewtwo.gif'),
(151,'Mew','psychic',0.4,4.0,'none',0,'Said to contain the DNA of all Pokémon.','mew.gif'),

(152,'MissingNo','bird/normal',3.0,1590.0,'none',0,'A mysterious glitch Pokémon.','missingno.gif');