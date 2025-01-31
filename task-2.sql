C:\Windows\System32\pagila>psql -h localhost -d pagila -p 5432 -U postgres -c "\dt"
Пароль користувача postgres:
                       Tяшёюъ т¦фэю°хэ№
 Tїхьр  |         =рчтр         |       Tшя        | Tырёэшъ
--------+-----------------------+------------------+----------
 public | actor                 | ЄрсышЎ           | postgres
 public | address               | ЄрсышЎ           | postgres
 public | category              | ЄрсышЎ           | postgres
 public | city                  | ЄрсышЎ           | postgres
 public | country               | ЄрсышЎ           | postgres
 public | customer              | ЄрсышЎ           | postgres
 public | film                  | ЄрсышЎ           | postgres
 public | film_actor            | ЄрсышЎ           | postgres
 public | film_category         | ЄрсышЎ           | postgres
 public | inventory             | ЄрсышЎ           | postgres
 public | language              | ЄрсышЎ           | postgres
 public | payment               | ёхъЎ¦щэр ЄрсышЎ  | postgres
 public | payment_p0000_default | ЄрсышЎ           | postgres
 public | payment_p2007_01      | ЄрсышЎ           | postgres
 public | payment_p2007_02      | ЄрсышЎ           | postgres
 public | payment_p2007_03      | ЄрсышЎ           | postgres
 public | payment_p2007_04      | ЄрсышЎ           | postgres
 public | payment_p2007_05      | ЄрсышЎ           | postgres
 public | payment_p2007_06      | ЄрсышЎ           | postgres
 public | payment_p2007_07_max  | ЄрсышЎ           | postgres
 public | rental                | ЄрсышЎ           | postgres
 public | staff                 | ЄрсышЎ           | postgres
 public | store                 | ЄрсышЎ           | postgres
(23 Ё фъш)



C:\Windows\System32\pagila>SELECT f.title, f.length, c.name
'SELECT' is not recognized as an internal or external command,
operable program or batch file.

C:\Windows\System32\pagila>FROM film f
'FROM' is not recognized as an internal or external command,
operable program or batch file.

C:\Windows\System32\pagila>JOIN film_category fc ON f.film_id = fc.film_id
'JOIN' is not recognized as an internal or external command,
operable program or batch file.

C:\Windows\System32\pagila>JOIN category c ON fc.category_id = c.category_id;
'JOIN' is not recognized as an internal or external command,
operable program or batch file.

C:\Windows\System32\pagila>psql -h localhost -d pagila -U postgres
Пароль користувача postgres:
psql: помилка: п?дключення до серверу "localhost" (::1), порт 5432 провалено: ФАТАЛЬНО:  користувач "postgres" не пройшов автентиф?кац?ю за допомогою пароля

C:\Windows\System32\pagila>psql -h localhost -d pagila -U postgres
Пароль користувача postgres:
psql (17.2)
УВАГА: Кодова стор?нка консол? (866) в?др?зняється в?д кодової стор?нки Windows (1251)
         8-б?тов? символи можуть працювати неправильно. Детальн?ше у розд?л?
         "Нотатки для користувач?в Windows" у документац?ї psql.
Введ?ть "help", щоб отримати допомогу.

pagila=# help
Ви використовуєте psql - ?нтерфейс командного рядка до PostgreSQL.
Введ?ть:   \copyright для умов розповсюдження
       \h для дов?дки по командах SQL
       \? для дов?дки по командах psql
       \g або крапку з комою в к?нц? рядка для виконання запиту
       \q для виходу
pagila=# \q

C:\Windows\System32\pagila>psql -h localhost -d pagila -U postgres
Пароль користувача postgres:
psql (17.2)
УВАГА: Кодова стор?нка консол? (866) в?др?зняється в?д кодової стор?нки Windows (1251)
         8-б?тов? символи можуть працювати неправильно. Детальн?ше у розд?л?
         "Нотатки для користувач?в Windows" у документац?ї psql.
Введ?ть "help", щоб отримати допомогу.

pagila=# SELECT f.title, f.length, c.name
pagila-# FROM film f
pagila-# JOIN film_category fc ON f.film_id = fc.film_id
pagila-# JOIN category c ON fc.category_id = c.category_id;
            title            | length |    name
