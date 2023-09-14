

class SignUpWithEmailAndPasswordFailure{
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message= "An Unknown Error occurred"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code) {
      case 'weak password': return const SignUpWithEmailAndPasswordFailure('please enter a stronger password');
      case 'invalid-email': return const SignUpWithEmailAndPasswordFailure('email is not valid or badly formatted');
      case 'email-already-in-use': return const SignUpWithEmailAndPasswordFailure('An account already exist for that email');
      case 'operation-not-allowed': return const SignUpWithEmailAndPasswordFailure('Operation is not allowed. Please contact support');
      case 'user-disable': return const SignUpWithEmailAndPasswordFailure('This user has been disable. please contact support');


      default: return const SignUpWithEmailAndPasswordFailure();
    }
  }
}