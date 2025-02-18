import '/domain/entities/car.dart';
import '/domain/repositories/car_repository.dart';

class SaveCar {
  final CarRepository repository;

  SaveCar(this.repository);

  Future<void> execute(Car car) async {
    await repository.saveCar(car);
  }
}
