import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/component/ShopComponents.dart';
import '../shared/database/DioHelper.dart';
import '../shared/stateMangement/cubit.dart';
import '../shared/stateMangement/states.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DioHelper.init();
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..getCategory(),
      child: BlocConsumer<AppCubit, States>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          var list = AppCubit.get(context).category;
          return Scaffold(
            appBar: AppBar(
              title: Text("Categories"),
            ),
            body: GridView.builder(
              padding: const EdgeInsets.all(25),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return buildCategory(list[index], context);
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 5 / 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}
