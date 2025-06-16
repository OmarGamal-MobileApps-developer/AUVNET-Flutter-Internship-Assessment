import 'package:auvnet_ecommerce_app/features/onboarding/domain/usecases/set_onboarding_complete_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/check_onboarding_status_usecase.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';


class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final GetOnboardingStatusUseCase getStatus;
  final SetOnboardingCompleteUseCase setComplete;

  OnboardingBloc({
    required this.getStatus,
    required this.setComplete,
  }) : super(OnboardingInitial()) {
    on<LoadOnboardingStatusEvent>((event, emit) async {
      final isDone = await getStatus();
      emit(isDone ? OnboardingCompleted() : OnboardingNotCompleted());
    });

    on<CompleteOnboardingEvent>((event, emit) async {
      await setComplete();
      emit(OnboardingCompleted());
    });
  }
}
