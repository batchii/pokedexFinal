DROP TABLE pokemon;

CREATE TABLE pokemon (
    id INT NOT NULL,
    identifier VARCHAR(21) CHARACTER SET utf8 NOT NULL,
    species_id INT NOT NULL,
    height INT NOT NULL,
    weight INT NOT NULL,
    base_experience INT NOT NULL,
    is_default INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO pokemon VALUES (1,'bulbasaur',1,7,69,64,1);

INSERT INTO pokemon VALUES (2,'ivysaur',2,10,130,142,1);

INSERT INTO pokemon VALUES (3,'venusaur',3,20,1000,236,1);

INSERT INTO pokemon VALUES (4,'charmander',4,6,85,62,1);

INSERT INTO pokemon VALUES (5,'charmeleon',5,11,190,142,1);

INSERT INTO pokemon VALUES (6,'charizard',6,17,905,240,1);

INSERT INTO pokemon VALUES (7,'squirtle',7,5,90,63,1);

INSERT INTO pokemon VALUES (8,'wartortle',8,10,225,142,1);

INSERT INTO pokemon VALUES (9,'blastoise',9,16,855,239,1);

INSERT INTO pokemon VALUES (10,'caterpie',10,3,29,39,1);

INSERT INTO pokemon VALUES (11,'metapod',11,7,99,72,1);

INSERT INTO pokemon VALUES (12,'butterfree',12,11,320,178,1);

INSERT INTO pokemon VALUES (13,'weedle',13,3,32,39,1);

INSERT INTO pokemon VALUES (14,'kakuna',14,6,100,72,1);

INSERT INTO pokemon VALUES (15,'beedrill',15,10,295,178,1);

INSERT INTO pokemon VALUES (16,'pidgey',16,3,18,50,1);

INSERT INTO pokemon VALUES (17,'pidgeotto',17,11,300,122,1);

INSERT INTO pokemon VALUES (18,'pidgeot',18,15,395,216,1);

INSERT INTO pokemon VALUES (19,'rattata',19,3,35,51,1);

INSERT INTO pokemon VALUES (20,'raticate',20,7,185,145,1);

INSERT INTO pokemon VALUES (21,'spearow',21,3,20,52,1);

INSERT INTO pokemon VALUES (22,'fearow',22,12,380,155,1);

INSERT INTO pokemon VALUES (23,'ekans',23,20,69,58,1);

INSERT INTO pokemon VALUES (24,'arbok',24,35,650,153,1);

INSERT INTO pokemon VALUES (25,'pikachu',25,4,60,112,1);

INSERT INTO pokemon VALUES (26,'raichu',26,8,300,218,1);

INSERT INTO pokemon VALUES (27,'sandshrew',27,6,120,60,1);

INSERT INTO pokemon VALUES (28,'sandslash',28,10,295,158,1);

INSERT INTO pokemon VALUES (29,'nidoran-f',29,4,70,55,1);

INSERT INTO pokemon VALUES (30,'nidorina',30,8,200,128,1);

INSERT INTO pokemon VALUES (31,'nidoqueen',31,13,600,227,1);

INSERT INTO pokemon VALUES (32,'nidoran-m',32,5,90,55,1);

INSERT INTO pokemon VALUES (33,'nidorino',33,9,195,128,1);

INSERT INTO pokemon VALUES (34,'nidoking',34,14,620,227,1);

INSERT INTO pokemon VALUES (35,'clefairy',35,6,75,113,1);

INSERT INTO pokemon VALUES (36,'clefable',36,13,400,217,1);

INSERT INTO pokemon VALUES (37,'vulpix',37,6,99,60,1);

INSERT INTO pokemon VALUES (38,'ninetales',38,11,199,177,1);

INSERT INTO pokemon VALUES (39,'jigglypuff',39,5,55,95,1);

INSERT INTO pokemon VALUES (40,'wigglytuff',40,10,120,196,1);

INSERT INTO pokemon VALUES (41,'zubat',41,8,75,49,1);

INSERT INTO pokemon VALUES (42,'golbat',42,16,550,159,1);

INSERT INTO pokemon VALUES (43,'oddish',43,5,54,64,1);

INSERT INTO pokemon VALUES (44,'gloom',44,8,86,138,1);

INSERT INTO pokemon VALUES (45,'vileplume',45,12,186,221,1);

INSERT INTO pokemon VALUES (46,'paras',46,3,54,57,1);

INSERT INTO pokemon VALUES (47,'parasect',47,10,295,142,1);

INSERT INTO pokemon VALUES (48,'venonat',48,10,300,61,1);

INSERT INTO pokemon VALUES (49,'venomoth',49,15,125,158,1);

INSERT INTO pokemon VALUES (50,'diglett',50,2,8,53,1);

INSERT INTO pokemon VALUES (51,'dugtrio',51,7,333,142,1);

INSERT INTO pokemon VALUES (52,'meowth',52,4,42,58,1);

INSERT INTO pokemon VALUES (53,'persian',53,10,320,154,1);

INSERT INTO pokemon VALUES (54,'psyduck',54,8,196,64,1);

INSERT INTO pokemon VALUES (55,'golduck',55,17,766,175,1);

INSERT INTO pokemon VALUES (56,'mankey',56,5,280,61,1);

INSERT INTO pokemon VALUES (57,'primeape',57,10,320,159,1);

INSERT INTO pokemon VALUES (58,'growlithe',58,7,190,70,1);

INSERT INTO pokemon VALUES (59,'arcanine',59,19,1550,194,1);

INSERT INTO pokemon VALUES (60,'poliwag',60,6,124,60,1);

INSERT INTO pokemon VALUES (61,'poliwhirl',61,10,200,135,1);

INSERT INTO pokemon VALUES (62,'poliwrath',62,13,540,230,1);

INSERT INTO pokemon VALUES (63,'abra',63,9,195,62,1);

INSERT INTO pokemon VALUES (64,'kadabra',64,13,565,140,1);

INSERT INTO pokemon VALUES (65,'alakazam',65,15,480,225,1);

INSERT INTO pokemon VALUES (66,'machop',66,8,195,61,1);

INSERT INTO pokemon VALUES (67,'machoke',67,15,705,142,1);

INSERT INTO pokemon VALUES (68,'machamp',68,16,1300,227,1);

INSERT INTO pokemon VALUES (69,'bellsprout',69,7,40,60,1);

INSERT INTO pokemon VALUES (70,'weepinbell',70,10,64,137,1);

INSERT INTO pokemon VALUES (71,'victreebel',71,17,155,221,1);

INSERT INTO pokemon VALUES (72,'tentacool',72,9,455,67,1);

INSERT INTO pokemon VALUES (73,'tentacruel',73,16,550,180,1);

INSERT INTO pokemon VALUES (74,'geodude',74,4,200,60,1);

INSERT INTO pokemon VALUES (75,'graveler',75,10,1050,137,1);

INSERT INTO pokemon VALUES (76,'golem',76,14,3000,223,1);

INSERT INTO pokemon VALUES (77,'ponyta',77,10,300,82,1);

INSERT INTO pokemon VALUES (78,'rapidash',78,17,950,175,1);

INSERT INTO pokemon VALUES (79,'slowpoke',79,12,360,63,1);

INSERT INTO pokemon VALUES (80,'slowbro',80,16,785,172,1);

INSERT INTO pokemon VALUES (81,'magnemite',81,3,60,65,1);

INSERT INTO pokemon VALUES (82,'magneton',82,10,600,163,1);

INSERT INTO pokemon VALUES (83,'farfetchd',83,8,150,123,1);

INSERT INTO pokemon VALUES (84,'doduo',84,14,392,62,1);

INSERT INTO pokemon VALUES (85,'dodrio',85,18,852,161,1);

INSERT INTO pokemon VALUES (86,'seel',86,11,900,65,1);

INSERT INTO pokemon VALUES (87,'dewgong',87,17,1200,166,1);

INSERT INTO pokemon VALUES (88,'grimer',88,9,300,65,1);

INSERT INTO pokemon VALUES (89,'muk',89,12,300,175,1);

INSERT INTO pokemon VALUES (90,'shellder',90,3,40,61,1);

INSERT INTO pokemon VALUES (91,'cloyster',91,15,1325,184,1);

INSERT INTO pokemon VALUES (92,'gastly',92,13,1,62,1);

INSERT INTO pokemon VALUES (93,'haunter',93,16,1,142,1);

INSERT INTO pokemon VALUES (94,'gengar',94,15,405,225,1);

INSERT INTO pokemon VALUES (95,'onix',95,88,2100,77,1);

INSERT INTO pokemon VALUES (96,'drowzee',96,10,324,66,1);

INSERT INTO pokemon VALUES (97,'hypno',97,16,756,169,1);

INSERT INTO pokemon VALUES (98,'krabby',98,4,65,65,1);

INSERT INTO pokemon VALUES (99,'kingler',99,13,600,166,1);

INSERT INTO pokemon VALUES (100,'voltorb',100,5,104,66,1);

INSERT INTO pokemon VALUES (101,'electrode',101,12,666,168,1);

INSERT INTO pokemon VALUES (102,'exeggcute',102,4,25,65,1);

INSERT INTO pokemon VALUES (103,'exeggutor',103,20,1200,182,1);

INSERT INTO pokemon VALUES (104,'cubone',104,4,65,64,1);

INSERT INTO pokemon VALUES (105,'marowak',105,10,450,149,1);

INSERT INTO pokemon VALUES (106,'hitmonlee',106,15,498,159,1);

INSERT INTO pokemon VALUES (107,'hitmonchan',107,14,502,159,1);

INSERT INTO pokemon VALUES (108,'lickitung',108,12,655,77,1);

INSERT INTO pokemon VALUES (109,'koffing',109,6,10,68,1);

INSERT INTO pokemon VALUES (110,'weezing',110,12,95,172,1);

INSERT INTO pokemon VALUES (111,'rhyhorn',111,10,1150,69,1);

INSERT INTO pokemon VALUES (112,'rhydon',112,19,1200,170,1);

INSERT INTO pokemon VALUES (113,'chansey',113,11,346,395,1);

INSERT INTO pokemon VALUES (114,'tangela',114,10,350,87,1);

INSERT INTO pokemon VALUES (115,'kangaskhan',115,22,800,172,1);

INSERT INTO pokemon VALUES (116,'horsea',116,4,80,59,1);

INSERT INTO pokemon VALUES (117,'seadra',117,12,250,154,1);

INSERT INTO pokemon VALUES (118,'goldeen',118,6,150,64,1);

INSERT INTO pokemon VALUES (119,'seaking',119,13,390,158,1);

INSERT INTO pokemon VALUES (120,'staryu',120,8,345,68,1);

INSERT INTO pokemon VALUES (121,'starmie',121,11,800,182,1);

INSERT INTO pokemon VALUES (122,'mr-mime',122,13,545,161,1);

INSERT INTO pokemon VALUES (123,'scyther',123,15,560,100,1);

INSERT INTO pokemon VALUES (124,'jynx',124,14,406,159,1);

INSERT INTO pokemon VALUES (125,'electabuzz',125,11,300,172,1);

INSERT INTO pokemon VALUES (126,'magmar',126,13,445,173,1);

INSERT INTO pokemon VALUES (127,'pinsir',127,15,550,175,1);

INSERT INTO pokemon VALUES (128,'tauros',128,14,884,172,1);

INSERT INTO pokemon VALUES (129,'magikarp',129,9,100,40,1);

INSERT INTO pokemon VALUES (130,'gyarados',130,65,2350,189,1);

INSERT INTO pokemon VALUES (131,'lapras',131,25,2200,187,1);

INSERT INTO pokemon VALUES (132,'ditto',132,3,40,101,1);

INSERT INTO pokemon VALUES (133,'eevee',133,3,65,65,1);

INSERT INTO pokemon VALUES (134,'vaporeon',134,10,290,184,1);

INSERT INTO pokemon VALUES (135,'jolteon',135,8,245,184,1);

INSERT INTO pokemon VALUES (136,'flareon',136,9,250,184,1);

INSERT INTO pokemon VALUES (137,'porygon',137,8,365,79,1);

INSERT INTO pokemon VALUES (138,'omanyte',138,4,75,71,1);

INSERT INTO pokemon VALUES (139,'omastar',139,10,350,173,1);

INSERT INTO pokemon VALUES (140,'kabuto',140,5,115,71,1);

INSERT INTO pokemon VALUES (141,'kabutops',141,13,405,173,1);

INSERT INTO pokemon VALUES (142,'aerodactyl',142,18,590,180,1);

INSERT INTO pokemon VALUES (143,'snorlax',143,21,4600,189,1);

INSERT INTO pokemon VALUES (144,'articuno',144,17,554,261,1);

INSERT INTO pokemon VALUES (145,'zapdos',145,16,526,261,1);

INSERT INTO pokemon VALUES (146,'moltres',146,20,600,261,1);

INSERT INTO pokemon VALUES (147,'dratini',147,18,33,60,1);

INSERT INTO pokemon VALUES (148,'dragonair',148,40,165,147,1);

INSERT INTO pokemon VALUES (149,'dragonite',149,22,2100,270,1);

INSERT INTO pokemon VALUES (150,'mewtwo',150,20,1220,306,1);

INSERT INTO pokemon VALUES (151,'mew',151,4,40,270,1);

INSERT INTO pokemon VALUES (152,'chikorita',152,9,64,64,1);

INSERT INTO pokemon VALUES (153,'bayleef',153,12,158,142,1);

INSERT INTO pokemon VALUES (154,'meganium',154,18,1005,236,1);

INSERT INTO pokemon VALUES (155,'cyndaquil',155,5,79,62,1);

INSERT INTO pokemon VALUES (156,'quilava',156,9,190,142,1);

INSERT INTO pokemon VALUES (157,'typhlosion',157,17,795,240,1);

INSERT INTO pokemon VALUES (158,'totodile',158,6,95,63,1);

INSERT INTO pokemon VALUES (159,'croconaw',159,11,250,142,1);

INSERT INTO pokemon VALUES (160,'feraligatr',160,23,888,239,1);

INSERT INTO pokemon VALUES (161,'sentret',161,8,60,43,1);

INSERT INTO pokemon VALUES (162,'furret',162,18,325,145,1);

INSERT INTO pokemon VALUES (163,'hoothoot',163,7,212,52,1);

INSERT INTO pokemon VALUES (164,'noctowl',164,16,408,155,1);

INSERT INTO pokemon VALUES (165,'ledyba',165,10,108,53,1);

INSERT INTO pokemon VALUES (166,'ledian',166,14,356,137,1);

INSERT INTO pokemon VALUES (167,'spinarak',167,5,85,50,1);

INSERT INTO pokemon VALUES (168,'ariados',168,11,335,137,1);

INSERT INTO pokemon VALUES (169,'crobat',169,18,750,241,1);

INSERT INTO pokemon VALUES (170,'chinchou',170,5,120,66,1);

INSERT INTO pokemon VALUES (171,'lanturn',171,12,225,161,1);

INSERT INTO pokemon VALUES (172,'pichu',172,3,20,41,1);

INSERT INTO pokemon VALUES (173,'cleffa',173,3,30,44,1);

INSERT INTO pokemon VALUES (174,'igglybuff',174,3,10,42,1);

INSERT INTO pokemon VALUES (175,'togepi',175,3,15,49,1);

INSERT INTO pokemon VALUES (176,'togetic',176,6,32,142,1);

INSERT INTO pokemon VALUES (177,'natu',177,2,20,64,1);

INSERT INTO pokemon VALUES (178,'xatu',178,15,150,165,1);

INSERT INTO pokemon VALUES (179,'mareep',179,6,78,56,1);

INSERT INTO pokemon VALUES (180,'flaaffy',180,8,133,128,1);

INSERT INTO pokemon VALUES (181,'ampharos',181,14,615,230,1);

INSERT INTO pokemon VALUES (182,'bellossom',182,4,58,221,1);

INSERT INTO pokemon VALUES (183,'marill',183,4,85,88,1);

INSERT INTO pokemon VALUES (184,'azumarill',184,8,285,189,1);

INSERT INTO pokemon VALUES (185,'sudowoodo',185,12,380,144,1);

INSERT INTO pokemon VALUES (186,'politoed',186,11,339,225,1);

INSERT INTO pokemon VALUES (187,'hoppip',187,4,5,50,1);

INSERT INTO pokemon VALUES (188,'skiploom',188,6,10,119,1);

INSERT INTO pokemon VALUES (189,'jumpluff',189,8,30,207,1);

INSERT INTO pokemon VALUES (190,'aipom',190,8,115,72,1);

INSERT INTO pokemon VALUES (191,'sunkern',191,3,18,36,1);

INSERT INTO pokemon VALUES (192,'sunflora',192,8,85,149,1);

INSERT INTO pokemon VALUES (193,'yanma',193,12,380,78,1);

INSERT INTO pokemon VALUES (194,'wooper',194,4,85,42,1);

INSERT INTO pokemon VALUES (195,'quagsire',195,14,750,151,1);

INSERT INTO pokemon VALUES (196,'espeon',196,9,265,184,1);

INSERT INTO pokemon VALUES (197,'umbreon',197,10,270,184,1);

INSERT INTO pokemon VALUES (198,'murkrow',198,5,21,81,1);

INSERT INTO pokemon VALUES (199,'slowking',199,20,795,172,1);

INSERT INTO pokemon VALUES (200,'misdreavus',200,7,10,87,1);

INSERT INTO pokemon VALUES (201,'unown',201,5,50,118,1);

INSERT INTO pokemon VALUES (202,'wobbuffet',202,13,285,142,1);

INSERT INTO pokemon VALUES (203,'girafarig',203,15,415,159,1);

INSERT INTO pokemon VALUES (204,'pineco',204,6,72,58,1);

INSERT INTO pokemon VALUES (205,'forretress',205,12,1258,163,1);

INSERT INTO pokemon VALUES (206,'dunsparce',206,15,140,145,1);

INSERT INTO pokemon VALUES (207,'gligar',207,11,648,86,1);

INSERT INTO pokemon VALUES (208,'steelix',208,92,4000,179,1);

INSERT INTO pokemon VALUES (209,'snubbull',209,6,78,60,1);

INSERT INTO pokemon VALUES (210,'granbull',210,14,487,158,1);

INSERT INTO pokemon VALUES (211,'qwilfish',211,5,39,86,1);

INSERT INTO pokemon VALUES (212,'scizor',212,18,1180,175,1);

INSERT INTO pokemon VALUES (213,'shuckle',213,6,205,177,1);

INSERT INTO pokemon VALUES (214,'heracross',214,15,540,175,1);

INSERT INTO pokemon VALUES (215,'sneasel',215,9,280,86,1);

INSERT INTO pokemon VALUES (216,'teddiursa',216,6,88,66,1);

INSERT INTO pokemon VALUES (217,'ursaring',217,18,1258,175,1);

INSERT INTO pokemon VALUES (218,'slugma',218,7,350,50,1);

INSERT INTO pokemon VALUES (219,'magcargo',219,8,550,144,1);

INSERT INTO pokemon VALUES (220,'swinub',220,4,65,50,1);

INSERT INTO pokemon VALUES (221,'piloswine',221,11,558,158,1);

INSERT INTO pokemon VALUES (222,'corsola',222,6,50,133,1);

INSERT INTO pokemon VALUES (223,'remoraid',223,6,120,60,1);

INSERT INTO pokemon VALUES (224,'octillery',224,9,285,168,1);

INSERT INTO pokemon VALUES (225,'delibird',225,9,160,116,1);

INSERT INTO pokemon VALUES (226,'mantine',226,21,2200,163,1);

INSERT INTO pokemon VALUES (227,'skarmory',227,17,505,163,1);

INSERT INTO pokemon VALUES (228,'houndour',228,6,108,66,1);

INSERT INTO pokemon VALUES (229,'houndoom',229,14,350,175,1);

INSERT INTO pokemon VALUES (230,'kingdra',230,18,1520,243,1);

INSERT INTO pokemon VALUES (231,'phanpy',231,5,335,66,1);

INSERT INTO pokemon VALUES (232,'donphan',232,11,1200,175,1);

INSERT INTO pokemon VALUES (233,'porygon2',233,6,325,180,1);

INSERT INTO pokemon VALUES (234,'stantler',234,14,712,163,1);

INSERT INTO pokemon VALUES (235,'smeargle',235,12,580,88,1);

INSERT INTO pokemon VALUES (236,'tyrogue',236,7,210,42,1);

INSERT INTO pokemon VALUES (237,'hitmontop',237,14,480,159,1);

INSERT INTO pokemon VALUES (238,'smoochum',238,4,60,61,1);

INSERT INTO pokemon VALUES (239,'elekid',239,6,235,72,1);

INSERT INTO pokemon VALUES (240,'magby',240,7,214,73,1);

INSERT INTO pokemon VALUES (241,'miltank',241,12,755,172,1);

INSERT INTO pokemon VALUES (242,'blissey',242,15,468,608,1);

INSERT INTO pokemon VALUES (243,'raikou',243,19,1780,261,1);

INSERT INTO pokemon VALUES (244,'entei',244,21,1980,261,1);

INSERT INTO pokemon VALUES (245,'suicune',245,20,1870,261,1);

INSERT INTO pokemon VALUES (246,'larvitar',246,6,720,60,1);

INSERT INTO pokemon VALUES (247,'pupitar',247,12,1520,144,1);

INSERT INTO pokemon VALUES (248,'tyranitar',248,20,2020,270,1);

INSERT INTO pokemon VALUES (249,'lugia',249,52,2160,306,1);

INSERT INTO pokemon VALUES (250,'ho-oh',250,38,1990,306,1);

INSERT INTO pokemon VALUES (251,'celebi',251,6,50,270,1);

INSERT INTO pokemon VALUES (252,'treecko',252,5,50,62,1);

INSERT INTO pokemon VALUES (253,'grovyle',253,9,216,142,1);

INSERT INTO pokemon VALUES (254,'sceptile',254,17,522,239,1);

INSERT INTO pokemon VALUES (255,'torchic',255,4,25,62,1);

INSERT INTO pokemon VALUES (256,'combusken',256,9,195,142,1);

INSERT INTO pokemon VALUES (257,'blaziken',257,19,520,239,1);

INSERT INTO pokemon VALUES (258,'mudkip',258,4,76,62,1);

INSERT INTO pokemon VALUES (259,'marshtomp',259,7,280,142,1);

INSERT INTO pokemon VALUES (260,'swampert',260,15,819,241,1);

INSERT INTO pokemon VALUES (261,'poochyena',261,5,136,44,1);

INSERT INTO pokemon VALUES (262,'mightyena',262,10,370,147,1);

INSERT INTO pokemon VALUES (263,'zigzagoon',263,4,175,48,1);

INSERT INTO pokemon VALUES (264,'linoone',264,5,325,147,1);

INSERT INTO pokemon VALUES (265,'wurmple',265,3,36,39,1);

INSERT INTO pokemon VALUES (266,'silcoon',266,6,100,72,1);

INSERT INTO pokemon VALUES (267,'beautifly',267,10,284,178,1);

INSERT INTO pokemon VALUES (268,'cascoon',268,7,115,41,1);

INSERT INTO pokemon VALUES (269,'dustox',269,12,316,135,1);

INSERT INTO pokemon VALUES (270,'lotad',270,5,26,44,1);

INSERT INTO pokemon VALUES (271,'lombre',271,12,325,119,1);

INSERT INTO pokemon VALUES (272,'ludicolo',272,15,550,216,1);

INSERT INTO pokemon VALUES (273,'seedot',273,5,40,44,1);

INSERT INTO pokemon VALUES (274,'nuzleaf',274,10,280,119,1);

INSERT INTO pokemon VALUES (275,'shiftry',275,13,596,216,1);

INSERT INTO pokemon VALUES (276,'taillow',276,3,23,54,1);

INSERT INTO pokemon VALUES (277,'swellow',277,7,198,151,1);

INSERT INTO pokemon VALUES (278,'wingull',278,6,95,54,1);

INSERT INTO pokemon VALUES (279,'pelipper',279,12,280,151,1);

INSERT INTO pokemon VALUES (280,'ralts',280,4,66,40,1);

INSERT INTO pokemon VALUES (281,'kirlia',281,8,202,97,1);

INSERT INTO pokemon VALUES (282,'gardevoir',282,16,484,233,1);

INSERT INTO pokemon VALUES (283,'surskit',283,5,17,54,1);

INSERT INTO pokemon VALUES (284,'masquerain',284,8,36,145,1);

INSERT INTO pokemon VALUES (285,'shroomish',285,4,45,59,1);

INSERT INTO pokemon VALUES (286,'breloom',286,12,392,161,1);

INSERT INTO pokemon VALUES (287,'slakoth',287,8,240,56,1);

INSERT INTO pokemon VALUES (288,'vigoroth',288,14,465,154,1);

INSERT INTO pokemon VALUES (289,'slaking',289,20,1305,252,1);

INSERT INTO pokemon VALUES (290,'nincada',290,5,55,53,1);

INSERT INTO pokemon VALUES (291,'ninjask',291,8,120,160,1);

INSERT INTO pokemon VALUES (292,'shedinja',292,8,12,83,1);

INSERT INTO pokemon VALUES (293,'whismur',293,6,163,48,1);

INSERT INTO pokemon VALUES (294,'loudred',294,10,405,126,1);

INSERT INTO pokemon VALUES (295,'exploud',295,15,840,221,1);

INSERT INTO pokemon VALUES (296,'makuhita',296,10,864,47,1);

INSERT INTO pokemon VALUES (297,'hariyama',297,23,2538,166,1);

INSERT INTO pokemon VALUES (298,'azurill',298,2,20,38,1);

INSERT INTO pokemon VALUES (299,'nosepass',299,10,970,75,1);

INSERT INTO pokemon VALUES (300,'skitty',300,6,110,52,1);

INSERT INTO pokemon VALUES (301,'delcatty',301,11,326,133,1);

INSERT INTO pokemon VALUES (302,'sableye',302,5,110,133,1);

INSERT INTO pokemon VALUES (303,'mawile',303,6,115,133,1);

INSERT INTO pokemon VALUES (304,'aron',304,4,600,66,1);

INSERT INTO pokemon VALUES (305,'lairon',305,9,1200,151,1);

INSERT INTO pokemon VALUES (306,'aggron',306,21,3600,239,1);

INSERT INTO pokemon VALUES (307,'meditite',307,6,112,56,1);

INSERT INTO pokemon VALUES (308,'medicham',308,13,315,144,1);

INSERT INTO pokemon VALUES (309,'electrike',309,6,152,59,1);

INSERT INTO pokemon VALUES (310,'manectric',310,15,402,166,1);

INSERT INTO pokemon VALUES (311,'plusle',311,4,42,142,1);

INSERT INTO pokemon VALUES (312,'minun',312,4,42,142,1);

INSERT INTO pokemon VALUES (313,'volbeat',313,7,177,140,1);

INSERT INTO pokemon VALUES (314,'illumise',314,6,177,140,1);

INSERT INTO pokemon VALUES (315,'roselia',315,3,20,140,1);

INSERT INTO pokemon VALUES (316,'gulpin',316,4,103,60,1);

INSERT INTO pokemon VALUES (317,'swalot',317,17,800,163,1);

INSERT INTO pokemon VALUES (318,'carvanha',318,8,208,61,1);

INSERT INTO pokemon VALUES (319,'sharpedo',319,18,888,161,1);

INSERT INTO pokemon VALUES (320,'wailmer',320,20,1300,80,1);

INSERT INTO pokemon VALUES (321,'wailord',321,145,3980,175,1);

INSERT INTO pokemon VALUES (322,'numel',322,7,240,61,1);

INSERT INTO pokemon VALUES (323,'camerupt',323,19,2200,161,1);

INSERT INTO pokemon VALUES (324,'torkoal',324,5,804,165,1);

INSERT INTO pokemon VALUES (325,'spoink',325,7,306,66,1);

INSERT INTO pokemon VALUES (326,'grumpig',326,9,715,165,1);

INSERT INTO pokemon VALUES (327,'spinda',327,11,50,126,1);

INSERT INTO pokemon VALUES (328,'trapinch',328,7,150,58,1);

INSERT INTO pokemon VALUES (329,'vibrava',329,11,153,119,1);

INSERT INTO pokemon VALUES (330,'flygon',330,20,820,234,1);

INSERT INTO pokemon VALUES (331,'cacnea',331,4,513,67,1);

INSERT INTO pokemon VALUES (332,'cacturne',332,13,774,166,1);

INSERT INTO pokemon VALUES (333,'swablu',333,4,12,62,1);

INSERT INTO pokemon VALUES (334,'altaria',334,11,206,172,1);

INSERT INTO pokemon VALUES (335,'zangoose',335,13,403,160,1);

INSERT INTO pokemon VALUES (336,'seviper',336,27,525,160,1);

INSERT INTO pokemon VALUES (337,'lunatone',337,10,1680,154,1);

INSERT INTO pokemon VALUES (338,'solrock',338,12,1540,154,1);

INSERT INTO pokemon VALUES (339,'barboach',339,4,19,58,1);

INSERT INTO pokemon VALUES (340,'whiscash',340,9,236,164,1);

INSERT INTO pokemon VALUES (341,'corphish',341,6,115,62,1);

INSERT INTO pokemon VALUES (342,'crawdaunt',342,11,328,164,1);

INSERT INTO pokemon VALUES (343,'baltoy',343,5,215,60,1);

INSERT INTO pokemon VALUES (344,'claydol',344,15,1080,175,1);

INSERT INTO pokemon VALUES (345,'lileep',345,10,238,71,1);

INSERT INTO pokemon VALUES (346,'cradily',346,15,604,173,1);

INSERT INTO pokemon VALUES (347,'anorith',347,7,125,71,1);

INSERT INTO pokemon VALUES (348,'armaldo',348,15,682,173,1);

INSERT INTO pokemon VALUES (349,'feebas',349,6,74,40,1);

INSERT INTO pokemon VALUES (350,'milotic',350,62,1620,189,1);

INSERT INTO pokemon VALUES (351,'castform',351,3,8,147,1);

INSERT INTO pokemon VALUES (352,'kecleon',352,10,220,154,1);

INSERT INTO pokemon VALUES (353,'shuppet',353,6,23,59,1);

INSERT INTO pokemon VALUES (354,'banette',354,11,125,159,1);

INSERT INTO pokemon VALUES (355,'duskull',355,8,150,59,1);

INSERT INTO pokemon VALUES (356,'dusclops',356,16,306,159,1);

INSERT INTO pokemon VALUES (357,'tropius',357,20,1000,161,1);

INSERT INTO pokemon VALUES (358,'chimecho',358,6,10,149,1);

INSERT INTO pokemon VALUES (359,'absol',359,12,470,163,1);

INSERT INTO pokemon VALUES (360,'wynaut',360,6,140,52,1);

INSERT INTO pokemon VALUES (361,'snorunt',361,7,168,60,1);

INSERT INTO pokemon VALUES (362,'glalie',362,15,2565,168,1);

INSERT INTO pokemon VALUES (363,'spheal',363,8,395,58,1);

INSERT INTO pokemon VALUES (364,'sealeo',364,11,876,144,1);

INSERT INTO pokemon VALUES (365,'walrein',365,14,1506,239,1);

INSERT INTO pokemon VALUES (366,'clamperl',366,4,525,69,1);

INSERT INTO pokemon VALUES (367,'huntail',367,17,270,170,1);

INSERT INTO pokemon VALUES (368,'gorebyss',368,18,226,170,1);

INSERT INTO pokemon VALUES (369,'relicanth',369,10,234,170,1);

INSERT INTO pokemon VALUES (370,'luvdisc',370,6,87,116,1);

INSERT INTO pokemon VALUES (371,'bagon',371,6,421,60,1);

INSERT INTO pokemon VALUES (372,'shelgon',372,11,1105,147,1);

INSERT INTO pokemon VALUES (373,'salamence',373,15,1026,270,1);

INSERT INTO pokemon VALUES (374,'beldum',374,6,952,60,1);

INSERT INTO pokemon VALUES (375,'metang',375,12,2025,147,1);

INSERT INTO pokemon VALUES (376,'metagross',376,16,5500,270,1);

INSERT INTO pokemon VALUES (377,'regirock',377,17,2300,261,1);

INSERT INTO pokemon VALUES (378,'regice',378,18,1750,261,1);

INSERT INTO pokemon VALUES (379,'registeel',379,19,2050,261,1);

INSERT INTO pokemon VALUES (380,'latias',380,14,400,270,1);

INSERT INTO pokemon VALUES (381,'latios',381,20,600,270,1);

INSERT INTO pokemon VALUES (382,'kyogre',382,45,3520,302,1);

INSERT INTO pokemon VALUES (383,'groudon',383,35,9500,302,1);

INSERT INTO pokemon VALUES (384,'rayquaza',384,70,2065,306,1);

INSERT INTO pokemon VALUES (385,'jirachi',385,3,11,270,1);

INSERT INTO pokemon VALUES (386,'deoxys-normal',386,17,608,270,1);

INSERT INTO pokemon VALUES (387,'turtwig',387,4,102,64,1);

INSERT INTO pokemon VALUES (388,'grotle',388,11,970,142,1);

INSERT INTO pokemon VALUES (389,'torterra',389,22,3100,236,1);

INSERT INTO pokemon VALUES (390,'chimchar',390,5,62,62,1);

INSERT INTO pokemon VALUES (391,'monferno',391,9,220,142,1);

INSERT INTO pokemon VALUES (392,'infernape',392,12,550,240,1);

INSERT INTO pokemon VALUES (393,'piplup',393,4,52,63,1);

INSERT INTO pokemon VALUES (394,'prinplup',394,8,230,142,1);

INSERT INTO pokemon VALUES (395,'empoleon',395,17,845,239,1);

INSERT INTO pokemon VALUES (396,'starly',396,3,20,49,1);

INSERT INTO pokemon VALUES (397,'staravia',397,6,155,119,1);

INSERT INTO pokemon VALUES (398,'staraptor',398,12,249,218,1);

INSERT INTO pokemon VALUES (399,'bidoof',399,5,200,50,1);

INSERT INTO pokemon VALUES (400,'bibarel',400,10,315,144,1);

INSERT INTO pokemon VALUES (401,'kricketot',401,3,22,39,1);

INSERT INTO pokemon VALUES (402,'kricketune',402,10,255,134,1);

INSERT INTO pokemon VALUES (403,'shinx',403,5,95,53,1);

INSERT INTO pokemon VALUES (404,'luxio',404,9,305,127,1);

INSERT INTO pokemon VALUES (405,'luxray',405,14,420,235,1);

INSERT INTO pokemon VALUES (406,'budew',406,2,12,56,1);

INSERT INTO pokemon VALUES (407,'roserade',407,9,145,232,1);

INSERT INTO pokemon VALUES (408,'cranidos',408,9,315,70,1);

INSERT INTO pokemon VALUES (409,'rampardos',409,16,1025,173,1);

INSERT INTO pokemon VALUES (410,'shieldon',410,5,570,70,1);

INSERT INTO pokemon VALUES (411,'bastiodon',411,13,1495,173,1);

INSERT INTO pokemon VALUES (412,'burmy',412,2,34,45,1);

INSERT INTO pokemon VALUES (413,'wormadam-plant',413,5,65,148,1);

INSERT INTO pokemon VALUES (414,'mothim',414,9,233,148,1);

INSERT INTO pokemon VALUES (415,'combee',415,3,55,49,1);

INSERT INTO pokemon VALUES (416,'vespiquen',416,12,385,166,1);

INSERT INTO pokemon VALUES (417,'pachirisu',417,4,39,142,1);

INSERT INTO pokemon VALUES (418,'buizel',418,7,295,66,1);

INSERT INTO pokemon VALUES (419,'floatzel',419,11,335,173,1);

INSERT INTO pokemon VALUES (420,'cherubi',420,4,33,55,1);

INSERT INTO pokemon VALUES (421,'cherrim',421,5,93,158,1);

INSERT INTO pokemon VALUES (422,'shellos',422,3,63,65,1);

INSERT INTO pokemon VALUES (423,'gastrodon',423,9,299,166,1);

INSERT INTO pokemon VALUES (424,'ambipom',424,12,203,169,1);

INSERT INTO pokemon VALUES (425,'drifloon',425,4,12,70,1);

INSERT INTO pokemon VALUES (426,'drifblim',426,12,150,174,1);

INSERT INTO pokemon VALUES (427,'buneary',427,4,55,70,1);

INSERT INTO pokemon VALUES (428,'lopunny',428,12,333,168,1);

INSERT INTO pokemon VALUES (429,'mismagius',429,9,44,173,1);

INSERT INTO pokemon VALUES (430,'honchkrow',430,9,273,177,1);

INSERT INTO pokemon VALUES (431,'glameow',431,5,39,62,1);

INSERT INTO pokemon VALUES (432,'purugly',432,10,438,158,1);

INSERT INTO pokemon VALUES (433,'chingling',433,2,6,57,1);

INSERT INTO pokemon VALUES (434,'stunky',434,4,192,66,1);

INSERT INTO pokemon VALUES (435,'skuntank',435,10,380,168,1);

INSERT INTO pokemon VALUES (436,'bronzor',436,5,605,60,1);

INSERT INTO pokemon VALUES (437,'bronzong',437,13,1870,175,1);

INSERT INTO pokemon VALUES (438,'bonsly',438,5,150,58,1);

INSERT INTO pokemon VALUES (439,'mime-jr',439,6,130,62,1);

INSERT INTO pokemon VALUES (440,'happiny',440,6,244,110,1);

INSERT INTO pokemon VALUES (441,'chatot',441,5,19,144,1);

INSERT INTO pokemon VALUES (442,'spiritomb',442,10,1080,170,1);

INSERT INTO pokemon VALUES (443,'gible',443,7,205,60,1);

INSERT INTO pokemon VALUES (444,'gabite',444,14,560,144,1);

INSERT INTO pokemon VALUES (445,'garchomp',445,19,950,270,1);

INSERT INTO pokemon VALUES (446,'munchlax',446,6,1050,78,1);

INSERT INTO pokemon VALUES (447,'riolu',447,7,202,57,1);

INSERT INTO pokemon VALUES (448,'lucario',448,12,540,184,1);

INSERT INTO pokemon VALUES (449,'hippopotas',449,8,495,66,1);

INSERT INTO pokemon VALUES (450,'hippowdon',450,20,3000,184,1);

INSERT INTO pokemon VALUES (451,'skorupi',451,8,120,66,1);

INSERT INTO pokemon VALUES (452,'drapion',452,13,615,175,1);

INSERT INTO pokemon VALUES (453,'croagunk',453,7,230,60,1);

INSERT INTO pokemon VALUES (454,'toxicroak',454,13,444,172,1);

INSERT INTO pokemon VALUES (455,'carnivine',455,14,270,159,1);

INSERT INTO pokemon VALUES (456,'finneon',456,4,70,66,1);

INSERT INTO pokemon VALUES (457,'lumineon',457,12,240,161,1);

INSERT INTO pokemon VALUES (458,'mantyke',458,10,650,69,1);

INSERT INTO pokemon VALUES (459,'snover',459,10,505,67,1);

INSERT INTO pokemon VALUES (460,'abomasnow',460,22,1355,173,1);

INSERT INTO pokemon VALUES (461,'weavile',461,11,340,179,1);

INSERT INTO pokemon VALUES (462,'magnezone',462,12,1800,241,1);

INSERT INTO pokemon VALUES (463,'lickilicky',463,17,1400,180,1);

INSERT INTO pokemon VALUES (464,'rhyperior',464,24,2828,241,1);

INSERT INTO pokemon VALUES (465,'tangrowth',465,20,1286,187,1);

INSERT INTO pokemon VALUES (466,'electivire',466,18,1386,243,1);

INSERT INTO pokemon VALUES (467,'magmortar',467,16,680,243,1);

INSERT INTO pokemon VALUES (468,'togekiss',468,15,380,245,1);

INSERT INTO pokemon VALUES (469,'yanmega',469,19,515,180,1);

INSERT INTO pokemon VALUES (470,'leafeon',470,10,255,184,1);

INSERT INTO pokemon VALUES (471,'glaceon',471,8,259,184,1);

INSERT INTO pokemon VALUES (472,'gliscor',472,20,425,179,1);

INSERT INTO pokemon VALUES (473,'mamoswine',473,25,2910,239,1);

INSERT INTO pokemon VALUES (474,'porygon-z',474,9,340,241,1);

INSERT INTO pokemon VALUES (475,'gallade',475,16,520,233,1);

INSERT INTO pokemon VALUES (476,'probopass',476,14,3400,184,1);

INSERT INTO pokemon VALUES (477,'dusknoir',477,22,1066,236,1);

INSERT INTO pokemon VALUES (478,'froslass',478,13,266,168,1);

INSERT INTO pokemon VALUES (479,'rotom',479,3,3,154,1);

INSERT INTO pokemon VALUES (480,'uxie',480,3,3,261,1);

INSERT INTO pokemon VALUES (481,'mesprit',481,3,3,261,1);

INSERT INTO pokemon VALUES (482,'azelf',482,3,3,261,1);

INSERT INTO pokemon VALUES (483,'dialga',483,54,6830,306,1);

INSERT INTO pokemon VALUES (484,'palkia',484,42,3360,306,1);

INSERT INTO pokemon VALUES (485,'heatran',485,17,4300,270,1);

INSERT INTO pokemon VALUES (486,'regigigas',486,37,4200,302,1);

INSERT INTO pokemon VALUES (487,'giratina-altered',487,45,7500,306,1);

INSERT INTO pokemon VALUES (488,'cresselia',488,15,856,270,1);

INSERT INTO pokemon VALUES (489,'phione',489,4,31,216,1);

INSERT INTO pokemon VALUES (490,'manaphy',490,3,14,270,1);

INSERT INTO pokemon VALUES (491,'darkrai',491,15,505,270,1);

INSERT INTO pokemon VALUES (492,'shaymin-land',492,2,21,270,1);

INSERT INTO pokemon VALUES (493,'arceus',493,32,3200,324,1);

INSERT INTO pokemon VALUES (494,'victini',494,4,40,270,1);

INSERT INTO pokemon VALUES (495,'snivy',495,6,81,62,1);

INSERT INTO pokemon VALUES (496,'servine',496,8,160,145,1);

INSERT INTO pokemon VALUES (497,'serperior',497,33,630,238,1);

INSERT INTO pokemon VALUES (498,'tepig',498,5,99,62,1);

INSERT INTO pokemon VALUES (499,'pignite',499,10,555,146,1);

INSERT INTO pokemon VALUES (500,'emboar',500,16,1500,238,1);

INSERT INTO pokemon VALUES (501,'oshawott',501,5,59,62,1);

INSERT INTO pokemon VALUES (502,'dewott',502,8,245,145,1);

INSERT INTO pokemon VALUES (503,'samurott',503,15,946,238,1);

INSERT INTO pokemon VALUES (504,'patrat',504,5,116,51,1);

INSERT INTO pokemon VALUES (505,'watchog',505,11,270,147,1);

INSERT INTO pokemon VALUES (506,'lillipup',506,4,41,55,1);

INSERT INTO pokemon VALUES (507,'herdier',507,9,147,130,1);

INSERT INTO pokemon VALUES (508,'stoutland',508,12,610,225,1);

INSERT INTO pokemon VALUES (509,'purrloin',509,4,101,56,1);

INSERT INTO pokemon VALUES (510,'liepard',510,11,375,156,1);

INSERT INTO pokemon VALUES (511,'pansage',511,6,105,63,1);

INSERT INTO pokemon VALUES (512,'simisage',512,11,305,174,1);

INSERT INTO pokemon VALUES (513,'pansear',513,6,110,63,1);

INSERT INTO pokemon VALUES (514,'simisear',514,10,280,174,1);

INSERT INTO pokemon VALUES (515,'panpour',515,6,135,63,1);

INSERT INTO pokemon VALUES (516,'simipour',516,10,290,174,1);

INSERT INTO pokemon VALUES (517,'munna',517,6,233,58,1);

INSERT INTO pokemon VALUES (518,'musharna',518,11,605,170,1);

INSERT INTO pokemon VALUES (519,'pidove',519,3,21,53,1);

INSERT INTO pokemon VALUES (520,'tranquill',520,6,150,125,1);

INSERT INTO pokemon VALUES (521,'unfezant',521,12,290,220,1);

INSERT INTO pokemon VALUES (522,'blitzle',522,8,298,59,1);

INSERT INTO pokemon VALUES (523,'zebstrika',523,16,795,174,1);

INSERT INTO pokemon VALUES (524,'roggenrola',524,4,180,56,1);

INSERT INTO pokemon VALUES (525,'boldore',525,9,1020,137,1);

INSERT INTO pokemon VALUES (526,'gigalith',526,17,2600,232,1);

INSERT INTO pokemon VALUES (527,'woobat',527,4,21,63,1);

INSERT INTO pokemon VALUES (528,'swoobat',528,9,105,149,1);

INSERT INTO pokemon VALUES (529,'drilbur',529,3,85,66,1);

INSERT INTO pokemon VALUES (530,'excadrill',530,7,404,178,1);

INSERT INTO pokemon VALUES (531,'audino',531,11,310,390,1);

INSERT INTO pokemon VALUES (532,'timburr',532,6,125,61,1);

INSERT INTO pokemon VALUES (533,'gurdurr',533,12,400,142,1);

INSERT INTO pokemon VALUES (534,'conkeldurr',534,14,870,227,1);

INSERT INTO pokemon VALUES (535,'tympole',535,5,45,59,1);

INSERT INTO pokemon VALUES (536,'palpitoad',536,8,170,134,1);

INSERT INTO pokemon VALUES (537,'seismitoad',537,15,620,229,1);

INSERT INTO pokemon VALUES (538,'throh',538,13,555,163,1);

INSERT INTO pokemon VALUES (539,'sawk',539,14,510,163,1);

INSERT INTO pokemon VALUES (540,'sewaddle',540,3,25,62,1);

INSERT INTO pokemon VALUES (541,'swadloon',541,5,73,133,1);

INSERT INTO pokemon VALUES (542,'leavanny',542,12,205,225,1);

INSERT INTO pokemon VALUES (543,'venipede',543,4,53,52,1);

INSERT INTO pokemon VALUES (544,'whirlipede',544,12,585,126,1);

INSERT INTO pokemon VALUES (545,'scolipede',545,25,2005,218,1);

INSERT INTO pokemon VALUES (546,'cottonee',546,3,6,56,1);

INSERT INTO pokemon VALUES (547,'whimsicott',547,7,66,168,1);

INSERT INTO pokemon VALUES (548,'petilil',548,5,66,56,1);

INSERT INTO pokemon VALUES (549,'lilligant',549,11,163,168,1);

INSERT INTO pokemon VALUES (550,'basculin-red-striped',550,10,180,161,1);

INSERT INTO pokemon VALUES (551,'sandile',551,7,152,58,1);

INSERT INTO pokemon VALUES (552,'krokorok',552,10,334,123,1);

INSERT INTO pokemon VALUES (553,'krookodile',553,15,963,234,1);

INSERT INTO pokemon VALUES (554,'darumaka',554,6,375,63,1);

INSERT INTO pokemon VALUES (555,'darmanitan-standard',555,13,929,168,1);

INSERT INTO pokemon VALUES (556,'maractus',556,10,280,161,1);

INSERT INTO pokemon VALUES (557,'dwebble',557,3,145,65,1);

INSERT INTO pokemon VALUES (558,'crustle',558,14,2000,166,1);

INSERT INTO pokemon VALUES (559,'scraggy',559,6,118,70,1);

INSERT INTO pokemon VALUES (560,'scrafty',560,11,300,171,1);

INSERT INTO pokemon VALUES (561,'sigilyph',561,14,140,172,1);

INSERT INTO pokemon VALUES (562,'yamask',562,5,15,61,1);

INSERT INTO pokemon VALUES (563,'cofagrigus',563,17,765,169,1);

INSERT INTO pokemon VALUES (564,'tirtouga',564,7,165,71,1);

INSERT INTO pokemon VALUES (565,'carracosta',565,12,810,173,1);

INSERT INTO pokemon VALUES (566,'archen',566,5,95,71,1);

INSERT INTO pokemon VALUES (567,'archeops',567,14,320,177,1);

INSERT INTO pokemon VALUES (568,'trubbish',568,6,310,66,1);

INSERT INTO pokemon VALUES (569,'garbodor',569,19,1073,166,1);

INSERT INTO pokemon VALUES (570,'zorua',570,7,125,66,1);

INSERT INTO pokemon VALUES (571,'zoroark',571,16,811,179,1);

INSERT INTO pokemon VALUES (572,'minccino',572,4,58,60,1);

INSERT INTO pokemon VALUES (573,'cinccino',573,5,75,165,1);

INSERT INTO pokemon VALUES (574,'gothita',574,4,58,58,1);

INSERT INTO pokemon VALUES (575,'gothorita',575,7,180,137,1);

INSERT INTO pokemon VALUES (576,'gothitelle',576,15,440,221,1);

INSERT INTO pokemon VALUES (577,'solosis',577,3,10,58,1);

INSERT INTO pokemon VALUES (578,'duosion',578,6,80,130,1);

INSERT INTO pokemon VALUES (579,'reuniclus',579,10,201,221,1);

INSERT INTO pokemon VALUES (580,'ducklett',580,5,55,61,1);

INSERT INTO pokemon VALUES (581,'swanna',581,13,242,166,1);

INSERT INTO pokemon VALUES (582,'vanillite',582,4,57,61,1);

INSERT INTO pokemon VALUES (583,'vanillish',583,11,410,138,1);

INSERT INTO pokemon VALUES (584,'vanilluxe',584,13,575,241,1);

INSERT INTO pokemon VALUES (585,'deerling',585,6,195,67,1);

INSERT INTO pokemon VALUES (586,'sawsbuck',586,19,925,166,1);

INSERT INTO pokemon VALUES (587,'emolga',587,4,50,150,1);

INSERT INTO pokemon VALUES (588,'karrablast',588,5,59,63,1);

INSERT INTO pokemon VALUES (589,'escavalier',589,10,330,173,1);

INSERT INTO pokemon VALUES (590,'foongus',590,2,10,59,1);

INSERT INTO pokemon VALUES (591,'amoonguss',591,6,105,162,1);

INSERT INTO pokemon VALUES (592,'frillish',592,12,330,67,1);

INSERT INTO pokemon VALUES (593,'jellicent',593,22,1350,168,1);

INSERT INTO pokemon VALUES (594,'alomomola',594,12,316,165,1);

INSERT INTO pokemon VALUES (595,'joltik',595,1,6,64,1);

INSERT INTO pokemon VALUES (596,'galvantula',596,8,143,165,1);

INSERT INTO pokemon VALUES (597,'ferroseed',597,6,188,61,1);

INSERT INTO pokemon VALUES (598,'ferrothorn',598,10,1100,171,1);

INSERT INTO pokemon VALUES (599,'klink',599,3,210,60,1);

INSERT INTO pokemon VALUES (600,'klang',600,6,510,154,1);

INSERT INTO pokemon VALUES (601,'klinklang',601,6,810,234,1);

INSERT INTO pokemon VALUES (602,'tynamo',602,2,3,55,1);

INSERT INTO pokemon VALUES (603,'eelektrik',603,12,220,142,1);

INSERT INTO pokemon VALUES (604,'eelektross',604,21,805,232,1);

INSERT INTO pokemon VALUES (605,'elgyem',605,5,90,67,1);

INSERT INTO pokemon VALUES (606,'beheeyem',606,10,345,170,1);

INSERT INTO pokemon VALUES (607,'litwick',607,3,31,55,1);

INSERT INTO pokemon VALUES (608,'lampent',608,6,130,130,1);

INSERT INTO pokemon VALUES (609,'chandelure',609,10,343,234,1);

INSERT INTO pokemon VALUES (610,'axew',610,6,180,64,1);

INSERT INTO pokemon VALUES (611,'fraxure',611,10,360,144,1);

INSERT INTO pokemon VALUES (612,'haxorus',612,18,1055,243,1);

INSERT INTO pokemon VALUES (613,'cubchoo',613,5,85,61,1);

INSERT INTO pokemon VALUES (614,'beartic',614,26,2600,170,1);

INSERT INTO pokemon VALUES (615,'cryogonal',615,11,1480,170,1);

INSERT INTO pokemon VALUES (616,'shelmet',616,4,77,61,1);

INSERT INTO pokemon VALUES (617,'accelgor',617,8,253,173,1);

INSERT INTO pokemon VALUES (618,'stunfisk',618,7,110,165,1);

INSERT INTO pokemon VALUES (619,'mienfoo',619,9,200,70,1);

INSERT INTO pokemon VALUES (620,'mienshao',620,14,355,179,1);

INSERT INTO pokemon VALUES (621,'druddigon',621,16,1390,170,1);

INSERT INTO pokemon VALUES (622,'golett',622,10,920,61,1);

INSERT INTO pokemon VALUES (623,'golurk',623,28,3300,169,1);

INSERT INTO pokemon VALUES (624,'pawniard',624,5,102,68,1);

INSERT INTO pokemon VALUES (625,'bisharp',625,16,700,172,1);

INSERT INTO pokemon VALUES (626,'bouffalant',626,16,946,172,1);

INSERT INTO pokemon VALUES (627,'rufflet',627,5,105,70,1);

INSERT INTO pokemon VALUES (628,'braviary',628,15,410,179,1);

INSERT INTO pokemon VALUES (629,'vullaby',629,5,90,74,1);

INSERT INTO pokemon VALUES (630,'mandibuzz',630,12,395,179,1);

INSERT INTO pokemon VALUES (631,'heatmor',631,14,580,169,1);

INSERT INTO pokemon VALUES (632,'durant',632,3,330,169,1);

INSERT INTO pokemon VALUES (633,'deino',633,8,173,60,1);

INSERT INTO pokemon VALUES (634,'zweilous',634,14,500,147,1);

INSERT INTO pokemon VALUES (635,'hydreigon',635,18,1600,270,1);

INSERT INTO pokemon VALUES (636,'larvesta',636,11,288,72,1);

INSERT INTO pokemon VALUES (637,'volcarona',637,16,460,248,1);

INSERT INTO pokemon VALUES (638,'cobalion',638,21,2500,261,1);

INSERT INTO pokemon VALUES (639,'terrakion',639,19,2600,261,1);

INSERT INTO pokemon VALUES (640,'virizion',640,20,2000,261,1);

INSERT INTO pokemon VALUES (641,'tornadus-incarnate',641,15,630,261,1);

INSERT INTO pokemon VALUES (642,'thundurus-incarnate',642,15,610,261,1);

INSERT INTO pokemon VALUES (643,'reshiram',643,32,3300,306,1);

INSERT INTO pokemon VALUES (644,'zekrom',644,29,3450,306,1);

INSERT INTO pokemon VALUES (645,'landorus-incarnate',645,15,680,270,1);

INSERT INTO pokemon VALUES (646,'kyurem',646,30,3250,297,1);

INSERT INTO pokemon VALUES (647,'keldeo-ordinary',647,14,485,261,1);

INSERT INTO pokemon VALUES (648,'meloetta-aria',648,6,65,270,1);

INSERT INTO pokemon VALUES (649,'genesect',649,15,825,270,1);

INSERT INTO pokemon VALUES (650,'chespin',650,4,90,63,1);

INSERT INTO pokemon VALUES (651,'quilladin',651,7,290,142,1);

INSERT INTO pokemon VALUES (652,'chesnaught',652,16,900,239,1);

INSERT INTO pokemon VALUES (653,'fennekin',653,4,94,61,1);

INSERT INTO pokemon VALUES (654,'braixen',654,10,145,143,1);

INSERT INTO pokemon VALUES (655,'delphox',655,15,390,240,1);

INSERT INTO pokemon VALUES (656,'froakie',656,3,70,63,1);

INSERT INTO pokemon VALUES (657,'frogadier',657,6,109,142,1);

INSERT INTO pokemon VALUES (658,'greninja',658,15,400,239,1);

INSERT INTO pokemon VALUES (659,'bunnelby',659,4,50,47,1);

INSERT INTO pokemon VALUES (660,'diggersby',660,10,424,148,1);

INSERT INTO pokemon VALUES (661,'fletchling',661,3,17,56,1);

INSERT INTO pokemon VALUES (662,'fletchinder',662,7,160,134,1);

INSERT INTO pokemon VALUES (663,'talonflame',663,12,245,175,1);

INSERT INTO pokemon VALUES (664,'scatterbug',664,3,25,40,1);

INSERT INTO pokemon VALUES (665,'spewpa',665,3,84,75,1);

INSERT INTO pokemon VALUES (666,'vivillon',666,12,170,185,1);

INSERT INTO pokemon VALUES (667,'litleo',667,6,135,74,1);

INSERT INTO pokemon VALUES (668,'pyroar',668,15,815,177,1);

INSERT INTO pokemon VALUES (669,'flabebe',669,1,1,61,1);

INSERT INTO pokemon VALUES (670,'floette',670,2,9,130,1);

INSERT INTO pokemon VALUES (671,'florges',671,11,100,248,1);

INSERT INTO pokemon VALUES (672,'skiddo',672,9,310,70,1);

INSERT INTO pokemon VALUES (673,'gogoat',673,17,910,186,1);

INSERT INTO pokemon VALUES (674,'pancham',674,6,80,70,1);

INSERT INTO pokemon VALUES (675,'pangoro',675,21,1360,173,1);

INSERT INTO pokemon VALUES (676,'furfrou',676,12,280,165,1);

INSERT INTO pokemon VALUES (677,'espurr',677,3,35,71,1);

INSERT INTO pokemon VALUES (678,'meowstic-male',678,6,85,163,1);

INSERT INTO pokemon VALUES (679,'honedge',679,8,20,65,1);

INSERT INTO pokemon VALUES (680,'doublade',680,8,45,157,1);

INSERT INTO pokemon VALUES (681,'aegislash-shield',681,17,530,234,1);

INSERT INTO pokemon VALUES (682,'spritzee',682,2,5,68,1);

INSERT INTO pokemon VALUES (683,'aromatisse',683,8,155,162,1);

INSERT INTO pokemon VALUES (684,'swirlix',684,4,35,68,1);

INSERT INTO pokemon VALUES (685,'slurpuff',685,8,50,168,1);

INSERT INTO pokemon VALUES (686,'inkay',686,4,35,58,1);

INSERT INTO pokemon VALUES (687,'malamar',687,15,470,169,1);

INSERT INTO pokemon VALUES (688,'binacle',688,5,310,61,1);

INSERT INTO pokemon VALUES (689,'barbaracle',689,13,960,175,1);

INSERT INTO pokemon VALUES (690,'skrelp',690,5,73,64,1);

INSERT INTO pokemon VALUES (691,'dragalge',691,18,815,173,1);

INSERT INTO pokemon VALUES (692,'clauncher',692,5,83,66,1);

INSERT INTO pokemon VALUES (693,'clawitzer',693,13,353,100,1);

INSERT INTO pokemon VALUES (694,'helioptile',694,5,60,58,1);

INSERT INTO pokemon VALUES (695,'heliolisk',695,10,210,168,1);

INSERT INTO pokemon VALUES (696,'tyrunt',696,8,260,72,1);

INSERT INTO pokemon VALUES (697,'tyrantrum',697,25,2700,182,1);

INSERT INTO pokemon VALUES (698,'amaura',698,13,252,72,1);

INSERT INTO pokemon VALUES (699,'aurorus',699,27,2250,104,1);

INSERT INTO pokemon VALUES (700,'sylveon',700,10,235,184,1);

INSERT INTO pokemon VALUES (701,'hawlucha',701,8,215,175,1);

INSERT INTO pokemon VALUES (702,'dedenne',702,2,22,151,1);

INSERT INTO pokemon VALUES (703,'carbink',703,3,57,100,1);

INSERT INTO pokemon VALUES (704,'goomy',704,3,28,60,1);

INSERT INTO pokemon VALUES (705,'sliggoo',705,8,175,158,1);

INSERT INTO pokemon VALUES (706,'goodra',706,20,1505,270,1);

INSERT INTO pokemon VALUES (707,'klefki',707,2,30,165,1);

INSERT INTO pokemon VALUES (708,'phantump',708,4,70,62,1);

INSERT INTO pokemon VALUES (709,'trevenant',709,15,710,166,1);

INSERT INTO pokemon VALUES (710,'pumpkaboo-average',710,4,50,67,1);

INSERT INTO pokemon VALUES (711,'gourgeist-average',711,9,125,173,1);

INSERT INTO pokemon VALUES (712,'bergmite',712,10,995,61,1);

INSERT INTO pokemon VALUES (713,'avalugg',713,20,5050,180,1);

INSERT INTO pokemon VALUES (714,'noibat',714,5,80,49,1);

INSERT INTO pokemon VALUES (715,'noivern',715,15,850,187,1);

INSERT INTO pokemon VALUES (716,'xerneas',716,30,2150,306,1);

INSERT INTO pokemon VALUES (717,'yveltal',717,58,2030,306,1);

INSERT INTO pokemon VALUES (718,'zygarde',718,50,3050,270,1);

INSERT INTO pokemon VALUES (719,'diancie',719,7,88,270,1);

INSERT INTO pokemon VALUES (720,'hoopa',720,5,90,270,1);

INSERT INTO pokemon VALUES (721,'volcanion',721,17,1950,270,1);

INSERT INTO pokemon VALUES (10001,'deoxys-attack',386,17,608,270,0);

INSERT INTO pokemon VALUES (10002,'deoxys-defense',386,17,608,270,0);

INSERT INTO pokemon VALUES (10003,'deoxys-speed',386,17,608,270,0);

INSERT INTO pokemon VALUES (10004,'wormadam-sandy',413,5,65,148,0);

INSERT INTO pokemon VALUES (10005,'wormadam-trash',413,5,65,148,0);

INSERT INTO pokemon VALUES (10006,'shaymin-sky',492,4,52,270,0);

INSERT INTO pokemon VALUES (10007,'giratina-origin',487,69,6500,306,0);

INSERT INTO pokemon VALUES (10008,'rotom-heat',479,3,3,182,0);

INSERT INTO pokemon VALUES (10009,'rotom-wash',479,3,3,182,0);

INSERT INTO pokemon VALUES (10010,'rotom-frost',479,3,3,182,0);

INSERT INTO pokemon VALUES (10011,'rotom-fan',479,3,3,182,0);

INSERT INTO pokemon VALUES (10012,'rotom-mow',479,3,3,182,0);

INSERT INTO pokemon VALUES (10013,'castform-sunny',351,3,8,147,0);

INSERT INTO pokemon VALUES (10014,'castform-rainy',351,3,8,147,0);

INSERT INTO pokemon VALUES (10015,'castform-snowy',351,3,8,147,0);

INSERT INTO pokemon VALUES (10016,'basculin-blue-striped',550,10,180,161,0);

INSERT INTO pokemon VALUES (10017,'darmanitan-zen',555,13,929,189,0);

INSERT INTO pokemon VALUES (10018,'meloetta-pirouette',648,6,65,270,0);

INSERT INTO pokemon VALUES (10019,'tornadus-therian',641,14,630,261,0);

INSERT INTO pokemon VALUES (10020,'thundurus-therian',642,30,610,261,0);

INSERT INTO pokemon VALUES (10021,'landorus-therian',645,13,680,270,0);

INSERT INTO pokemon VALUES (10022,'kyurem-black',646,33,3250,315,0);

INSERT INTO pokemon VALUES (10023,'kyurem-white',646,36,3250,315,0);

INSERT INTO pokemon VALUES (10024,'keldeo-resolute',647,14,485,261,0);

INSERT INTO pokemon VALUES (10025,'meowstic-female',678,6,85,163,0);

INSERT INTO pokemon VALUES (10026,'aegislash-blade',681,17,530,234,0);

INSERT INTO pokemon VALUES (10027,'pumpkaboo-small',710,3,35,67,0);

INSERT INTO pokemon VALUES (10028,'pumpkaboo-large',710,5,75,67,0);

INSERT INTO pokemon VALUES (10029,'pumpkaboo-super',710,8,150,67,0);

INSERT INTO pokemon VALUES (10030,'gourgeist-small',711,7,95,173,0);

INSERT INTO pokemon VALUES (10031,'gourgeist-large',711,11,140,173,0);

INSERT INTO pokemon VALUES (10032,'gourgeist-super',711,17,390,173,0);

INSERT INTO pokemon VALUES (10033,'venusaur-mega',3,24,1555,281,0);

INSERT INTO pokemon VALUES (10034,'charizard-mega-x',6,17,1105,285,0);

INSERT INTO pokemon VALUES (10035,'charizard-mega-y',6,17,1005,285,0);

INSERT INTO pokemon VALUES (10036,'blastoise-mega',9,16,1011,284,0);

INSERT INTO pokemon VALUES (10037,'alakazam-mega',65,12,480,266,0);

INSERT INTO pokemon VALUES (10038,'gengar-mega',94,14,405,270,0);

INSERT INTO pokemon VALUES (10039,'kangaskhan-mega',115,22,1000,207,0);

INSERT INTO pokemon VALUES (10040,'pinsir-mega',127,17,590,210,0);

INSERT INTO pokemon VALUES (10041,'gyarados-mega',130,65,3050,224,0);

INSERT INTO pokemon VALUES (10042,'aerodactyl-mega',142,21,790,215,0);

INSERT INTO pokemon VALUES (10043,'mewtwo-mega-x',150,23,1270,351,0);

INSERT INTO pokemon VALUES (10044,'mewtwo-mega-y',150,15,330,351,0);

INSERT INTO pokemon VALUES (10045,'ampharos-mega',181,14,615,275,0);

INSERT INTO pokemon VALUES (10046,'scizor-mega',212,20,1250,210,0);

INSERT INTO pokemon VALUES (10047,'heracross-mega',214,17,625,210,0);

INSERT INTO pokemon VALUES (10048,'houndoom-mega',229,19,495,210,0);

INSERT INTO pokemon VALUES (10049,'tyranitar-mega',248,25,2550,315,0);

INSERT INTO pokemon VALUES (10050,'blaziken-mega',257,19,520,284,0);

INSERT INTO pokemon VALUES (10051,'gardevoir-mega',282,16,484,278,0);

INSERT INTO pokemon VALUES (10052,'mawile-mega',303,10,235,168,0);

INSERT INTO pokemon VALUES (10053,'aggron-mega',306,22,3950,284,0);

INSERT INTO pokemon VALUES (10054,'medicham-mega',308,13,315,179,0);

INSERT INTO pokemon VALUES (10055,'manectric-mega',310,18,440,201,0);

INSERT INTO pokemon VALUES (10056,'banette-mega',354,12,130,194,0);

INSERT INTO pokemon VALUES (10057,'absol-mega',359,12,490,198,0);

INSERT INTO pokemon VALUES (10058,'garchomp-mega',445,19,950,315,0);

INSERT INTO pokemon VALUES (10059,'lucario-mega',448,13,575,219,0);

INSERT INTO pokemon VALUES (10060,'abomasnow-mega',460,27,1850,208,0);

INSERT INTO pokemon VALUES (10061,'floette-eternal',670,2,9,243,0);

INSERT INTO pokemon VALUES (10062,'latias-mega',380,18,520,315,0);

INSERT INTO pokemon VALUES (10063,'latios-mega',381,23,700,315,0);

INSERT INTO pokemon VALUES (10064,'swampert-mega',260,190,1020,286,0);

INSERT INTO pokemon VALUES (10065,'sceptile-mega',254,190,552,284,0);

INSERT INTO pokemon VALUES (10066,'sableye-mega',302,50,1610,168,0);

INSERT INTO pokemon VALUES (10067,'altaria-mega',334,150,206,207,0);

INSERT INTO pokemon VALUES (10068,'gallade-mega',475,160,564,278,0);

INSERT INTO pokemon VALUES (10069,'audino-mega',531,150,320,425,0);

INSERT INTO pokemon VALUES (10070,'sharpedo-mega',319,250,1303,196,0);

INSERT INTO pokemon VALUES (10071,'slowbro-mega',80,200,1200,207,0);

INSERT INTO pokemon VALUES (10072,'steelix-mega',208,1050,7400,214,0);

INSERT INTO pokemon VALUES (10073,'pidgeot-mega',18,220,505,261,0);

INSERT INTO pokemon VALUES (10074,'glalie-mega',362,210,3502,203,0);

INSERT INTO pokemon VALUES (10075,'diancie-mega',719,110,278,315,0);

INSERT INTO pokemon VALUES (10076,'metagross-mega',376,250,9429,315,0);

INSERT INTO pokemon VALUES (10077,'kyogre-primal',382,980,4300,347,0);

INSERT INTO pokemon VALUES (10078,'groudon-primal',383,500,9997,347,0);

INSERT INTO pokemon VALUES (10079,'rayquaza-mega',384,1080,3920,351,0);

INSERT INTO pokemon VALUES (10080,'pikachu-rock-star',25,40,60,112,0);

INSERT INTO pokemon VALUES (10081,'pikachu-belle',25,40,60,112,0);

INSERT INTO pokemon VALUES (10082,'pikachu-pop-star',25,40,60,112,0);

INSERT INTO pokemon VALUES (10083,'pikachu-phd',25,40,60,112,0);

INSERT INTO pokemon VALUES (10084,'pikachu-libre',25,40,60,112,0);

INSERT INTO pokemon VALUES (10085,'pikachu-cosplay',25,40,60,112,0);

INSERT INTO pokemon VALUES (10086,'hoopa-unbound',720,650,4900,306,0);

INSERT INTO pokemon VALUES (10087,'camerupt-mega',323,250,3205,196,0);

INSERT INTO pokemon VALUES (10088,'lopunny-mega',428,130,283,203,0);

INSERT INTO pokemon VALUES (10089,'salamence-mega',373,180,1126,315,0);

