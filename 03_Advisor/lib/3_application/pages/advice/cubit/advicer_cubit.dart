import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:advisor/1_domain/usecases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'advicer_state.dart';

const _serverFailureMessage = "Upss API Error -- Please Try again later !! ";
const _generalFailureMessage =
    '"Upps...  Some thing gone wrong !! Please Check your Internet Connection "';
const _cacheFailureMessage = '"Ups Cache Failure - Please Try again Later ! "';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());
  final AdviceUsecases adviceUsecases = AdviceUsecases();

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
      case ServerFailure:
        return _serverFailureMessage;
      case CacheFailure:
        return _cacheFailureMessage;
      default:
        return _generalFailureMessage;
    }
  }
}
