import '/domain/entities/car.dart';
import '/domain/entities/byke.dart';
import '/presentation/bloc/product_bloc.dart';
import '/presentation/bloc/product_event.dart';
import '/presentation/bloc/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import 'dart:math';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicles'),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ProductError) {
            return Center(child: Text(state.message));
          }
          if (state is ProductLoaded) {
            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                final product = state.products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('\$${product.price}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      context.read<ProductBloc>().add(
                            DeleteProductEvent(product.id),
                          );
                    },
                  ),
                );
              },
            );
          }
          return const Center(child: Text('No vehicles'));
        },
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 60,
            right: 20,
            child: FloatingActionButton(
              onPressed: (){
                final car = Car(
                  id: const Uuid().v4(),
                  name: 'Car ${DateTime.now().millisecondsSinceEpoch}',
                  description: 'Car description',
                  price: Random().nextDouble()*1000,
                );
                context.read<ProductBloc>().add(AddProduct(car));
              },
              child: const Icon(Icons.directions_car_filled_rounded),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: (){
                final byke = Byke(
                  id: const Uuid().v4(),
                  name: 'Bike ${DateTime.now().millisecondsSinceEpoch}',
                  description: 'Bike description',
                  price: Random().nextDouble()*100,
                );
                context.read<ProductBloc>().add(AddProduct(byke));
              },
              child: const Icon(Icons.pedal_bike_rounded),
            )
          )
        ],
      ),
    );
  }
}
