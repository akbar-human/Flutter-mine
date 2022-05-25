import 'package:equatable/equatable.dart';

abstract class SeatState extends Equatable {
  const SeatState();

  @override
  List<Object> get props => [];
}

class SeatInitial extends SeatState {}
