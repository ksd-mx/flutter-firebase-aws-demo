import 'package:dartz/dartz.dart';
import 'package:mobile/core/error/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:mobile/modules/authentication/domain/usecases/phone_verification_confirmation_input.dart';

class ConfirmVerificationUseCase
    implements IUseCase<UserCredential, PhoneVerificationConfirmationRequest> {
  final AuthenticationRepository repository;

  ConfirmVerificationUseCase(this.repository);

  Future<Either<Failure, UserCredential>> execute(
      PhoneVerificationConfirmationRequest request) async {
    return await this
        .repository
        .confirmVerification(request.verificationId, request.smsCode);
  }
}
