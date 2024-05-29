
import 'window_to_front_github_desktop_platform_interface.dart';

class WindowToFrontGithubDesktop {
  Future<String?> getPlatformVersion() {
    return WindowToFrontGithubDesktopPlatform.instance.getPlatformVersion();
  }
}
