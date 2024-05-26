--CREATE TABLES
--create REGION table
CREATE TABLE REGION(
	RegionID int primary key,
	RegionName varchar(255),
	LocationDescription varchar(255)
);
--create CITY table
CREATE TABLE CITY (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(255),
    RegionID INT,
    FOREIGN KEY (RegionID) REFERENCES REGIONS (RegionID)
);
--create CUISINES table
CREATE TABLE CUISINES (
    CuisineID INT PRIMARY KEY,
    CuisineName VARCHAR(500),
    CityID INT,
    CuisineDescription VARCHAR(500),
	PrepTime VARCHAR(200),
	Difficulty VARCHAR(50),
    FOREIGN KEY (CityID) REFERENCES CITY (CityID)
);
--create Ingredients table
CREATE TABLE Ingredients(
	IngredientID int,
	IngredientName varchar(255),
	measure varchar(200),
	CuisineID int,
	foreign key (CuisineID) references Cuisines(CuisineID)
);
--create Nutrition table
CREATE TABLE Nutrition (
    NutritionID int primary key,
    CuisineID int,
    Calories_cal decimal,
    Carbohydrates_g decimal(5,2),
    Proteins_g decimal(5,2),
    Fats_g decimal(5,2),
    foreign key (CuisineID) references Cuisines (CuisineID)
);

-- Rename the table nutrition
ALTER TABLE Nutrition RENAME TO NutritionFacts
	
--INSERT INTO TABLES
INSERT INTO REGION VALUES
    (1,'Lombardy','North'),
    (2,'Piedmont','North'),
    (3,'Emilia-Romagna','North'),
    (4,'Veneto','Northeast'),
    (5,'Friuli-Venezia Giulia','Northeast'),
    (6,'Trentino-Alto Adige','Northeast'),
    (7,'Liguria','Northwest'),
    (8,'Valle d’Aosta','Northwest'), 
    (9,'Tuscany','Centro'),
    (10,'Lazio','Centro'),
    (11,'Umbria','Centro'),
    (12,'Campania','South'),
    (13,'Apulia','South'),
    (14,'Calabria','South'),
    (15,'Sicily','South'),
    (16,'Sardinia','South');

INSERT INTO CITY VALUES
    (101,'Milan',1),
    (102,'Bergamo',1),
    (103,'Turin',2),
    (104,'Alba',2),
    (105,'Bologna',3),
    (106,'Modena',3),
    (107,'Venice',4),
    (108,'Verona',4),
    (109,'Trieste',5),
    (110,'Udine',5),
    (111,'Trento',6),
    (112,'Bolzano',6),
    (113,'Genoa',7),
    (114,'La Spezia',7),
    (115,'Aosta',8),
    (116,'Florence',9),
    (117,'Siena',9),
    (118,'Rome',10),
    (119,'Latina',10),
    (120,'Perugia',11),
    (121,'Naples',12),
    (122,'Salerno',12),
    (123,'Bari',13),
    (124,'Reggio Calabria',14),
    (125,'Palermo',15),
    (126,'Cagliari',16);

