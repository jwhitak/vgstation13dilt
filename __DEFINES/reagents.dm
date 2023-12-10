#define REAGENT_STATE_SOLID 1
#define REAGENT_STATE_LIQUID 2
#define REAGENT_STATE_GAS 3
#define FOOD_METABOLISM 0.4
#define REAGENTS_OVERDOSE 30
#define REM REAGENTS_EFFECT_MULTIPLIER

// Use in chem.flags.
#define CHEMFLAG_DISHONORABLE 1
#define CHEMFLAG_OBSCURING	2
#define CHEMFLAG_PIGMENT	4

#define EXPLICITLY_INVALID_REAGENT_ID "Use this ID if the reagent is not supposed to be used, like for the base type of other reagents."

//Reagents

#define VAPORSALT			"vaporsalt"
#define BUSTANUT 			"bustanut"
#define ROGAN 			"rogan"
#define BLUEGOO			"bluegoo"
#define GREYGOO			"greygoo"
#define SLIMEJELLY 			"slimejelly"
#define BLOOD 			"blood"
#define VACCINE 			"vaccine"
#define WATER 			"water"
#define LUBE 			"lube"
#define SODIUM_POLYACRYLATE			"sodium_polyacrylate"
#define PHALANXIMINE 			"phalanximine"
#define TOXIN 			"toxin"
#define PLASTICIDE 			"plasticide"
#define CYANIDE "cyanide"
#define POTASSIUM_HYDROXIDE 			"potassium_hydroxide"
#define CHEFSPECIAL 			"chefspecial"
#define MINTTOXIN 			"minttoxin"
#define MINTESSENCE				"mintessence"
#define MUTATIONTOXIN 			"mutationtoxin"
#define AMUTATIONTOXIN 			"amutationtoxin"
#define STOXIN 			"stoxin"
#define INAPROVALINE 			"inaprovaline"
#define HOLYWATER 			"holywater"
#define SEROTROTIUM 			"serotrotium"
#define SILICATE 			"silicate"
#define OXYGEN 			"oxygen"
#define COPPER 			"copper"
#define NITROGEN 			"nitrogen"
#define HYDROGEN 			"hydrogen"
#define POTASSIUM 			"potassium"
#define MERCURY 			"mercury"
#define SULFUR 			"sulfur"
#define CARBON 			"carbon"
#define CHLORINE 			"chlorine"
#define FLUORINE 			"fluorine"
#define CHLORAMINE			"chloramine"
#define SODIUM 			"sodium"
#define PHOSPHORUS 			"phosphorus"
#define LITHIUM 			"lithium"
#define SUGAR 			"sugar"
#define CARAMEL 			"caramel"
#define SACID 			"sacid"
#define PACID 			"pacid"
#define GLYCEROL 			"glycerol"
#define NITROGLYCERIN 			"nitroglycerin"
#define RADIUM 			"radium"
#define RYETALYN 			"ryetalyn"
#define PAISMOKE 			"paismoke"
#define THERMITE 			"thermite"
#define PARACETAMOL 			"paracetamol"
#define MUTAGEN 			"mutagen"
#define TRAMADOL 			"tramadol"
#define OXYCODONE 			"oxycodone"
#define VIRUSFOOD 			"virusfood"
#define STERILIZINE 			"sterilizine"
#define IRON 			"iron"
#define GOLD 			"gold"
#define SILVER 			"silver"
#define URANIUM 			"uranium"
#define DIAMONDDUST		"diamond"
#define PHAZON 			"phazon"
#define ALUMINUM 			"aluminum"
#define SILICON 			"silicon"
#define FUEL 			"fuel"
#define FUELBOMB 			"fuelbomb"
#define PLASMABOMB 			"plasmabomb"
#define ANFOBOMB 			"anfobomb"
#define VOMIT 			"vomit"
#define CLEANER 			"cleaner"
#define BLEACH 				"bleach"
#define FERTILIZER 			"fertilizer"
#define EZNUTRIENT 			"eznutrient"
#define ROBUSTHARVEST 			"robustharvest"
#define PLANTBGONE 			"plantbgone"
#define INSECTICIDE 			"insecticide"
#define PLASMA 			"plasma"
#define LEPORAZINE 			"leporazine"
#define CRYPTOBIOLIN 			"cryptobiolin"
#define LEXORIN 			"lexorin"
#define KELOTANE 			"kelotane"
#define DERMALINE 			"dermaline"
#define DEXALIN 			"dexalin"
#define DEXALINP 			"dexalinp"
#define TRICORDRAZINE 			"tricordrazine"
#define SIMPOLINOL			"simpolinol"
#define ADMINORDRAZINE 			"adminordrazine"
#define PROCIZINE 			"procizine"
#define SYNAPTIZINE 			"synaptizine"
#define IMPEDREZENE 			"impedrezene"
#define HYRONALIN 			"hyronalin"
#define ARITHRAZINE 			"arithrazine"
#define ALKYSINE 			"alkysine"
#define ALKYCOSINE 			"alkycosine"
#define PHYTOSINE			"phytosine"
#define IMIDAZOLINE 			"imidazoline"
#define INACUSIATE 			"inacusiate"
#define PERIDAXON 			"peridaxon"
#define BICARIDINE 			"bicaridine"
#define SYNTHOCARISOL 			"synthocarisol"
#define PHYTOCARISOL			"phytocarisol"
#define HYPERZINE 			"hyperzine"
#define HYPOZINE 			"hypozine"
#define LIQUIDPCP 			"liquidpcp"
#define CRYOXADONE 			"cryoxadone"
#define CLONEXADONE 			"clonexadone"
#define REZADONE 			"rezadone"
#define PLACEBO 			"placebo"
#define SPACEACILLIN 			"spaceacillin"
#define NANOFLOXACIN 			"nanofloxacin"
#define CARPOTOXIN 			"carpotoxin"
#define ZOMBIEPOWDER 			"zombiepowder"
#define MINDBREAKER 			"mindbreaker"
#define HEARTBREAKER 			"heartbreaker"
#define SPIRITBREAKER 			"spiritbreaker"
#define DEFALEXORIN			"defalexorin"
#define METHYLIN 			"methylin"
#define BICARODYNE 			"bicarodyne"
#define STABILIZINE 			"stabilizine"
#define PRESLOMITE			"preslomite"
#define NANITES 			"nanites"
#define AUTISTNANITES 			"autistnanites"
#define XENOMICROBES 			"xenomicrobes"
#define NANOBOTS 			"nanobots"
#define MEDNANOBOTS 			"mednanobots"
#define COMNANOBOTS 			"comnanobots"
#define FLUOROSURFACTANT 			"fluorosurfactant"
#define PICCOLYN			"piccolyn"
#define NICOTINE 			"nicotine"
#define AMMONIA 			"ammonia"
#define SALINE				"saline"
#define GLUE 			"glue"
#define DIETHYLAMINE 			"diethylamine"
#define AMMONIUMNITRATE         "ammoniumnitrate"
#define ETHYLREDOXRAZINE 			"ethylredoxrazine"
#define CHLORALHYDRATE 			"chloralhydrate"
#define SUX					"suxameth"
#define NUTRIMENT 			"nutriment"
#define LIPOZINE 			"lipozine"
#define SOYSAUCE 			"soysauce"
#define KETCHUP 			"ketchup"
#define CAPSAICIN 			"capsaicin"
#define CONDENSEDCAPSAICIN 			"condensedcapsaicin"
#define BLACKCOLOR 			"blackcolor"
#define FROSTOIL 			"frostoil"
#define SODIUMCHLORIDE 			"sodiumchloride"
#define HOLYSALTS 			"holysalts"
#define CREATINE 			"creatine"
#define CARPPHEROMONES 			"carppheromones"
#define BLACKPEPPER 			"blackpepper"
#define CINNAMON 			"cinnamon"
#define ZAMSPICES			"zamspices"
#define ZAMMILD				"zammild"
#define ZAMSPICYTOXIN			"zamspicytoxin"
#define POLYPGELATIN				"polypgelatin"
#define COCO 			"coco"
#define AMATOXIN 			"amatoxin"
#define AMANATIN 			"amanatin"
#define PSILOCYBIN 			"psilocybin"
#define SPRINKLES 			"sprinkles"
#define SYNDICREAM 			"syndicream"
#define CORNOIL 			"cornoil"
#define ENZYME 			"enzyme"
#define FLOUR 			"flour"
#define NOVAFLOUR		"novaflour"
#define RICE 			"rice"
#define CHERRYJELLY 			"cherryjelly"
#define HONEY			"honey"
#define ROYALJELLY			"royaljelly"
#define CHILLWAX			"chillwax"
#define DIPPING_SAUCE	"dippingsauce"
#define DISCOUNT 			"discount"
#define IRRADIATEDBEANS 			"irradiatedbeans"
#define TOXICWASTE 			"toxicwaste"
#define REFRIEDBEANS 			"refriedbeans"
#define MUTATEDBEANS 			"mutatedbeans"
#define BEFF 			"beff"
#define HORSEMEAT 			"horsemeat"
#define MOONROCKS 			"moonrocks"
#define OFFCOLORCHEESE 			"offcolorcheese"
#define BONEMARROW 			"bonemarrow"
#define GREENRAMEN 			"greenramen"
#define GLOWINGRAMEN 			"glowingramen"
#define DEEPFRIEDRAMEN 			"deepfriedramen"
#define PEPTOBISMOL 			"peptobismol"
#define DRINK 			"drink"
#define ORANGEJUICE 			"orangejuice"
#define OPOKJUICE 			"opokjuice"
#define TOMATOJUICE 			"tomatojuice"
#define LIMEJUICE 			"limejuice"
#define CARROTJUICE 			"carrotjuice"
#define BERRYJUICE 			"berryjuice"
#define POISONBERRYJUICE 			"poisonberryjuice"
#define WATERMELONJUICE 			"watermelonjuice"
#define APPLEJUICE 			"applejuice"
#define LEMONJUICE 			"lemonjuice"
#define BANANA 			"banana"
#define NOTHING 			"nothing"
#define POTATO 			"potato"
#define MILK 			"milk"
#define MOMMIMILK 			"mommimilk"
#define SOYMILK 			"soymilk"
#define CREAM 			"cream"
#define COFFEE 			"coffee"
#define ICECOFFEE 			"icecoffee"
#define TEA 			"tea"
#define ICETEA 			"icetea"
#define ARNOLDPALMER 			"arnoldpalmer"
#define KAHLUA 			"kahlua"
#define TONIC 			"tonic"
#define SODAWATER 			"sodawater"
#define ICE 			"ice"
#define COLA 			"cola"
#define SPACEMOUNTAINWIND 			"spacemountainwind"
#define LEMONADE 			"lemonade"
#define KIRASPECIAL 			"kiraspecial"
#define BROWNSTAR 			"brownstar"
#define MILKSHAKE 			"milkshake"
#define REWRITER 			"rewriter"
#define HIPPIESDELIGHT 			"hippiesdelight"
#define ETHANOL 			"ethanol"
#define BEER 			"beer"
#define WHISKEY 			"whiskey"
#define SPECIALWHISKEY 			"specialwhiskey"
#define GIN 			"gin"
#define ABSINTHE 			"absinthe"
#define PWINE 			"pwine"
#define RUM 			"rum"
#define VODKA 			"vodka"
#define SAKE 			"sake"
#define GLASGOW 			"glasgow"
#define TEQUILA 			"tequila"
#define VERMOUTH 			"vermouth"
#define WINE 			"wine"
#define COGNAC 			"cognac"
#define HOOCH 			"hooch"
#define CHAMPAGNE		"champagne"
#define BLUECURACAO "bluecuracao"
#define TRIPLESEC		"triplesec"
#define BITTERS 		"bitters"
#define SCHNAPPS		"schnapps"
#define ALE 			"ale"
#define THIRTEENLOKO 			"thirteenloko"
#define BILK 			"bilk"
#define ATOMICBOMB 			"atomicbomb"
#define THREEMILEISLAND 			"threemileisland"
#define GOLDSCHLAGER 			"goldschlager"
#define PATRON 			"patron"
#define GINTONIC 			"gintonic"
#define CUBALIBRE 			"cubalibre"
#define WHISKEYCOLA 			"whiskeycola"
#define MARTINI 			"martini"
#define VODKAMARTINI 			"vodkamartini"
#define SAKEMARTINI         "sakemartini"
#define WHITERUSSIAN 			"whiterussian"
#define SCREWDRIVERCOCKTAIL 			"screwdrivercocktail"
#define BOOGER 			"booger"
#define BLOODYMARY 			"bloodymary"
#define GARGLEBLASTER 			"gargleblaster"
#define BRAVEBULL 			"bravebull"
#define TEQUILASUNRISE 			"tequilasunrise"
#define TOXINSSPECIAL 			"toxinsspecial"
#define BEEPSKYSMASH 			"beepskysmash"
#define DOCTORSDELIGHT 			"doctorsdelight"
#define CHANGELINGSTING 			"changelingsting"
#define CHANGELINGSTAB 			"changelingstab"
#define IRISHCREAM 			"irishcream"
#define MANLYDORF 			"manlydorf"
#define LONGISLANDICEDTEA 			"longislandicedtea"
#define MUDSLIDE			"mudslide"
#define BOYSENBERRY_BLIZZARD			"boysenberry_blizzard"
#define SACRIFICIAL_MARY			"sacrificial_mary"
#define CREAMY_HOT_COCO			"creamy_hot_coco"
#define MOONSHINE 			"moonshine"
#define CORNSYRUP 			"cornsyrup"
#define MIDNIGHTKISS	"midnightkiss"
#define COSMOPOLITAN	"cosmopolitan"
#define CORPSEREVIVER	"corpsereviver"
#define BLUELAGOON		"bluelagoon"
#define SEXONTHEBEACH	"sexonthebeach"
#define AMERICANO		"americano"
#define BETWEENTHESHEETS	"betweenthesheets"
#define SIDECAR		"sidecar"
#define CHAMPAGNECOCKTAIL	"champagnecocktail"
#define ESPRESSOMARTINI		"espressomartini"
#define KAMIKAZE		"kamikaze"
#define MOJITO			"mojito"
#define WHISKEYTONIC	"whiskeytonic"
#define MOSCOWMULE		"moscowmule"
#define CINNAMONWHISKY	"cinnamonwhisky"
#define C4COCKTAIL		"c4cocktail"
#define DRAGONSBLOOD	"dragonsblood"
#define DRAGONSSPIT		"dragonsspit"
#define FIREBALLCIDER	"fireballcider"
#define CINNAMONTOASTCOCKTAIL	"cinnamontoastcocktail"
#define MANHATTANFIREBALL		"manhattanfireball"
#define FIREBALLCOLA	"fireballcola"
#define FIRERITA 		"firerita"
#define MAGICA			"magica"
#define MAGICADELUXE			"magicadeluxe"
#define IRISHCOFFEE 			"irishcoffee"
#define MARGARITA 			"margarita"
#define BLACKRUSSIAN 			"blackrussian"
#define MANHATTAN 			"manhattan"
#define WHISKEYSODA 			"whiskeysoda"
#define ANTIFREEZE 			"antifreeze"
#define BAREFOOT 			"barefoot"
#define SNOWWHITE 			"snowwhite"
#define DEMONSBLOOD 			"demonsblood"
#define VODKATONIC 			"vodkatonic"
#define GINFIZZ 			"ginfizz"
#define PINACOLADA 			"pinacolada"
#define SINGULO 			"singulo"
#define SBITEN 			"sbiten"
#define DEVILSKISS 			"devilskiss"
#define MEAD 			"mead"
#define GROG 			"grog"
#define EVOLUATOR		"evoluator"
#define BLOBBEER		"blobbeer"
#define LIBERATOR		"liberator"
#define SPORE			"spore"
#define ALOE 			"aloe"
#define ANDALUSIA 			"andalusia"
#define ALLIESCOCKTAIL 			"alliescocktail"
#define ACIDSPIT 			"acidspit"
#define AMASEC 			"amasec"
#define NEUROTOXIN 			"neurotoxin"
#define BANANAHONK 			"bananahonk"
#define SILENCER 			"silencer"
#define ERIKASURPRISE 			"erikasurprise"
#define IRISHCARBOMB 			"irishcarbomb"
#define SYNDICATEBOMB 			"syndicatebomb"
#define DRIESTMARTINI 			"driestmartini"
#define VINEGAR 			"vinegar"
#define HONKSERUM 			"honkserum"
#define HAMSERUM 			"hamserum"
#define GREENTEA 			"greentea"
#define REDTEA 			"redtea"
#define SINGULARITEA 			"singularitea"
#define CHIFIR 			"chifir"
#define ACIDTEA 			"acidtea"
#define YINYANG 			"yinyang"
#define GYRO 			"gyro"
#define DANTEA 			"dantea"
#define MINT 			"mint"
#define CHAMOMILE 			"chamomile"
#define EXCHAMOMILE 			"exchamomile"
#define FANCYDAN 			"fancydan"
#define PLASMATEA 			"plasmatea"
#define GREYTEA 			"greytea"
#define ESPRESSO 			"espresso"
#define TONIO 			"tonio"
#define CAPPUCCINO 			"cappuccino"
#define DOPPIO 			"doppio"
#define PASSIONE 			"passione"
#define SECCOFFEE 			"seccoffee"
#define ENGICOFFEE			"engicoffee"
#define MEDCOFFEE 			"medcoffee"
#define DETCOFFEE 			"detcoffee"
#define ETANK 			"etank"
#define QUANTUM 			"quantum"
#define SPORTDRINK 			"sportdrink"
#define CITALOPRAM 			"citalopram"
#define PAROXETINE 			"paroxetine"
#define GRAVY 			"gravy"
#define LEFT4ZED		"left4zed"
#define ANTI_TOXIN		"anti_toxin"
#define REAGENT			"reagent"
#define STOXIN2			"stoxin2"
#define SPACE_DRUGS		"space_drugs"
#define FOAMING_AGENT	"foaming_agent"
#define BEER2			"beer2"
#define HOT_COCO		"hot_coco"
#define HOT_COCO_SUBHUMAN		"hot_coco_subhuman"
#define DRY_RAMEN		"dry_ramen"
#define HOT_RAMEN		"hot_ramen"
#define HELL_RAMEN		"hell_ramen"
#define CLOTTING_AGENT	"clotting_agent"
#define BIOFOAM			"biofoam"
#define SOY_LATTE		"soy_latte"
#define CAFE_LATTE		"cafe_latte"
#define NUKA_COLA		"nuka_cola"
#define DR_GIBB			"dr_gibb"
#define SPACE_UP		"space_up"
#define LEMON_LIME		"lemon_lime"
#define DIY_SODA		"diy_soda"
#define B52				"b52"
#define MANHATTAN_PROJ	"manhattan_proj"
#define BAHAMA_MAMA		"bahama_mama"
#define RED_MEAD		"red_mead"
#define ICED_BEER		"iced_beer"
#define DANS_WHISKEY		"dans_whiskey"
#define CHARCOAL		"charcoal"
#define SANGRIA			"sangria"
#define BLOCKIZINE		"blockizine"
#define FISHBLEACH		"fishbleach"
#define CHEESYGLOOP		"cheesy_gloop"
#define MAPLESYRUP		"maple_syrup"
#define ROACHSHELL		"roach_shell"
#define GREYVODKA		"grey_vodka"
#define MEDCORES		"medium cores"
#define SOFTCORES		"softcores"
#define LITHOTORCRAZINE "lithotorcrazine"
#define HEMOSCYANINE	"hemoscyanine"
#define ANTHRACENE		"anthracene"
#define PINTPOINTER		"pintpointer"
#define MUCUS			"mucus"
#define ALBUTEROL		"albuterol"
#define LIQUIDBUTTER	"liquidbutter"
#define SALTWATER		"saltwater"
#define CALCIUMOXIDE		"calciumoxide"
#define CALCIUMHYDROXIDE	"calciumhydroxide"
#define CALCIUMCARBONATE	"calciumcarbonate"
#define MUSTARD			"mustard"
#define RELISH			"relish"
#define UNTABLE_MUTAGEN		"untable"
#define ELECTRIC_SHEEP		"electric_sheep"
#define SCIENTISTS_SERENDIPITY		"scientists_serendipity"
#define METABUDDY		"metabuddy"
#define SPIDERS			"spiders"
#define WEED_EATER		"weed_eater"
#define RAGSTORICHES	"ragstoriches"
#define WAIFU			"waifu"
#define HUSBANDO		"husbando"
#define TOMBOY			"tomboy"
#define BEEPSKY_CLASSIC	"beepsky_classic"
#define SMOKYROOM		"smokyroom"
#define BAD_TOUCH		"bad_touch"
#define SUICIDE			"suicide"
#define GRAVSINGULO 			"gravitationalsingulo"
#define GRAVSINGULARITEA 			"gravitationalsingularitea"
#define KARMOTRINE		"karmotrine"
#define DEGENERATECALCIUM "degeneratecalcium"
#define GRAPEJUICE		"grapejuice"
#define GGRAPEJUICE		"ggrapejuice"
#define BWINE			"bwine"
#define WWINE			"wwine"
#define PLUMPHJUICE		"plumphjuice"
#define PLUMPHWINE		"phwine"
#define IRONROT			"ironrot"
#define GEOMETER		"geometer"
#define EGG_YOLK		"egg_yolk"
#define PANCAKE			"pancake"
#define SPAGHETTI		"spaghetti"
#define MUSTARD_POWDER	"mustard_powder"
#define MAYO			"mayo"
#define DIABEETUSOL		"diabeetusol"
#define MANNITOL		"mannitol"
#define DIETINE			"dietine"
#define GATORMIX		"gatormix"
#define BLISTEROL		"blisterol"
#define ECTOPLASM		"ectoplasm"
#define MONSTERMASH		"monstermash"
#define EGGNOG			"eggnog"
#define FESTIVE_EGGNOG	"festive_eggnog"
#define TENDIES			"tendies"
#define DSYRUP			"dsyrup"
#define GRUE_BILE		"grue_bile"
#define PINKLADY		"pinklady"
#define FAKE_CREEP		"fake_creep"
#define BLOBANINE		"blobanine"
#define BLOB_ESSENCE	"blob_essence"
#define METHAMPHETAMINE "methamphetamine"

