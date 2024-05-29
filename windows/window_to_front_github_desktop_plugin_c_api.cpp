#include "include/window_to_front_github_desktop/window_to_front_github_desktop_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "window_to_front_github_desktop_plugin.h"

void WindowToFrontGithubDesktopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  window_to_front_github_desktop::WindowToFrontGithubDesktopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
