import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future loginWithGoogle();
  Future loginWithFacebook();
  Future completeInformation({
    @required String name,
    @required String address,
    @required String phone,
  });
}
