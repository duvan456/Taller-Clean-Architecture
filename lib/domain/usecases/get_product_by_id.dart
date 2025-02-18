import '/domain/entities/product.dart';
import '/domain/repositories/product_repository.dart';

class GetProductById {
  final ProductRepository repository;

  GetProductById(this.repository);

  Future<Product> execute(String id) async {
    return await repository.getProductById(id);
  }
}
