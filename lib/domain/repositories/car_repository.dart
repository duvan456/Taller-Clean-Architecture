import '/domain/entities/car.dart';

abstract class CarRepository {
  Future<List<Car>> getAllCars();
  Future<Car> getCarById(String id);
  Future<void> saveCar(Car car);
  Future<void> deleteCar(String id);
}