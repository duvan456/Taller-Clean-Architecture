class Byke {
  final String id;
  final String name;
  final String description;
  final String brand;
  final String plate;
  final double price;
  final bool isCar;
  final bool isByke;

  Byke({
    required this.id,
    required this.name,
    required this.description,
    required this.brand,
    required this.plate,
    required this.price,
    required this.isCar,
    required this.isByke
  });

  Byke copyWith({
    String? id,
    String? name,
    String? description,
    String? brand,
    String? plate,
    double? price,
    bool? isCar,
    bool? isByke
  }) {
    return Byke(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      brand: brand ?? this.brand,
      plate: plate ?? this.plate,
      price: price ?? this.price,
      isCar: isCar ?? this.isCar,
      isByke: isByke ?? this.isByke
    );
  }
}