-----------------------------+--------+-------------
 ACADEMY DINOSAUR            |     86 | Documentary
 ACE GOLDFINGER              |     48 | Horror
 ADAPTATION HOLES            |     50 | Documentary
 AFFAIR PREJUDICE            |    117 | Horror
 AFRICAN EGG                 |    130 | Family
 AGENT TRUMAN                |    169 | Foreign
 AIRPLANE SIERRA             |     62 | Comedy
 AIRPORT POLLOCK             |     54 | Horror
 ALABAMA DEVIL               |    114 | Horror
 ALADDIN CALENDAR            |     63 | Sports
 ALAMO VIDEOTAPE             |    126 | Foreign
 ALASKA PHANTOM              |    136 | Music
 ALI FOREVER                 |    150 | Horror
 ALICE FANTASIA              |     94 | Classics
 ALIEN CENTER                |     46 | Foreign
 ALLEY EVOLUTION             |    180 | Foreign
 ALONE TRIP                  |     82 | Music
 ALTER VICTORY               |     57 | Animation
 AMADEUS HOLY                |    113 | Action
 AMELIE HELLFIGHTERS         |     79 | Music
 AMERICAN CIRCUS             |    129 | Action
 AMISTAD MIDSUMMER           |     85 | New
 ANACONDA CONFESSIONS        |     92 | Animation
 ANALYZE HOOSIERS            |    181 | Horror
 ANGELS LIFE                 |     74 | New
 ANNIE IDENTITY              |     86 | Sci-Fi
 ANONYMOUS HUMAN             |    179 | Sports
 ANTHEM LUKE                 |     91 | Comedy
 ANTITRUST TOMATOES          |    168 | Action
 ANYTHING SAVANNAH           |     82 | Horror
 APACHE DIVINE               |     92 | Family
 APOCALYPSE FLAMINGOS        |    119 | New
 APOLLO TEEN                 |    153 | Drama
 ARABIA DOGMA                |     62 | Horror
 ARACHNOPHOBIA ROLLERCOASTER |    147 | Horror
 ARGONAUTS TOWN              |    127 | Animation
 ARIZONA BANG                |    121 | Classics
 ARK RIDGEMONT               |     68 | Action
 ARMAGEDDON LOST             |     99 | Sci-Fi
 ARMY FLINTSTONES            |    148 | Documentary
 ARSENIC INDEPENDENCE        |    137 | Travel
 ARTIST COLDBLOODED          |    170 | Sports
 ATLANTIS CAUSE              |    170 | Family
 ATTACKS HATE                |    113 | Sci-Fi
 ATTRACTION NEWTON           |     83 | New
 AUTUMN CROW                 |    108 | Games
 BABY HALL                   |    153 | Foreign
 BACKLASH UNDEFEATED         |    118 | Children
 BADMAN DAWN                 |    162 | Sci-Fi
 BAKED CLEOPATRA             |    182 | Family
 BALLOON HOMEWARD            |     75 | Music
 BALLROOM MOCKINGBIRD        |    173 | Foreign
 BANG KWAI                   |     87 | Family
 BANGER PINOCCHIO            |    113 | Music
 BARBARELLA STREETCAR        |     65 | Sci-Fi
 BAREFOOT MANCHURIAN         |    129 | Action
 BASIC EASY                  |     90 | Travel
 BEACH HEARTBREAKERS         |    122 | Documentary
 BEAR GRACELAND              |    160 | Children
 BEAST HUNCHBACK             |     89 | Classics
 BEAUTY GREASE               |    175 | Drama
 BED HIGHBALL                |    106 | Documentary
 BEDAZZLED MARRIED           |     73 | Family
 BEETHOVEN EXORCIST          |    151 | Drama
 BEHAVIOR RUNAWAY            |    100 | Horror
 BENEATH RUSH                |     53 | Children
 BERETS AGENT                |     77 | Action
 BETRAYED REAR               |    122 | Children
 BEVERLY OUTLAW              |     85 | Sci-Fi
 BIKINI BORROWERS            |    142 | Animation
 BILKO ANONYMOUS             |    100 | Family
 BILL OTHERS                 |     93 | Documentary
 BINGO TALENTED              |    150 | Sci-Fi
 BIRCH ANTITRUST             |    162 | Music
 BIRD INDEPENDENCE           |    163 | Travel
 BIRDCAGE CASPER             |    103 | Music
 BIRDS PERDITION             |     61 | New
 BLACKOUT PRIVATE            |     85 | Animation
 BLADE POLISH                |    114 | Drama
 BLANKET BEVERLY             |    148 | Family
 BLINDNESS GUN               |    103 | Sci-Fi
 BLOOD ARGONAUTS             |     71 | Family
 BLUES INSTINCT              |     50 | Family
 BOILED DARES                |    102 | Travel
 BONNIE HOLOCAUST            |     63 | Documentary
 BOOGIE AMELIE               |    121 | Music
 BOONDOCK BALLROOM           |     76 | Travel
 BORN SPINAL                 |    179 | Travel
 BORROWERS BEDAZZLED         |     63 | Animation
 BOULEVARD MOB               |     63 | New
 BOUND CHEAPER               |     98 | Classics
 BOWFINGER GABLES            |     72 | Horror
 BRANNIGAN SUNRISE           |    121 | New
 BRAVEHEART HUMAN            |    176 | Family
 BREAKFAST GOLDFINGER        |    123 | New
 BREAKING HOME               |    169 | New
 BRIDE INTRIGUE              |     56 | Action
 BRIGHT ENCOUNTERS           |     73 | Drama
 BRINGING HYSTERICAL         |    136 | Comedy
 BROOKLYN DESERT             |    161 | Foreign
 BROTHERHOOD BLANKET         |     73 | Documentary
 BUBBLE GROSSE               |     60 | Sports
 BUCKET BROTHERHOOD          |    133 | Travel
 BUGSY SONG                  |    119 | Foreign
 BULL SHAWSHANK              |    125 | Action
 BULWORTH COMMANDMENTS       |     61 | Games
 BUNCH MINDS                 |     63 | Drama
 BUTCH PANTHER               |     67 | New
 BUTTERFLY CHOCOLAT          |     89 | New
 CABIN FLASH                 |     53 | Children
 CADDYSHACK JEDI             |     52 | Action
 CALENDAR GUNFIGHT           |    120 | Foreign
 CALIFORNIA BIRDS            |     75 | Sports
 CAMELOT VACATION            |     61 | Sci-Fi
 CAMPUS REMEMBER             |    167 | Action
 CANDIDATE PERDITION         |     70 | Classics
 CANDLES GRAPES              |    135 | Games
 CANYON STOCK                |     85 | Animation
 CAPER MOTIONS               |    176 | Comedy
 CARIBBEAN LIBERTY           |     92 | Sports
 CAROL TEXAS                 |    151 | Animation
 CARRIE BUNCH                |    114 | Horror
 CASABLANCA SUPER            |     85 | Travel
 CASPER DRAGONFLY            |    163 | Children
 CASSIDY WYOMING             |     61 | Travel
 CASUALTIES ENCINO           |    179 | Action
 CAT CONEHEADS               |    112 | Comedy
 CATCH AMISTAD               |    183 | Foreign
 CAUSE DATE                  |    179 | Documentary
 CELEBRITY HORN              |    110 | Action
 CENTER DINOSAUR             |    152 | Classics
 CHAINSAW UPTOWN             |    114 | Sci-Fi
 CHAMBER ITALIAN             |    117 | Music
 CHAMPION FLATLINERS         |     51 | Animation
 CHANCE RESURRECTION         |     70 | Sports
 CHAPLIN LICENSE             |    146 | New
 CHARADE DUFFEL              |     66 | Sci-Fi
 CHARIOTS CONSPIRACY         |     71 | Sci-Fi
 CHASING FIGHT               |    114 | Family
 CHEAPER CLYDE               |     87 | Sci-Fi
 CHICAGO NORTH               |    185 | Games
 CHICKEN HELLFIGHTERS        |    122 | Documentary
 CHILL LUCK                  |    142 | Drama
 CHINATOWN GLADIATOR         |     61 | New
 CHISUM BEHAVIOR             |    124 | Family
 CHITTY LOCK                 |    107 | Drama
 CHOCOLAT HARRY              |    101 | Family
 CHOCOLATE DUCK              |    132 | Foreign
 CHRISTMAS MOONSHINE         |    150 | Children
 CIDER DESIRE                |    101 | Documentary
 CINCINATTI WHISPERER        |    143 | Sci-Fi
 CIRCUS YOUTH                |     90 | Children
 CITIZEN SHREK               |    165 | Sci-Fi
 CLASH FREDDY                |     81 | Animation
 CLEOPATRA DEVIL             |    150 | New
 CLERKS ANGELS               |    164 | Documentary
 CLOCKWORK PARADISE          |    143 | Children
 CLONES PINOCCHIO            |    124 | Music
 CLOSER BANG                 |     58 | Comedy
 CLUB GRAFFITI               |     65 | Animation
 CLUE GRAIL                  |     70 | Music
 CLUELESS BUCKET             |     95 | Action
 CLYDE THEORY                |    139 | New
 COAST RAINBOW               |     55 | Documentary
 COLDBLOODED DARLING         |     70 | Sci-Fi
 COLOR PHILADELPHIA          |    149 | Classics
 COMA HEAD                   |    109 | Travel
 COMANCHEROS ENEMY           |     67 | Children
 COMFORTS RUSH               |     76 | Travel
 COMMAND DARLING             |    120 | Foreign
 COMMANDMENTS EXPRESS        |     59 | Horror
 CONEHEADS SMOOCHY           |    112 | Drama
 CONFESSIONS MAGUIRE         |     65 | Drama
 CONFIDENTIAL INTERVIEW      |    180 | Music
 CONFUSED CANDLES            |    122 | Family
 CONGENIALITY QUEST          |     87 | Sports
 CONNECTICUT TRAMP           |    172 | Sci-Fi
 CONNECTION MICROCOSMOS      |    115 | Comedy
 CONQUERER NUTS              |    173 | Drama
 CONSPIRACY SPIRIT           |    184 | Classics
 CONTACT ANONYMOUS           |    166 | Travel
 CONTROL ANTHEM              |    185 | Comedy
 CONVERSATION DOWNHILL       |    112 | Family
 CORE SUIT                   |     92 | Classics
 COWBOY DOOM                 |    146 | Foreign
 CRAFT OUTFIELD              |     64 | Drama
 CRANES RESERVOIR            |     57 | Sports
 CRAZY HOME                  |    136 | Comedy
 CREATURES SHAKESPEARE       |    139 | Games
 CREEPERS KANE               |    172 | Classics
 CROOKED FROGMEN             |    143 | Children
 CROSSING DIVORCE            |     50 | Foreign
 CROSSROADS CASUALTIES       |    153 | Animation
 CROW GREASE                 |    104 | Action
 CROWDS TELEMARK             |    112 | Sci-Fi
 CRUELTY UNFORGIVEN          |     69 | Classics
 CRUSADE HONEY               |    112 | Sports
 CRYSTAL BREAKING            |    184 | Foreign
 CUPBOARD SINNERS            |     56 | Documentary
 CURTAIN VIDEOTAPE           |    133 | Games
 CYCLONE FAMILY              |    176 | Foreign
 DADDY PITTSBURGH            |    161 | Comedy
 DAISY MENAGERIE             |     84 | Sci-Fi
 DALMATIONS SWEDEN           |    106 | Drama
 DANCES NONE                 |     58 | Action
 DANCING FEVER               |    144 | Documentary
 DANGEROUS UPTOWN            |    121 | Foreign
 DARES PLUTO                 |     89 | Animation
 DARKNESS WAR                |     99 | Drama
 DARKO DORADO                |    130 | Action
 DARLING BREAKING            |    165 | Games
 DARN FORRESTER              |    185 | Action
 DATE SPEED                  |    104 | Family
 DAUGHTER MADIGAN            |     59 | Children
 DAWN POND                   |     57 | Games
 DAY UNFAITHFUL              |    113 | New
 DAZED PUNK                  |    120 | Games
 DECEIVER BETRAYED           |    122 | Drama
 DEEP CRUSADE                |     51 | Documentary
 DEER VIRGINIAN              |    106 | Music
 DELIVERANCE MULHOLLAND      |    100 | Documentary
 DESERT POSEIDON             |     64 | Horror
 DESIRE ALIEN                |     76 | Animation
 DESPERATE TRAINSPOTTING     |     81 | Travel
 DESTINATION JERK            |     76 | Drama
 DESTINY SATURDAY            |     56 | New
 DETAILS PACKER              |     88 | Games
 DETECTIVE VISION            |    143 | Classics
 DEVIL DESIRE                |     87 | Action
 DIARY PANIC                 |    107 | Drama
 DINOSAUR SECRETARY          |     63 | Family
 DIRTY ACE                   |    147 | Games
 DISCIPLE MOTHER             |    141 | Travel
 DISTURBING SCARFACE         |     94 | Sci-Fi
 DIVIDE MONSTER              |     68 | Sci-Fi
 DIVINE RESURRECTION         |    100 | Games
 DIVORCE SHINING             |     47 | Sports
 DOCTOR GRAIL                |     57 | Children
 DOGMA FAMILY                |    122 | Animation
 DOLLS RAGE                  |    120 | Sci-Fi
 DONNIE ALLEY                |    125 | Animation
 DOOM DANCING                |     68 | Comedy
 DOORS PRESIDENT             |     49 | Animation
 DORADO NOTTING              |    139 | Music
 DOUBLE WRATH                |    177 | Animation
 DOUBTFIRE LABYRINTH         |    154 | Foreign
 DOWNHILL ENOUGH             |     47 | Comedy
 DOZEN LION                  |    177 | Documentary
 DRACULA CRYSTAL             |    176 | Classics
 DRAGON SQUAD                |    170 | Action
 DRAGONFLY STRANGERS         |    133 | New
 DREAM PICKUP                |    135 | Action
 DRIFTER COMMANDMENTS        |     61 | Action
 DRIVER ANNIE                |    159 | Sports
 DRIVING POLISH              |    175 | Music
 DROP WATERFRONT             |    178 | Sports
 DRUMLINE CYCLONE            |    110 | Travel
 DRUMS DYNAMITE              |     96 | Horror
 DUCK RACER                  |    116 | Animation
 DUDE BLINDNESS              |    132 | Sports
 DUFFEL APOCALYPSE           |    171 | Documentary
 DUMBO LUST                  |    119 | Family
 DURHAM PANKY                |    154 | Sports
 DWARFS ALTER                |    101 | Games
 DYING MAKER                 |    168 | Comedy
 DYNAMITE TARZAN             |    141 | Classics
 EAGLES PANKY                |    140 | New
 EARLY HOME                  |     96 | Animation
 EARRING INSTINCT            |     98 | Family
 EARTH VISION                |     85 | New
 EASY GLADIATOR              |    148 | Action
 EDGE KISSING                |    153 | Drama
 EFFECT GLADIATOR            |    107 | Family
 EGG IGBY                    |     67 | Documentary
 EGYPT TENENBAUMS            |     85 | Horror
 ELEMENT FREDDY              |    115 | Comedy
 ELEPHANT TROJAN             |    126 | Horror
 ELF MURDER                  |    155 | Music
 ELIZABETH SHANE             |    152 | Sports
 EMPIRE MALKOVICH            |    177 | Children
 ENCINO ELF                  |    143 | Games
 ENCOUNTERS CURTAIN          |     92 | Drama
 ENDING CROWDS               |     85 | New
 ENEMY ODDS                  |     77 | Music
 ENGLISH BULWORTH            |     51 | Sci-Fi
 ENOUGH RAGING               |    158 | Travel
 ENTRAPMENT SATISFACTION     |    176 | Action
 ESCAPE METROPOLIS           |    167 | Travel
 EVE RESURRECTION            |     66 | New
 EVERYONE CRAFT              |    163 | Foreign
 EVOLUTION ALTER             |    174 | Sports
 EXCITEMENT EVE              |     51 | Action
 EXORCIST STING              |    167 | Sports
 EXPECATIONS NATURAL         |    138 | Travel
 EXPENDABLE STALLION         |     97 | Documentary
 EXPRESS LONELY              |    178 | Sci-Fi
 EXTRAORDINARY CONQUERER     |    122 | Classics
 EYES DRIVING                |    172 | Sci-Fi
 FACTORY DRAGON              |    144 | Travel
 FALCON VOLUME               |    102 | Animation
 FAMILY SWEET                |    155 | Horror
 FANTASIA PARK               |    131 | Games
 FANTASY TROOPERS            |     58 | Action
 FARGO GANDHI                |    130 | Children
 FATAL HAUNTED               |     91 | New
 FEATHERS METAL              |    104 | Games
 FELLOWSHIP AUTUMN           |     77 | Travel
 FERRIS MOTHER               |    142 | Comedy
 FEUD FROGMEN                |     98 | Family
 FEVER EMPIRE                |    158 | Games
 FICTION CHRISTMAS           |     72 | Foreign
 FIDDLER LOST                |     75 | Sci-Fi
 FIDELITY DEVIL              |    118 | Horror
 FIGHT JAWBREAKER            |     91 | Animation
 FINDING ANACONDA            |    156 | Family
 FIRE WOLVES                 |    173 | Games
 FIREBALL PHILADELPHIA       |    148 | Comedy
 FIREHOUSE VIETNAM           |    103 | Action
 FISH OPUS                   |    125 | Sci-Fi
 FLAMINGOS CONNECTICUT       |     80 | New
 FLASH WARS                  |    123 | New
 FLATLINERS KILLER           |    100 | Sports
 FLIGHT LIES                 |    179 | Sports
 FLINTSTONES HAPPINESS       |    148 | Comedy
 FLOATS GARDEN               |    145 | Animation
 FLYING HOOK                 |     69 | Animation
 FOOL MOCKINGBIRD            |    158 | Action
 FOREVER CANDIDATE           |    131 | Children
 FORREST SONS                |     63 | Action
 FORRESTER COMANCHEROS       |    112 | Animation
 FORWARD TEMPLE              |     90 | Games
 FRANKENSTEIN STRANGER       |    159 | Comedy
 FREAKY POCUS                |    126 | Music
 FREDDY STORM                |     65 | Horror
 FREEDOM CLEOPATRA           |    133 | Comedy
 FRENCH HOLIDAY              |     99 | Documentary
 FRIDA SLIPPER               |     73 | Foreign
 FRISCO FORREST              |     51 | Sci-Fi
 FROGMEN BREAKING            |    111 | Travel
 FRONTIER CABIN              |    183 | New
 FROST HEAD                  |     82 | Classics
 FUGITIVE MAGUIRE            |     83 | Travel
 FULL FLATLINERS             |     94 | Children
 FURY MURDER                 |    178 | Children
 GABLES METROPOLIS           |    161 | Family
 GALAXY SWEETHEARTS          |    128 | Classics
 GAMES BOWFINGER             |    119 | Travel
 GANDHI KWAI                 |     86 | Family
 GANGS PRIDE                 |    185 | Animation
 GARDEN ISLAND               |     80 | Sci-Fi
 GASLIGHT CRUSADE            |    106 | Horror
 GATHERING CALENDAR          |    176 | Games
 GENTLEMEN STAGE             |    125 | Foreign
 GHOST GROUNDHOG             |     85 | Children
 GHOSTBUSTERS ELF            |    101 | Animation
 GIANT TROOPERS              |    102 | Children
 GILBERT PELICAN             |    114 | Classics
 GILMORE BOILED              |    163 | Classics
 GLADIATOR WESTWARD          |    173 | Family
 GLASS DYING                 |    103 | Action
 GLEAMING JAWBREAKER         |     89 | Sports
 GLORY TRACY                 |    115 | Games
 GO PURPLE                   |     54 | Music
 GODFATHER DIARY             |     73 | New
 GOLD RIVER                  |    154 | Comedy
 GOLDFINGER SENSIBILITY      |     93 | Drama
 GOLDMINE TYCOON             |    153 | Sci-Fi
 GONE TROUBLE                |     84 | Drama
 GOODFELLAS SALUTE           |     56 | Sci-Fi
 GORGEOUS BINGO              |    108 | Children
 GOSFORD DONNIE              |    129 | Action
 GRACELAND DYNAMITE          |    140 | Sports
 GRADUATE LORD               |    156 | Children
 GRAFFITI LOVE               |    117 | Sci-Fi
 GRAIL FRANKENSTEIN          |     85 | Action
 GRAPES FURY                 |    155 | Foreign
 GREASE YOUTH                |    135 | Family
 GREATEST NORTH              |     93 | Music
 GREEDY ROOTS                |    166 | Drama
 GREEK EVERYONE              |    176 | Foreign
 GRINCH MASSAGE              |    150 | Games
 GRIT CLOCKWORK              |    137 | Games
 GROOVE FICTION              |    111 | Sports
 GROSSE WONDERFUL            |     49 | Music
 GROUNDHOG UNCUT             |    139 | Comedy
 GUMP DATE                   |     53 | Travel
 GUN BONNIE                  |    100 | Games
 GUNFIGHT MOON               |     70 | Comedy
 GUNFIGHTER MUSSOLINI        |    127 | Sports
 GUYS FALCON                 |     84 | Sci-Fi
 HALF OUTFIELD               |    146 | Family
 HALL CASSIDY                |     51 | Children
 HALLOWEEN NUTS              |     47 | Documentary
 HAMLET WISDOM               |    146 | Sci-Fi
 HANDICAP BOONDOCK           |    108 | Action
 HANGING DEEP                |     62 | Drama
 HANKY OCTOBER               |    107 | Sci-Fi
 HANOVER GALAXY              |     47 | Music
 HAPPINESS UNITED            |    100 | Foreign
 HARDLY ROBBERS              |     72 | Documentary
 HAROLD FRENCH               |    168 | Drama
 HARPER DYING                |     52 | Animation
 HARRY IDAHO                 |    121 | Drama
 HATE HANDICAP               |    107 | Comedy
 HAUNTED ANTITRUST           |     76 | Travel
 HAUNTING PIANIST            |    181 | Games
 HAWK CHILL                  |     47 | Documentary
 HEAD STRANGER               |     69 | Games
 HEARTBREAKERS BRIGHT        |     59 | Children
 HEAVEN FREEDOM              |     48 | Comedy
 HEAVENLY GUN                |     49 | Music
 HEAVYWEIGHTS BEAST          |    102 | Documentary
 HEDWIG ALTER                |    169 | Comedy
 HELLFIGHTERS SIERRA         |     75 | Foreign
 HIGH ENCINO                 |     84 | Horror
 HIGHBALL POTTER             |    110 | Foreign
 HILLS NEIGHBORS             |     93 | Action
 HOBBIT ALIEN                |    157 | Drama
 HOCUS FRIDA                 |    141 | Family
 HOLES BRANNIGAN             |    128 | Sports
 HOLIDAY GAMES               |     78 | Foreign
 HOLLOW JEOPARDY             |    136 | Sci-Fi
 HOLLYWOOD ANONYMOUS         |     69 | Children
 HOLOCAUST HIGHBALL          |    149 | Children
 HOLY TADPOLE                |     88 | Classics
 HOME PITY                   |    185 | Music
 HOMEWARD CIDER              |    103 | Documentary
 HOMICIDE PEACH              |    141 | Family
 HONEY TIES                  |     84 | Sports
 HOOK CHARIOTS               |     49 | Animation
 HOOSIERS BIRDCAGE           |    176 | Foreign
 HOPE TOOTSIE                |    139 | Classics
 HORN WORKING                |     95 | Animation
 HORROR REIGN                |    139 | Travel
 HOTEL HAPPINESS             |    181 | Foreign
 HOURS RAGE                  |    122 | New
 HOUSE DYNAMITE              |    109 | Family
 HUMAN GRAFFITI              |     68 | Games
 HUNCHBACK IMPOSSIBLE        |    151 | Drama
 HUNGER ROOF                 |    105 | Foreign
 HUNTER ALTER                |    125 | Documentary
 HUNTING MUSKETEERS          |     65 | Family
 HURRICANE AFFAIR            |     49 | Comedy
 HUSTLER PARTY               |     83 | Comedy
 HYDE DOCTOR                 |    100 | Classics
 HYSTERICAL GRAIL            |    150 | Sports
 ICE CROSSING                |    131 | Games
 IDAHO LOVE                  |    172 | New
 IDENTITY LOVER              |    119 | Sci-Fi
 IDOLS SNATCHERS             |     84 | Children
 IGBY MAKER                  |    160 | Travel
 ILLUSION AMELIE             |    122 | Foreign
 IMAGE PRINCESS              |    178 | Sports
 IMPACT ALADDIN              |    180 | Music
 IMPOSSIBLE PREJUDICE        |    103 | Foreign
 INCH JET                    |    167 | Animation
 INDEPENDENCE HOTEL          |    157 | Documentary
 INDIAN LOVE                 |    135 | Family
 INFORMER DOUBLE             |     74 | Foreign
 INNOCENT USUAL              |    178 | Foreign
 INSECTS STONE               |    123 | Animation
 INSIDER ARIZONA             |     78 | Music
 INSTINCT AIRPORT            |    116 | Sports
 INTENTIONS EMPIRE           |    107 | Animation
 INTERVIEW LIAISONS          |     59 | New
 INTOLERABLE INTENTIONS      |     63 | Documentary
 INTRIGUE WORST              |    181 | Foreign
 INVASION CYCLONE            |     97 | Children
 IRON MOON                   |     46 | Classics
 ISHTAR ROCKETEER            |     79 | Animation
 ISLAND EXORCIST             |     84 | Classics
 ITALIAN AFRICAN             |    174 | Travel
 JACKET FRISCO               |    181 | Drama
 JADE BUNCH                  |    174 | Sports
 JAPANESE RUN                |    135 | Horror
 JASON TRAP                  |    130 | Family
 JAWBREAKER BROOKLYN         |    118 | Music
 JAWS HARRY                  |    112 | Comedy
 JEDI BENEATH                |    128 | Family
 JEEPERS WEDDING             |     84 | Classics
 JEKYLL FROGMEN              |     58 | New
 JEOPARDY ENCINO             |    102 | Classics
 JERICHO MULAN               |    171 | Games
 JERK PAYCHECK               |    172 | Classics
 JERSEY SASSY                |     60 | Children
 JET NEIGHBORS               |     59 | Foreign
 JINGLE SAGEBRUSH            |    124 | Classics
 JOON NORTHWEST              |    105 | Sports
 JUGGLER HARDLY              |     54 | Animation
 JUMANJI BLADE               |    121 | New
 JUMPING WRATH               |     74 | Children
 JUNGLE CLOSER               |    134 | New
 KANE EXORCIST               |     92 | Foreign
 KARATE MOON                 |    120 | Horror
 KENTUCKIAN GIANT            |    169 | Horror
 KICK SAVANNAH               |    179 | Travel
 KILL BROTHERHOOD            |     54 | Documentary
 KILLER INNOCENT             |    161 | Family
 KING EVOLUTION              |    184 | Family
 KISS GLORY                  |    163 | Foreign
 KISSING DOLLS               |    141 | Action
 KNOCK WARLOCK               |     71 | Comedy
 KRAMER CHOCOLATE            |    171 | Sports
 KWAI HOMEWARD               |     46 | Drama
 LABYRINTH LEAGUE            |     46 | Children
 LADY STAGE                  |     67 | Horror
 LADYBUGS ARMAGEDDON         |    113 | Games
 LAMBS CINCINATTI            |    144 | Games
 LANGUAGE COWBOY             |     78 | Children
 LAWLESS VISION              |    181 | Animation
 LAWRENCE LOVE               |    175 | Action
 LEAGUE HELLFIGHTERS         |    110 | Classics
 LEATHERNECKS DWARFS         |    153 | Travel
 LEBOWSKI SOLDIERS           |     69 | Drama
 LEGALLY SECRETARY           |    113 | Children
 LEGEND JEDI                 |     59 | Music
 LESSON CLEOPATRA            |    167 | Sports
 LIAISONS SWEET              |    140 | Travel
 LIBERTY MAGNIFICENT         |    138 | Sports
 LICENSE WEEKEND             |     91 | Sci-Fi
 LIES TREATMENT              |    147 | Drama
 LIFE TWISTED                |    137 | Comedy
 LIGHTS DEER                 |    174 | Classics
 LION UNCUT                  |     50 | Comedy
 LOATHING LEGALLY            |    140 | Classics
 LOCK REAR                   |    120 | Travel
 LOLA AGENT                  |     85 | Horror
 LOLITA WORLD                |    155 | Family
 LONELY ELEPHANT             |     67 | Comedy
 LORD ARIZONA                |    108 | Action
 LOSE INCH                   |    137 | Foreign
 LOSER HUSTLER               |     80 | Sports
 LOST BIRD                   |     98 | Foreign
 LOUISIANA HARRY             |     70 | Family
 LOVE SUICIDES               |    181 | Horror
 LOVELY JINGLE               |     65 | Classics
 LOVER TRUMAN                |     75 | Classics
 LOVERBOY ATTACKS            |    162 | New
 LUCK OPUS                   |    152 | Drama
 LUCKY FLYING                |     97 | Music
 LUKE MUMMY                  |     74 | Animation
 LUST LOCK                   |     52 | Action
 MADIGAN DORADO              |    116 | Travel
 MADISON TRAP                |    147 | Documentary
 MADNESS ATTACKS             |    178 | Foreign
 MADRE GABLES                |     98 | Games
 MAGIC MALLRATS              |    117 | Children
 MAGNIFICENT CHITTY          |     53 | Classics
 MAGNOLIA FORRESTER          |    171 | Action
 MAGUIRE APACHE              |     74 | Family
 MAIDEN HOME                 |    138 | New
 MAJESTIC FLOATS             |    130 | Documentary
 MAKER GABLES                |    136 | Children
 MALKOVICH PET               |    159 | Classics
 MALLRATS UNITED             |    133 | Comedy
 MALTESE HOPE                |    127 | Games
 MANCHURIAN CURTAIN          |    177 | Family
 MANNEQUIN WORST             |     71 | New
 MARRIED GO                  |    114 | Sci-Fi
 MARS ROMAN                  |     62 | Games
 MASK PEACH                  |    123 | New
 MASKED BUBBLE               |    151 | Music
 MASSACRE USUAL              |    165 | Games
 MASSAGE IMAGE               |    161 | Animation
 MATRIX SNOWMAN              |     56 | Foreign
 MAUDE MOD                   |     72 | Foreign
 MEET CHOCOLATE              |     80 | Foreign
 MEMENTO ZOOLANDER           |     77 | Comedy
 MENAGERIE RUSHMORE          |    147 | Animation
 MERMAID INSECTS             |    104 | Sports
 METAL ARMAGEDDON            |    161 | Documentary
 METROPOLIS COMA             |     64 | Sci-Fi
 MICROCOSMOS PARADISE        |    105 | Children
 MIDNIGHT WESTWARD           |     86 | Action
 MIDSUMMER GROUNDHOG         |     48 | Documentary
 MIGHTY LUCK                 |    122 | Documentary
 MILE MULAN                  |     64 | Sports
 MILLION ACE                 |    142 | Classics
 MINDS TRUMAN                |    149 | Action
 MINE TITANS                 |    166 | New
 MINORITY KISS               |     59 | Music
 MIRACLE VIRTUAL             |    162 | Animation
 MISSION ZOOLANDER           |    164 | Animation
 MIXED DOORS                 |    180 | Foreign
 MOB DUFFEL                  |    105 | Drama
 MOCKINGBIRD HOLLYWOOD       |     60 | Action
 MOD SECRETARY               |     77 | Documentary
 MODEL FISH                  |    175 | Children
 MODERN DORADO               |     74 | Documentary
 MONEY HAROLD                |    135 | New
 MONSOON CAUSE               |    182 | Games
 MONSTER SPARTACUS           |    107 | Music
 MONTEREY LABYRINTH          |    158 | Horror
 MONTEZUMA COMMAND           |    126 | Action
 MOON BUNCH                  |     83 | Foreign
 MOONSHINE CABIN             |    171 | Games
 MOONWALKER FOOL             |    184 | Games
 MOSQUITO ARMAGEDDON         |     57 | Sports
 MOTHER OLEANDER             |    103 | Sports
 MOTIONS DETAILS             |    166 | Horror
 MOULIN WAKE                 |     79 | Travel
 MOURNING PURPLE             |    146 | Sci-Fi
 MOVIE SHAKESPEARE           |     53 | Family
 MULAN MOON                  |    160 | Comedy
 MULHOLLAND BEAST            |    157 | Foreign
 MUMMY CREATURES             |    160 | Sports
 MUPPET MILE                 |     50 | Foreign
 MURDER ANTITRUST            |    166 | Children
 MUSCLE BRIGHT               |    185 | Travel
 MUSIC BOONDOCK              |    129 | Family
 MUSKETEERS WAIT             |     73 | Classics
 MUSSOLINI SPOILERS          |    180 | Sports
 MYSTIC TRUMAN               |     92 | Comedy
 NAME DETECTIVE              |    178 | Games
 NASH CHOCOLAT               |    180 | Animation
 NATIONAL STORY              |     92 | Documentary
 NATURAL STOCK               |     50 | Family
 NECKLACE OUTBREAK           |    132 | Drama
 NEIGHBORS CHARADE           |    161 | Sports
 NEMO CAMPUS                 |    131 | Sci-Fi
 NETWORK PEAK                |     75 | Family
 NEWSIES STORY               |    159 | Documentary
 NEWTON LABYRINTH            |     75 | Foreign
 NIGHTMARE CHILL             |    149 | Games
 NONE SPIKING                |     83 | Sci-Fi
 NOON PAPI                   |     57 | Children
 NORTH TEQUILA               |     67 | Documentary
 NORTHWEST POLISH            |    172 | Sports
 NOTORIOUS REUNION           |    128 | Documentary
 NOTTING SPEAKEASY           |     48 | Drama
 NOVOCAINE FLIGHT            |     64 | Sports
 NUTS TIES                   |    145 | New
 OCTOBER SUBMARINE           |     54 | Classics
 ODDS BOOGIE                 |     48 | Family
 OKLAHOMA JUMANJI            |     58 | New
 OLEANDER CLUE               |    161 | Music
 OPEN AFRICAN                |    131 | Sci-Fi
 OPERATION OPERATION         |    156 | Comedy
 OPPOSITE NECKLACE           |     92 | Family
 OPUS ICE                    |    102 | Foreign
 ORANGE GRAPES               |     76 | Foreign
 ORDER BETRAYED              |    120 | Travel
 ORIENT CLOSER               |    118 | Drama
 OSCAR GOLD                  |    115 | Animation
 OTHERS SOUP                 |    118 | Travel
 OUTBREAK DIVINE             |    169 | Games
 OUTFIELD MASSACRE           |    129 | Music
 OUTLAW HANKY                |    148 | Travel
 OZ LIAISONS                 |     85 | Animation
 PACIFIC AMISTAD             |    144 | Documentary
 PACKER MADIGAN              |     84 | Animation
 PAJAMA JAWBREAKER           |    126 | Classics
 PANIC CLUB                  |    102 | Horror
 PANKY SUBMARINE             |     93 | Games
 PANTHER REDS                |    109 | Sci-Fi
 PAPI NECKLACE               |    128 | Travel
 PARADISE SABRINA            |     48 | Comedy
 PARIS WEEKEND               |    121 | Horror
 PARK CITIZEN                |    109 | Action
 PARTY KNOCK                 |    107 | Comedy
 PAST SUICIDES               |    157 | Foreign
 PATHS CONTROL               |    118 | Drama
 PATIENT SISTER              |     99 | Classics
 PATRIOT ROMAN               |     65 | Action
 PATTON INTERVIEW            |    175 | Horror
 PAYCHECK WAIT               |    145 | Drama
 PEACH INNOCENT              |    160 | Sports
 PEAK FOREVER                |     80 | Sports
 PEARL DESTINY               |     74 | Foreign
 PELICAN COMFORTS            |     48 | Documentary
 PERDITION FARGO             |     99 | Sports
 PERFECT GROOVE              |     82 | Comedy
 PERSONAL LADYBUGS           |    118 | Music
 PET HAUNTING                |     99 | Foreign
 PHANTOM GLORY               |     60 | New
 PHILADELPHIA WIFE           |    137 | Sports
 PIANIST OUTFIELD            |    136 | New
 PICKUP DRIVING              |     77 | Sports
 PILOT HOOSIERS              |     50 | Family
 PINOCCHIO SIMON             |    103 | Comedy
 PIRATES ROXANNE             |    100 | Sports
 PITTSBURGH HUNCHBACK        |    134 | Family
 PITY BOUND                  |     60 | Drama
 PIZZA JUMANJI               |    173 | Games
 PLATOON INSTINCT            |    132 | New
 PLUTO OLEANDER              |     84 | New
 POCUS PULP                  |    138 | Documentary
 POLISH BROOKLYN             |     61 | Children
 POLLOCK DELIVERANCE         |    137 | Foreign
 POND SEATTLE                |    185 | Animation
 POSEIDON FOREVER            |    159 | Sports
 POTLUCK MIXED               |    179 | Animation
 POTTER CONNECTICUT          |    115 | Animation
 PREJUDICE OLEANDER          |     98 | Classics
 PRESIDENT BANG              |    144 | Family
 PRIDE ALAMO                 |    114 | Animation
 PRIMARY GLASS               |     53 | Action
 PRINCESS GIANT              |     71 | Documentary
 PRIVATE DROP                |    106 | Games
 PRIX UNDEFEATED             |    115 | Family
 PSYCHO SHRUNK               |    155 | Games
 PULP BEVERLY                |     89 | Horror
 PUNK DIVORCE                |    100 | Animation
 PURE RUNNER                 |    121 | Comedy
 PURPLE MOVIE                |     88 | Foreign
 QUEEN LUKE                  |    163 | Drama
 QUEST MUSSOLINI             |    177 | Action
 QUILLS BULL                 |    112 | Documentary
 RACER EGG                   |    147 | Drama
 RAGE GAMES                  |    120 | Family
 RAGING AIRPLANE             |    154 | Sci-Fi
 RAIDERS ANTITRUST           |     82 | Documentary
 RAINBOW SHOCK               |     74 | Documentary
 RANDOM GO                   |     73 | Sci-Fi
 RANGE MOONWALKER            |    147 | Family
 REAP UNFAITHFUL             |    136 | Horror
 REAR TRADING                |     97 | Action
 REBEL AIRPORT               |     73 | Music
 RECORDS ZORRO               |    182 | Sports
 REDEMPTION COMFORTS         |    179 | New
 REDS POCUS                  |    182 | Music
 REEF SALUTE                 |    123 | Horror
 REIGN GENTLEMEN             |     82 | Sci-Fi
 REMEMBER DIARY              |    110 | Family
 REQUIEM TYCOON              |    167 | Classics
 RESERVOIR ADAPTATION        |     61 | Foreign
 RESURRECTION SILVERADO      |    117 | Family
 REUNION WITCHES             |     63 | Drama
 RIDER CADDYSHACK            |    177 | Sports
 RIDGEMONT SUBMARINE         |     46 | New
 RIGHT CRANES                |    153 | Classics
 RINGS HEARTBREAKERS         |     58 | Action
 RIVER OUTLAW                |    149 | Sports
 ROAD ROXANNE                |    158 | Documentary
 ROBBERS JOON                |    102 | Children
 ROBBERY BRIGHT              |    134 | Family
 ROCK INSTINCT               |    102 | Horror
 ROCKETEER MOTHER            |    178 | Foreign
 ROCKY WAR                   |    145 | Drama
 ROLLERCOASTER BRINGING      |    153 | Horror
 ROMAN PUNK                  |     81 | Music
 ROOF CHAMPION               |    101 | Games
 ROOM ROMAN                  |     60 | Animation
 ROOTS REMEMBER              |     89 | Classics
 ROSES TREASURE              |    162 | Sports
 ROUGE SQUAD                 |    118 | Games
 ROXANNE REBEL               |    171 | Games
 RUGRATS SHAKESPEARE         |    109 | Action
 RULES HUMAN                 |    153 | Horror
 RUN PACIFIC                 |    145 | New
 RUNAWAY TENENBAUMS          |    181 | New
 RUNNER MADIGAN              |    101 | Music
 RUSH GOODFELLAS             |     48 | Family
 RUSHMORE MERMAID            |    150 | Comedy
 SABRINA MIDNIGHT            |     99 | Children
 SADDLE ANTITRUST            |     80 | Comedy
 SAGEBRUSH CLUELESS          |    106 | Documentary
 SAINTS BRIDE                |    125 | Drama
 SALUTE APOLLO               |     73 | New
 SAMURAI LION                |    110 | New
 SANTA PARIS                 |    154 | Children
 SASSY PACKER                |    154 | Games
 SATISFACTION CONFIDENTIAL   |     75 | Sports
 SATURDAY LAMBS              |    150 | Sports
 SATURN NAME                 |    182 | Comedy
 SAVANNAH TOWN               |     84 | Drama
 SCALAWAG DUCK               |    183 | Music
 SCARFACE BANG               |    102 | Children
 SCHOOL JACKET               |    151 | Foreign
 SCISSORHANDS SLUMS          |    147 | Foreign
 SCORPION APOLLO             |    137 | Drama
 SEA VIRGIN                  |     80 | Drama
 SEABISCUIT PUNK             |    112 | Sports
 SEARCHERS WAIT              |    182 | Comedy
 SEATTLE EXPECATIONS         |    110 | Drama
 SECRET GROUNDHOG            |     90 | Documentary
 SECRETARY ROUGE             |    158 | Sports
 SECRETS PARADISE            |    109 | Family
 SENSE GREEK                 |     54 | Sports
 SENSIBILITY REAR            |     98 | Family
 SEVEN SWARM                 |    127 | Games
 SHAKESPEARE SADDLE          |     60 | Sports
 SHANE DARKNESS              |     93 | Travel
 SHANGHAI TYCOON             |     47 | Travel
 SHAWSHANK BUBBLE            |     80 | Travel
 SHEPHERD MIDSUMMER          |    113 | Children
 SHINING ROSES               |    125 | Travel
 SHIP WONDERLAND             |    104 | Documentary
 SHOCK CABIN                 |     79 | Foreign
 SHOOTIST SUPERFLY           |     67 | Drama
 SHOW LORD                   |    167 | Documentary
 SHREK LICENSE               |    154 | Foreign
 SHRUNK DIVINE               |    139 | Action
 SIDE ARK                    |     52 | Action
 SIEGE MADRE                 |    111 | Family
 SIERRA DIVIDE               |    135 | Sports
 SILENCE KANE                |     67 | Music
 SILVERADO GOLDFINGER        |     74 | Sci-Fi
 SIMON NORTH                 |     51 | Horror
 SINNERS ATLANTIS            |    126 | Horror
 SISTER FREDDY               |    152 | Children
 SKY MIRACLE                 |    132 | Action
 SLACKER LIAISONS            |    179 | Drama
 SLEEPING SUSPECTS           |    129 | Horror
 SLEEPLESS MONSOON           |     64 | Animation
 SLEEPY JAPANESE             |    137 | New
 SLEUTH ORIENT               |     87 | Games
 SLING LUKE                  |     84 | Classics
 SLIPPER FIDELITY            |    156 | Sports
 SLUMS DUCK                  |    147 | Family
 SMILE EARRING               |     60 | Travel
 SMOKING BARBARELLA          |     50 | Documentary
 SMOOCHY CONTROL             |    184 | Sports
 SNATCH SLIPPER              |    110 | Comedy
 SNATCHERS MONTEZUMA         |     74 | Classics
 SNOWMAN ROLLERCOASTER       |     62 | Animation
 SOLDIERS EVOLUTION          |    185 | Sci-Fi
 SOMETHING DUCK              |    180 | Drama
 SONG HEDWIG                 |    165 | Music
 SONS INTERVIEW              |    184 | Animation
 SORORITY QUEEN              |    184 | Foreign
 SOUP WISDOM                 |    169 | Family
 SOUTH WAIT                  |    143 | Action
 SPARTACUS CHEAPER           |     52 | Family
 SPEAKEASY DATE              |    165 | Action
 SPEED SUIT                  |    124 | Travel
 SPICE SORORITY              |    141 | Drama
 SPIKING ELEMENT             |     79 | Classics
 SPINAL ROCKY                |    138 | Family
 SPIRIT FLINTSTONES          |    149 | Horror
 SPIRITED CASUALTIES         |    138 | Sci-Fi
 SPLASH GUMP                 |    175 | Family
 SPLENDOR PATTON             |    134 | Children
 SPOILERS HELLFIGHTERS       |    151 | Documentary
 SPY MILE                    |    112 | Games
 SQUAD FISH                  |    136 | Sports
 STAGE WORLD                 |     85 | Comedy
 STAGECOACH ARMAGEDDON       |    112 | Action
 STALLION SUNDANCE           |    130 | Sci-Fi
 STAMPEDE DISTURBING         |     75 | Games
 STAR OPERATION              |    181 | Sports
 STATE WASTELAND             |    113 | Games
 STEEL SANTA                 |    143 | Classics
 STEERS ARMAGEDDON           |    140 | Sports
 STEPMOM DREAM               |     48 | Foreign
 STING PERSONAL              |     93 | New
 STOCK GLASS                 |    160 | New
 STONE FIRE                  |     94 | Travel
 STORM HAPPINESS             |     57 | Animation
 STORY SIDE                  |    163 | Action
 STRAIGHT HOURS              |    151 | Sports
 STRANGELOVE DESIRE          |    103 | Children
 STRANGER STRANGERS          |    139 | Children
 STRANGERS GRAFFITI          |    119 | Horror
 STREAK RIDGEMONT            |    132 | Documentary
 STREETCAR INTENTIONS        |     73 | Horror
 STRICTLY SCARFACE           |    144 | Comedy
 SUBMARINE BED               |    127 | Comedy
 SUGAR WONKA                 |    114 | Animation
 SUICIDES SILENCE            |     93 | Sci-Fi
 SUIT WALLS                  |    111 | Games
 SUMMER SCARFACE             |     53 | Classics
 SUN CONFESSIONS             |    141 | Sci-Fi
 SUNDANCE INVASION           |     92 | Children
 SUNRISE LEAGUE              |    135 | Animation
 SUNSET RACER                |     48 | Family
 SUPER WYOMING               |     58 | Family
 SUPERFLY TRIP               |    114 | Travel
 SUSPECTS QUILLS             |     47 | Action
 SWARM GOLD                  |    123 | Horror
 SWEDEN SHINING              |    176 | Comedy
 SWEET BROTHERHOOD           |    185 | Travel
 SWEETHEARTS SUSPECTS        |    108 | Children
 TADPOLE PARK                |    155 | Classics
 TALENTED HOMICIDE           |    173 | Sports
 TARZAN VIDEOTAPE            |     91 | Horror
 TAXI KICK                   |     64 | Music
 TEEN APOLLO                 |     74 | Travel
 TELEGRAPH VOYAGE            |    148 | Music
 TELEMARK HEARTBREAKERS      |    152 | Animation
 TEMPLE ATTRACTION           |     71 | Horror
 TENENBAUMS COMMAND          |     99 | Drama
 TEQUILA PAST                |     53 | Children
 TERMINATOR CLUB             |     88 | Music
 TEXAS WATCH                 |    179 | Horror
 THEORY MERMAID              |    184 | Animation
 THIEF PELICAN               |    135 | Animation
 THIN SAGEBRUSH              |     53 | Documentary
 TIES HUNGER                 |    111 | Children
 TIGHTS DAWN                 |    172 | Sports
 TIMBERLAND SKY              |     69 | Classics
 TITANIC BOONDOCK            |    104 | Animation
 TITANS JERK                 |     91 | Sci-Fi
 TOMATOES HELLFIGHTERS       |     68 | Travel
 TOMORROW HUSTLER            |    142 | Classics
 TOOTSIE PILOT               |    157 | Children
 TORQUE BOUND                |    179 | Drama
 TOURIST PELICAN             |    152 | Sports
 TOWERS HURRICANE            |    144 | Classics
 TOWN ARK                    |    136 | Foreign
 TRACY CIDER                 |    142 | Animation
 TRADING PINOCCHIO           |    170 | Sports
 TRAFFIC HOBBIT              |    139 | Travel
 TRAIN BUNCH                 |     71 | Horror
 TRAINSPOTTING STRANGERS     |    132 | Comedy
 TRAMP OTHERS                |    171 | Comedy
 TRANSLATION SUMMER          |    168 | Drama
 TRAP GUYS                   |    110 | Foreign
 TREASURE COMMAND            |    102 | Horror
 TREATMENT JEKYLL            |     87 | Drama
 TRIP NEWTON                 |     64 | Action
 TROJAN TOMORROW             |     52 | Sci-Fi
 TROOPERS METAL              |    115 | New
 TROUBLE DATE                |     61 | Travel
 TRUMAN CRAZY                |     92 | Action
 TURN STAR                   |     80 | Animation
 TUXEDO MILE                 |    152 | Sports
 TWISTED PIRATES             |    152 | Children
 TYCOON GATHERING            |     82 | Games
 UNBREAKABLE KARATE          |     62 | New
 UNCUT SUICIDES              |    172 | Music
 UNDEFEATED DALMATIONS       |    107 | Horror
 UNFAITHFUL KILL             |     78 | Drama
 UNFORGIVEN ZOOLANDER        |    129 | Sci-Fi
 UNITED PILOT                |    164 | Documentary
 UNTOUCHABLES SUNRISE        |    120 | Documentary
 UPRISING UPTOWN             |    174 | Action
 UPTOWN YOUNG                |     84 | Children
 USUAL UNTOUCHABLES          |    128 | Foreign
 VACATION BOONDOCK           |    145 | Sci-Fi
 VALENTINE VANISHING         |     48 | Travel
 VALLEY PACKER               |     73 | Comedy
 VAMPIRE WHALE               |    126 | New
 VANILLA DAY                 |    122 | Games
 VANISHED GARDEN             |    142 | New
 VANISHING ROCKY             |    123 | Music
 VARSITY TRIP                |     85 | New
 VELVET TERMINATOR           |    173 | Comedy
 VERTIGO NORTHWEST           |     90 | Comedy
 VICTORY ACADEMY             |     64 | Sports
 VIDEOTAPE ARSENIC           |    145 | Games
 VIETNAM SMOOCHY             |    174 | Drama
 VILLAIN DESPERATE           |     76 | Documentary
 VIRGIN DAISY                |    179 | Drama
 VIRGINIAN PLUTO             |    164 | Documentary
 VIRTUAL SPOILERS            |    144 | Family
 VISION TORQUE               |     59 | Foreign
 VOICE PEACH                 |    139 | New
 VOLCANO TEXAS               |    157 | Games
 VOLUME HOUSE                |    132 | Classics
 VOYAGE LEGALLY              |     78 | Classics
 WAGON JAWS                  |    152 | Documentary
 WAIT CIDER                  |    112 | Animation
 WAKE JAWS                   |     73 | New
 WALLS ARTIST                |    135 | Children
 WANDA CHAMBER               |    107 | Games
 WAR NOTTING                 |     80 | Foreign
 WARDROBE PHANTOM            |    178 | Drama
 WARLOCK WEREWOLF            |     83 | Children
 WARS PLUTO                  |    128 | Documentary
 WASH HEAVENLY               |    161 | Foreign
 WASTELAND DIVINE            |     85 | Classics
 WATCH TRACY                 |     78 | Animation
 WATERFRONT DELIVERANCE      |     61 | Action
 WATERSHIP FRONTIER          |    112 | Horror
 WEDDING APOLLO              |     70 | Documentary
 WEEKEND PERSONAL            |    134 | Sci-Fi
 WEREWOLF LOLA               |     79 | Action
 WEST LION                   |    159 | Drama
 WESTWARD SEABISCUIT         |     52 | Classics
 WHALE BIKINI                |    109 | Foreign
 WHISPERER GIANT             |     59 | Sci-Fi
 WIFE TURN                   |    183 | Documentary
 WILD APOLLO                 |    181 | New
 WILLOW TRACY                |    137 | Family
 WIND PHANTOM                |    111 | Games
 WINDOW SIDE                 |     85 | Travel
 WISDOM WORKER               |     98 | Comedy
 WITCHES PANIC               |    100 | Drama
 WIZARD COLDBLOODED          |     75 | Music
 WOLVES DESIRE               |     55 | Travel
 WOMEN DORADO                |    126 | Action
 WON DARES                   |    105 | Music
 WONDERFUL DROP              |    126 | Foreign
 WONDERLAND CHRISTMAS        |    111 | Sci-Fi
 WONKA SEA                   |     85 | Animation
 WORDS HUNTER                |    116 | Music
 WORKER TARZAN               |    139 | Travel
 WORKING MICROCOSMOS         |     74 | Travel
 WORLD LEATHERNECKS          |    171 | Horror
 WORST BANGER                |    185 | Action
 WRATH MILE                  |    176 | Documentary
 WRONG BEHAVIOR              |    178 | Children
 WYOMING STORM               |    100 | New
 YENTL IDAHO                 |     86 | Horror
 YOUNG LANGUAGE              |    183 | Documentary
 YOUTH KICK                  |    179 | Music
 ZHIVAGO CORE                |    105 | Horror
 ZOOLANDER FICTION           |    101 | Children
 ZORRO ARK                   |     50 | Comedy
