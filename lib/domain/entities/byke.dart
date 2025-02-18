import 'product.dart';

class Byke extends Product {
  Byke({required super.id, required super.name, required super.price, required super.description});

  @override
  Byke copyWith({
    String? id,
    String? name,
    double? price,
    String? description,
  }) {
    return Byke(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
    );
  }
}