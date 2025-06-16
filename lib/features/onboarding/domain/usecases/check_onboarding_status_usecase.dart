import '../repositories/onboarding_repository.dart';

class GetOnboardingStatusUseCase {
  final OnboardingRepository repo;
  GetOnboardingStatusUseCase(this.repo);

  Future<bool> call() => repo.getStatus();
}
