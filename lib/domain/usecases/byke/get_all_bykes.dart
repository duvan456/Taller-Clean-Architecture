import '/domain/entities/byke.dart';
import '/domain/repositories/byke_repository.dart';

class GetAllBykes {
  final BykeRepository repository;

  GetAllBykes(this.repository);

  Future<List<Byke>> execute() async {
    return await repository.getAllBykes();
  }
}
