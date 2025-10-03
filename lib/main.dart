import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/di/injection.dart';

import 'features/auth/presentation/pages/user_page.dart';

void main() async {
  await Injection.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_) => Injection.userBloc),
        BlocProvider(create: (_) => Injection.newsBloc),
      ],
      child: MaterialApp(
        home: UserPage(),
      ),
    );
  }
}
