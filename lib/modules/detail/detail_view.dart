import 'dart:ui';

import 'package:dro/Model/suggestion.dart';
import 'package:dro/Widget/dialog.dart';
import 'package:dro/counter/count_cubit.dart';
import 'package:dro/modules/cart/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatelessWidget {
  Suggestion data;
   DetailPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 8,
        child: SizedBox(
          height: 90,
          child: BlocBuilder<CountCubit, CountState>(
  builder: (context, state) {
    return Column(
            children: [
              InkWell(
                onTap: (){
                  BlocProvider.of<CartCubit>(context).addCart(
                    price: data.price,
                    type: data.type,
                    dose: data.dose,
                    quantity: state.number,
                    image: data.image,
                    title: data.title,
                  );
                  addCartDialog(context);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 50,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  margin: const EdgeInsets.only(
                      bottom: 15, left: 12, right: 12, top: 15),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-1, -0.9),
                          end: Alignment(0.2, 0.2),
                          colors: [Color(0xFF844BF6), Color(0xFFA44EF7)]),

                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF844BF6).withOpacity(0.5),
                            blurRadius: 10.0,
                            offset: Offset(0.3, 1.0))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                      Text('  Add to cart', style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              )
            ],
          );
  },
),
        ),
      ),
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
                                          'Pharmacy',
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
                // color: zz,
                height: 200,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Hero(
                  tag: data.id.toString(),
                  child: Image.asset(
                    data.image.toString(),
                    fit: BoxFit.fill,
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(const Radius.circular(14))),
              ),
               Text(data.title.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
               Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  '${data.type.toString()} - ${data.dose.toString()}mg',
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 10),
                      child: Container(
                        // color: zz,
                        height: 50,
                        width: 50,
                        child: const CircleAvatar(
                          backgroundImage: const NetworkImage(
                            'https://onemg.gumlet.io/image/upload/a_ignore,w_380,h_380,c_fit,q_auto,f_auto/v1537453247/vnon1e0kiinmhqwgk12u.jpg',
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38, width: 1.2),
                            borderRadius: const BorderRadius.all(const Radius.circular(100))),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('SOLD BY', style: TextStyle(color:Color(0xFF426995), fontSize: 12)),
                        Text('Emzor Pharmaceuticals', style: TextStyle(color:Color(0xFF426995),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 0),
                      child: Container(
                        child: const Icon(
                          Icons.favorite_border,
                          color: Color(0xFFB464F8),),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF5EFFC),
                            borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                    )
                  ],
                ),
              ),
              BlocBuilder<CountCubit, CountState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 26.0, left: 5, right: 5),
                      child: Row(
                  children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){
                              BlocProvider.of<CountCubit>(context).decreament();
                            }, icon: const Icon(Icons.remove, size: 18,)),

                            Text("${state.number}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                            IconButton(onPressed: (){
                              BlocProvider.of<CountCubit>(context).increament();
                            }, icon: const Icon(Icons.add, size: 18,))
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        width: 123,
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child:  Text("Pack(s)",style: TextStyle(color: Colors.black38, fontSize: 16),),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text('₦', style: TextStyle(fontSize: 16),),
                            Text('${int.parse(data.price.toString())*state.number}', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                            Padding(
                              padding: EdgeInsets.only(top:21.0),
                              child: Text('.00', style: TextStyle(fontSize: 16,  fontWeight: FontWeight.bold),),
                            ),

                          ],
                        ),
                      )
                  ],
                ),
                    );
              }),

              const Padding(
                padding: EdgeInsets.only(left:20.0, top: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: const Text('PRODUCT DETAILS', style: TextStyle(color:Color(0xFF426995),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20.0, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.verified_user_outlined, color: Color(0xFFB464F8)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('PACK SIZE', style: TextStyle(color:Color(0xFF426995), fontSize: 12)),
                          Text('8 X 12 tablets (96)', style: TextStyle(color:Color(0xFF426995),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.qr_code_scanner_sharp, color: const Color(0xFFB464F8)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('PRODUCT IS', style: TextStyle(color:Color(0xFF426995), fontSize: 12)),
                          Text('PRO23648856', style: TextStyle(color:Color(0xFF426995),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top:20.0, left: 25, right: 51),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.verified_user_outlined, color: Color(0xFFB464F8)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('CONSTITUENTS', style: TextStyle(color:Color(0xFF426995), fontSize: 12)),
                          Text('Paracetamol', style: TextStyle(color:Color(0xFF426995),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                   const Spacer(),
                    const Icon(Icons.qr_code_scanner_sharp, color: const Color(0xFFB464F8)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('DISPENSED IN', style: TextStyle(color:Color(0xFF426995), fontSize: 12)),
                          Text('Packs', style: TextStyle(color:Color(0xFF426995),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15, top: 30),
                child:  Text("1 packof Emzor Paracetamol (500mg) contains 8 units of 12 tablets.",
                  style: TextStyle(color: Colors.black38, fontSize: 16),),
              ),

              const Padding(
                padding: EdgeInsets.only(left:20.0, top: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: const Text('Similar Products',
                      style: TextStyle(color:Color(0xFF5E5E5E),
                      fontSize: 21,
                      fontWeight: FontWeight.bold)),
                ),
              ),



              Container(
                height: 210,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        // margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only( left: 10, right: 10),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          elevation: 2,
                          child: Container(
                            width: 200,
                            // padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(14)),
                                  child: Container(
                                    // color: zz,
                                    height: 130,
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.center,
                                    child: Image.network(
                                      'https://onemg.gumlet.io/image/upload/a_ignore,w_380,h_380,c_fit,q_auto,f_auto/v1537453247/vnon1e0kiinmhqwgk12u.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(14))),
                                  ),
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
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
