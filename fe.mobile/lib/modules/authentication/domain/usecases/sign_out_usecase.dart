import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile/core/error/failure.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:mobile/modules/authentication/domain/usecases/phone_verification_input.dart';

class SignOutUseCase implements IUseCase<void, void> {
  final AuthenticationRepository repository;

  SignOutUseCase(this.repository);

  Future<Either<Failure, void>> execute(void _) async {
    return await this.repository.signOut();
  }
}