INSERT INTO CUISINES VALUES
(201, 'Cotoletta alla Milanese', 101, 'Breaded and fried veal cutlet from Milan','Less than 1 hour','Easy'),
(202, 'Ragu’ alla Bolognese', 105, 'A rich meat sauce from Bologna','2-3 hours','Easy'),
(203, 'Bolognese Lasagna', 105, 'Layers of pasta, meat sauce, and béchamel','More than 4 hours','Average'),
(204, 'Pasta e Fagioli', 105, 'A hearty pasta and bean soup','1-2 hours','Easy'),
(205, 'Ribollita', 105, 'Tuscan vegetable and bread soup','2-3 hours','Average'),
(206, 'Autumn Lasagna', 105, 'Seasonal vegetable lasagna','1-2 hours','Easy'),
(207, 'Panzanella', 105, 'Tuscan bread salad with tomatoes','Less than 1 hour','Easy'),
(208, 'Bolognese Sauce', 105, 'Meat-based sauce originating from Bologna','2-3 hours','Easy'),
(209, 'Parmigiano Reggiano PDO', 105, 'Italian cheese from Bologna and Parma','1-2 hours','difficult'),
(210, 'Prosciutto di Parma', 105, 'Cured ham from the Parma region','Less than 1 hour','Easy'),
(211, 'Tortellini in Brodo', 105, 'Small, stuffed pasta served in broth','More than 4 hours','Difficult'),
(212, 'Lasagna', 105, 'Layered pasta dish with sauce and cheese','2-3 hours','Average'),
(213, 'Risotto al Nero di Seppia', 107, 'Venetian black squid ink risotto','Less than 1 hour','Average'),
(214, 'Bigoli', 107, 'Venetian thick spaghetti','Less than 1 hour','Easy'),
(215, 'Clams', 107, 'Fresh shellfish often served with pasta','1-2 hours','Easy'),
(216, 'Risotto with Goby', 107, 'Risotto made with local fish','1-2 hours','Easy'),
(217, 'Grana Padano DOP', 107, 'Italian cheese often used for grating','Months','Average'),
(218, 'Squid Ink', 107, 'Used to flavor and color pasta dishes','Less than 1 hour','Easy'),
(219, 'Sarde in Saor', 107, 'Venetian sweet and sour sardines','Less than 1 hour','Easy'),
(220, 'Florentine Steak', 116, 'Grilled T-bone steak from Florence','Less than 1 hour','Easy'),
(221, 'Pappardelle al Sugo di Cinghiale', 116, 'Wide pasta with wild boar ragù','Less than 1 hour','Average'),
(222, 'Bistecca alla Fiorentina', 116, 'Grilled T-bone steak from Florence','Less than 1 hour','Easy'),
(223, 'Lampredotto', 116, 'Traditional Florentine street food made from the fourth stomach of a cow','2-3 hours','Easy'),
(224, 'Pecorino Toscano DOP', 116, 'Sheep milk cheese from Tuscany','days','Average'),
(225, 'Bucatini all’Amatriciana', 118, 'Hollow pasta with tomato and pancetta','Less than 1 hour','Easy'),
(226, 'Spaghetti alla Carbonara', 118, 'Pasta with egg, cheese, and guanciale','Less than 1 hour','Easy'),
(227, 'Pecorino Romano', 118, 'Salty sheep milk cheese from Rome','Months','Average'),
(228, 'Ricotta Romana DOP', 118, 'Sheep milk ricotta cheese from Rome','Less than 2 hours','Easy'),
(229, 'Carciofi alla Giudia', 118, 'Fried artichokes Roman-Jewish style','Less than 1 hour','Easy'),
(230, 'Gelato', 118, 'Creamy Italian ice cream','Less than 1 hour','Easy'),
(231, 'Tuscan Bread', 118, 'Rustic, saltless bread from Tuscany','More than 4 hours','Difficult'),
(232, 'Cacio e Pepe Spaghetti', 118, 'Spaghetti with cheese and pepper','Less than 1 hour','Average'),
(233, 'Mozzarella di Bufala Campana DOP', 121, 'Soft cheese made from the milk of water buffaloes', 'Days','Average'),
(234, 'Provolone del Monaco DOP', 121, 'Semi-hard cheese produced in the Naples area','Months','Average'),
(235, 'Samurchio', 121, 'Traditional Neapolitan fish stew','More than 4 hours','Difficult'),
(236, 'Neapolitan Ragú', 121, 'Slow-cooked meat sauce originating from Naples','2-3 hours','Average'),
(237, 'Pizza Margherita', 121, 'Classic Neapolitan pizza','1-2 hours','Average'),
(238, 'Arancini', 125, 'Deep-fried rice balls usually filled with ragù, tomato sauce, mozzarella, and peas','1-2 hours','Average'),
(239, 'Pasta with Sardines', 124, 'Sicilian pasta dish typically made with sardines, wild fennel, raisins, pine nuts, saffron, and breadcrumbs','Less than 1 hour','Easy'),
(240, 'Marsala Sauce', 125, 'Sweet and savory sauce made with Marsala wine','Less than 1 hour','Easy'),
(241, 'Valli Trapanesi DOP', 125, 'Designation of origin for olive oil produced in the Trapani area of Sicily','','Difficult'),
(242, 'Pecorino Siciliano DOP', 125, 'Sheep milk cheese produced in Sicily','Months','Average');

