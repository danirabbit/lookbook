project('com.github.danrabbit.lookbook', 'vala', 'c')

gnome = import('gnome')
i18n = import('i18n')

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

executable(
    meson.project_name(),
    'src/Application.vala',
    'src/CategoryView.vala',
    'src/IconView.vala',
    'src/MainWindow.vala',
    'src/Widgets/IconListRow.vala',
    dependencies: [
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('granite', version: '>=0.5'),
        dependency('gtk+-3.0')
    ],
    install : true
)

subdir('data')
subdir('po')

meson.add_install_script('meson/post_install.py')
