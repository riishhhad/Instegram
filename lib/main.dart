import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/Bloc/followers_bloc.dart';
import 'package:instegram/Bloc/following_bloc.dart';
import 'package:instegram/Bloc/highlight_bloc.dart';
import 'package:instegram/Bloc/inste_bloc.dart';
import 'package:instegram/Bloc/post_bloc.dart';
import 'package:instegram/Bloc/tag_bloc.dart';
import 'package:instegram/UI/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HighlightBloc(),),
                  BlocProvider(create: (context) => InsteBloc(),),
                  BlocProvider(create: (context) => PostBloc(),),
                  BlocProvider(create: (context) =>TagBloc(),),
                  BlocProvider(create: (context) => FollowersBloc(),),
                  BlocProvider(create: (context) => FollowingBloc(),),
           ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a purple toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).
            //
            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            //
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const screen1(),
        ),
    );
  }
}
