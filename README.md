# LookBook

![LookBook Screenshot](data/screenshot.png?raw=true)

## Building, Testing, and Installation


You'll need the following dependencies to build:
* granite >= 0.5
* libgtk-3-dev
* meson
* valac

Run `meson build` to configure the build environment and then change to the build directory and run `ninja` to build

    meson build --prefix=/usr 
    cd build
    ninja

To install, use `ninja install`, then execute with `com.github.danrabbit.lookbook`

    sudo ninja install
    com.github.danrabbit.lookbook
