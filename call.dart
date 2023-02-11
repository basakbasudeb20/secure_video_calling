import 'package:flutter/material.dart';
import 'package:video_call/contants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'login.dart';

class MyCall extends StatelessWidget {
  const MyCall({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: MyConst.appId,
      appSign: MyConst.appSign,
      userID: MyLogin.userId,
      userName: MyLogin.name,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