INSERT INTO Ingredients VALUES
-- Cotoletta alla Milanese
(301, 'Veal chops', '1 veal chops', 201),
(302, 'Breadcrumbs', 'q.b.', 201),
(303, 'Salt', 'q.b.', 201),
(304, 'Black pepper', 'q.b.', 201),
(305, 'Vegetable oil', 'q.b.', 201),

-- Ragu’ alla Bolognese
(306, 'Beef', '300 g', 202),
(307, 'olive oil', '1 tbs', 202),	
(308, 'Onion', '50 g', 202),
(309, 'Carrot', '50 g', 202),
(310, 'Celery', '50 g', 202),
(311, 'Tomato paste', '300 g', 202),
(312, 'Red wine', '100 g', 202),
(313, 'vegetable broth', 'q.b.', 202),

-- Bolognese Lasagna
	(314, 'Re-milled durum wheat semolina', '350 g', 203),
    (315, 'spinach', '250 g', 203),
    (316, 'Tuorli', '3 tuorli', 203),
    (317, 'butter', '70 g', 203),
    (318, 'Parmesan cheese', 'q.b.', 203),
    (319, 'flour 00', '220 g', 203),
    (320, 'eggs', '2 eggs', 203),
    (321, 'whole milk', '1 l', 203),
    
-- Pasta e Fagioli
 	(322, 'Retailed Ditaloni', '320 g', 204),
    (323, 'Beans', '200 g', 204),
    (324, 'Tomato puree', '250 g', 204),
    (325, 'Garlic', '1 clove', 204),
    (326, 'Celery', '30 g', 204),
    (327, 'rosemary', 'q.b.', 204),
    (328, 'lard', '80 g', 204),
    (329, 'onion', '30 g', 204),
    (330, 'carrot', '30 g', 204),
    (331, 'laurel', '2 leaves', 204),
    (332, 'olive oil', '10 g', 204),	

-- Ribollita
  	(333, 'verza', '250 g', 205),
    (334, 'chard', '300 g', 205),
    (335, 'Beans', '350 g', 205),
    (336, 'Carrot', '80 g', 205),
    (337, 'Celery', '100 g', 205),
    (338, 'stale bread', '220 g', 205),
    (339, 'onion', '80 g', 205),
    (340, 'thyme', 'q.b.', 205),
    (341, 'black cabbage', '300 g', 205),
    (342, 'peeled tomato', '180 g', 205),
    (343, 'olive oil', '20 g', 205),
	
-- Autumn Lasagna
    (343, 'grana padano dop', '50 g', 206),
    (344, 'egg Lasagna', '200 g', 206),
    (345, 'Béchamel sauce', 'q.b.', 206),
    (346, 'pumpkin', '500 g', 206),
    (347, 'vegetable broth', '400 g', 206),
    (348, 'sausage', '460 g', 206),
    (349, 'fennel seeds', '1 pinch', 206),
    (350, 'olive oil', '20 g', 206),
    (351, 'white wine', '100 g', 206),
    (352, 'porcini mushroom', '500 g', 206),
    (353, 'garlic', '1 clove', 206),

-- Insert data for Panzanella
    (354, 'Bread stale', '350 g', 207),
    (355, 'Tomatoes', '220 g', 207),
    (356, 'Cucumber', '200 g', 207),
    (335, 'Red onion', '90 g', 207),
    (357, 'Basil', 'q.b.', 207),

-- Insert data for Bolognese Sauce
    (358, 'Beef', '300 g', 208),
    (359, 'Bacon', '150 g', 208),
    (360, 'Onion', '50 g', 208),
    (361, 'Carrot', '50 g', 208),
    (362, 'Celery', '50 g', 208),
    (363, 'Tomatoes', '300 g', 208),
    (364, 'Red wine', '300 g', 208),
    (365, 'Vegetable broth', 'q.b.', 208),

