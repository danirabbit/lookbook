project('com.github.danrabbit.lookbook', ['vala', 'c'],
    version: '0.1.4'
)

gnome = import('gnome')
i18n = import('i18n')

conf = configuration_data()
conf.set_quoted('GETTEXT_PACKAGE', meson.project_name())
configure_file(output: 'config.h', configuration: conf)
config_h_dir = include_directories('.')

c_args = [
  '-include', 'config.h'
]

executable(
    meson.project_name(),
    'src/Application.vala',
    'src/CategoryView.vala',
    'src/IconView.vala',
    'src/MainWindow.vala',
    'src/Widgets/IconListBox.vala',
    'src/Widgets/IconListRow.vala',
    c_args: c_args,
    dependencies: [
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('granite', version: '>=0.5'),
        dependency('gtk+-3.0'),
        dependency('json-glib-1.0')
    ],
    install : true
)
