import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'window_to_front_github_desktop_method_channel.dart';

abstract class WindowToFrontGithubDesktopPlatform extends PlatformInterface {
  /// Constructs a WindowToFrontGithubDesktopPlatform.
  WindowToFrontGithubDesktopPlatform() : super(token: _token);

  static final Object _token = Object();

  static WindowToFrontGithubDesktopPlatform _instance = MethodChannelWindowToFrontGithubDesktop();

  /// The default instance of [WindowToFrontGithubDesktopPlatform] to use.
  ///
  /// Defaults to [MethodChannelWindowToFrontGithubDesktop].
  static WindowToFrontGithubDesktopPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WindowToFrontGithubDesktopPlatform] when
  /// they register themselves.
  static set instance(WindowToFrontGithubDesktopPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
