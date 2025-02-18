import 'product.dart';

class Car extends Product {
  Car({required super.id, required super.name, required super.price, required super.description});

  @override
  Car copyWith({
    String? id,
    String? name,
    double? price,
    String? description,
  }) {
    return Car(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
    );
  }
}