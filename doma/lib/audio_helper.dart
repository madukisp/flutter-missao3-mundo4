import 'package:flutter/services.dart';

class AudioHelper {
  static const platform = MethodChannel('audio_helper');

  Future<bool> audioOutputAvailable(int type) async {
    try {
      final bool result = await platform.invokeMethod('audioOutputAvailable', {'type': type});
      return result;
    } on PlatformException catch (e) {
      print("Failed to get audio output: '${e.message}'.");
      return false;
    }
  }
}
