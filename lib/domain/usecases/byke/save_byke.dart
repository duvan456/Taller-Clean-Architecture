import '/domain/entities/byke.dart';
import '/domain/repositories/byke_repository.dart';

class SaveByke {
  final BykeRepository repository;

  SaveByke(this.repository);

  Future<void> execute(Byke byke) async {
    await repository.saveByke(byke);
  }
}
