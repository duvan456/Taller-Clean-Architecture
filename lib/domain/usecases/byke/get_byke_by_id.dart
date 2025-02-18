import '/domain/entities/byke.dart';
import '/domain/repositories/byke_repository.dart';

class GetBykeById {
  final BykeRepository repository;

  GetBykeById(this.repository);

  Future<Byke> execute(String id) async {
    return await repository.getBykeById(id);
  }
}