(1000 Ё фъ¦т)


pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=# SELECT f.title, r.rental_date
pagila-# FROM rental r
pagila-# JOIN inventory i ON r.inventory_id = i.inventory_id
pagila-# JOIN film f ON i.film_id = f.film_id
pagila-# JOIN customer c ON r.customer_id = c.customer_id
pagila-# WHERE c.first_name = 'Alice' AND c.last_name = 'Cooper';
ПОМИЛКА:  стовпець r.rental_date не ?снує
РЯДОК 1: SELECT f.title, r.rental_date
                         ^
П?ДКАЗКА:  Можливо, передбачалось посилання на стовпець "f.rental_rate".
pagila=# \d rental
                                                                 TрсышЎ  "public.rental"
   TЄютяхЎ№    |             Tшя             | TюЁЄєтрээ  | +сэєы ¦Є№ё  |                                ¦р чрьютўєтрээ ь
---------------+-----------------------------+------------+-------------+--------------------------------------------------------------------------------
 rental_id     | integer                     |            | not null    | nextval('rental_rental_id_seq'::regclass)
 inventory_id  | integer                     |            | not null    |
 customer_id   | smallint                    |            | not null    |
 staff_id      | smallint                    |            | not null    |
 last_update   | timestamp without time zone |            | not null    | now()
 rental_period | tsrange                     |            | not null    | tsrange(now()::timestamp without time zone, NULL::timestamp without time zone)
