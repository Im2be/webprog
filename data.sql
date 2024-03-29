USE [webprog]
GO
/****** Object:  Table [dbo].[Abonnement]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonnement](
	[Abo_id] [numeric](18, 0) NOT NULL,
	[Abo_team_id] [numeric](18, 0) NOT NULL,
	[Abo_login] [nchar](50) NOT NULL,
	[Abo_start_date] [date] NOT NULL,
	[Abo_end_date] [date] NOT NULL,
	[Abo_ticket_type] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Abonnement] PRIMARY KEY CLUSTERED 
(
	[Abo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[login]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[login] [nchar](50) NOT NULL,
	[password] [nchar](255) NOT NULL,
	[name] [nchar](255) NULL,
	[e-mail] [nchar](255) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[match]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match](
	[match_id] [numeric](18, 0) NOT NULL,
	[match_hometeam_id] [numeric](18, 0) NOT NULL,
	[match_date] [date] NOT NULL,
	[match_awayteam_id] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_match] PRIMARY KEY CLUSTERED 
(
	[match_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stadion]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stadion](
	[Stadion_id] [numeric](18, 0) NOT NULL,
	[Stadion_name] [nchar](50) NOT NULL,
	[Stadion_description] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[team]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team](
	[team_id] [numeric](18, 0) NOT NULL,
	[team_name] [nchar](255) NOT NULL,
	[team_description] [text] NULL,
	[team_stadion_id] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_team] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ticket]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[ticket_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ticket_type] [numeric](18, 0) NOT NULL,
	[match_id] [numeric](18, 0) NOT NULL,
	[login] [nchar](50) NOT NULL,
 CONSTRAINT [PK_ticket] PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ticket_team]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_team](
	[ticket_type_id] [numeric](18, 0) NOT NULL,
	[team_id] [numeric](18, 0) NOT NULL,
	[ticket_price] [real] NOT NULL,
	[ticket_amount] [numeric](18, 0) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ticket_type]    Script Date: 06/05/2016 21:19:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_type](
	[ticket_type_id] [numeric](18, 0) NOT NULL,
	[ticket_type_name] [nchar](255) NOT NULL,
	[ticket_type_hometeam] [bit] NOT NULL,
 CONSTRAINT [PK_ticket_type] PRIMARY KEY CLUSTERED 
(
	[ticket_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[login] ([login], [password], [name], [e-mail]) VALUES (N'Pieter                                            ', N'40BD001563085FC35165329EA1FF5C5ECBDBBEEF                                                                                                                                                                                                                       ', NULL, NULL)
INSERT [dbo].[login] ([login], [password], [name], [e-mail]) VALUES (N'Sophie                                            ', N'40BD001563085FC35165329EA1FF5C5ECBDBBEEF                                                                                                                                                                                                                       ', NULL, NULL)
INSERT [dbo].[match] ([match_id], [match_hometeam_id], [match_date], [match_awayteam_id]) VALUES (CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(N'2016-06-06' AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[match] ([match_id], [match_hometeam_id], [match_date], [match_awayteam_id]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(N'2016-05-03' AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[match] ([match_id], [match_hometeam_id], [match_date], [match_awayteam_id]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(N'2016-05-03' AS Date), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[match] ([match_id], [match_hometeam_id], [match_date], [match_awayteam_id]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(N'2016-05-20' AS Date), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[match] ([match_id], [match_hometeam_id], [match_date], [match_awayteam_id]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'2016-05-20' AS Date), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[stadion] ([Stadion_id], [Stadion_name], [Stadion_description]) VALUES (CAST(0 AS Numeric(18, 0)), N'Constant Vanden Stockstadion                      ', N'Het Constant Vanden Stockstadion is een voetbalstadion in de Belgische gemeente Anderlecht, in het Brussels Hoofdstedelijk Gewest. Het is de thuisbasis van voetbalclub RSC Anderlecht. Het stadion bevindt zich in het Astridpark, verwijzend naar de Zweedse prinses en Koningin van België Astrid van Zweden, die in 1935 overleed. Het eigenlijke park stamt uit 1911, en heette oorspronkelijk Meirpark.

Het stadion draagt de naam van wijlen Constant Vanden Stock, die 25 jaar lang voorzitter was van de club. In 1996 werd hij opgevolgd door zijn zoon, Roger Vanden Stock. De benaming Astridpark wordt echter frequenter gebruikt. Al sinds 1917 bevindt het voetbalstadion van RSC Anderlecht zich op deze locatie. Aanvankelijk heette het Stade Émile Versé, verwijzend naar de eerste weldoener van de Brusselse club. Sinds 1983 draagt het stadion de naam van Constant Vanden Stock, die in 2008 overleed.

Het stadion biedt momenteel nog plaats aan zo''n 21.500 toeschouwers.

Het stadion beschikt over een restaurant, Le Saint-Guidon, waaraan in 2004 en 2010 een Michelinster werd toegekend.')
INSERT [dbo].[stadion] ([Stadion_id], [Stadion_name], [Stadion_description]) VALUES (CAST(1 AS Numeric(18, 0)), N'Jan Breydelstadion                                ', N'Het Jan Breydelstadion, tot 1998 het Olympiastadion, is een voetbalstadion in de stad Brugge, gelegen in de deelgemeente Sint-Andries. Het stadion is eigendom van de stad Brugge en is de thuishaven van stadsrivalen Club Brugge en Cercle Brugge, die het stadion exploiteren.')
INSERT [dbo].[stadion] ([Stadion_id], [Stadion_name], [Stadion_description]) VALUES (CAST(2 AS Numeric(18, 0)), N'Ghelamco Arena                                    ', N'De Ghelamco Arena of het Arteveldestadion is het huidig stadion van de Belgische voetbalclub AA Gent, de grootste club uit de stad Gent. Het stadion werd op 17 juli 2013 geopend met een wedstrijd tegen het Duitse VfB Stuttgart.')
INSERT [dbo].[stadion] ([Stadion_id], [Stadion_name], [Stadion_description]) VALUES (CAST(3 AS Numeric(18, 0)), N'Cristal Arena                                     ', N'De Cristal Arena of Fenixstadion is het stadion van voetbalclub KRC Genk. Het is met 24.956 plaatsen het op drie na grootste stadion van België. Alleen het Koning Boudewijnstadion, het Jan Breydelstadion van Cercle Brugge en Club Brugge en het Stade Maurice Dufrasne van Standard Luik zijn groter.

Het stadion trekt per wedstrijd gemiddeld zo''n 21.000 kijkers. Er zijn ongeveer 18.000 abonnees. In het seizoen 2006-2007 was het stadion vijf keer uitverkocht. Het stadion beschikt aan de achterzijde ook over een overdekte zittribune voor het B-terrein.

De grasmat is een van de beste van België. Ze is voorzien op alle weersomstandigheden: er is een sprinklerinstallatie en een drainagesysteem. Bovendien is het Genkse veld, evenals dat van AA Gent, Beerschot, Standard en KVC Westerlo, uitgerust met veldverwarming.

De benaming Cristal Arena wordt gebruikt sinds 1 juni 2007. Voordien heette het stadion het Fenixstadion. Bierbrouwer Alken-Maes schenkt voor vijf jaar de naam van zijn Limburgse pils, Cristal Alken, aan het stadion. Het zal de tweede keer zijn dat een stadion van een Belgische club een commerciële naam krijgt. KV Mechelen ging Genk daar met het Scarletstadion in voor. In het buitenland komt dit meer voor.

Indien België er, samen met Nederland, in geslaagd was om het WK voetbal binnen te halen (wat niet het geval was), dan zou de Cristal Arena een van de speelstadions zijn. De capaciteit zou dan uitgebreid worden tot 40 à 45.000 toeschouwers.

Op 15 oktober 2008 raakte bekend dat het geplande recreatiecomplex goedgekeurd werd door de overheid. Ook is er in het plan opgenomen dat een uitbreiding van het stadion, door de kandidatuur voor het WK 2018, tot 45.000 plaatsen mogelijk is. Racing Genk denkt via deze weg zijn budget gevoelig te kunnen optrekken. Het is niet de bedoeling om een nieuw winkelcentrum te openen. Het complex mag enkel activiteiten van het genre fitness, bowling, sportwinkels e.d. omvatten.

Door de werken aan de grasmat en atletiekpiste in het Koning Boudewijnstadion hebben de Rode Duivels in het voorjaar van 2009 twee interlands afgewerkt in de Cristal Arena. Zowel de oefeninterland tegen Slovenië als de belangrijke kwalificatiewedstrijd tegen Bosnië-Herzegovina werden op Genkse bodem gespeeld.')
INSERT [dbo].[stadion] ([Stadion_id], [Stadion_name], [Stadion_description]) VALUES (CAST(4 AS Numeric(18, 0)), N'Albertparkstadion                                 ', N'Het Albertparkstadion is een voetbalstadion gelegen in Mariakerke, een deelgemeente van de West-Vlaamse badstad Oostende. Het is de thuisbasis van KV Oostende, dat sinds het seizoen 2013/14 opnieuw in de Jupiler Pro League aantreedt.

In 2007 onderging het stadion zijn meest recente (grondige) renovatie, waarbij de capaciteit met ruim 3.000 plaatsen werd verminderd. Tribunes C en D werden omgebouwd tot zittribunes, en de staantribune (E) werd overdekt.

Naar aanleiding van de promotie naar de hoogste voetbalafdeling, in het voorjaar van 2013, werd er een extra (tijdelijke) tribune in gebruik genomen. Zo voldoet het stadion aan alle normen voor eersteklassevoetbal (minimum 8.000 plaatsen, waarvan 5.000 zitplaatsen).

Sindsdien bedraagt de capaciteit ongeveer 8.000 plaatsen (allemaal overdekt), waarvan (ongeveer) 5.800 zitplaatsen en 2.200 staanplaatsen.')
INSERT [dbo].[stadion] ([Stadion_id], [Stadion_name], [Stadion_description]) VALUES (CAST(5 AS Numeric(18, 0)), N'Regenboogstadion                                  ', N'Het Regenboogstadion is een voetbalstadion in Waregem. Het stadion is eigendom van Stad Waregem, maar de voetbalploeg SV Zulte Waregem gebruikt het stadion in erfpacht. De capaciteit bedraagt, tijdens de huidige fase van de verbouwingswerken, 9.540 plaatsen. Het terrein wordt ook wel "aan de Gaverbeek" genoemd, omwille van de ligging vlak bij de Gaverbeek Stadsgenoot Racing Waregem speelt soms bij een risicomatch in het Regenboogstadion.')
INSERT [dbo].[team] ([team_id], [team_name], [team_description], [team_stadion_id]) VALUES (CAST(0 AS Numeric(18, 0)), N'Club Brugge                                                                                                                                                                                                                                                    ', N'Club Brugge KV is een Belgische voetbalclub, uitkomend in Eerste Klasse. Het is de populairste van de twee profclubs uit Brugge – de andere is Cercle Brugge. De club, die sinds 1959 onafgebroken in de hoogste afdeling speelt, is bij de Voetbalbond aangesloten met stamnummer 3, heeft blauw-zwart als kleuren en speelt in het stedelijk Jan Breydelstadion. De hoofdsponsor is sinds 2015 Daikin.

In België veroverde enkel RSC Anderlecht meer landstitels dan Club Brugge en won geen enkele club meer bekers en supercups. Tevens is Club Brugge tot nog toe de enige Belgische club die de finale van de Europacup I (later hervormd tot de Champions League) speelde.', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[team] ([team_id], [team_name], [team_description], [team_stadion_id]) VALUES (CAST(1 AS Numeric(18, 0)), N'AA Gent                                                                                                                                                                                                                                                        ', N'KAA Gent (voluit Koninklijke Atletiek Associatie Gent) is een Belgische voetbalclub uit Gent. De club is bij de KBVB aangesloten met stamnummer 7 en heeft blauw en wit als kleuren. AA Gent speelt in 2012/13 zijn laatste seizoen in het Jules Ottenstadion, dat een capaciteit had van 12.919 zitplaatsen. Op woensdag 17 juli 2013 werd de nieuwe Ghelamco Arena, met als initiële naam Arteveldestadion, officieel in gebruik genomen. De bijnaam van het team is de Buffalo''s. AA Gent speelt in de eerste klasse. De hoofdsponsor is de bank VDK.

AA Gent was in 1895 één van de tien oprichters van de sportbond Union Belge des Sociétés de Sports Athlétiques.

Ivan de Witte werd in 1999 voorzitter van de ploeg en was tot 2012 ook voorzitter van de Pro League. In het seizoen 2015-2016 speelde AA Gent zijn 99e seizoen in de nationale series, waarvan 77 in Eerste Klasse. In 2015 werd AA Gent voor het eerst in zijn toen 115-jarige geschiedenis Belgisch kampioen en stootte de club door naar de 2de ronde van de Champions League. Op 9 december 2015 kwalificeerde Gent zich als tweede in haar groep voor de achtste finale van diezelfde Champions League. Als eerste ploeg in de geschiedenis slaagde de club erin om na een heenronde waarin slechts één punt werd gehaald alsnog de groepsfase te overleven. Dit doordat ze alle drie de wedstrijden van de terugronde won.', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[team] ([team_id], [team_name], [team_description], [team_stadion_id]) VALUES (CAST(2 AS Numeric(18, 0)), N'RSC Anderlecht                                                                                                                                                                                                                                                 ', N'Royal Sporting Club Anderlecht (of simpelweg Anderlecht) is een Belgische voetbalclub uit Brussel, meer bepaald uit de Brusselse gemeente Anderlecht. De club werd opgericht op 29 mei 1908, en is bij de Voetbalbond aangesloten met stamnummer 35. Deze Belgische ploeg heeft paars-wit als clubkleuren. Anderlecht speelt sinds 1935 onafgebroken in de Eerste Klasse en won sindsdien al 33 keer de landstitel, negen keer de Beker van België en tien keer de Belgische Supercup. Het won ook vijf Europese bekers: twee keer de Europacup II, twee keer de UEFA Super Cup en één keer de UEFA Cup. Anderlecht vormt samen met Club Brugge en Standard de traditionele grote drie van België.

De huidige voorzitter is Roger Vanden Stock. Erevoorzitter was tot april 2008 zijn vader Constant Vanden Stock. Het stadion van de club, het Constant Vanden Stockstadion, is tevens naar hem vernoemd. Sinds 2014 is de hoofdsponsor van Anderlecht Proximus.', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[team] ([team_id], [team_name], [team_description], [team_stadion_id]) VALUES (CAST(3 AS Numeric(18, 0)), N'KV Oostende                                                                                                                                                                                                                                                    ', N'KV Oostende is een Belgische voetbalclub uit Oostende. De club is aangesloten bij de Voetbalbond met stamnummer 31 en heeft groen-rood-geel als kleuren. KVO ontstond in 1981 uit een fusie van VG en AS Oostende. De club speelde enkele seizoenen op het hoogste niveau. Sinds het seizoen 2013/14 voetbalt Oostende opnieuw in Eerste klasse.', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[team] ([team_id], [team_name], [team_description], [team_stadion_id]) VALUES (CAST(4 AS Numeric(18, 0)), N'KRC Genk                                                                                                                                                                                                                                                       ', N'Koninklijke Racing Club Genk (KRC Genk) is een Belgische voetbalclub uit Genk. De clubkleuren zijn blauw-wit. De ploeg speelt zijn thuiswedstrijden in de Cristal Arena te Waterschei, een stadion met ruim 20.000 zitplaatsen en 5.000 staanplaatsen.

KRC Genk staat bekend als Limburgse familieclub. Het is één van de Belgische clubs met het grootste aantal toeschouwers en behoort qua budget tot de top vijf van Belgische profclubs.

De club ontstond in 1988 uit de fusie van Thor Waterschei en KFC Winterslag. Zij is bij de Koninklijke Belgische Voetbalbond aangesloten met stamnummer 322, het nummer van KFC Winterslag. De officiële naam van de club in de Kruispuntbank van Ondernemingen luidt "Koninklijke Racing Club Genk 322".', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[team] ([team_id], [team_name], [team_description], [team_stadion_id]) VALUES (CAST(5 AS Numeric(18, 0)), N'SV Zulte Waregem                                                                                                                                                                                                                                               ', N'Sportvereniging Zulte Waregem is een Belgische voetbalclub uit Waregem en Zulte. De club is aangesloten bij de KBVB met stamnummer 5381 en heeft groen en rood als kleuren. De huidige club ontstond in 2001 door een fusie tussen Zultse VV en KSV Waregem. In eerste instantie heette de club SV Zulte-Waregem, maar in 2005 liet men het streepje vallen. Datzelfde jaar promoveerde de club voor het eerst naar de eerste klasse. De club behaalde tot nog toe z''n hoogste resultaten met de 2e plaats in eerste klasse (2012-2013) en de bekerwinst in 2006.

SV Zulte Waregem speelt in het Regenboogstadion in Waregem. De huidige voorzitter is Willy Naessens. Hij bekleedt deze functie sinds de oprichting. De huidige trainer is Francky Dury. Ook hij is actief sinds de oprichting van de club, zij het met een onderbreking van anderhalf jaar in 2010 en 2011.', CAST(5 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[ticket] ON 

INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
INSERT [dbo].[ticket] ([ticket_id], [ticket_type], [match_id], [login]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Pieter                                            ')
SET IDENTITY_INSERT [dbo].[ticket] OFF
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 9.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 9.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 9.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 9.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 19.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 19.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 19.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), 19.99, CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 8.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 8.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 8.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 8.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 18.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 18.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 18.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 18.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(0 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 5.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 5.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 5.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 5.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 15.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 15.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 15.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), 15.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(0 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 9.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 9.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 9.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 9.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 19.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 19.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 19.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), 19.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(0 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(0 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 10.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_team] ([ticket_type_id], [team_id], [ticket_price], [ticket_amount]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), 29.99, CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(0 AS Numeric(18, 0)), N'Onderste ring achter het doel                                                                                                                                                                                                                                  ', 1)
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(1 AS Numeric(18, 0)), N'Onderste ring achter het doel                                                                                                                                                                                                                                  ', 0)
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(2 AS Numeric(18, 0)), N'Onderste ring zijlijn Oost                                                                                                                                                                                                                                     ', 1)
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(3 AS Numeric(18, 0)), N'Onderste ring zijlijn West                                                                                                                                                                                                                                     ', 1)
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(4 AS Numeric(18, 0)), N'Bovenste ring achter het doel                                                                                                                                                                                                                                  ', 1)
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(5 AS Numeric(18, 0)), N'Bovenste ring achter het doel                                                                                                                                                                                                                                  ', 0)
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(6 AS Numeric(18, 0)), N'Bovenste ring zijlijn Oost                                                                                                                                                                                                                                     ', 1)
INSERT [dbo].[ticket_type] ([ticket_type_id], [ticket_type_name], [ticket_type_hometeam]) VALUES (CAST(7 AS Numeric(18, 0)), N'Bovenste ring zijlijn West                                                                                                                                                                                                                                     ', 1)
ALTER TABLE [dbo].[Abonnement]  WITH CHECK ADD  CONSTRAINT [FK_Abonnement_login] FOREIGN KEY([Abo_login])
REFERENCES [dbo].[login] ([login])
GO
ALTER TABLE [dbo].[Abonnement] CHECK CONSTRAINT [FK_Abonnement_login]
GO
ALTER TABLE [dbo].[Abonnement]  WITH CHECK ADD  CONSTRAINT [FK_Abonnement_team] FOREIGN KEY([Abo_id])
REFERENCES [dbo].[team] ([team_id])
GO
ALTER TABLE [dbo].[Abonnement] CHECK CONSTRAINT [FK_Abonnement_team]
GO
ALTER TABLE [dbo].[Abonnement]  WITH CHECK ADD  CONSTRAINT [FK_Abonnement_ticket_type] FOREIGN KEY([Abo_ticket_type])
REFERENCES [dbo].[ticket_type] ([ticket_type_id])
GO
ALTER TABLE [dbo].[Abonnement] CHECK CONSTRAINT [FK_Abonnement_ticket_type]
GO
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [FK_match_away_team] FOREIGN KEY([match_hometeam_id])
REFERENCES [dbo].[team] ([team_id])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [FK_match_away_team]
GO
ALTER TABLE [dbo].[match]  WITH CHECK ADD  CONSTRAINT [FK_match_home_team] FOREIGN KEY([match_awayteam_id])
REFERENCES [dbo].[team] ([team_id])
GO
ALTER TABLE [dbo].[match] CHECK CONSTRAINT [FK_match_home_team]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_match] FOREIGN KEY([match_id])
REFERENCES [dbo].[match] ([match_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_match]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_ticket] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticket] ([ticket_id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_ticket]
GO
ALTER TABLE [dbo].[ticket_team]  WITH CHECK ADD  CONSTRAINT [FK_ticket_team_team] FOREIGN KEY([team_id])
REFERENCES [dbo].[team] ([team_id])
GO
ALTER TABLE [dbo].[ticket_team] CHECK CONSTRAINT [FK_ticket_team_team]
GO
ALTER TABLE [dbo].[ticket_team]  WITH CHECK ADD  CONSTRAINT [FK_ticket_team_ticket_type] FOREIGN KEY([ticket_type_id])
REFERENCES [dbo].[ticket_type] ([ticket_type_id])
GO
ALTER TABLE [dbo].[ticket_team] CHECK CONSTRAINT [FK_ticket_team_ticket_type]
GO
