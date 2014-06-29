# encoding: UTF-8

$: << 'lib'

require 'command_translate'

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'

require 'fakeweb'
require 'uri'

FakeWeb.register_uri(:get, "http://translate.google.com.br/translate_a/t?client=t&text=my%20car%20is%20more%20fast%20than%20yours&hl=es&sl=en&ie=UTF-8&oe=UTF-8", :body => "[[[\"mi coche es más rápido que su\",\"my car is more fast than your\",\"\",\"\"]],,\"en\",,[[\"mi\",[5],1,0,701,0,1,0],[\"coche es más\",[6],1,0,554,1,4,0],[\"rápido\",[7],1,0,766,4,5,0],[\"que\",[8],1,0,438,5,6,0],[\"su\",[9],1,0,606,6,7,0]],[[\"my\",5,[[\"mi\",701,1,0],[\"My\",0,1,0],[\"Mis\",0,1,0],[\"de mi\",0,1,0],[\"me\",0,1,0]],[[0,2]],\"my car is more fast than your\"],[\"car is more\",6,[[\"coche es más\",554,1,0],[\"automóvil es más\",0,1,0],[\"auto es más\",0,1,0],[\"coche más\",0,1,0],[\"coche está más\",0,1,0]],[[3,14]],\"\"],[\"fast\",7,[[\"rápido\",766,1,0],[\"rápida\",0,1,0],[\"rápidamente\",0,1,0],[\"rápidos\",0,1,0],[\"rapidez\",0,1,0]],[[15,19]],\"\"],[\"than\",8,[[\"que\",438,1,0],[\"de\",0,1,0],[\"a\",0,1,0],[\"del\",0,1,0],[\"que la\",0,1,0]],[[20,24]],\"\"],[\"your\",9,[[\"su\",606,1,0],[\"el\",22,1,0],[\"tu\",14,1,0],[\"la\",0,1,0],[\"de su\",0,1,0]],[[25,29]],\"\"]],,,[[\"en\"]],30]")

FakeWeb.register_uri(:get, "http://translate.google.com.br/translate_a/t?client=t&text=playa&hl=en&sl=es&ie=UTF-8&oe=UTF-8", :body => "[[[\"beach\",\"playa\",\"\",\"\"]],[[\"noun\",[\"beach\",\"seaside\",\"shore\",\"seashore\",\"foreshore\"],[[\"beach\",[\"playa\"],[9],0.63563865],[\"seaside\",[\"playa\",\"costa\"],[1],0.0060398565],[\"shore\",[\"orilla\",\"costa\",\"playa\",\"puntal\",\"tierra bald\xC3\xADa\",\"escora\"],[2],0.0033880526],[\"seashore\",[\"costa\",\"orilla del mar\",\"playa\"],[5],0.00065680395],[\"foreshore\",[\"playa\"],[10],0.00018526005]]]],\"es\",,[[\"beach\",[5],1,0,999,0,1,0]],[[\"playa\",4,,,\"\"],[\"playa\",5,[[\"beach\",999,1,0],[\"shore\",0,1,0],[\"seaside\",0,1,0],[\"the beach\",0,1,0]],[[0,5]],\"playa\"]],,,[[\"es\"]],7]")

FakeWeb.register_uri(:get, "http://translate.google.com.br/translate_a/t?client=t&text=You%20can%20translate%20more%20than%20one%20phrase.%20It%20is%20an%20example.&hl=pt-br&sl=en&ie=UTF-8&oe=UTF-8", :body => "[[[\"Voc\xC3\xAA pode traduzir mais do que uma frase. \",\"You can translate more than one phrase.\",\"\",\"\"],[\"\xC3\x89 um exemplo .\",\"It is an example.\",\"\",\"\"]],,\"en\",,[[\"Voc\xC3\xAA pode traduzir\",[4],1,0,939,0,3,0],[\"mais do que\",[5],1,0,634,3,6,0],[\"uma\",[6],1,0,682,6,7,0],[\"frase.\",[7],1,0,961,7,9,0],[\"\xC3\x89 um exemplo\",[15],1,0,643,0,3,1],[\".\",[16],0,0,685,3,4,1]],[[\"You can translate\",4,[[\"Voc\xC3\xAA pode traduzir\",939,1,0],[\"\xC3\x89 poss\xC3\xADvel traduzir\",0,1,0],[\"Voc\xC3\xAA pode traduzi\",0,1,0],[\"Voc\xC3\xAA pode traduzir o\",0,1,0],[\"Voc\xC3\xAA puder traduzir\",0,1,0]],[[0,17]],\"You can translate more than one phrase.\"],[\"more than\",5,[[\"mais do que\",634,1,0],[\"mais de\",1,1,0],[\"mais do\",0,1,0],[\"mais\",0,1,0],[\"mais que\",0,1,0]],[[18,27]],\"\"],[\"one\",6,[[\"uma\",682,1,0],[\"um\",0,1,0]],[[28,31]],\"\"],[\"phrase .\",7,[[\"frase.\",961,1,0]],[[32,39]],\"\"],[\"It is an example\",15,[[\"\xC3\x89 um exemplo\",643,1,0],[\"Que \xC3\xA9 um exemplo\",0,1,0],[\"Ele \xC3\xA9 um exemplo\",0,1,0],[\"Este \xC3\xA9 um exemplo\",0,1,0],[\"Ela \xC3\xA9 um exemplo\",0,1,0]],[[0,16]],\"It is an example.\"],[\".\",16,[[\".\",685,0,0]],[[16,17]],\"\"]],,,[[\"en\"]],36]")