-эфхъёш:
    "rental_pkey" PRIMARY KEY, btree (rental_id)
    "idx_fk_inventory_id" btree (inventory_id)
+сьхцхээ  чютэ¦°э№юую ъы¦ўр:
    "rental_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON UPDATE CASCADE ON DELETE RESTRICT
    "rental_inventory_id_fkey" FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id) ON UPDATE CASCADE ON DELETE RESTRICT
    "rental_staff_id_fkey" FOREIGN KEY (staff_id) REFERENCES staff(staff_id) ON UPDATE CASCADE ON DELETE RESTRICT
¦юёшырээ  ччютэ¦:
    TABLE "payment_p2007_01" CONSTRAINT "payment_p2007_01_rental_id_fkey" FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
    TABLE "payment_p2007_02" CONSTRAINT "payment_p2007_02_rental_id_fkey" FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
    TABLE "payment_p2007_03" CONSTRAINT "payment_p2007_03_rental_id_fkey" FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
    TABLE "payment_p2007_04" CONSTRAINT "payment_p2007_04_rental_id_fkey" FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
    TABLE "payment_p2007_05" CONSTRAINT "payment_p2007_05_rental_id_fkey" FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
    TABLE "payment_p2007_06" CONSTRAINT "payment_p2007_06_rental_id_fkey" FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
