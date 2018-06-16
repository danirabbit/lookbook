project('com.github.danrabbit.lookbook', 'vala', 'c')

gnome = import('gnome')
i18n = import('i18n')

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

asresources = gnome.compile_resources(
    'as-resources', 'data/' + meson.project_name() + '.gresource.xml',
    source_dir: 'data',
    c_name: 'as'
)

executable(
    meson.project_name(),
    asresources,
    'src/Application.vala',
    'src/CategoryView.vala',
    'src/IconView.vala',
    'src/MainWindow.vala',
    'src/Widgets/IconListRow.vala',
    'src/Widgets/ModeSwitch.vala',
    'src/Widgets/SidebarRow.vala',
    dependencies: [
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('granite', version: '>=0.5'),
        dependency('gtk+-3.0'),
        dependency('gtksourceview-3.0')
    ],
    install : true
)

test (
    'Vala lint',
    find_program('io.elementary.vala-lint'),
    args: ['-d', join_paths(meson.source_root(), 'src')]
)

subdir('data')
subdir('po')

meson.add_install_script('meson/post_install.py')

