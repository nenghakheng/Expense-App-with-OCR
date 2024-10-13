part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class AddReceiptButtonClickedEvent extends HomeEvent {}

final class DeleteReceiptButtonClickedEvent extends HomeEvent {}

final class HomeNavigateToExpenseDetailEvent extends HomeEvent {}

final class HomeNavigateToGoalsEvent extends HomeEvent {}
