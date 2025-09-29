import 'package:equatable/equatable.dart';

class NewsSource extends Equatable {
  final String? id;
  final String name;

  const NewsSource({
    required this.id,
    required this.name,
  });
  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
