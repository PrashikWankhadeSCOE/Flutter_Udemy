import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      // Execute buisiness logic
      // for example get an advice
      debugPrint('Fake get advice trigged')
      await Future.delayed(const Duration(seconds: 3), () => {});
      debugPrint('got advice');

      emit(AdvicerStateLoaded(advice: 'Fake advice to a state bloc'));
      //emit(AdvicerStateError(message: 'error message'));
    });
  }
}