TЁшухЁш:
    last_updated BEFORE UPDATE ON rental FOR EACH ROW EXECUTE FUNCTION last_updated()


pagila=# SELECT f.title, lower(r.rental_period) AS rental_start, upper(r.rental_period) AS rental_end
pagila-# FROM rental r
pagila-# JOIN inventory i ON r.inventory_id = i.inventory_id
pagila-# JOIN film f ON i.film_id = f.film_id
pagila-# JOIN customer c ON r.customer_id = c.customer_id
pagila-# WHERE c.first_name = 'Alice' AND c.last_name = 'Cooper';
 title | rental_start | rental_end
-------+--------------+------------
(0 Ё фъ¦т)


pagila=# SELECT * FROM customer WHERE first_name = 'Alice' AND last_name = 'Cooper';
 customer_id | store_id | first_name | last_name | email | address_id | activebool | create_date | last_update | active -------------+----------+------------+-----------+-------+------------+------------+-------------+-------------+--------(0 Ё фъ¦т)


pagila=# SELECT f.title, lower(r.rental_period) AS rental_start, upper(r.rental_period) AS rental_end
pagila-# FROM rental r
pagila-# JOIN inventory i ON r.inventory_id = i.inventory_id
pagila-# JOIN film f ON i.film_id = f.film_id
pagila-# JOIN customer c ON r.customer_id = c.customer_id
pagila-# WHERE c.first_name = 'Alice' AND c.last_name = 'Cooper';
 title | rental_start | rental_end
