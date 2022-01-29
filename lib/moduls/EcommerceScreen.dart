import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/stateMangement/cubit.dart';
import '../shared/stateMangement/states.dart';
import 'CardScreen.dart';
import 'CategoriesScreen.dart';
import 'HomeScreen.dart';

class EcommerceScreen extends StatelessWidget {
  EcommerceScreen({Key? key}) : super(key: key);

  List screen = [
    HomeScreen(),
    CategoryScreen(),
    CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context) =>AppCubit(),
      child: BlocConsumer<AppCubit,States>(
        listener: (BuildContext context,state){},
        builder:(BuildContext context,state) => Scaffold(
          body: screen[AppCubit.get(context).Index],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white12,
            currentIndex: AppCubit.get(context).Index,
            onTap: AppCubit.get(context).changeIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
