import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/component/ShopComponents.dart';
import '../shared/database/DioHelper.dart';
import '../shared/stateMangement/cubit.dart';
import '../shared/stateMangement/states.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DioHelper.init();
    return BlocProvider(
      create:(BuildContext context) =>AppCubit()..getProduct(),
      child: BlocConsumer<AppCubit,States>(
        listener: (BuildContext context,state){},
        builder:(BuildContext context,state) {
          var list =AppCubit.get(context).product;
          return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Padding(
            padding: EdgeInsets.all(18.0),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.73,
              children: List.generate(list.length, (index) {
                return buildProduct(list[index],context);
              }),
            ),
          )
        );
        },
      ),
    );
  }
}