-------+--------------+------------
(0 Ё фъ¦т)


pagila=# SELECT first_name, last_name FROM customer LIMIT 10;
 first_name | last_name
------------+-----------
 MARY       | SMITH
 PATRICIA   | JOHNSON
 LINDA      | WILLIAMS
 BARBARA    | JONES
 ELIZABETH  | BROWN
 JENNIFER   | DAVIS
 MARIA      | MILLER
 SUSAN      | WILSON
 MARGARET   | MOORE
 DOROTHY    | TAYLOR
(10 Ё фъ¦т)


pagila=# SELECT f.title, lower(r.rental_period) AS rental_start, upper(r.rental_period) AS rental_end
pagila-# FROM rental r
pagila-# JOIN inventory i ON r.inventory_id = i.inventory_id
pagila-# JOIN film f ON i.film_id = f.film_id
pagila-# JOIN customer c ON r.customer_id = c.customer_id
pagila-# WHERE c.first_name = 'MARY' AND c.last_name = 'SMITH';
         title          |    rental_start     |     rental_end
------------------------+---------------------+---------------------
 PATIENT SISTER         | 2005-05-25 11:30:37 | 2005-06-03 12:00:37
 TALENTED HOMICIDE      | 2005-05-28 10:35:23 | 2005-06-03 06:32:23
 MUSKETEERS WAIT        | 2005-06-15 00:54:12 | 2005-06-23 02:42:12
 DETECTIVE VISION       | 2005-06-15 18:02:53 | 2005-06-19 15:54:53
 FERRIS MOTHER          | 2005-06-15 21:08:46 | 2005-06-25 02:26:46
 CLOSER BANG            | 2005-06-16 15:18:57 | 2005-06-17 21:05:57
 ATTACKS HATE           | 2005-06-18 08:41:48 | 2005-06-22 03:36:48
 SAVANNAH TOWN          | 2005-06-18 13:33:59 | 2005-06-19 17:40:59
 YOUTH KICK             | 2005-06-21 06:24:45 | 2005-06-28 03:28:45
 FIRE WOLVES            | 2005-07-08 03:17:05 | 2005-07-14 01:19:05
 SATURDAY LAMBS         | 2005-07-08 07:33:56 | 2005-07-12 13:25:56
 SNATCH SLIPPER         | 2005-07-09 13:24:07 | 2005-07-14 14:01:07
 CONFIDENTIAL INTERVIEW | 2005-07-09 16:38:01 | 2005-07-13 18:02:01
 EXPECATIONS NATURAL    | 2005-07-11 10:13:46 | 2005-07-19 13:15:46
 LUCK OPUS              | 2005-07-27 11:31:22 | 2005-07-31 06:50:22
 DOORS PRESIDENT        | 2005-07-28 09:04:45 | 2005-07-30 12:37:45
 USUAL UNTOUCHABLES     | 2005-07-28 16:18:23 | 2005-07-30 17:56:23
 FROST HEAD             | 2005-07-28 17:33:39 | 2005-07-29 20:17:39
 JUMANJI BLADE          | 2005-08-19 13:56:54 | 2005-08-23 08:50:54
 UNFORGIVEN ZOOLANDER   | 2005-08-21 23:33:57 | 2005-08-23 01:30:57
 FIREBALL PHILADELPHIA  | 2005-08-22 01:27:57 | 2005-08-27 07:01:57
 FIREBALL PHILADELPHIA  | 2005-08-22 19:41:37 | 2005-08-28 22:49:37
 BIKINI BORROWERS       | 2005-08-22 20:03:46 | 2005-08-30 01:51:46
