import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
sealed class TrialNewsEvent extends Equatable {
  const TrialNewsEvent();
}

class GetNewsEvent extends TrialNewsEvent {
  const GetNewsEvent();

  @override
  List<Object?> get props => [];
}
