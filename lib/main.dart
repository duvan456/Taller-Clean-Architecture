import '/data/repositories/product_repository_impl.dart';
import '/domain/usecases/delete_product.dart';
import '/domain/usecases/get_all_products.dart';
import '/domain/usecases/save_product.dart';
import '/presentation/bloc/product_bloc.dart';
import '/presentation/bloc/product_event.dart';
import '/presentation/pages/product_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final productRepository = ProductRepositoryImpl();
    final getAllProducts = GetAllProducts(productRepository);
    final saveProduct = SaveProduct(productRepository);
    final deleteProduct = DeleteProduct(productRepository);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Architecture',
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: false,
      ),
      home: BlocProvider(
        create: (context) => ProductBloc(
          getAllProducts: getAllProducts,
          saveProduct: saveProduct,
          deleteProduct: deleteProduct,
        )..add(LoadProducts()),
        child: const ProductListPage(),
      ),
    );
  }
}