-- Parmigiano Reggiano PDO
(366, 'Milk', 'q.b.', 209),
(367, 'Rennet', 'q.b.', 209),

-- Prosciutto di Parma
(368, 'Pork leg', 'q.b.', 210),
(369, 'Salt', 'q.b.', 210),

-- Tortellini in Brodo
(370, 'Tortellini', '300 g', 211),
(371, 'pork loin', '100 g', 211),
(372, 'Parmesan cheese', '100 g', 211),
(373,'raw ham','100 g',211),
(374,'egg','1 egg',211),
(375,'nutmeg','q.b.',211),
(376,'mortadella','100 g',211),
(380,'beef broth','q.b.',211),	

-- Lasagna
(381, 'egg lasagna', '250 g', 212),
(382, 'sausge', '400 g', 212),
(383, 'Béchamel sauce', 'q.b.', 212),
(384, 'Parmesan cheese', '100 g', 212),
(385,'spinach', '1 kg',212),
(386,'onion','50 g',212),
(387,'olive oil','20 ml',212),		

-- Risotto al Nero di Seppia
(388, 'Nano vialone rice', '320 g', 213),
(389, 'cuttlefish ink', '16 g', 213),
(390, 'White wine', '1 glass', 213),
(391,'cuttlefish','300 g',213),
(392,'garlic','1 clove',213),
(393,'olive oil','q.b.',213),
(394,'parsely','q.b.',213),	

-- Bigoli
(395, 'Flour 00', '400 g', 214),
(396, 'Eggs', '4 eggs', 214),
(397, 'onion', '300 g', 214),
(398, 'Salt', 'q.b.', 214),
(399,'olive oil','45 ml',214),
(400,'anchovies','8 anchovies',214),	

-- New England clam soup
(401, 'Clams', '3 kg', 215),
(402, 'carrots', '80 g', 215),
(403, 'smoked bacon', '100 g', 215),
(404, 'cerely', '80 g', 215),
(405,'timo','4 twigs',215),
(406,'potatoes','450 g',215),
(407,'olive oil','q.b.',215),
(408,'bread','4 bread',215),	
	
-- Risotto with Goby(seafood)
(409, 'carnaroli rice', '320 g', 216),
(410, 'clams', '500 g', 216),
(411, 'shrimp', '300 g', 216),
(412, 'garlic', '2 cloves', 216),
(413,'vwegetable broth','q.b.',216),
(414,'butter','70 g',216),
(415,'cerely','25 g',216),
(416, 'mussels','1 kg',216),
(417,'squid','350 g',216),
(418,'onion','50 g',216),
(419,'carrots','25 g',216),
(420,'white wine','90 g',216),
(421,'parsely','1 tuft',216),
(422,'olive oil','q.b.',216),	

-- Grana Padano DOP
(423, 'Milk', 'q.b.', 217),
(424, 'Rennet', 'q.b.', 217),

-- squid ink pasta
(425, 'Squid ink', '2 tsp', 218),
(426, 'Flour', '2 cups', 218),
(427, 'Eggs', '3 eggs', 218),
(428, 'Water', 'q.b.', 218),

-- Sarde in Saor
(429, 'Sardines', '1 kg', 219),
(430, 'Onions', '1.5 kg', 219),
(431, 'White wine vinegar', '110 g', 219),
(432, 'flour 00', 'q.b.', 219),
(433, 'passed grapes','25 g',219),
(434,'sunflower oil','q.b.',219),
(435,'pine nuts','25 g',219),
	
-- Florentine Steak
(436, 'Florentine steak', '2 kg', 220),
(437, 'Salt', 'q.b.', 220),
(438, 'Olive oil', 'q.b.', 220),

-- Pappardelle al Sugo di Cinghiale
(439, 'Pappardelle pasta', '250 g', 221),
(440, 'Wild boar meat', '500 g', 221),
(441, 'Red wine', '50 g', 221),
(442, 'Carrot', '50 g', 221),
(443,'onion','50 g',221),
(444,'cerely','40 g',221),
(445,'tomato puree','375 g',221),	

