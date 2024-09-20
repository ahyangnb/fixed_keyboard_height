import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fixed_keyboard_height_platform_interface.dart';

/// An implementation of [FixedKeyboardHeightPlatform] that uses method channels.
class MethodChannelFixedKeyboardHeight extends FixedKeyboardHeightPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fixed_keyboard_height');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
