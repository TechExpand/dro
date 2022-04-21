import 'dart:ui';

import 'package:dro/modules/cart/cart_cubit.dart';
import 'package:dro/modules/category/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Supplement extends StatelessWidget {
  const Supplement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            padding: EdgeInsets.zero,
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
                                          onPressed: () {},
                                        ),
                                        const Text(
                                          'Categories',
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
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CATEGORIES',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'VIEW ALL',
                            style: TextStyle(
                                color: Color(0xFFB464F8),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Container(
                        height: 120,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (constext, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 160,
                                        child: Image.network(
                                          'https://images.theconversation.com/files/175523/original/file-20170626-4492-mqyzj3.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip',
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
                                              'Headache',
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
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SUGGESTIONS',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                child: BlocBuilder<CategoryCubit, CategoryState>(
  builder: (context, state) {
    return GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 3.7,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 20),
                    itemCount: state.categories.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        elevation: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          // padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(14)),
                                    child: Container(
                                      // color: zz,
                                      height: 140,
                                      width: MediaQuery.of(context).size.width,
                                      alignment: Alignment.center,
                                      child: Image.network(
                                        state.categories[index].image.toString(),
                                        fit: BoxFit.fill,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(14))),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(top: 124),
                                      height: 20,
                                      color: Colors.black38,
                                      child: Center(
                                          child: Text(
                                            'Requires a prescription',
                                            style: TextStyle(color: Colors.white),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0, top: 7),
                                    child: Text('Paracetamol'),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left:8.0, top: 2),
                                      child: Text('Tablet・500mg',  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),)),

                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0, top: 8),
                                    child: Text('NGN350.00', style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold, color: Colors.black87),),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
  },
),
              ),
            ],
          ),
        ));
  }
}
