import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<AddReceiptButtonClickedEvent>(addReceiptButtonClickedEvent);
    on<DeleteReceiptButtonClickedEvent>(deleteReceiptButtonClickedEvent);
    on<HomeNavigateToExpenseDetailEvent>(homeNavidateToExpenseDetailEvent);
    on<HomeNavigateToGoalsEvent>(homeNavigateToGoalsEvent);
  }

  FutureOr<void> addReceiptButtonClickedEvent(
      AddReceiptButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Add receipt button clicked');
  }

  FutureOr<void> deleteReceiptButtonClickedEvent(
      DeleteReceiptButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Delete receipt button clicked');
  }

  FutureOr<void> homeNavidateToExpenseDetailEvent(
      HomeNavigateToExpenseDetailEvent event, Emitter<HomeState> emit) {
    print("Should go to expense detail screen");
    emit(HomeNavigateToExpenseDetailActionState());
  }

  FutureOr<void> homeNavigateToGoalsEvent(
      HomeNavigateToGoalsEvent event, Emitter<HomeState> emit) {
    print('Should go to goals screen');
    emit(HomeNavigateToGoalsActionState());
  }
}
