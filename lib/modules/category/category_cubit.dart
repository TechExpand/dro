import 'package:bloc/bloc.dart';
import 'package:dro/Model/category.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';



class CategoryCubit extends Cubit<CategoryState> {
  static List<Category> data = [
    Category(
        title: "Headache",
        image: "assets/images/7.png"
    ),

    Category(
        title: "Supplements",
        image: "assets/images/8.png"
    ),

    Category(
        title: "Infants",
        image: "assets/images/9.png"
    ),

  ];

  CategoryCubit() : super(CategoryState(categories: data));
}
