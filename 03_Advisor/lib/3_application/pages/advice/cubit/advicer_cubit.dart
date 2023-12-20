import 'package:advisor/1_domain/usecases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());
  final AdviceUsecases adviceUsecases = AdviceUsecases();

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final advice = await adviceUsecases.getAdvice();
    // Execute buisiness logic

    emit(AdvicerStateLoaded(advice: advice.advice));
    //emit(AdvicerStateError(
    //    message: 'Please check your internet connection !'));
  }
}
