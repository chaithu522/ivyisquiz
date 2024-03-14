class CatalogModel {
  static final items = [
    Item(id: 1, name: "Partido 1", subclass: "Chivas vs America",image: "https://raw.githubusercontent.com/Daniel-Hernandez-Jrz/GridViewFlutterDHJ/master/assets/images/9.jpg"),
    Item(id: 2, name: "Partido 2", subclass: "Chivas vs Pumas",image: "https://raw.githubusercontent.com/Daniel-Hernandez-Jrz/GridViewFlutterDHJ/master/assets/images/8.jpg"),
    // Item(id: 3, name: "Partido 3", subclass: "America vs Pumas",image: "https://raw.githubusercontent.com/Daniel-Hernandez-Jrz/GridViewFlutterDHJ/master/assets/images/7.jpg"),
    // Item(id: 4, name: "Partido 4", subclass: "Rayados vs Chivas",image: "https://raw.githubusercontent.com/Daniel-Hernandez-Jrz/GridViewFlutterDHJ/master/assets/images/6.jpg"),
    // Item(id: 5, name: "Partido 5", subclass: "America vs Rayados",image: "https://raw.githubusercontent.com/Daniel-Hernandez-Jrz/GridViewFlutterDHJ/master/assets/images/5.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String subclass;
  final String image;

  Item({required this.id, required this.name, required this.subclass, required this.image});
}