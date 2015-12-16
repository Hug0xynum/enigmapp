# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Theme.create({
  id: 1,
  label: "history"
})
Theme.create({
  id: 2,
  label: "philosophy"
})
Theme.create({
  id: 3,
  label: "maths"
})
Theme.create({
  id: 4,
  label: "technology"
})

#Test Enigma
Enigma.create({
  id:0,
  difficulty:100,
  label: "Fidele Destrier",
  description: "Quelle est la couleur du cheval blanc d'Henri IV ?",
  clue: "Il n'est pas noir.",
  right_answer: "Blanc"
})

#History's Enigmas
Enigma.create({
  id:1,
  theme_id:1,
  difficulty:1,
  label: "Vue d'Ensemble",
  description: "Je suis la connaissance complète ou partielle.
  Je viens du passé.
  Je reste objective.
  Je raconte les faits.

  Qui suis-je?",
  clue: "Les enfants me réclament souvent avant de dormir.",
  right_answer: "Histoire"
})
Enigma.create({
  id:2,
  theme_id:1,
  difficulty:2,
  label: "Parlons de la France",
  description:
  "Je représente la France, mais je suis né sur une île.
  J'ai marqué l'Histoire, pourtant j'ai perdu.
  Je suis Grand, sauf par ma taille.

  Qui suis-je?",
  clue: "Mon nom fait référence à un logement agréable.",
  right_answer: "Napoleon"
})
Enigma.create({
  id:3,
  theme_id:1,
  difficulty:3,
  label: "Et en Rébus?",
  description:
  "Mon premier est au début de l'Histoire.
  Mon second a été utilisé pour faire des tenues militaires et des chandails.
  Mon tout est un prénom.",
  clue: "Je suis qualifiée de Sainte, pourtant on me rattache à la mort d'un Homme.",
  right_answer: "Helene"
})
Enigma.create({
  id:4,
  theme_id:1,
  difficulty:4,
  label: "Femme de Caractère",
  description:
  "La guerre, j'ai provoqué.
  La mort, j'ai causé.
  Plus de trois, j'ai fait tomber.
  Pour l'amour, j'ai tout risqué.

  Que suis-je?",
  clue: "La colère de mon père s'abat comme la foudre.",
  right_answer: "Deesse"
})
Enigma.create({
  id:5,
  theme_id:1,
  difficulty:5,
  label: "Entre passé et futur",
  description:
  "J'ai traversé les époques.
  J'ai traversé les cultures.
  J'ai de nombreux noms différents.
  J'ai été associé à des barbaries.",
  clue: "Certains ne me voient pas, d'autres ne voient que moi.",
  right_answer: "Religion"
})

#Philosophy's Enigmas
Enigma.create({
  id:6,
  theme_id:2,
  difficulty:1,
  label: "Un animal peu ordinaire",
  description: "Il peut être un loup pour lui-même et pour d’autre une chose sacrée.",
  clue: "Hobbes fut mon précurseur.",
  right_answer: "Homme"
})
Enigma.create({
  id:7,
  theme_id:2,
  difficulty:2,
  label: "Le commencement",
  description:
  "Je peux être créé par les humains, mais ils éprouvent beaucoup de difficulté à me contrôler.
  De chair, je suis partiellement fais.
  Un obstacle parfois, je peux représenter.
  Pour mes créateurs, je semble être omniprésent.",
  clue: "Je pleure tout le temps.",
  right_answer: "Bébé"
})
Enigma.create({
  id:8,
  theme_id:2,
  difficulty:3,
  label: "Triste saison",
  description: "
  J’évolue avec le temps.
  Je suis à l’automne de la vie.
  J’arrive souvent munie de l’Alzheimer.",
  clue: "Je peux coûter la vie.",
  right_answer: "Vieillesse"
})
Enigma.create({
  id:9,
  theme_id:2,
  difficulty:4,
  label: "Une étincelle",
  description:
  "Née de rien, je suis mère de tout.
  Immense et minuscule à la fois.
  Seule et pourtant si entourée.
  Mes souffrances seront votre perte.",
  clue: "Elle nous anime.",
  right_answer: "Vie"
})
Enigma.create({
  id:10,
  theme_id:2,
  difficulty:5,
  label: "Symphonie Inachevée",
  description: "De Verdi à Mozart en passant par Fauré, ils l’ont tous célébré.",
  clue: "On la rencontre un jour.",
  right_answer: "Mort"
})

