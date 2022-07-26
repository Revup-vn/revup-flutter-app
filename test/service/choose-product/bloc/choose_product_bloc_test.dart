import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:revup/service/choose-product/bloc/choose_product_bloc.dart';
import 'package:revup/service/models/product_data.dart';

void main() {
  late ChooseProductBloc chooseProductBloc;
  final products = [
    const ProductData(
      id: '1',
      serviceId: '1',
      name: 'Chips',
      price: 1000,
      productImageUrl:
          'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
    ),
    const ProductData(
      id: '2',
      serviceId: '1',
      name: 'Chips',
      price: 1000,
      productImageUrl:
          'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
    ),
    const ProductData(
      id: '3',
      serviceId: '1',
      name: 'Chips',
      price: 1000,
      productImageUrl:
          'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
    ),
    const ProductData(
      id: '4',
      serviceId: '1',
      name: 'Chips',
      price: 1000,
      productImageUrl:
          'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
    ),
  ];

  setUp(() {
    chooseProductBloc = ChooseProductBloc();
  });
  blocTest<ChooseProductBloc, ChooseProductState>(
    'emits Loading when Started is added.',
    build: () => chooseProductBloc,
    act: (bloc) => bloc.add(const ChooseProductEvent.started()),
    expect: () => [
      const ChooseProductState.loading(),
      ChooseProductState.success(products)
    ],
  );
  blocTest<ChooseProductBloc, ChooseProductState>(
    'emits Loading when Submitted is added.',
    build: () => chooseProductBloc,
    act: (bloc) => bloc.add(const ChooseProductEvent.submitted('')),
    expect: () => [
      const ChooseProductState.loading(),
    ],
  );
}