-- Bistecca alla Fiorentina
(446, 'T-bone steak', '2 kg', 222),
(447, 'Salt', 'q.b.', 222),
(448, 'Olive oil', 'q.b.', 222),

-- Lampredotto
(449, 'Lampredotto', '1 kg', 223),
(450, 'green sauce', 'q.b.', 223),
(451, 'bread', 'q.b.', 223),

-- Pecorino Toscano DOP
(452, 'Milk', 'q.b.', 224),
(453, 'Rennet', 'q.b.', 224),

-- Bucatini all’Amatriciana
(454, 'Bucatini pasta', '5 ounces', 225),
(455, 'Guanciale', '1.5 ounces', 225),
(456, 'Tomatoes', '8 ounces', 225),
(457, 'Red onion', '1/4 cup', 225),
(458,'olive oil','1/4 cup',225),
-- Spaghetti alla Carbonara
(459, 'Spaghetti pasta', '320 g', 226),
(460, 'Guanciale', '150 g', 226),
(461, 'tuorli', '6 tuorli', 226),
(462, 'Pecorino Romano cheese', '50 g', 226),

-- Pecorino Romano
(463, 'Milk', 'q.b.', 227),
(464, 'Rennet', 'q.b.', 227),

-- Ricotta Romana DOP
(465, 'Milk', 'q.b.', 228),
(466, 'Rennet', 'q.b.', 228),

-- Carciofi alla Giudia
(467, 'Carciofi mammole', '4 Carciofi', 229),
(468, 'seed oil', 'q.b.', 229),
(469, 'salt up', 'q.b.', 229),

-- Gelato
(470, 'Milk', '2 cups', 230),
(471, 'Sugar', '1/2 cup', 230),
(472, 'Egg yolks', '4 eggs', 230),
(473,'heavy cream','1 cup',230),		

-- Tuscan Bread
(474, 'Flour', '2 1/2 cups', 231),
(475, 'Yeast', '1 ounce', 231),
(476, 'Water', '1 1/4 cups', 231),

-- Cacio e Pepe Spaghetti
(477, 'Spaghetti pasta', '320 g', 232),
(478, 'Pecorino Romano cheese', '200 g', 232),
(479, 'Black pepper', '5 g', 232),

-- Mozzarella di Bufala Campana DOP
(480, 'Water buffalo milk', 'q.b.', 233),
(481, 'Rennet', 'q.b.', 233),

-- Provolone del Monaco DOP
(482, 'Cow milk', 'q.b.', 234),
(483, 'Rennet', 'q.b.', 234),

-- Samurchio
(484, 'pig blood', 'q.b.', 235),
(485, 'cow intestine', 'q.b.', 235),
(486, 'pepper', 'q.b.', 235),
(487, 'aromatic herbs', 'q.b.', 235),

-- Neapolitan Ragú
(488, 'Beef chuck', '650 g', 236),
(489, 'Pork ribs', '650 g', 236),
(490,'pork sausage','300 g',236),	
(491, 'Tomatoes paste', '150 g', 236),
(492, 'onion', '120 g', 236),
(493,'dry red wine','300 ml',236),
	
-- Pizza Margherita
(493, 'Pizza dough', 'q.b.', 237),
(494, 'Tomatoes', '1 kg', 237),
(495, 'Fresh mozzarella', '600 g', 237),
(496, 'Basil', 'q.b.', 237),

-- Arancini
(497, 'Rice', '500 g', 238),
(498, 'Ragù sauce', 'q.b.', 238),
(499, 'Mozzarella', '60 g', 238),
(500, 'flour 00', '200 g', 238),

-- Pasta with Sardines
(501, 'fettuccine Pasta', '8 ounces', 239),
(502, 'Sardines', '3.7 ounces', 239),
(503, 'parmesan', '1/4 cup', 239),
(504, 'onion', '1 onion', 239),
(505,'garlic','3 cloves',239),	

