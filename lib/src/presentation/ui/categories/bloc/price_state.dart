import 'package:equatable/equatable.dart';

class PriceState extends Equatable {
  final bool isKgsSelected;

  const PriceState({required this.isKgsSelected});

  factory PriceState.initial() {
    return const PriceState(isKgsSelected: false);
  }

  get isUsdSelected => null;

  PriceState copyWith({bool? isKgsSelected}) {
    return PriceState(isKgsSelected: isKgsSelected ?? this.isKgsSelected);
  }

  @override
  List<Object> get props => [isKgsSelected];
}
