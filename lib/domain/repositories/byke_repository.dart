import '/domain/entities/byke.dart';

abstract class BykeRepository {
  Future<List<Byke>> getAllBykes();
  Future<Byke> getBykeById(String id);
  Future<void> saveByke(Byke byke);
  Future<void> deleteByke(String id);
}