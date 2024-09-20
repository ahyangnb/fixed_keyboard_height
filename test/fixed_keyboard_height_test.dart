import 'package:flutter_test/flutter_test.dart';
import 'package:fixed_keyboard_height/fixed_keyboard_height.dart';
import 'package:fixed_keyboard_height/fixed_keyboard_height_platform_interface.dart';
import 'package:fixed_keyboard_height/fixed_keyboard_height_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFixedKeyboardHeightPlatform
    with MockPlatformInterfaceMixin
    implements FixedKeyboardHeightPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FixedKeyboardHeightPlatform initialPlatform = FixedKeyboardHeightPlatform.instance;

  test('$MethodChannelFixedKeyboardHeight is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFixedKeyboardHeight>());
  });

  test('getPlatformVersion', () async {
    FixedKeyboardHeight fixedKeyboardHeightPlugin = FixedKeyboardHeight();
    MockFixedKeyboardHeightPlatform fakePlatform = MockFixedKeyboardHeightPlatform();
    FixedKeyboardHeightPlatform.instance = fakePlatform;

    expect(await fixedKeyboardHeightPlugin.getPlatformVersion(), '42');
  });
}
