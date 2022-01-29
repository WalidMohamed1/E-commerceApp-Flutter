import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/database/DioHelper.dart';
import 'states.dart';

class AppCubit extends Cubit<States> {
  AppCubit() : super(AppInitStates());
  static AppCubit get(context) => BlocProvider.of(context);

  var Index = 0;
  List<dynamic> category = [];
  List<dynamic> product = [];

  void changeIndex(int index) {
    Index = index;
    emit(ChangeIndexVal());
  }

  getCategory() {
    DioHelper.getData(
        Url: 'categories',
    ).then((value)  {
      category = value.data['categories'];
      print(category[0]["name"]);
      emit(GetCategoryState());
    }).catchError((error){
      print('Error ${error.toString()}');
      emit(ErrorCategoryState());
    });
  }

  getProduct() {
    DioHelper.getData(
      Url: 'products',
    ).then((value)  {
      product = value.data['products'];
      print(product[0]["name"]);
      emit(GetProductState());
    }).catchError((error){
      print('Error ${error.toString()}');
      emit(ErrorProductState());
    });
  }


}