import 'package:dro/modules/cart/cart_view.dart';
import 'package:flutter/material.dart';

addCartDialog(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (builder) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(30)),
          child: AnimatedPadding(
            padding: MediaQuery.of(context).viewInsets,
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate,
            child: StatefulBuilder(builder: (context, setState) {
              return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(30)),
                    child: Container(
                      color: Colors.transparent,
                      height: 290,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                  color: Colors.white),
                              height: 350.0,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 10, bottom: 40),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      child: Text(
                                        'Congrats,your account have been credited successfully.',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder:
                                              (context, animation, secondaryAnimation) {
                                            return CartPage();
                                          },
                                          transitionsBuilder: (context, animation,
                                              secondaryAnimation, child) {
                                            return FadeTransition(
                                              opacity: animation,
                                              child: child,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 500),
                                      height: 50,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(left: 12),
                                      margin: const EdgeInsets.only(
                                          bottom: 15,
                                          left: 12,
                                          right: 12,
                                          top: 15),
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment(-1, -0.9),
                                              end: Alignment(0.2, 0.2),
                                              colors: [
                                                Color(0xFF844BF6),
                                                Color(0xFFA44EF7)
                                              ]),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xFF844BF6)
                                                    .withOpacity(0.5),
                                                blurRadius: 10.0,
                                                offset: Offset(0.3, 1.0))
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'VIEW CART',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 500),
                                      height: 50,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(left: 12),
                                      margin: const EdgeInsets.only(
                                          bottom: 15,
                                          left: 12,
                                          right: 12,
                                          top: 0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF9F5DE2),
                                              width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'CONTINUE SHOPPING',
                                            style: TextStyle(
                                                color: Color(0xFF9F5DE2),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
            }),
          ),
        );
      });
}
