
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
  PhoneAuthCubit() : super(PhoneAuthInitial());
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController phone = TextEditingController();
  String code = '';
  String typedSms = '';
  bool flag = false;

  Future<FirebaseAuth?> verifyPhoneNumber({String? phone}) async {
    emit(PhoneAuthLoading());
    await auth.verifyPhoneNumber(
      phoneNumber: phone ?? this.phone.text,
      verificationCompleted: (phoneAuthCredential) async {
        await auth.signInWithCredential(phoneAuthCredential);
        emit(PhoneAuthSuccess());
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (verificationId, forceResendingToken) async {
        code = verificationId;
        print(code);
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }

 SendSms({required String smsCode}) async {
    PhoneAuthCredential credential;
    try {
      credential = PhoneAuthProvider.credential(verificationId: code, smsCode: smsCode);
      var creds = await auth.signInWithCredential(credential);
      print(creds.runtimeType);
      return creds;
    }on FirebaseAuthException catch(e) {
      print("##################################################################3${e.message}");
      return e.message;
    }
    // Sign the user in (or link) with the credential

  }
}
