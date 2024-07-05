import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/Bloc/inste_bloc.dart';
import 'package:instegram/Repository/Modelclass/inste.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  late Inste happy;
  @override
  void initState() {
    BlocProvider.of<InsteBloc>(context).add(FetcinsteEvent());
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: BlocBuilder<InsteBloc,InsteState>(
  builder: (context, state) {
    if (state is insteBlocloading) {
      return Center(child: CircularProgressIndicator(),);
    }
    if (state is insteBlocerror) {
      return Center(child: Text('Error'),);
    }
    if (state is insteBlocloaded) {
      happy =BlocProvider.of<InsteBloc>(context).inste;
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60,
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.only(left: 8,top: 20),
                      child: Icon(Icons.search,size: 40,),
                    ),
                    hintText: 'What do people call you?',
                    labelText: 'Name *',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child:
                          SizedBox(width: 80, child: Image.asset("assets/1.png")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Container(
                        width: 46,
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '129',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.64,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            Text(
                              'Posts',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 77,
                      height: 46,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '3680',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.64,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Followers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 77,
                      height: 46,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '230',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.64,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Following',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 3),
                child: Column(
                  children: [
                    Container(
                      width: 149,
                      height: 65,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.64,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Local business',
                                  style: TextStyle(
                                    color: Color(0xFF8E8E8E),
                                    fontSize: 16.05,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'www.website.com',
                                  style: TextStyle(
                                    color: Color(0xFFD4E0ED),
                                    fontSize: 17.20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      width: 100.37,
                      height: 33.25,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 90.37,
                              height: 33.25,
                              decoration: ShapeDecoration(
                                color: Color(0xFF4192EF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.73),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 31.07,
                            top: 6.88,
                            child: Text(
                              'Follow',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.05,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100.37,
                    height: 33.25,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 90.37,
                            height: 33.25,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.15, color: Color(0xFF343434)),
                                borderRadius: BorderRadius.circular(5.73),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 19.60,
                          top: 6.88,
                          child: Text(
                            'Message',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.05,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.37,
                    height: 33.25,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 90.37,
                            height: 33.25,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.15, color: Color(0xFF343434)),
                                borderRadius: BorderRadius.circular(5.73),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 35.55,
                          top: 6.88,
                          child: Text(
                            'Email',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.05,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 35.69,
                    height: 33.25,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 35.69,
                            height: 33.25,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.15, color: Color(0xFF343434)),
                                borderRadius: BorderRadius.circular(5.73),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 90,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                  height: 40,
                  child: TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
                    Tab(
                      icon: Icon(
                        Icons.list_alt,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.perm_contact_cal_rounded,
                        color: Colors.white,
                      ),
                    )
                  ])),
              SizedBox(
                height: 392,
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.red,
                      child: GridView.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: 20.0,children: [
                            Image.asset("assets/1.png"),
                            Image.asset("assets/1.png"),
                            Image.asset("assets/1.png"),
                            Image.asset("assets/1.png"),
                            Image.asset("assets/1.png"),
                            Image.asset("assets/1.png"),
                            Image.asset("assets/1.png"),
                        Image.asset("assets/1.png"),
                        Image.asset("assets/1.png"),
                      ],
                      ),
                    ),
                    Container(
                      color: Colors.green, child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 20.0,children: [
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                      Image.asset("assets/1.png"),
                    ],
                    ),
                    )
                  ],
                ),
              )
            ],
     );} else {return SizedBox(width: 10,);}
  },
),
        ),
      ),
    );
  }
}
