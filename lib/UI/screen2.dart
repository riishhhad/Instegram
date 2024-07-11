import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/Bloc/followers_bloc.dart';
import 'package:instegram/Bloc/following_bloc.dart';
import 'package:instegram/Repository/Modelclass/followers.dart';
import 'package:instegram/Repository/Modelclass/following.dart';
import 'package:instegram/UI/screen3.dart';

class screen2 extends StatefulWidget {
  final String follwersid;
  final String followingid;
  const screen2({super.key, required this.followingid,
                            required this.follwersid});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  late Followers travel;
  late Following trip;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FollowersBloc>(context).add(FetcfollowersEvent(followersid: widget.follwersid));
    BlocProvider.of<FollowingBloc>(context).add(FetcfollowingEvent(followingid: widget.followingid));
    return Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black,automaticallyImplyLeading: false,leading: GestureDetector(onTap: (){
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)),
          title: Text("All  followers",style: TextStyle(color: Colors.white),
             ),
        ),
        body: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.black,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerHeight: 1,
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                          child: Text(
                            "Followers",
                          )),
                      Tab(
                          child: Text(
                            "Following",
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: BlocBuilder<FollowersBloc,FollowersState>(
  builder: (context, state) {
    if (state is followersBlocloading) {
    return Center(
    child: CircularProgressIndicator(),
    );
    }
    if (state is followersBlocerror) {
    return Center(
    child: Text("Error"),
    );
    }
    if (state is followersBlocloaded) {
    travel = BlocProvider.of<FollowersBloc>(context)
        .followers;

    return TabBarView(
    children: [
    SizedBox(height: 500,width: 400,
    child: ListView.separated(
    itemCount: travel.data!.items!.length,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, position) {
    return Container(width: 500,height: 50,
    color: Colors.black,
    child: Row(
    children: [
    CircleAvatar(radius: 30,backgroundImage: NetworkImage(travel.data!.items![position].profilePicUrl.toString()),),
    Text(travel.data!.items![position].username.toString(),
    style:TextStyle( color: Colors.white,
    fontSize: 17.20,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,),
    ),
    ],
    ),

    );
    },
    separatorBuilder: (context, position) {
    return SizedBox(height: 10,
    );
    },

    ),

    ),
    Expanded(
    child: TabBarView(
    children: [
    BlocBuilder<FollowingBloc, FollowingState>(
      builder: (context, state)  {
    if (state is followingBlocloading) {
    return Center(
    child: CircularProgressIndicator(),
    );
    }
    if (state is followingBlocerror) {
    return Center(
    child: Text("Error"),
    );
    }
    if (state is followingBlocloaded) {
      trip = BlocProvider
          .of<FollowingBloc>(context)
          .following;
    }

    return SizedBox(height: 500,width: 400,
      child: ListView.separated(
      itemCount: trip.data!.items!.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, position) {
      return GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen3(id: travel.data!.items![position].username.toString(),)));},
        child: Container(width: 500,height: 50,
        color: Colors.black,
        child: Row(
        children: [
        CircleAvatar(radius: 30,backgroundImage: NetworkImage(trip.data!.items![position].profilePicUrl.toString()),),
        Text( trip.data!.items![position].username.toString(),
        style:TextStyle( color: Colors.white,
        fontSize: 17.20,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        height: 0,),
        ),
        ],
        ),

        ),
      );
      },
      separatorBuilder: (context, position) {
      return SizedBox(height: 10,
      );
      },

      ),
    );
      },
    ),
    ],)
    )
    ],);}else{return SizedBox();}

    }),
                  ),
              ],
            ),
          ),
        ));
  }
}


