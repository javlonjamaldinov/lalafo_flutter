import 'package:equatable/equatable.dart';

abstract class PriceEvent extends Equatable {
  const PriceEvent();

  @override
  List<Object> get props => [];
}

class SelectKgs extends PriceEvent {}

class SelectUsd extends PriceEvent {}
