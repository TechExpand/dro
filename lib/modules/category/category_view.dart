import 'dart:ui';

import 'package:dro/Widget/dialog.dart';
import 'package:dro/counter/count_cubit.dart';
import 'package:dro/modules/cart/cart_cubit.dart';
import 'package:dro/modules/category/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: const Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 155,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment(-1, -0.9),
                            end: Alignment(0.2, 0.2),
                            colors: [Color(0xFF844BF6), Color(0xFFA44EF7)])),
                    child: Stack(
                      children: [
                        Positioned(
                          top: -100,
                          left: MediaQuery.of(context).size.width * 0.36,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xFFC28BF9).withOpacity(0.2),
                                        width: 6)),
                                height: 400,
                                width: 400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -130,
                          left: MediaQuery.of(context).size.width * 0.4,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xFFC28BF9).withOpacity(0.2),
                                        width: 4)),
                                height: 400,
                                width: 400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -130,
                          left: MediaQuery.of(context).size.width * 0.45,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xFFC28BF9).withOpacity(0.2),
                                        width: 4)),
                                height: 400,
                                width: 400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -100,
                          left: MediaQuery.of(context).size.width * 0.36,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xFFC28BF9).withOpacity(0.2),
                                        width: 6)),
                                height: 400,
                                width: 400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -18,
                          left: MediaQuery.of(context).size.width * 0.48,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color(0xFFC28BF9), width: 2)),
                            height: 220,
                            width: 220,
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: MediaQuery.of(context).size.width * 0.53,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color(0xFFC28BF9), width: 2)),
                            height: 220,
                            width: 220,
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: MediaQuery.of(context).size.width * 0.57,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color(0xFFC28BF9).withOpacity(0.2),
                                    width: 3)),
                            height: 220,
                            width: 220,
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: MediaQuery.of(context).size.width * 0.61,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color(0xFFC28BF9).withOpacity(0.2),
                                    width: 3)),
                            height: 220,
                            width: 220,
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: MediaQuery.of(context).size.width * 0.66,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: const Color(0xFFC28BF9).withOpacity(0.2),
                                    width: 3)),
                            height: 220,
                            width: 220,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 80.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.arrow_back_ios),
                                          padding: EdgeInsets.zero,
                                          color: Colors.white38,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        const Text(
                                          'Category',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        const Icon(
                                          Icons.delivery_dining,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18),
                                          child: Container(
                                            width: 10,
                                            height: 10,
                                            decoration: const BoxDecoration(
                                                color: Colors.yellow,
                                                shape: BoxShape.circle),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 8),
                child:  Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  child: BlocBuilder<CategoryCubit, CategoryState>(
  builder: (context, state) {
    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2.2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 0),
                        itemCount:  state.categories.length,
                        itemBuilder: (constext, index) {
                          return Container(
                            margin: EdgeInsets.only(left: 8,right: 8 , top: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 160,
                                    child: Image.asset(
                                      state.categories[index].image.toString(),
                                      fit: BoxFit.cover,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Container(
                                    height: 120,
                                    width: 160,
                                    child: Center(
                                        child: Text(
                                            state.categories[index].title.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
  },
),
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
