import '/domain/repositories/car_repository.dart';

class DeleteCar {
  final CarRepository repository;

  DeleteCar(this.repository);

  Future<void> execute(String id) async {
    await repository.deleteCar(id);
  }
}
