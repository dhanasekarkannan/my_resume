class ResumeException implements Exception {
  final String? errorCode;
  final String? errorMessage;
  const ResumeException({this.errorCode, this.errorMessage});
}
