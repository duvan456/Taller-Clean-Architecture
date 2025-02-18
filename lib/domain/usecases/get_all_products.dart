import '/domain/entities/product.dart';
import '/domain/repositories/product_repository.dart';

class GetAllProducts {
  final ProductRepository repository;

  GetAllProducts(this.repository);

  Future<List<Product>> execute() async {
    return await repository.getAllProducts();
  }
}
