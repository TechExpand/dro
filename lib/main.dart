import 'package:dro/counter/count_view.dart';
import 'package:dro/modules/cart/cart_cubit.dart';
import 'package:dro/modules/category/category_cubit.dart';
import 'package:dro/modules/homebloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'counter/count_cubit.dart';
import 'modules/cart/cart_view.dart';
import 'modules/category/category_view.dart';
import 'modules/detail/detail_view.dart';
import 'modules/homebloc/home.dart';
import 'modules/search/search_view.dart';
import 'modules/supplement/supplement_view.dart';

void main() {
  runApp(MultiBlocProvider(
  providers: [
    BlocProvider(create: (context) => CountCubit()),
    BlocProvider(create: (context) => HomeCubit()),
    BlocProvider(create: (context) => CartCubit()),
    BlocProvider(create: (context) => CategoryCubit())
  ]
  , child:  MyApp()));
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
PageController controller = PageController(initialPage: 2,viewportFraction: 1);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: controller,
          children: [
            Container(),
            Container(),
            HomePage(),
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 80,
          color: Color(0xFFF1EFF4),
          child: Center(
            child: BottomNavigationBar(
              selectedItemColor: Colors.black45,
              unselectedItemColor: Colors.black45,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home_outlined,)),
                BottomNavigationBarItem(
                    label: "Doctors",
                    icon: Icon(FontAwesomeIcons.user)),
                BottomNavigationBarItem(
                    label: "Pharmacy",
                    icon: Icon(FontAwesomeIcons.cartPlus)),
                BottomNavigationBarItem(
                    label: "Community",
                    icon: Icon(FontAwesomeIcons.message)),
                BottomNavigationBarItem(
                    label: "Profile",
                    icon: Icon(Icons.person_pin))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
