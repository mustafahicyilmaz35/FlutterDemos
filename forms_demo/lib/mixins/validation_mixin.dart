class ValidationMixin {
  String validationFirstName(String value) {
    if (value.length < 2) {
      return "isim en az 2 karakter olmalıdır";
    }
    return null;
  }

  String validationLastName(String value) {
    if (value.length < 2) {
      return "soyad en az 2 karakter olmalıdır";
    }
    return null;
  }

  String validationEmail(String value) {
    if (!value.contains("@")) {
      return "Mail Geçerli Değil";
    }
    return null;
  }
}
