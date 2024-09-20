import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fixed_keyboard_height/fixed_keyboard_height_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFixedKeyboardHeight platform = MethodChannelFixedKeyboardHeight();
  const MethodChannel channel = MethodChannel('fixed_keyboard_height');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
