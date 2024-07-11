import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/highlight_bloc.dart';
import '../Bloc/inste_bloc.dart';
import '../Bloc/post_bloc.dart';
import '../Bloc/tag_bloc.dart';
import '../Repository/Modelclass/highlight.dart';
import '../Repository/Modelclass/inste.dart';
import '../Repository/Modelclass/post.dart';
import '../Repository/Modelclass/tag.dart';

class screen3 extends StatefulWidget {
  final String id;
  const screen3({super.key, required this.id});
  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  late Inste happy;
  late Highlight sad;
  late Post moov;
  late Tag  vibe;

  @override
  void initState() {
    BlocProvider.of<InsteBloc>(context).add(FetcinsteEvent(idinsta: widget.id));
    BlocProvider.of<HighlightBloc>(context).add(FetchighlightEvent(highlightid: widget.id));
    BlocProvider.of<PostBloc>(context).add(FetcpostEvent(postid: widget.id));
    BlocProvider.of<TagBloc>(context).add(FetcTagEvent(tagid: widget.id));
    // TODO: implement initState
    super.initState();
  }

  @override
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child:
                            SizedBox(width: 70, child: CircleAvatar(radius: 40,backgroundImage: NetworkImage(happy.data!.profilePicUrl.toString()))),
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
                                    happy.data!.mediaCount.toString(),
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
                                SizedBox(width: 200,height: 20,
                                  child: Text(
                                    happy.data!.followerCount.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.64,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
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
                          GestureDetector(onTap: (){
                            //Navigator.of(context).push(MaterialPageRoute(builder:(_)=> screen2()));
                            },
                            child: Container(
                              width: 77,
                              height: 46,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    happy.data!.followingCount.toString(),
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
                                      SizedBox(width: 148,height: 20,
                                        child: Text(
                                          happy.data!.fullName.toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.64,
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
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 130,height: 20,
                                        child: Text(
                                          happy.data!.biography.toString(),
                                          style: TextStyle(
                                            color: Color(0xFF8E8E8E),
                                            fontSize: 16.05,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
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
                      child: BlocBuilder<HighlightBloc,HighlightState>(
                        builder: (context, state) {
                          if (state is highlightBlocloading) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );}
                          if (state is highlightBlocerror){
                            return Center(child: Text("Error"),);
                          }
                          if (state is highlightBlocloaded) {
                            sad= BlocProvider.of<HighlightBloc>(context).highlight;
                            print(sad);

                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:sad.data!.items?.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.black,
                                    backgroundImage: NetworkImage(sad.data!.items![index].coverMedia!.croppedImageVersion!.url.toString()),
                                  ),
                                );
                              },
                            );}else{return SizedBox();}
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
                            color: Colors.black,
                            child: BlocBuilder<PostBloc,PostState>(
                              builder: (context, state) {
                                if (state is postBlocloading) {
                                  return Center(child: CircularProgressIndicator(),);}
                                if (state is postBlocerror) {
                                  return Center(child: Text("Error"),);
                                }
                                if (state is postBlocloaded) {
                                  moov=BlocProvider.of<PostBloc>(context).post;

                                  return GridView.count(
                                    crossAxisCount: 3,
                                    childAspectRatio: 1650/1900,
                                    shrinkWrap: true,
                                    children: List.generate(moov.data!.items!.length, (index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(moov.data!.items![index].imageVersions!.items![0].url.toString().toString()),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },),
                                  );}else{return SizedBox();}
                              },
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            child: BlocBuilder<TagBloc,TagState>(
                              builder: (context, state) {
                                if (state is tagBlocloading) {
                                  return Center(child: CircularProgressIndicator(),);}
                                if (state is tagBlocerror) {
                                  return Center(child: Text("Error"),);
                                }
                                if (state is tagBlocloaded) {
                                  vibe=BlocProvider.of<TagBloc>(context).tag;

                                  return GridView.count(
                                    physics: NeverScrollableScrollPhysics(),
                                    crossAxisCount: 3,
                                    childAspectRatio: 1650/1900,
                                    shrinkWrap: true,
                                    children: List.generate(vibe.data!.items!.length, (index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(vibe.data!.items![index].displayUrl.toString()),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },),
                                  );}else{return SizedBox();}
                              },
                            ),
                          ),
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
