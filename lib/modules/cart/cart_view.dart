import 'dart:ui';

import 'package:dro/Widget/dialog.dart';
import 'package:dro/counter/count_cubit.dart';
import 'package:dro/modules/cart/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
   CartPage({Key? key}) : super(key: key);

  // Initial Selected Value


  // List of items in our dropdown menu
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];


  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CartCubit>(context).totalCartAmount();
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 8,
        child: SizedBox(
          height: 80,
          child: BlocBuilder<CartCubit, CartState>(
  builder: (context, state) {

    return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Total:", style: TextStyle(fontSize: 16),),
                  Text("NGN${state.total}.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0),
                    child: InkWell(
                      onTap: (){
                        addCartDialog(context);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.55,
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
                    ),
                  ),
                ],
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
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                                          child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
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











BlocBuilder<CartCubit, CartState>(
  builder: (context, state) {
    return Container(
  width: MediaQuery.of(context).size.width,
  child:   ListView.separated(
    separatorBuilder: (context, index){
      return Divider(thickness: 1,);
    },
    itemCount: state.cart.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
    return state.cart.isEmpty?Container():Container(
      child: Row(
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 15.0, top: 4,right: 15,),
             child: Container(
               height:100,
               width: 100,
               child: Image.asset(state.cart[index].image.toString(),
               fit: BoxFit.cover,
               ),
             ),
           ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${state.cart[index].title}"),
              Text("${state.cart[index].type} ${state.cart[index].dose}mg"),
              Text('NGN${(int.parse(state.cart[index].price.toString())*int.parse(state.cart[index].quantity.toString()))}.00')
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width:60,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DropdownButton(
                          iconEnabledColor: Color(0xFFB464F8),
                          // Initial Value
                          value: state.cart[index].quantity.toString(),
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down_sharp, size: 18, color: Color(0xFFB464F8)),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items, style: TextStyle(color: Color(0xFFB464F8)),),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            BlocProvider.of<CartCubit>(context).updateCartIndex(
                              index: index,
                            image: state.cart[index].image,
                              title: state.cart[index].title,
                              type: state.cart[index].type,
                              dose: state.cart[index].dose,
                              price: state.cart[index].price,
                              quantity: int.parse(newValue.toString()),
                            );

                            BlocProvider.of<CartCubit>(context).totalCartAmount();
                            // setState(() {
                            //   dropdownvalue = newValue!;
                            // });
                          },
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.delete_outlined, color: Color(0xFFB464F8)),
                        Text('Remove', style: TextStyle(color: Color(0xFFB464F8)),),
                      ],
                    ),
                    onTap: (){
                      BlocProvider.of<CartCubit>(context).removeCart(index: index);
                      BlocProvider.of<CartCubit>(context).totalCartAmount();
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }),
);
  },
)








            ],
          ),
        ),
      ),
    );
  }
}
