import '../repositories/onboarding_repository.dart';

class SetOnboardingCompleteUseCase {
  final OnboardingRepository repo;
  SetOnboardingCompleteUseCase(this.repo);

  Future<void> call() => repo.setCompleted();
}