#Sciences' Enigmas
Enigma.create({
  id:11,
  theme_id:3,
  difficulty:1,
  label: "Calcul mental",
  description: "Combien de fois peut-on soustraire 6 à 36?",
  clue: "Je change après chaque soustraction.",
  right_answer: "Une"
})
Enigma.create({
  id:12,
  theme_id:3,
  difficulty:2,
  label: "Petite équation",
  description: "5*(3+4)-2* 3+2+5-34= ?",
  clue: "En mathématiques, les multiplications se font avant les additions.",
  right_answer: "Deux"
})
Enigma.create({
  id:13,
  theme_id:3,
  difficulty:3,
  label: "Avec de la logique",
  description: "Si l’on considère que le « = » n’est plus un terme d’égalité mais un moyen d’affecter une valeur(exemple : a=b signifie a prend la valeur de b)
  Que vaut alors b à la fin?
  a=3
  b=2
  y=5
  y=a\n
  b=y",
  clue: "La valeur de y varie, mais ne revient jamais à sa valeur initiale.",
  right_answer: "Trois"
})
Enigma.create({
  id:14,
  theme_id:3,
  difficulty:4,
  label: "Qu'en pensent les étrangers?",
  description: "O-T-T-?-F-S-S-E",
  clue: "Chercher du côté des anglais.",
  right_answer: "Four"
})
Enigma.create({
  id:15,
  theme_id:3,
  difficulty:5,
  label: "Plus simple qu'il n'y paraît",
  description:
  "8809 = 6
  7111 = 0
  2172 = 0
  6666 = 4
  1111 = 0
  3213 = 0
  7662 = 2
  9312 = 1
  0000 = 4
  2222 = 0
  3333 = 0
  5555 = 0
  8193 = 3
  7777 = 0
  9999 = 4
  7756 = 1
  6855 = 3
  9881 = 5
  5531 = 0

  8096 = ?",
  clue: "Regarder attentivement chaque chiffre.",
  right_answer: "Cinq"
})

#Technoogy's Enigmas
Enigma.create({
  id:16,
  theme_id:4,
  difficulty:1,
  label: "Flux",
  description:
  "Je suis d'eau,
  je suis d'air,
  et je suis d'électricité.",
  clue: "Je vais du plus vers le moins.",
  right_answer: "Courant"
})
Enigma.create({
  id:17,
  theme_id:4,
  difficulty:2,
  label: "Flash",
  description:
  "Je suis très rapide.
  On me trouve partout.
  Tout le monde me connait.
  Tout le monde m'utilise.",
  clue: "On peut me stocker, mais je m'épuise vite.",
  right_answer: "Electricite"
})
Enigma.create({
  id:18,
  theme_id:4,
  difficulty:3,
  label: "Cryptographie",
  description:
  "Si 'Skigtowak' signifie 'Mecanique'.
  Si 'Iujk' signifie 'Code'.
  Si 'Xgvojk' signifie 'Rapide'.
  
  Que signifie : 'Uxjotgzkax' ?",
  clue: "César avait des secrets.",
  right_answer: "Ordinateur"
})
Enigma.create({
  id:19,
  theme_id:4,
  difficulty:4,
  label: "Communication interrompue",
  description:
  "01010010
  01100101
  01110011
  01100101
  01100001
  01110101
  00001010",
  clue: "mieux vAut utiliSer le bon ConvertIIsseur.",
  right_answer: "Reseau"
})
Enigma.create({
  id:20,
  theme_id:4,
  difficulty:5,
  label: "Connaissance infinie",
  description: "ARPIPV4IPV6ICMPTCPUDPFTPHTTPSMTPNNTP",
  clue: "On me comprend mieux ainsi 3-4-4-4-3-3-3-4-4-4",
  right_answer: "Internet"
})
