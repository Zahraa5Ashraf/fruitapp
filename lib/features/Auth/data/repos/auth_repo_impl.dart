import 'package:fruitapp/features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future completeInformation({String? name, String? address, String? phone}) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    throw UnimplementedError();
  }

}