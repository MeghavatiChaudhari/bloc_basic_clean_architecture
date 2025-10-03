import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/auth/presentation/bloc/user_bloc.dart';
import 'package:news_app/features/news_trial/presentation/bloc/trial_news_bloc.dart';
import 'package:news_app/features/news_trial/presentation/bloc/trial_news_event.dart';
import 'package:news_app/features/news_trial/presentation/bloc/trial_news_state.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // context.read<UserBloc>().add(const GetUsersEvent());
      context.read<TrialNewsBloc>().add(const GetNewsEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TrialNewsBloc, TrialNewsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
              itemCount: state.news?.articles.length,
              itemBuilder: (context, index) {
                // final user = state.users[index];
                final news = state.news?.articles[index];
                return ListTile(
                  title: Text('${news?.author}'),
                  subtitle: Text('${news?.description}'),
                );
              });
        },
      ),
    );
  }
}
