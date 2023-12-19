import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
      debugPrint('Fake get advice trigged');
      await Future.delayed(const Duration(seconds: 3), () => {});
      debugPrint('got advice');

      emit(AdvicerStateLoaded(
          advice:
              'We cannot solve problems with the kind of thinking we employed when we came up with them.” — Albert Einstein'));
      //emit(AdvicerStateError(
      //    message: 'Please check your internet connection !'));
    });
  }
}
