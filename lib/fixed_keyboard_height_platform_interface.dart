import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fixed_keyboard_height_method_channel.dart';

abstract class FixedKeyboardHeightPlatform extends PlatformInterface {
  /// Constructs a FixedKeyboardHeightPlatform.
  FixedKeyboardHeightPlatform() : super(token: _token);

  static final Object _token = Object();

  static FixedKeyboardHeightPlatform _instance = MethodChannelFixedKeyboardHeight();

  /// The default instance of [FixedKeyboardHeightPlatform] to use.
  ///
  /// Defaults to [MethodChannelFixedKeyboardHeight].
  static FixedKeyboardHeightPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FixedKeyboardHeightPlatform] when
  /// they register themselves.
  static set instance(FixedKeyboardHeightPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
