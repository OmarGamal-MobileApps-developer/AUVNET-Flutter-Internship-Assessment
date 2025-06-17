class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
      caseSensitive: false,
    );

    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email (e.g., user@example.com)';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    }

    return null;
  }

  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Address is required';
    }

    if (value.length < 10) {
      return 'Address must be at least 10 characters';
    }

    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      if (value == null || value.isEmpty) {
        return 'Name is required';
      }

      final trimmedValue = value.trim();
      if (trimmedValue.length < 3) {
        if (value.length < 3) {
          return 'Name must be at least 3 characters';
        }

        if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(trimmedValue)) {
          return 'Name must contain only alphabets and spaces';
        }

        return null;
      }
    }
  }
}
