class LogInWithEmailAndPasswordFailure {
  final String message;

  const LogInWithEmailAndPasswordFailure(
      [this.message = "An Unknown Error occurred"]);

  factory LogInWithEmailAndPasswordFailure.fromCode(String fromCode){
    switch (fromCode) {
      case 'weak password':
        return const LogInWithEmailAndPasswordFailure(
            'please enter a stronger password');
      case 'invalid-email':
        return const LogInWithEmailAndPasswordFailure(
            'email is not valid or badly formatted');
      case 'email-already-in-use':
        return const LogInWithEmailAndPasswordFailure(
            'An account already exist for that email');
      case 'operation-not-allowed':
        return const LogInWithEmailAndPasswordFailure(
            'Operation is not allowed. Please contact support');
      case 'user-disable':
        return const LogInWithEmailAndPasswordFailure(
            'This user has been disable. please contact support');


      default:
        return const LogInWithEmailAndPasswordFailure();
    }
  }
}