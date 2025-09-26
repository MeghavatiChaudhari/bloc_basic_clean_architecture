import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:news_app/features/auth/domain/usecases/get_user_usecase.dart';

import '../../domain/entities/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._getUserUseCase) : super(const UserState()) {
    on<GetUsersEvent>(_onGetUsersEvent);
  }

  final GetUserUseCase _getUserUseCase;

  FutureOr<void> _onGetUsersEvent(
      GetUsersEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getUserUseCase();
    result.fold((l) {
      emit(state.copyWith(isLoading: false, errorMessage: l.message));
    }, (r) {
      emit(state.copyWith(isLoading: true, users: r));
    });
  }
}