(32 Ё фъш)


pagila=# SISTER         | 2005-08-19 09:55:16 | 2005-08-20 14:44:16
pagila=# --
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=#
pagila=# SELECT f.title, COUNT(r.rental_id) AS rental_count
pagila-# FROM rental r
pagila-# JOIN inventory i ON r.inventory_id = i.inventory_id
pagila-# JOIN film f ON i.film_id = f.film_id
pagila-# GROUP BY f.title
pagila-# ORDER BY rental_count DESC
pagila-# LIMIT 5;
        title        | rental_count
---------------------+--------------
 BUCKET BROTHERHOOD  |           34
 ROCKETEER MOTHER    |           33
 RIDGEMONT SUBMARINE |           32
 SCALAWAG DUCK       |           32
 FORWARD TEMPLE      |           32
(5 Ё фъ¦т)


pagila=# INSERT INTO customer (first_name, last_name, email, address_id, active, create_date, last_update)
pagila-# VALUES ('Alice', 'Cooper', 'alice.cooper@example.com', 1, true, NOW(), NOW());
ПОМИЛКА:  стовпець "active" має тип smallint, а вираз boolean
РЯДОК 2: ...'Alice', 'Cooper', 'alice.cooper@example.com', 1, true, NOW(...
                                                              ^
П?ДКАЗКА:  Потр?бно буде переписати або привести вираз.
pagila=# INSERT INTO customer (first_name, last_name, email, address_id, active, create_date, last_update)
pagila-# VALUES ('Alice', 'Cooper', 'alice.cooper@example.com', 1, 1, NOW(), NOW());
ПОМИЛКА:  вставити значення non-DEFAULT до стовпця "active" не можна
ДЕТАЛ?:   Стовпець "active" є згенерованим стовпцем.
pagila=# INSERT INTO customer (first_name, last_name, email, address_id, create_date, last_update)
pagila-# VALUES ('Alice', 'Cooper', 'alice.cooper@example.com', 1, NOW(), NOW());
ПОМИЛКА:  null значення в стовпц? "store_id" в?дношення "customer" порушує not-null обмеження
ДЕТАЛ?:   Помилковий рядок м?стить (600, null, Alice, Cooper, alice.cooper@example.com, 1, t, 2025-01-31, 2025-01-31 06:14:14.378225, 1).
pagila=# INSERT INTO customer (first_name, last_name, email, address_id, store_id, create_date, last_update)
pagila-# VALUES ('Alice', 'Cooper', 'alice.cooper@example.com', 1, 1, NOW(), NOW());
INSERT 0 1
pagila=# UPDATE address
pagila-# SET address = '456 Elm St'
pagila-# WHERE address = '123 Main St';
UPDATE 0
pagila=# UPDATE customer
pagila-# SET address_id = (SELECT address_id FROM address WHERE address = '456 Elm St')
pagila-# WHERE first_name = 'Alice' AND last_name = 'Cooper';
ПОМИЛКА:  null значення в стовпц? "address_id" в?дношення "customer" порушує not-null обмеження
ДЕТАЛ?:   Помилковий рядок м?стить (601, 1, Alice, Cooper, alice.cooper@example.com, null, t, 2025-01-31, 2025-01-31 06:17:46.974377, 1).
pagila=# SELECT * FROM address WHERE address = '123 Main St';
 address_id | address | address2 | district | city_id | postal_code | phone | last_update
------------+---------+----------+----------+---------+-------------+-------+-------------
(0 Ё фъ¦т)


pagila=# INSERT INTO address (address, address2, district, city_id, postal_code, phone, last_update)
pagila-# VALUES ('456 Elm St', '', '', 1, '', '', NOW());
INSERT 0 1
pagila=# UPDATE customer
pagila-# SET address_id = (SELECT address_id FROM address WHERE address = '456 Elm St')
pagila-# WHERE first_name = 'Alice' AND last_name = 'Cooper';
UPDATE 1
pagila=# DELETE FROM customer
pagila-# WHERE first_name = 'Alice' AND last_name = 'Cooper';
DELETE 1
pagila=# \q