class FieldValidator {
  // 1. Basic Validators
  static String? required(String? value, {String? errorMessage}) {
    if (value == null || value.trim().isEmpty) {
      return errorMessage ?? 'This field is required';
    }
    return null;
  }

  static String? minLength(
    String? value,
    int minLength, {
    String? errorMessage,
  }) {
    if (value == null || value.length < minLength) {
      return errorMessage ?? 'Must be at least $minLength characters';
    }
    return null;
  }

  static String? maxLength(
    String? value,
    int maxLength, {
    String? errorMessage,
  }) {
    if (value != null && value.length > maxLength) {
      return errorMessage ?? 'Cannot exceed $maxLength characters';
    }
    return null;
  }

  // 2. Email Validators
  static String? email(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Email is required';
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );

    if (!emailRegex.hasMatch(value.trim())) {
      return errorMessage ?? 'Enter a valid email address';
    }
    return null;
  }

  static String? emailDomain(
    String? value,
    String domain, {
    String? errorMessage,
  }) {
    final emailValid = email(value, errorMessage: errorMessage);
    if (emailValid != null) return emailValid;

    if (!value!.endsWith('@$domain')) {
      return errorMessage ?? 'Must be a $domain email';
    }
    return null;
  }

  // 3. Password Validators
  static String? password(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Password is required';
    }
    if (value.length < 6) {
      return errorMessage ?? 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? strongPassword(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Password is required';
    }

    if (value.length < 8) {
      return errorMessage ?? 'Password must be at least 8 characters';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return errorMessage ?? 'Must contain at least one uppercase letter';
    }

    if (!value.contains(RegExp(r'[a-z]'))) {
      return errorMessage ?? 'Must contain at least one lowercase letter';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return errorMessage ?? 'Must contain at least one number';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return errorMessage ?? 'Must contain at least one special character';
    }

    return null;
  }

  static String? passwordMatch(
    String? value,
    String password, {
    String? errorMessage,
  }) {
    if (value != password) {
      return errorMessage ?? 'Passwords do not match';
    }
    return null;
  }

  // 4. Number Validators
  static String? numeric(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) return null;

    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return errorMessage ?? 'Only numbers are allowed';
    }
    return null;
  }

  static String? positiveNumber(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) return null;

    final number = double.tryParse(value);
    if (number == null) {
      return errorMessage ?? 'Enter a valid number';
    }
    if (number <= 0) {
      return errorMessage ?? 'Must be greater than zero';
    }

    return null;
  }

  // 5. Date Validators
  static String? age(String? value, {int minAge = 18, String? errorMessage}) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Birth date is required';
    }

    final date = DateTime.tryParse(value);
    if (date == null) {
      return errorMessage ?? 'Invalid date format';
    }

    final age = (DateTime.now().difference(date).inDays / 365).floor();
    if (age < minAge) {
      return errorMessage ?? 'Must be at least $minAge years old';
    }

    return null;
  }

  static String? futureDate(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) return null;

    final date = DateTime.tryParse(value);
    if (date == null) {
      return errorMessage ?? 'Invalid date format';
    }

    if (date.isAfter(DateTime.now())) {
      return errorMessage ?? 'Date cannot be in the future';
    }

    return null;
  }

  // 6. Custom Format Validators
  static String? phone(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) {
      return errorMessage ?? 'Phone number is required';
    }

    final phoneRegex = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');

    if (!phoneRegex.hasMatch(value)) {
      return errorMessage ?? 'Enter a valid phone number';
    }

    return null;
  }

  static String? bdMobile(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    const pattern = r'^(?:\+?88)?01[3-9]\d{8}$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(value.trim())) {
      return 'Enter a valid phone number';
    }

    return null; // Valid number
  }

  static String? url(String? value, {String? errorMessage}) {
    if (value == null || value.isEmpty) return null;

    final urlRegex = RegExp(
      r'^(https?:\/\/)?' // protocol
      r'([\da-z\.-]+)\.' // domain name
      r'([a-z\.]{2,6})' // top level domain
      r'([\/\w \.-]*)*\/?$', // path
    );

    if (!urlRegex.hasMatch(value)) {
      return errorMessage ?? 'Enter a valid URL';
    }

    return null;
  }

  // 7. Composite Validators
  static String? Function(String?)? combine(
    List<String? Function(String?)?> validators,
  ) {
    return (String? value) {
      for (final validator in validators) {
        final result = validator?.call(value);
        if (result != null) return result;
      }
      return null;
    };
  }

  static String? Function(String?)? conditional({
    required bool condition,
    required String? Function(String?)? validator,
    String? errorMessage,
  }) {
    return condition ? validator : (value) => null;
  }
}
