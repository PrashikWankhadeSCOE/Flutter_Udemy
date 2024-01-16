import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:advisor/1_domain/usecases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'advicer_state.dart';

const serverFailureMessage =
    '"Upps...  Some thing gone wrong !! Please Check your Internet Connection "';
const generalFailureMessage =
    '"Upps...  Some thing gone wrong !! Please Check your Internet Connection "';
const cacheFailureMessage = '"Ups Cache Failure - Please Try again Later ! "';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  final AdviceUsecases adviceUsecases;

  AdvicerCubit({required this.adviceUsecases}) : super(AdvicerInitial());

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final failureOrAdvice = await adviceUsecases.getAdvice();
    failureOrAdvice.fold(
      (failure) =>
          emit(AdvicerStateError(message: _mapFailuretoMessage(failure))),
      (advice) => emit(AdvicerStateLoaded(advice: advice.advice)),
    );
  }

  String _mapFailuretoMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure _:
        return serverFailureMessage;
      case const (CacheFailure):
        return cacheFailureMessage;
      default:
        return generalFailureMessage;
    }
  }
}
