import '/domain/entities/car.dart';
import '/domain/repositories/car_repository.dart';

class GetAllCars {
  final CarRepository repository;

  GetAllCars(this.repository);

  Future<List<Car>> execute() async {
    return await repository.getAllCars();
  }
}
