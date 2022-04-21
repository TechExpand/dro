import 'dart:ui';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
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
                                        color: Color(0xFFC28BF9).withOpacity(0.2),
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
                                        color: Color(0xFFC28BF9).withOpacity(0.2),
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
                                        color: Color(0xFFC28BF9).withOpacity(0.2),
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
                                        color: Color(0xFFC28BF9).withOpacity(0.2),
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
                                border:
                                Border.all(color: Color(0xFFC28BF9), width: 2)),
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
                                border:
                                Border.all(color: Color(0xFFC28BF9), width: 2)),
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
                                    color: Color(0xFFC28BF9).withOpacity(0.2),
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
                                    color: Color(0xFFC28BF9).withOpacity(0.2),
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
                                    color: Color(0xFFC28BF9).withOpacity(0.2),
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          icon:Icon(Icons.arrow_back_ios),
                                          padding: EdgeInsets.zero,
                                          color: Colors.white38,
                                          onPressed: (){

                                          },
                                        ),
                                        Text(
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
                                        Icon(
                                          Icons.delivery_dining,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 18),
                                          child: Container(
                                            width: 10,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                shape: BoxShape.circle),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                height: 40,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(left: 12),
                                margin: const EdgeInsets.only(
                                    bottom: 15, left: 12, right: 12, top: 15),
                                decoration: BoxDecoration(
                                    color: Color(0xFFB464F8).withOpacity(0.8),
                                    border: Border.all(color: Color(0xFFB464F8)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                child: TextFormField(
                                  autofocus: true,
                                  onFieldSubmitted: (e) {},
                                  cursorColor: Colors.white,
                                  textInputAction: TextInputAction.search,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF270F33),
                                      fontWeight: FontWeight.w600),
                                  decoration: InputDecoration(
                                    isCollapsed: false,
                                    hintText: 'Search',
                                    focusedBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                    focusColor: Color(0xFF2B1137),
                                    fillColor: Color(0xFF2B1137),
                                    hoverColor: Color(0xFF2B1137),
                                  ),
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
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.pin_drop_outlined),
                    Text('Delivery In '),
                    Text(
                      'Lagos, NG',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 4.5,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20),
                      itemCount: 4,
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
                                          'https://onemg.gumlet.io/image/upload/a_ignore,w_380,h_380,c_fit,q_auto,f_auto/v1537453247/vnon1e0kiinmhqwgk12u.jpg',
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
                                Row(
                                  children: [
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
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0, top: 30),
                                      child: Container(
                                        child: const Icon(
                                          Icons.favorite_border,
                                          color: Color(0xFFB464F8),),
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF5EFFC),
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:14.0, bottom: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xFFB464F8),
                                      ),
                                      borderRadius: BorderRadius.circular(14)
                                    ),
                                    margin: EdgeInsets.only(left: 10, right: 10),
                                    height: 40,
                                    child: Center(child: Text('ADD TO CART',style: TextStyle(color: Color(0xFFB464F8), fontWeight: FontWeight.bold),)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