#define TUNGSTEN 			"tungsten"
#define LITHIUMSODIUMTUNGSTATE 			"lithiumsodiumtungstate"
#define GROUND_ROCK 			"ground_rock"
#define ANALYSIS_SAMPLE 			"analysis_sample"
#define CHEMICAL_WASTE 			"chemical_waste"
#define TRINITRINE		"trinitrine"
#define MIDAZOLINE		"midazoline"
#define LOCUTOGEN		"locutogen"
#define BUMCIVILIAN		"bumcivilian"
#define PUNCTUALITE		"punctualite"

//Plant-specific reagents
#define TANNIC_ACID		"tannic_acid"
#define KATHALAI		"kathalai"
#define OPIUM			"opium"
#define MESCALINE		"mescaline"
#define CYTISINE		"cytisine"
#define COCAINE			"cocaine"
#define ZEAXANTHIN		"zeaxanthin"
#define VALERENIC_ACID	"valerenic_acid"
#define ALLICIN			"allicin"
#define FORMIC_ACID		"formic_acid"
#define PHENOL			"phenol"
#define CURARE			"curare"
#define SOLANINE		"solanine"
#define PHYSOSTIGMINE	"physostigmine"
#define HYOSCYAMINE		"hyoscyamine"
#define CORIAMYRTIN		"coriamyrtin"
#define THYMOL			"thymol"
#define POTASSIUMCARBONATE "potassium_carbonate"
#define TOBACCO			"tobacco"
#define DANBACCO		"danbacco"
#define PETRITRICIN		"petritricin"
#define APETRINE		"apetrine"
#define SODIUMSILICATE	"sodiumsilicate"
#define COLORFUL_REAGENT "colorful_reagent"
#define AMINOMICIN		"aminomicin"
#define AMINOMICIAN		"aminomician"
#define AMINOCYPRINIDOL	"aminocyprinidol"
#define AMINOBLATELLA	"aminoblatella"
#define TOMATO_SOUP		"tomato_soup"
#define LUMINOL			"luminol"
#define CAFFEINE		"caffeine"
#define MIMOSA			"mimosa"
#define LEMONDROP		"lemondrop"

