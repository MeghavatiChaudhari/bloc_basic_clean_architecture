part of 'user_bloc.dart';

@immutable
class UserState extends Equatable {
  final List<User> users;
  final bool isLoading;
  final String? errorMessage;

  const UserState({
    this.users = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  UserState copyWith({
    List<User>? users,
    bool? isLoading,
    String? errorMessage,
  }) {
    return UserState(
      users: users ?? this.users,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [
        users,
        isLoading,
        errorMessage,
      ];
}
