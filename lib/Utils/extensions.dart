extension ExtString on String {
  bool get isValidEmail{
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(this);
  }

  bool get isValidPassword{
    final RegExp passwordRegex = RegExp(r'^[A-Za-z0-9]{8,}$');
    return passwordRegex.hasMatch(this);
  }

  bool get isValidPhoneNumber{
    final RegExp phoneRegex = RegExp(r'^\+27-\d{9}$');
    return phoneRegex.hasMatch(this);
  }

  bool get isTextValidLength{
    final RegExp max50Regex = RegExp(r'^.{0,50}$');
    return max50Regex.hasMatch(this);
  }
}