#define FLAXOIL			"flax_oil"

// How many units of reagent are consumed per tick, by default.
#define REAGENTS_METABOLISM 0.2

//Flag for skipping running handle_reactions() after reagent heating when it's already been determined that the given reagents have no reaction that could occur if only temperature was changed.
#define SKIP_RXN_CHECK_ON_HEATING (1<<0)

//Temperatures of things (Kelvin)
#define TEMPERATURE_HOTMETAL 300
#define TEMPERATURE_LASER ARBITRARILY_PLANCK_NUMBER //Lasers technically have no upper limit
#define TEMPERATURE_FLAME 700
#define TEMPERATURE_WELDER 3480
#define TEMPERATURE_PLASMA 4500
#define TEMPERATURE_ETHANOL (T0C+1560)
#define HEAT_TRANSFER_MULTIPLIER 7 //Multiplies the numbers above when heating a reagent container. A truly magical number. Not currently used anywhere due to a bug with reagent heating being fixed.

// By defining the effect multiplier this way, it'll exactly adjust
// all effects according to how they originally were with the 0.4 metabolism
#define REAGENTS_EFFECT_MULTIPLIER REAGENTS_METABOLISM / 0.4

//Pulse related bullshit
var/list/tachycardics = list(COFFEE, INAPROVALINE, HYPERZINE, HYPOZINE, NITROGLYCERIN, THIRTEENLOKO, NICOTINE, COCAINE, CAFFEINE)	//increase heart rate
var/list/bradycardics = list(NEUROTOXIN, CRYOXADONE, CLONEXADONE, SPACE_DRUGS, STOXIN, GREYVODKA, CURARE, MESCALINE, VALERENIC_ACID)	//decrease heart rate
var/list/heartstopper = list(/*"potassium_phorochloride",*/ ZOMBIEPOWDER) //this stops the heart
var/list/cheartstopper = list(/*"potassium_chloride",*/ CHEESYGLOOP) //this stops the heart when overdose is met -- c = conditional