-- Marsala Sauce
(506, 'Marsala wine', '3/4 cup', 240),
(507, 'Butter', '3 tbs', 240),
(508, 'beef broth', 'q.b.', 240),
(509, 'shallote minced', '1 shallote', 240),
(510,'flour','3 tbs',240),	

-- Valli Trapanesi DOP
(511, 'Olives', 'q.b.', 241),
(512, 'Olive oil', 'q.b.', 241),

-- Pecorino Siciliano DOP
(513, 'Sheep milk', 'q.b.', 242),
(514, 'Rennet', 'q.b.', 242);
	
INSERT INTO NutritionFacts VALUES
(601, 201, 643.0, 41.0, 41.0, 34.0),
(602, 202, 405.5, 6.9, 20.5, 33.0),
(603, 203, 854.0, 54.0, 36.0, 54.0),
(604, 204, 674.8, 81.8, 28.0, 26.6),
(605, 205, 427.0, 64.0, 20.4, 9.9),
(606, 206, 1084.1, 64.1, 40.7, 72.0),
(607, 207, 375.5, 55.5, 8.9, 13.2),
(608, 208, 405.5, 6.9, 20.5, 33.0),
(609, 209, 111.0, 0.9, 10.0, 7.2),
(610, 210, 60.0, 0.0, 8.0, 3.5),
(611, 211, 352.0, 29.1, 23.5, 15.8),
(612, 212, 350.4, 30.0, 29.0, 20.1),
(613, 213, 615.1, 75.7, 21.6, 23.6),
(614, 214, 553.1, 80.0, 20.0, 17.0),
(615, 215, 227.0, 4.0, 3.2, 16.0),
(616, 216, 370.0, 50.0, 11.0, 9.2),
(617, 217, 110.0, 0.0, 7.0, 9.0),
(618, 218, 15.1, 2.0, 1.0, 0.0),
(619, 219, 240.0, 15.8, 27.4, 8.0),
(620, 220, 440.0, 2.0, 65.0, 17.0),
(621, 221, 1326.0, 134.0, 101.0, 42.0),
(622, 222, 440.0, 2.0, 65.0, 17.0),
(623, 223, 254.1, 23.3, 20.0, 9.0),
(624, 224, 131.0, 0.5, 10.0, 10.0),
(625, 225, 494.7, 63.5, 15.8, 18.0),
(626, 226, 389.4, 40.6, 23.3, 14.8),
(627, 227, 110.0, 0.0, 8.0, 9.0),
(628, 228, 39.1, 1.5, 3.2, 2.2),
(629, 229, 492.0, 5.0, 50.0, 6.7),
(630, 230, 160.0, 19.5, 3.0, 14.2),
(631, 231, 100.2, 14.0, 4.0, 2.5),
(632, 232, 607.8, 53.5, 20.8, 36.0),
(633, 233, 80.0, 0.0, 5.0, 7.0),
(634, 234, 100.0, 0.6, 7.3, 7.5),
(635, 235, 240.1, 50.0, 20.0, 15.0),
(636, 236, 407.1, 5.1, 28.3, 29.8),
(637, 237, 204.0, 34.23, 7.13, 3.9),
(638, 238, 628.1, 55.0, 13.8, 38.8),
(639, 239, 404.0, 44.0, 7.0, 22.0),
(640, 240,15.0,1.0,1.0,0.0),	
(641, 241, 826, 0.0, 0.0, 91.0),
(642, 242, 54.0, 0.0, 4.0, 4.5);
  	
-- Retrieve specific columns from defined tables
SELECT r.Regionid, r.LocationDescription, r.RegionName,
       c.CityName,
       cu.CuisineName, cu.CuisineDescription,cu.PrepTime,cu.Difficulty,
       i.IngredientName, i.Measure,
       n.Calories_cal, n.Carbohydrates_g, n.Proteins_g, n.Fats_g
FROM REGION AS r
JOIN CITY AS c ON r.regionid = c.regionid
JOIN CUISINES AS cu ON c.cityid = cu.cityid
JOIN INGREDIENTS AS i ON i.cuisineid = cu.cuisineid
JOIN NUTRITIONFACTS AS n ON i.cuisineid = n.cuisineid;
--The END


 	


