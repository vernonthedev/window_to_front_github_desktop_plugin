import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'window_to_front_github_desktop_platform_interface.dart';

/// An implementation of [WindowToFrontGithubDesktopPlatform] that uses method channels.
class MethodChannelWindowToFrontGithubDesktop extends WindowToFrontGithubDesktopPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('window_to_front_github_desktop');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
