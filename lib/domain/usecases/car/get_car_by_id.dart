import '/domain/entities/car.dart';
import '/domain/repositories/car_repository.dart';

class GetCarById {
  final CarRepository repository;

  GetCarById(this.repository);

  Future<Car> execute(String id) async {
    return await repository.getCarById(id);
  }
}