//Lists of defines
//Preferably have the synthetic (chemist-made) versions first, and alternatives after that. This helps with electrolyzing.

#define ANTI_TOXINS list(ANTI_TOXIN, ALLICIN)
#define KELOTANES list(KELOTANE, TANNIC_ACID)
#define DERMALINES list(DERMALINE, KATHALAI)
#define MUTAGENS list(MUTAGEN, UNTABLE_MUTAGEN)
#define BICARIDINES list(BICARIDINE, OPIUM)
#define SPACE_DRUGGS list(SPACE_DRUGS, MESCALINE)
#define SYNAPTIZINES list(SYNAPTIZINE, CYTISINE)
#define HYPERZINES list(HYPERZINE, COCAINE, METHAMPHETAMINE)
#define IMIDAZOLINES list(IMIDAZOLINE, ZEAXANTHIN)
#define STOXINS list(STOXIN, STOXIN2, VALERENIC_ACID)
#define SACIDS list(SACID, FORMIC_ACID)
#define PACIDS list(PACID, PHENOL)
#define NEUROTOXINS list(NEUROTOXIN, CURARE)
#define TOXINS list(TOXIN, SOLANINE)
#define CRYPTOBIOLINS list(CRYPTOBIOLIN, PHYSOSTIGMINE)
#define IMPEDREZENES list(IMPEDREZENE, HYOSCYAMINE)
#define LEXORINS list(LEXORIN, CORIAMYRTIN)
#define DEXALINS list(DEXALIN, THYMOL)
#define ACIDS list(SACID, PACID, FORMIC_ACID, PACID, PHENOL, ACIDSPIT, ACIDTEA)
#define WATERS list(WATER, HOLYWATER, ICE)
#define CORES list(SOFTCORES, MEDCORES)
#define ALLNANITES list(NANITES, AUTISTNANITES)
#define SUGARS list(SUGAR, CORNSYRUP)
#define GUNKS list(CHEMICAL_WASTE, TOXICWASTE, VOMIT, TOXIN, SOLANINE, RADIUM, MUTAGEN, UNTABLE_MUTAGEN, SPIDERS)
#define COLDDRINKS list(ICECOFFEE, ICETEA, ARNOLDPALMER, TONIC, SODAWATER, ICE, COLA, NUKA_COLA, GEOMETER, SPACEMOUNTAINWIND, DR_GIBB, SPACE_UP, LEMON_LIME, LEMONADE, KIRASPECIAL, MILKSHAKE, BROWNSTAR, REWRITER, DIY_SODA)
#define HOTDRINKS list(COFFEE, SOY_LATTE, TEA, GATORMIX, HOT_COCO, HOT_COCO_SUBHUMAN, CREAMY_HOT_COCO) //Blisterol not included as that's medicine, not a warm drink
//HOT and COLD drinks defines used for the mint toxin/mint essence checks for tooth pain and shit, maybe you can find another use for it

#define INCENSE_HAREBELLS	"harebells"
#define INCENSE_POPPIES		"poppies"
#define INCENSE_SUNFLOWERS	"sunflowers"
#define INCENSE_MOONFLOWERS	"moonflowers"
#define INCENSE_NOVAFLOWERS	"novaflowers"
#define INCENSE_BANANA		"bananas"
#define INCENSE_BOOZE		"helmets"
#define INCENSE_LEAFY		"cabbage"
#define INCENSE_VAPOR		"vaporsacs"
#define INCENSE_DENSE		"grasses"
#define INCENSE_CRAVE		"vales"
#define INCENSE_CORNOIL 	"cornoils"
#define INCENSE_MUSTARDPLANT "mustardplant"
