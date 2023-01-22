import 'package:latlong2/latlong.dart';

final plants = [
  "Acer campestre",
  "Acer pseudoplantanus",
  "Alnus glutinosa",
  "Aquilegia vulgaris",
  "Calluna vulgaris",
  "corylus colurna",
  "Corylus fluer",
  "cotoneaster_horizontalis",
  "crocus vernus",
  "Dalhlia variabilis",
  "epilobium_angustifolium",
  "Fagopyrum esculentum",
  "Fraxinus ornus",
  "gleditsia triacanthos",
  "Hedera-helix",
  "lavande officinale",
  "lonicera tartarica",
  "Medicago sativa",
  "Phacelia tanacetifolia",
  "Prunus avium",
  "Prunus spinosa",
  "Pyracantha coccinea",
  "Robinia pseudoacacia",
  "Rudbeckia laciniata.jpg",
  "salix caprea",
  "Solidago virgaurea",
  "sophora japonica",
  "taraxacum officinale",
  "thymus vulgaris",
  "Tilia henryana",
  "Tilia platyphyllos",
  "trifolium repens",
  "Vinca minor",
];

final plantsObject = [
  Plants(
    name: "Érable champêtre",
    description: "dedede",
    image: "assets/Acer campestre.jpg",
    location: LatLng(48.661717, 6.155612),
  ),
  Plants(
    name: "Vinca mino",
    description: "deedede",
    image: "assets/Vinca minor.jpg",
    location: LatLng(48.660717, 6.155612),
  ),
  Plants(
    name: "Prunus avium",
    description: "ojkoko",
    image: "assets/Prunus avium.jpeg",
    location: LatLng(48.661717, 6.156612),
  ),
];

dynamic getPlant(String? name) =>
    plantsObject.firstWhere((element) => element.name == name);

class Plants {
  final String name;
  final String image;
  final LatLng location;
  final String description;
  bool isFound = false;

  Plants({
    required this.name,
    required this.image,
    required this.description,
    required this.location,
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
