part of 'user_bloc.dart';

@immutable
sealed class UserEvent extends Equatable {
  const UserEvent();
}

class GetUsersEvent extends UserEvent {
  const GetUsersEvent();
  @override
  List<Object?> get props => [];
}
