import '/domain/entities/product.dart';
import '/domain/repositories/product_repository.dart';

class SaveProduct {
  final ProductRepository repository;

  SaveProduct(this.repository);

  Future<void> execute(Product product) async {
    await repository.saveProduct(product);
  }
}
