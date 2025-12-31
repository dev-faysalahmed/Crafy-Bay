import 'package:crafty_bay/app/setup_network_caller.dart';
import 'package:crafty_bay/app/urls.dart';
import 'package:crafty_bay/core/services/network_caller.dart';
import 'package:crafty_bay/features/auth/data/models/sign_up_params.dart';
import 'package:flutter/cupertino.dart';

class SignUpProvider extends ChangeNotifier {
  bool _isSignUpInProgress = false;
  String? _errorMassage;

  bool get isSignUpInProgress => _isSignUpInProgress;
  String? get errorMassage => _errorMassage;

  Future<bool> signUp(SignUpParams params) async {
    bool isSuccess = false;

    _isSignUpInProgress = true;
    notifyListeners();

    final NetworkResponse response = await getNetworkCaller().postRequest(
      url: Urls.signUpUrl,
      body: params.toJson(),
    );

    if(response.isSuccess){
      isSuccess = true;
      _errorMassage = null;
    }else{
      _errorMassage = response.errorMessage;
    }

    _isSignUpInProgress = false;
    notifyListeners();

    return isSuccess;
  }
}
