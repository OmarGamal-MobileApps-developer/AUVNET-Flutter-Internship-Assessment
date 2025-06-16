abstract class OnboardingRepository {
  Future<bool> getStatus();
  Future<void> setCompleted();
}
