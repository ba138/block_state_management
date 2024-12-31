part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();
  
  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {}
