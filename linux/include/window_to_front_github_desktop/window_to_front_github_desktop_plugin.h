#ifndef FLUTTER_PLUGIN_WINDOW_TO_FRONT_GITHUB_DESKTOP_PLUGIN_H_
#define FLUTTER_PLUGIN_WINDOW_TO_FRONT_GITHUB_DESKTOP_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _WindowToFrontGithubDesktopPlugin WindowToFrontGithubDesktopPlugin;
typedef struct {
  GObjectClass parent_class;
} WindowToFrontGithubDesktopPluginClass;

FLUTTER_PLUGIN_EXPORT GType window_to_front_github_desktop_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void window_to_front_github_desktop_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_WINDOW_TO_FRONT_GITHUB_DESKTOP_PLUGIN_H_
