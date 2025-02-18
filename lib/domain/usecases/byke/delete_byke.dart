import '/domain/repositories/byke_repository.dart';

class DeleteByke {
  final BykeRepository repository;

  DeleteByke(this.repository);

  Future<void> execute(String id) async {
    await repository.deleteByke(id);
  }
}
