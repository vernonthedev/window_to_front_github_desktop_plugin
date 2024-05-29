import 'package:flutter_test/flutter_test.dart';
import 'package:window_to_front_github_desktop/window_to_front_github_desktop.dart';
import 'package:window_to_front_github_desktop/window_to_front_github_desktop_platform_interface.dart';
import 'package:window_to_front_github_desktop/window_to_front_github_desktop_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWindowToFrontGithubDesktopPlatform
    with MockPlatformInterfaceMixin
    implements WindowToFrontGithubDesktopPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WindowToFrontGithubDesktopPlatform initialPlatform = WindowToFrontGithubDesktopPlatform.instance;

  test('$MethodChannelWindowToFrontGithubDesktop is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWindowToFrontGithubDesktop>());
  });

  test('getPlatformVersion', () async {
    WindowToFrontGithubDesktop windowToFrontGithubDesktopPlugin = WindowToFrontGithubDesktop();
    MockWindowToFrontGithubDesktopPlatform fakePlatform = MockWindowToFrontGithubDesktopPlatform();
    WindowToFrontGithubDesktopPlatform.instance = fakePlatform;

    expect(await windowToFrontGithubDesktopPlugin.getPlatformVersion(), '42');
  });
}
