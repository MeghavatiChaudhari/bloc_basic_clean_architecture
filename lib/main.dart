import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/di/injection.dart';
import 'package:news_app/features/news/data/datasources/news_remote_data_source.dart';
import 'package:news_app/features/news/data/repositories/news_repository_impl.dart';
import 'package:news_app/features/news/domain/usecases/get_top_headlines.dart';
import 'package:news_app/features/news/presentation/blocs/news_bloc.dart';
import 'package:news_app/features/news/presentation/blocs/news_event.dart';

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
        BlocProvider(create: (_) => Injection.userBloc),
      ],
      child: MaterialApp(
        home: UserPage(),
      ),
    );
  }
}
