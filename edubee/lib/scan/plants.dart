import 'package:latlong2/latlong.dart';

final plantsObject = [
  Plants(
    name: "Érable champêtre",
    description:
        "L'Érable champêtre est une espèce d'arbres du genre Acer appartenant à la famille des Acéracées.",
    floraison: "avril, mai",
    color: "vert clair",
    image: "assets/Acer campestre.jpg",
    location: LatLng(48.661717, 6.155612),
    nectar: 3,
    hauteur: 15,
  ),
  Plants(
    name: "Érable sycomore",
    description:
        "L’érable sycomore est une espèce d'arbres de grande taille de la famille des acéracées fréquente en Europe",
    floraison: "mai",
    color: "jaunâtre",
    image: "assets/Acer pseudoplatanus.jpg",
    location: LatLng(48.661717, 6.155612),
    nectar: 2,
    hauteur: 25,
  ),
  Plants(
    name: "Aulne glutineux",
    description:
        "L’aulne glutineux, l’aulne noir, l’aulne poisseux, est un arbre feuillu de la famille des bétulacées, très présent dans la flore indigène de l'Europe. Il est parfois appelé vergne ou verne.",
    floraison: "mars, avril",
    color: "jaune",
    image: "assets/Alnus glutinosa.jpg",
    location: LatLng(48.661717, 6.155612),
    nectar: 1,
    hauteur: 25,
  ),
  Plants(
    name: "Ancolie",
    description:
        "L'ancolie commune appelée aussi aiglantine, ancolie des jardins, cornette ou encore colombine, bonne-femme, bonnets de grand-mère et cinq-doigts est une plante herbacée vivace de la famille des Ranunculaceae.",
    image: "assets/Aquilegia vulgaris.jpg",
    location: LatLng(48.661717, 6.155612),
    floraison: "mai, juin",
    color: "bleu",
    nectar: 2,
    hauteur: 0.5,
  ),
  Plants(
    name: "bruyère commune callune",
    description:
        "La Callune est un sous-arbrisseau vivace sempervirents, seul représentant du genre Calluna. Elle est parfois considérée comme une bruyère. C'est la fleur nationale de la Norvège. Cette plante est parfois appelée Béruée, Brande, Bruyère commune, Bucane, Fausse Bruyère, Grosse Brande, Péterolle ou Bruyère callune",
    image: "assets/Calluna vulgaris.jpg",
    location: LatLng(48.660717, 6.155612),
    floraison: "août",
    color: "blanc, rose",
    nectar: 2,
    hauteur: 0.3,
  ),
  Plants(
    name: "Noisetier de Byzance",
    description:
        "Le Noisetier de Byzance, Coudrier du Levant, Coudrier de Byzance ou Noisetier de Turquie est une espèce d'arbres à feuilles caduques originaire du sud-est de l'Europe et du sud-ouest de l'Asie, des Balkans depuis le nord de la Turquie jusqu'au nord de l'Iran. C'est la plus grande espèce de noisetier. ",
    image: "assets/corylus colurna.jpg",
    location: LatLng(48.660717, 6.155612),
    hauteur: 15,
    color: "jaune",
    floraison: "février, mars",
    nectar: 0,
  ),
  Plants(
    name: "noisetier",
    description:
        "Le noisetier (Corylus avellana) est un arbuste buissonnant, pouvant dépasser les 3m de haut, dont la croissance est rapide. Il arbore une multitude de petites feuilles de 6 à 10 cm de long, dont la jolie forme arrondie n'est pas sans rappeler celle d'un cœur.",
    image: "assets/Corylus fleur.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 3,
    color: "vert",
    nectar: 0,
    floraison: "fevrier, mars, avril",
  ),
  Plants(
    name: "Cotonéaster horizontal",
    description:
        "Cotoneaster horizontalis est le nom scientifique du cotonéaster horizontal. Originaire de Chine, c'est une espèce de la famille des Rosacées, utilisée comme plante ornementale et couvre-sol, sur certains talus urbains et routiers notamment.",
    image: "assets/cotoneaster_horizontalis.jpg",
    location: LatLng(48.660717, 6.155612),
    hauteur: 2.3,
    color: "rose",
    nectar: 3,
    floraison: "juin, juillet",
  ),
  Plants(
    name: "Crocus de Naples",
    description:
        "Le Crocus de Naples, Crocus de printemps ou Crocus printanier est une plante herbacée de la famille des Iridaceae",
    image: "assets/crocus vernus.jpg",
    location: LatLng(48.660717, 6.155612),
    hauteur: 0.15,
    color: "toutes les couleurs",
    nectar: 1,
    floraison: "février, mars",
  ),
  Plants(
    name: "Dalhia variabilis",
    description:
        "Vivace par ses racines, la plante a une végétation annuelle. Hauteur de 30 cm à 3 m et plus, selon les espèces",
    image: "assets/Dalhia variabilis.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 5.2,
    color: "toutes les couleurs",
    nectar: 0,
    floraison: "juillet, août, septembre",
  ),
  Plants(
    name: "Épilobe en épi",
    description:
        "L’Épilobe en épi, l’Épilobe à feuilles étroites ou Laurier de Saint-Antoine, ou encore Osier fleuri, est une espèce de plantes herbacées vivaces du genre Epilobium de la famille des Onagraceae. On trouve cette espèce dans toutes les zones tempérées de l'hémisphère nord",
    image: "assets/epilobium_angustifolium.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 2,
    color: "rose",
    nectar: 3,
    floraison: "juillet, août",
  ),
  Plants(
    name: "Sarrasin commun",
    description:
        "Le sarrasin est une espèce de plantes à fleurs, annuelles, de la famille des polygonacées, cultivée pour ses graines destinées à l'alimentation humaine comme animale. Malgré son appellation courante de blé noir, le sarrasin n'est pas une espèce du genre Triticum, ni même une espèce de graminées.",
    image: "assets/Fagopyrum esculentum.jpeg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 1,
    floraison: "juin, juillet, août",
    color: "blanc",
    nectar: 2,
  ),
  Plants(
    name: "Frêne à fleurs",
    description:
        "Le Frêne à fleurs ou Orne, parfois appelé Frêne à manne, ou Frêne orne, plus rarement Orne d'Europe, est un arbre de la famille des Oléacées. Autres noms communs : frêne à manne, orne à manne, frêne orne, orne d'Europe.",
    image: "assets/Fraxinus ornus.jpg",
    location: LatLng(48.660717, 6.155612),
    hauteur: 10,
    color: "blanc",
    nectar: 1,
    floraison: "mai, juin",
  ),
  Plants(
    name: "Févier d'Amérique",
    description:
        "Gleditsia triacanthos, le Févier d'Amérique, est une espèce de plantes dicotylédones de la famille des Fabaceae, sous-famille des Caesalpinioideae, originaire de l'est de l’Amérique du Nord.",
    image: "assets/gleditsia triacanthos.jpg",
    location: LatLng(48.661717, 6.156612),
    hauteur: 20,
    color: "jaune, vert",
    nectar: 2,
    floraison: "juin, juillet",
  ),
  Plants(
    name: "Lierre grimpant",
    description:
        "Le Lierre ou Lierre grimpant est une espèce de lianes arbustive à feuilles persistantes, de la famille des Araliaceae. L'espèce est spontanée en zone tempérée eurasiatique de l'hémisphère nord. Il est également cultivé comme plante ornementale.",
    image: "assets/Hedera-helix.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 10,
    color: "vert, jaune, rouge",
    nectar: 3,
    floraison: "septembre, octobre",
  ),
  Plants(
    name: "Lavande officinale",
    description:
        "La Lavande officinale, Lavande vraie ou Lavande à feuilles étroites est une espèce de sous-arbrisseaux de la famille des Lamiaceae. C'est une plante qui est appréciée pour son odeur. C'est la plus appréciée des lavandes pour la qualité olfactive de son huile essentielle",
    image: "assets/lavande officinale.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 0.25,
    color: "bleu, lilas",
    nectar: 3,
    floraison: "juillet, août",
  ),
  Plants(
    name: "Chèvrefeuille de Tartarie",
    description:
        "Le Chèvrefeuille de Tartarie est un arbuste caduc de la famille des Caprifoliaceae, à port dressé et buissonnant. Originaire du sud de la Russie à l'Asie centrale et orientale, c'est un arbuste très rustique qui est cultivé comme plante d'ornement.",
    image: "assets/lonicera tartarica.jpg",
    location: LatLng(48.661717, 6.156612),
    hauteur: 3,
    nectar: 2,
    color: "blanc",
    floraison: "mai, juin",
  ),
  Plants(
    name: "Luzerne cultivée",
    description:
        "La luzerne ou luzerne cultivée, « reine des plantes fourragères », parfois appelée « grand trèfle » ou « foin de Bourgogne », est une espèce de plantes dicotylédones de la famille des Fabaceae, sous-famille des Faboideae, originaire des régions tempérées du Proche-Orient et de l'Asie centrale.",
    image: "assets/Medicago sativa.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 0.5,
    nectar: 3,
    color: "mauve",
    floraison: "juin, juillet, août",
  ),
  Plants(
    name: "Phacélie à feuilles de tanaisie",
    description:
        "La phacélie à feuilles de tanaisie est une plante herbacée annuelle de la famille des Hydrophyllacées. Originaire du nord du Mexique et du sud de la Californie, cette plante est particulièrement intéressante en agriculture et apiculture",
    image: "assets/Phacelia tanacetifolia.jpg",
    location: LatLng(48.661717, 6.156612),
    hauteur: 0.5,
    nectar: 0,
    color: "bleu clair",
    floraison: "juillet, août, septembre",
  ),
  Plants(
    name: "Merisier",
    description:
        "Le merisier ou cerisier des oiseaux est un arbre originaire d'Europe, d'Asie de l'ouest et d'Afrique du nord appartenant au genre Prunus de la famille des Rosaceae. Il est parfois appelé cerisier sauvage ou cerisier des bois.",
    image: "assets/Prunus avium.jpeg",
    location: LatLng(48.661717, 6.156612),
    hauteur: 10.15,
    nectar: 2,
    color: "blanc",
    floraison: "avril, mai",
  ),
  Plants(
    name: "Prunellier",
    description:
        "L'Épine noire, Prunelier ou Prunellier est un arbuste de la famille des Rosaceae. Il est parfois appelé, selon les régions, buisson noir, épinette, belossay, créquier, fourdinier, fourdraine, mère-du-bois, pelossier ou prunellier commun.",
    image: "assets/Prunus spinosa.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 3.4,
    nectar: 2,
    color: "blanc",
    floraison: "avril, mai",
  ),
  Plants(
    name: "Pyracantha coccinea",
    description:
        "Pyracantha coccinea, le buisson ardent, est une espèce d'arbuste de la famille des Rosacées, sous-famille des Maloideae. Originaire d'Europe du sud-est, du Caucase et d'Asie mineure, il a été introduit dans de nombreuses autres régions pour son caractère ornemental.",
    image: "assets/Pyracantha coccinea.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 2.3,
    nectar: 2,
    color: "blanc",
    floraison: "juin, juillet",
  ),
  Plants(
    name: "Robinier faux-acacia",
    description:
        "Le robinier faux-acacia ou robinier est une espèce de la famille des Fabacées. Cet arbre présente des fleurs zygomorphes caractéristiques chez les Fabacées. Ses fruits sont des gousses ressemblant à un haricot plat avec des graines à l'intérieur.",
    image: "assets/Robinia pseudoacacia.jpg",
    location: LatLng(48.661717, 6.156612),
    hauteur: 20,
    nectar: 3,
    color: "blanc",
    floraison: "juin",
  ),
  Plants(
    name: "Rudbéckie laciniée",
    description:
        "Rudbeckia laciniata, populairement appelée Rudbéckie laciniée, est une espèce de plantes herbacées de la famille des Astéracées. Elle est indigène au Québec.",
    image: "assets/Rudbeckia laciniata.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 0.5,
    nectar: 0,
    color: "jaune",
    floraison: "juillet, août",
  ),
  Plants(
    name: "Saule marsault",
    description:
        "Le Saule marsault ou Saule des chèvres, Salix caprea, est une espèce d'arbres ou d'arbustes de la famille des Salicaceae",
    image: "assets/salix caprea.jpg",
    location: LatLng(48.661717, 6.156612),
    hauteur: 10,
    nectar: 2,
    color: "vert",
    floraison: "mars, avril",
  ),
  // stop
  Plants(
    name: "Solidage verge d'or",
    description:
        "Solidago virgaurea L., appelé Solidage verge d'or ou Baguette d'Aaron ou encore Herbe des Juifs est une plante herbacée du genre des Solidages et de la famille des Asteracées. Il existe de nombreuses sous-espèces et variétés différentes. Cette plante pousse à profusion à la fin de l'été.",
    image: "assets/Solidago virgaurea.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 1.50,
    color: "jaune",
    nectar: 2,
    floraison: "août, septembre, octobre",
  ),
  Plants(
    name: "Sophora du Japon",
    description:
        "Styphnolobium japonicum, le Sophora du Japon ou Arbre de miel, est une espèce d'arbres de la famille des Fabaceae. Quoique son nom indique qu’il est originaire du Japon, il est en fait originaire de Chine",
    image: "assets/sophora japonica.jpg",
    location: LatLng(48.661717, 6.156612),
    hauteur: 15.20,
    color: "blanc crème",
    nectar: 3,
    floraison: "août, septembre",
  ),
  Plants(
    name: "Taraxacum",
    description:
        "Taraxacum est un genre de plantes dicotylédones anémochores appartenant à la famille des Asteraceae. C'est le genre des « pissenlits » véritables",
    image: "assets/taraxacum officinale.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 0.6,
    color: "jaune",
    nectar: 3,
    floraison: "avril,mai, juin, juillet",
  ),
  Plants(
    name: "Thym commun",
    description:
        "Le Thym commun, Thym cultivé ou Farigoule est un sous-arbrisseau de la famille des Lamiacées. En cuisine, on l'appelle simplement « thym ». C'est une espèce commune des garrigues ensoleillées et des steppes du sud de l'Europe et du Nord de l'Afrique. Le thym est indissociable de la culture méditerranéenne.",
    image: "assets/thymus vulgaris.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 0.20,
    color: "mauve",
    nectar: 3,
    floraison: "juin, juillet, août",
  ),
  Plants(
    name: "Tilleul de Henry",
    description:
        "Le Tilleul de Henry, Tilia henryana, est une espèce de Tilleul appartenant à la famille des Malvaceae. Introduite à l'ouest depuis la Chine par Ernest Wilson en 1901, l'espèce est native aux provinces de Anhui, Henan, Hubei, Hunan, Jiangsu, Jiangxi, Shaanxi, et Zhejiang",
    image: "assets/Tilia henryana.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 12,
    color: "jaunâtre",
    nectar: 3,
    floraison: "septembre",
  ),
  Plants(
    name: "Tilleul à grandes feuilles",
    description:
        "Le tilleul à grandes feuilles est un arbre de la famille des Tiliaceae, ou des Malvaceae, sous-famille des Tilioideae, selon la classification phylogénétique. C'est une espèce des régions tempérées d'Europe, souvent plantée comme arbre d'alignement.",
    image: "assets/Tilia platyphyllos.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 20,
    color: "jaunâtre",
    nectar: 3,
    floraison: "juin",
  ),
  Plants(
    name: "Trèfle blanc",
    description:
        "Trifolium repens, le Trèfle blanc ou Trèfle rampant, est une espèce de plantes dicotylédones de la famille des Fabaceae, sous-famille des Faboideae, originaire des régions tempérées de l'Ancien Monde. C'est l'une des espèces les plus répandues du genre Trifolium.",
    image: "assets/trifolium repens.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 0.4,
    color: "blanc",
    nectar: 3,
    floraison: "mai, juin, juillet, août,septembre",
  ),
  Plants(
    name: "Petite Pervenche",
    description:
        "La petite pervenche est une plante herbacée pérenne de la famille des Apocynacées.",
    image: "assets/Vinca minor.jpg",
    location: LatLng(48.661717, 6.155612),
    hauteur: 0.30,
    color: "bleu",
    nectar: 2,
    floraison: "mars",
  ),
];

List<Plants> plantsUsed = [];

dynamic getPlant(String? name) {
  if (isPlant(name)) {
    var plant = plantsObject.firstWhere((element) => element.name == name);
    plantsUsed.add(plant);
    return plant;
  }
  return null;
}

List<Plants> plantsFind() {
  return plantsObject.where((element) => element.isFound).toList();
}

List<Plants> getAllPlants() {
  return plantsObject;
}

List<Plants> getPlantsUsed() {
  return plantsUsed;
}

class Plants {
  final String name;
  final String image;
  final LatLng location;
  final String description;
  final String floraison;
  final int nectar;
  final String color;
  final double hauteur;
  bool isFound = false;

  Plants({
    required this.name,
    required this.image,
    required this.floraison,
    required this.description,
    required this.location,
    required this.color,
    required this.hauteur,
    required this.nectar,
  });

  bool found() {
    return isFound = true;
  }

  @override
  String toString() {
    return 'Plants{name: $name, image: $image, location: $location, description: $description, isFound: $isFound}';
  }
}

bool isPlant(String? name) =>
    plantsObject.any((element) => element.name == name);
