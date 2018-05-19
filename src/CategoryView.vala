/*
* Copyright (c) 2017-2018 Daniel Foré (http://danielfore.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*/

public class CategoryView : Gtk.Paned {
    public string category_name { get; construct; }
    public Gtk.ListBox listbox;

    public enum Category {
        ACTIONS,
        APPS,
        CATEGORIES,
        DEVICES,
        EMBLEMS,
        EMOTES,
        MIMES,
        PLACES,
        STATUS;

        public string to_string () {
            switch (this) {
                case ACTIONS:
                    return _("Actions");
                case APPS:
                    return _("Applications");
                case CATEGORIES:
                    return _("Categories");
                case DEVICES:
                    return _("Devices");
                case EMBLEMS:
                    return _("Emblems");
                case EMOTES:
                    return _("Emotes");
                case MIMES:
                    return _("Mimetypes");
                case PLACES:
                    return _("Places");
                case STATUS:
                    return _("Status");
                default:
                    return _("OTHER");
            }
        }

        public static Category[] all () {
            return { ACTIONS, APPS, CATEGORIES, DEVICES, EMBLEMS, EMOTES, MIMES, PLACES, STATUS };
        }
    }

    private struct Icon {
        string name;
        string description;
        Category category;
    }

    static Icon[] icons = {
        Icon () {
            name = "address-book-new",
            description = _("Create a new address book"),
            category = ACTIONS
        },
        Icon () {
            name = "align-horizontal-center",
            description = _("Align objects to center along the X axis"),
            category = ACTIONS
        },
        Icon () {
            name = "align-horizontal-left",
            description = _("Align objects left along the X axis"),
            category = ACTIONS
        },
        Icon () {
            name = "align-horizontal-right",
            description = _("Align objects right along the X axis"),
            category = ACTIONS
        },
        Icon () {
            name = "align-vertical-bottom",
            description = _("Align objects to bottom along the Y axis"),
            category = ACTIONS
        },
        Icon () {
            name = "align-vertical-center",
            description = _("Align objects to center along the Y axis"),
            category = ACTIONS
        },
        Icon () {
            name = "align-vertical-top",
            description = _("Align objects to top along the Y axis"),
            category = ACTIONS
        },
        Icon () {
            name = "application-exit",
            description = _("Used for exiting an application"),
            category = ACTIONS
        },
        Icon () {
            name = "appointment-new",
            description = _("Create a new appointment in a calendaring application"),
            category = ACTIONS
        },
        Icon () {
            name = "bookmark-new",
            description = _("Create a new bookmark"),
            category = ACTIONS
        },
        Icon () {
            name = "call-start",
            description = _("Initiate or accept a call"),
            category = ACTIONS
        },
        Icon () {
            name = "call-stop",
            description = _("Stop the current call"),
            category = ACTIONS
        },
        Icon () {
            name = "contact-new",
            description = _("Create a new contact in an address book application"),
            category = ACTIONS
        },
        Icon () {
            name = "document-export",
            description = _("Export a document"),
            category = ACTIONS
        },
        Icon () {
            name = "document-import",
            description = _("Import a document"),
            category = ACTIONS
        },
        Icon () {
            name = "document-new",
            description = _("Create a new document"),
            category = ACTIONS
        },
        Icon () {
            name = "document-open",
            description = _("Open a document"),
            category = ACTIONS
        },
        Icon () {
            name = "document-open-recent",
            description = _("Open a document that was recently opened"),
            category = ACTIONS
        },
        Icon () {
            name = "document-page-setup",
            description = _("The page setup action of a document editor"),
            category = ACTIONS
        },
        Icon () {
            name = "document-print",
            description = _("Print"),
            category = ACTIONS
        },
        Icon () {
            name = "document-print-preview",
            description = _("The print preview action of an application"),
            category = ACTIONS
        },
        Icon () {
            name = "document-properties",
            description = _("View the properties of a document"),
            category = ACTIONS
        },
        Icon () {
            name = "document-revert",
            description = _("Revert to a previous version of a document"),
            category = ACTIONS
        },
        Icon () {
            name = "document-save",
            description = _("Save"),
            category = ACTIONS
        },
        Icon () {
            name = "document-save-as",
            description = _("Save as"),
            category = ACTIONS
        },
        Icon () {
            name = "document-send",
            description = _("Send"),
            category = ACTIONS
        },
        Icon () {
            name = "edit",
            description = _("Edit"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-clear",
            description = _("Clear"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-copy",
            description = _("Copy"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-cut",
            description = _("Cut"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-delete",
            description = _("Delete"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-find",
            description = _("Find"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-find-replace",
            description = _("Find & Replace"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-flag",
            description = _("Flag an item, such as a spam email"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-paste",
            description = _("Paste"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-redo",
            description = _("Redo"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-select-all",
            description = _("Select all"),
            category = ACTIONS
        },
        Icon () {
            name = "edit-undo",
            description = _("Undo"),
            category = ACTIONS
        },
        Icon () {
            name = "event-new",
            description = _("Create a new calendar event"),
            category = ACTIONS
        },
        Icon () {
            name = "folder-copy",
            description = _("Copy a folder"),
            category = ACTIONS
        },
        Icon () {
            name = "folder-move",
            description = _("Move a folder"),
            category = ACTIONS
        },
        Icon () {
            name = "folder-new",
            description = _("Create a new folder"),
            category = ACTIONS
        },
        Icon () {
            name = "format-indent-less",
            description = _("Decrease indent"),
            category = ACTIONS
        },
        Icon () {
            name = "format-indent-more",
            description = _("Increase indent"),
            category = ACTIONS
        },
        Icon () {
            name = "format-justify-center",
            description = _("Center justify text"),
            category = ACTIONS
        },
        Icon () {
            name = "format-justify-fill",
            description = _("Fill justify text"),
            category = ACTIONS
        },
        Icon () {
            name = "format-justify-left",
            description = _("Left justify text"),
            category = ACTIONS
        },
        Icon () {
            name = "format-justify-right",
            description = _("Right justify text"),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-direction-ltr",
            description = _("Format text as left-to-right"),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-direction-rtl",
            description = _("Format text as right-to-left"),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-bold",
            description = _("Format text as bold"),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-highlight",
            description = _("Format text as highlighted"),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-italic",
            description = _("Format text as italic"),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-underline",
            description = _("Format text as underlined"),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-strikethrough",
            description = _("Format text as being struck through"),
            category = ACTIONS
        },
        Icon () {
            name = "go-bottom",
            description = _("Go to the bottom, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "go-down",
            description = _("Go down, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "go-first",
            description = _("Go to the first item, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "go-home",
            description = _("Go to the home location"),
            category = ACTIONS
        },
        Icon () {
            name = "go-jump",
            description = _("Jump to a location"),
            category = ACTIONS
        },
        Icon () {
            name = "go-last",
            description = _("Go to the last item, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "go-next",
            description = _("Go forward to the next item, such as in a list or navigation"),
            category = ACTIONS
        },
        Icon () {
            name = "go-previous",
            description = _("Go back to the previous item, such as in a list or navigation"),
            category = ACTIONS
        },
        Icon () {
            name = "go-top",
            description = _("Go to the top, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "go-up",
            description = _("Go up, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "help-about",
            description = _("Information about an app"),
            category = ACTIONS
        },
        Icon () {
            name = "help-contents",
            description = _("Get help"),
            category = ACTIONS
        },
        Icon () {
            name = "help-faq",
            description = _("Frequently asked questions"),
            category = ACTIONS
        },
        Icon () {
            name = "image-adjust",
            description = _("Make adjustments to an image"),
            category = ACTIONS
        },
        Icon () {
            name = "image-auto-adjust",
            description = _("Automatically adjust an image"),
            category = ACTIONS
        },
        Icon () {
            name = "image-crop",
            description = _("Crop an image"),
            category = ACTIONS
        },
        Icon () {
            name = "image-red-eye",
            description = _("Remove red eye from an image"),
            category = ACTIONS
        },
        Icon () {
            name = "insert-image",
            description = _("Insert an image"),
            category = ACTIONS
        },
        Icon () {
            name = "insert-link",
            description = _("Insert a link"),
            category = ACTIONS
        },
        Icon () {
            name = "insert-object",
            description = _("Insert an object"),
            category = ACTIONS
        },
        Icon () {
            name = "insert-text",
            description = _("Insert text"),
            category = ACTIONS
        },
        Icon () {
            name = "list-add",
            description = _("Add to a list"),
            category = ACTIONS
        },
        Icon () {
            name = "list-remove",
            description = _("Remove from a list"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-forward",
            description = _("Forward an email"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-important",
            description = _("Mark an email as important"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-junk",
            description = _("Mark an email as junk or spam"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-notjunk",
            description = _("Mark an email as not junk or spam"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-read",
            description = _("Mark an email as read"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-unread",
            description = _("Mark an email as unread"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-message-new",
            description = _("Compose a new email"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-reply-all",
            description = _("Reply to all participants of an email"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-reply-sender",
            description = _("Reply to the sender of an email"),
            category = ACTIONS
        },
        Icon () {
            name = "mail-send",
            description = _("Send an email"),
            category = ACTIONS
        },
        Icon () {
            name = "media-eject",
            description = _("Eject removable media"),
            category = ACTIONS
        },
        Icon () {
            name = "media-playback-pause",
            description = _("Pause media playback"),
            category = ACTIONS
        },
        Icon () {
            name = "media-playback-start",
            description = _("Start playing media"),
            category = ACTIONS
        },
        Icon () {
            name = "media-playback-stop",
            description = _("Stop playing media"),
            category = ACTIONS
        },
        Icon () {
            name = "media-record",
            description = _("Start recording"),
            category = ACTIONS
        },
        Icon () {
            name = "media-seek-backward",
            description = _("Seek backwards or rewind"),
            category = ACTIONS
        },
        Icon () {
            name = "media-seek-forward",
            description = _("Seek forwards, or fastforward"),
            category = ACTIONS
        },
        Icon () {
            name = "media-skip-backward",
            description = _("Skip backwards, such as to the previous track"),
            category = ACTIONS
        },
        Icon () {
            name = "media-skip-forward",
            description = _("Skip forwards, such as to the next track"),
            category = ACTIONS
        },
        Icon () {
            name = "object-flip-horizontal",
            description = _("Flip an object horizontally"),
            category = ACTIONS
        },
        Icon () {
            name = "object-flip-vertical",
            description = _("Flip an object vertically"),
            category = ACTIONS
        },
        Icon () {
            name = "object-rotate-left",
            description = _("Rotate an object to the left or counter-clockwise"),
            category = ACTIONS
        },
        Icon () {
            name = "object-rotate-right",
            description = _("Rotate an object to the right or clockwise"),
            category = ACTIONS
        },
        Icon () {
            name = "process-stop",
            description = _("Stop an action that may take a while to process, such as web page loading in a browser"),
            category = ACTIONS
        },
        Icon () {
            name = "system-lock-screen",
            description = _("Lock the screen or the user's session"),
            category = ACTIONS
        },
        Icon () {
            name = "system-log-out",
            description = _("Log out of the user's session"),
            category = ACTIONS
        },
        Icon () {
            name = "system-run",
            description = _("Run a system app or command"),
            category = ACTIONS
        },
        Icon () {
            name = "system-search",
            description = _("Search the system"),
            category = ACTIONS
        },
        Icon () {
            name = "system-reboot",
            description = _("Restart the device"),
            category = ACTIONS
        },
        Icon () {
            name = "system-shutdown",
            description = _("Shut the device down"),
            category = ACTIONS
        },
        Icon () {
            name = "tools-check-spelling",
            description = _("Check spelling"),
            category = ACTIONS
        },
        Icon () {
            name = "view-fullscreen",
            description = _("View fullscreen"),
            category = ACTIONS
        },
        Icon () {
            name = "view-refresh",
            description = _("Refresh the current view"),
            category = ACTIONS
        },
        Icon () {
            name = "view-restore",
            description = _("Leave fullscreen and return to a normal window"),
            category = ACTIONS
        },
        Icon () {
            name = "view-sort-ascending",
            description = _("Sort items in an ascending order, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "view-sort-descending",
            description = _("Sort items in a descending order, such as in a list"),
            category = ACTIONS
        },
        Icon () {
            name = "window-close",
            description = _("Close the window"),
            category = ACTIONS
        },
        Icon () {
            name = "window-new",
            description = _("Create a new window"),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-fit-best",
            description = _("Zoom to the best fit"),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-in",
            description = _("Zoom in"),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-original",
            description = _("Zoom to the original size"),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-out",
            description = _("Zoom out"),
            category = ACTIONS
        },
        Icon () {
            name = "accessories-calculator",
            description = _("Calculator"),
            category = APPS
        },
        Icon () {
            name = "accessories-camera",
            description = _("Camera or webcam"),
            category = APPS
        },
        Icon () {
            name = "accessories-character-map",
            description = _("International and extended text character map"),
            category = APPS
        },
        Icon () {
            name = "accessories-dictionary",
            description = _("Dictionary"),
            category = APPS
        },
        Icon () {
            name = "accessories-screenshot",
            description = _("Screenshot tool"),
            category = APPS
        },
        Icon () {
            name = "accessories-text-editor",
            description = _("Text editor"),
            category = APPS
        },
        Icon () {
            name = "application-default-icon",
            description = _("Default or unprovided app icon"),
            category = APPS
        },
        Icon () {
            name = "archive-manager",
            description = _("Archive manager"),
            category = APPS
        },
        Icon () {
            name = "internet-chat",
            description = _("Internet chat or messaging"),
            category = APPS
        },
        Icon () {
            name = "internet-mail",
            description = _("Mail or email"),
            category = APPS
        },
        Icon () {
            name = "internet-news-reader",
            description = _("News or feed reader"),
            category = APPS
        },
        Icon () {
            name = "internet-web-browser",
            description = _("Web browser"),
            category = APPS
        },

        Icon () {
            name = "multimedia-audio-player",
            description = _("Music or audio player"),
            category = APPS
        },
        Icon () {
            name = "multimedia-photo-manager",
            description = _("Photo manager or library"),
            category = APPS
        },
        Icon () {
            name = "multimedia-video-player",
            description = _("Video or movie player"),
            category = APPS
        },
        Icon () {
            name = "office-address-book",
            description = _("Address book or contacts"),
            category = APPS
        },
        Icon () {
            name = "office-calendar",
            description = _("Calendar"),
            category = APPS
        },
        Icon () {
            name = "postscript-viewer",
            description = _("Portable document or PDF viewer"),
            category = APPS
        },
        Icon () {
            name = "preferences-desktop",
            description = _("System settings"),
            category = APPS
        },
        Icon () {
            name = "system-file-manager",
            description = _("Files"),
            category = APPS
        },
        Icon () {
            name = "system-os-installer",
            description = _("Install the operating system"),
            category = APPS
        },
        Icon () {
            name = "system-software-install",
            description = _("AppCenter or software installer"),
            category = APPS
        },
        Icon () {
            name = "system-software-update",
            description = _("Software updater"),
            category = APPS
        },
        Icon () {
            name = "system-users",
            description = _("User settings"),
            category = APPS
        },
        Icon () {
            name = "utilities-system-monitor",
            description = _("System resource monitor"),
            category = APPS
        },
        Icon () {
            name = "utilities-terminal",
            description = _("Terminal"),
            category = APPS
        },
        Icon () {
            name = "applications-accessories",
            description = _("Accessory or utility app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-development",
            description = _("Programming, software development, code, or IDE app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-education",
            description = _("Education, learning, or school app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-engineering",
            description = _("Engineering app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-fonts",
            description = _("Font category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-games",
            description = _("Games app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-graphics",
            description = _("Graphics, drawing, art, or photo manipulation app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-internet",
            description = _("Internet or web related app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-multimedia",
            description = _("Multimedia, audio, or video app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-office",
            description = _("Office app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-other",
            description = _("Other or uncategorized app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-science",
            description = _("Science app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-system",
            description = _("System tools or OS app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-utilities",
            description = _("Utility app category"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-bluetooth",
            description = _("Bluetooth settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-color",
            description = _("Color settings such as printer, display, or camera calibration"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop",
            description = _("Desktop interface settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-accessibility",
            description = _("Universal access settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-accessibility-pointing",
            description = _("Universal access settings for pointing, such as controlling the cursor"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-accessibility-zoom",
            description = _("Universal access settings for zooming or magnifying"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-applications",
            description = _("App-related settings, such as default or startup apps"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-display",
            description = _("Display settings, such as resolution or scaling"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-keyboard",
            description = _("Keyboard settings, such as layout or shortcuts"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-locale",
            description = _("International localization, language, or region settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-online-accounts",
            description = _("Online account and cloud sync or sign in settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-peripherals",
            description = _("Settings for peripherals, such as a mouse or keyboard"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-sound",
            description = _("Sound or audio input and output settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-wallpaper",
            description = _("Desktop wallpaper or background settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-other",
            description = _("Other, miscellaneous, or uncategorized settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system",
            description = _("System settings or preferences"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-network",
            description = _("Network settings, such as wireless, Ethernet, or VPN"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-notifications",
            description = _("Notification alert settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-parental-controls",
            description = _("Parental control settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-power",
            description = _("Power management or energy usage settings, such as battery"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-privacy",
            description = _("Privacy and security settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-sharing",
            description = _("Sharing settings, such as library sharing or media streaming over a network"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-time",
            description = _("Time and date settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-windows",
            description = _("Window management settings"),
            category = CATEGORIES
        },
        Icon () {
            name = "system-help",
            description = _("Help"),
            category = CATEGORIES
        },
        Icon () {
            name = "audio-card",
            description = _("Audio output device, such as a sound card or speaker"),
            category = DEVICES
        },
        Icon () {
            name = "audio-input-microphone",
            description = _("Microphone"),
            category = DEVICES
        },
        Icon () {
            name = "audio-subwoofer",
            description = _("Subwoofer or bass speaker"),
            category = DEVICES
        },
        Icon () {
            name = "battery",
            description = _("Battery"),
            category = DEVICES
        },
        Icon () {
            name = "bluetooth",
            description = _("Bluetooth"),
            category = DEVICES
        },
        Icon () {
            name = "camera-photo",
            description = _("Digital photo or still camera"),
            category = DEVICES
        },
        Icon () {
            name = "camera-video",
            description = _("Video or movie camera"),
            category = DEVICES
        },
        Icon () {
            name = "camera-web",
            description = _("Webcam or built-in camera"),
            category = DEVICES
        },
        Icon () {
            name = "computer",
            description = _("Generic or desktop computer"),
            category = DEVICES
        },
        Icon () {
            name = "computer-laptop",
            description = _("Laptop or notebook computer"),
            category = DEVICES
        },
        Icon () {
            name = "drive-harddisk",
            description = _("Hard disk or storage drive"),
            category = DEVICES
        },
        Icon () {
            name = "drive-optical",
            description = _("Optical drive, such as for CD, DVD, or Blu-ray discs"),
            category = DEVICES
        },
        Icon () {
            name = "drive-removable-media",
            description = _("Removable storage device, such as a portable hard drive"),
            category = DEVICES
        },
        Icon () {
            name = "drive-removable-media-usb",
            description = _("USB drive or stick, such as a flash, jump, or thumb drive"),
            category = DEVICES
        },
        Icon () {
            name = "input-gaming",
            description = _("Video game controller, such as a paddle, remote, or joystick"),
            category = DEVICES
        },
        Icon () {
            name = "input-keyboard",
            description = _("Keyboard"),
            category = DEVICES
        },
        Icon () {
            name = "input-mouse",
            description = _("Mouse"),
            category = DEVICES
        },
        Icon () {
            name = "input-tablet",
            description = _("Graphics tablet or pen input, such as a Wacom digitizer, Intuos, Cintiq, or Bamboo"),
            category = DEVICES
        },
        Icon () {
            name = "input-touchpad",
            description = _("Touchpad input, such as a multitouch trackpad or clickpad"),
            category = DEVICES
        },
        Icon () {
            name = "media-flash",
            description = _("Flash media such as a memory stick or SD card"),
            category = DEVICES
        },
        Icon () {
            name = "media-optical",
            description = _("Optical media, such as a CD, DVD, or Blu-ray disc"),
            category = DEVICES
        },
        Icon () {
            name = "modem",
            description = _("Network modem or router"),
            category = DEVICES
        },
        Icon () {
            name = "multimedia-player",
            description = _("Media player device, such as a portable mp3 music player or iPod"),
            category = DEVICES
        },
        Icon () {
            name = "network-cellular",
            description = _("Cellular type wireless network or device, such as a 2G, 3G, or 4G LTE connection, modem, or SIM card"),
            category = DEVICES
        },
        Icon () {
            name = "network-firewall",
            description = _("Networking firewall"),
            category = DEVICES
        },
        Icon () {
            name = "network-vpn",
            description = _("Virtual private network or VPN connection"),
            category = DEVICES
        },
        Icon () {
            name = "network-wired",
            description = _("Wired network connection, such as Ethernet"),
            category = DEVICES
        },
        Icon () {
            name = "network-wireless",
            description = _("Wireless network connection, such as Wi-Fi"),
            category = DEVICES
        },
        Icon () {
            name = "network-wireless-hotspot",
            description = _("Wireless hotspot connection, such as through a mobile cellular phone or smartphone"),
            category = DEVICES
        },
        Icon () {
            name = "phone",
            description = _("Generic phone, such as a mobile Android smartphone or iPhone"),
            category = DEVICES
        },
        Icon () {
            name = "printer",
            description = _("Printer"),
            category = DEVICES
        },
        Icon () {
            name = "printer-network",
            description = _("Network-connected or shared printer"),
            category = DEVICES
        },
        Icon () {
            name = "scanner",
            description = _("Scanner"),
            category = DEVICES
        },
        Icon () {
            name = "video-display",
            description = _("Display, screen, or monitor"),
            category = DEVICES
        },
        Icon () {
            name = "emblem-default",
            description = _("Default selection emblem, such as for a printer or other device"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-documents",
            description = _("Documents emblem"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-downloads",
            description = _("Downloads emblem"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-favorite",
            description = _("Item the user has marked as a favorite"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-important",
            description = _("Item marked as important"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-mail",
            description = _("Item related to email"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-photos",
            description = _("Photos emblem"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-readonly",
            description = _("Item is read-only, or the user cannot write to or make changes to it"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-shared",
            description = _("Item shared with other people or users"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-symbolic-link",
            description = _("Item is a symbolic link to a file somewhere else"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-synchronized",
            description = _("Item is configured to be synchronized to another device or location"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-system",
            description = _("Item is a system file, library, setting, or data"),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-unreadable",
            description = _("Item is unreadable or inaccessible"),
            category = EMBLEMS
        },
        Icon () {
            name = "face-angel",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-angry",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-cool",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-crying",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-devilish",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-embarrassed",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-heart",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-heart-broken",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-kiss",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-laugh",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-monkey",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-plain",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-raspberry",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-sad",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-sick",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-smile",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-smile-big",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-smirk",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-surprise",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-tired",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-uncertain",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-wink",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "face-worried",
            description = _(""),
            category = EMOTES
        },
        Icon () {
            name = "application-epub+zip",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-illustrator",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-javascript",
            description = _("Javascript programming language file types"),
            category = MIMES
        },
        Icon () {
            name = "application-msword",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-octet-stream",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-pdf",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-pgp",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-vnd.debian.binary-package",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-vnd.ms-access",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-vnd.ms-excel",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-vnd.ms-powerpoint",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-vnd.oasis.opendocument.chart",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-x-bittorrent",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-x-cd-image",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-x-desktop",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-x-executable",
            description = _("Executable file types"),
            category = MIMES
        },
        Icon () {
            name = "application-x-fictionbook+xml",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-x-firmware",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-x-flash-video",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "application-x-php",
            description = _("PHP programming language file types"),
            category = MIMES
        },
        Icon () {
            name = "application-x-ruby",
            description = _("Ruby programming language file types"),
            category = MIMES
        },
        Icon () {
            name = "audio-x-generic",
            description = _("Generic audio file types"),
            category = MIMES
        },
        Icon () {
            name = "audio-x-playlist",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "extension",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "font-x-generic",
            description = _("Generic font file types"),
            category = MIMES
        },
        Icon () {
            name = "image-vnd.adobe.photoshop",
            description = _("Adobe Photoshop image file types"),
            category = MIMES
        },
        Icon () {
            name = "image-x-generic",
            description = _("Generic image file types"),
            category = MIMES
        },
        Icon () {
            name = "image-x-xcf",
            description = _("XCF image file types"),
            category = MIMES
        },
        Icon () {
            name = "internet-feed",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "model",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "office-contact",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "office-database",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "package-x-generic",
            description = _("Generic package file types"),
            category = MIMES
        },
        Icon () {
            name = "text-css",
            description = _("CSS text file types"),
            category = MIMES
        },
        Icon () {
            name = "text-html",
            description = _("HTML text file types"),
            category = MIMES
        },
        Icon () {
            name = "text-markdown",
            description = _("Markdown text file types"),
            category = MIMES
        },
        Icon () {
            name = "text-x-authors",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-bibtex",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-changelog",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-chdr",
            description = _("C programming language header file types"),
            category = MIMES
        },
        Icon () {
            name = "text-x-copying",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-csrc",
            description = _("C programming language file types"),
            category = MIMES
        },
        Icon () {
            name = "text-x-generic",
            description = _("Generic text file types"),
            category = MIMES
        },
        Icon () {
            name = "text-x-generic-template",
            description = _("Generic text templates"),
            category = MIMES
        },
        Icon () {
            name = "text-x-gettext-translation",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-gettext-translation-template",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-go",
            description = _("Go programming language file types"),
            category = MIMES
        },
        Icon () {
            name = "text-x-install",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-makefile",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-preview",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-python",
            description = _("Python programming language file types"),
            category = MIMES
        },
        Icon () {
            name = "text-x-readme",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-script",
            description = _("Script file types, such as shell scripts"),
            category = MIMES
        },
        Icon () {
            name = "text-x-ssa",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-tex",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "text-x-vala",
            description = _("Vala programming language file types"),
            category = MIMES
        },
        Icon () {
            name = "unknown",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "video-x-generic",
            description = _("Generic video file types"),
            category = MIMES
        },
        Icon () {
            name = "x-office-address-book",
            description = _("Generic address book file types"),
            category = MIMES
        },
        Icon () {
            name = "x-office-calendar",
            description = _("Generic calendar file types"),
            category = MIMES
        },
        Icon () {
            name = "x-office-document",
            description = _("Generic document and letter file types"),
            category = MIMES
        },
        Icon () {
            name = "x-office-document-template",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "x-office-drawing",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "x-office-drawing-template",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "x-office-presentation",
            description = _("Generic presentation file types"),
            category = MIMES
        },
        Icon () {
            name = "x-office-presentation-template",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "x-office-spreadsheet",
            description = _("Generic spreadsheet file types"),
            category = MIMES
        },
        Icon () {
            name = "x-office-spreadsheet-template",
            description = _(""),
            category = MIMES
        },
        Icon () {
            name = "bookmark-missing",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "distributor-logo",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-documents",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-download",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-drag-accept",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-music",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-open",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-pictures",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-publicshare",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-recent",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-remote",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-saved-search",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-tag",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-templates",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "folder-videos",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "internet-radio",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "library-audiobook",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "library-places",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "library-podcast",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "mail-inbox",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "mail-mailbox",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "mail-outbox",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "mail-sent",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "network-server",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "network-workgroup",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "playlist",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "playlist-automatic",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "playlist-queue",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "playlist-similar",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "tag",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "user-bookmarks",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "user-home",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "user-trash",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "user-trash-full",
            description = _(""),
            category = PLACES
        },
        Icon () {
            name = "airplane-mode",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "appointment-missed",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "appointment-soon",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "audio-volume-high",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "audio-volume-low",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "audio-volume-medium",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "audio-volume-muted",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "audio-volume-muted-blocking",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "avatar-default",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-ac-adapter",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-caution",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-caution-charging",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-empty",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-empty-charging",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-full",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-full-charged",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-full-charging",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-good",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-good-charging",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-low",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-low-charging",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "battery-missing",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "bluetooth-disabled",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "channel-insecure",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "channel-secure",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "dialog-error",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "dialog-information",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "dialog-password",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "dialog-question",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "dialog-warning",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "image-loading",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "image-missing",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "locked",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "mail-attachment",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "mail-unread",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "mail-read",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "mail-replied",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "mail-signed",
            description = _("Electronic mail that contains a signature"),
            category = STATUS
        },
        Icon () {
            name = "mail-signed-verified",
            description = _("Electronic mail that contains a signature which has also been verified by the security system"),
            category = STATUS
        },
        Icon () {
            name = "media-playlist-repeat",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "media-playlist-shuffle",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "network-error",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "network-idle",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "network-offline",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "network-receive",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "network-transmit",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "network-transmit-receive",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "network-wired-disconnected",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "non-starred",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "notification-disabled",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "printer-error",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "printer-printing",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "process-completed",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "security-high",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "security-medium",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "security-low",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "software-update-available",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "software-update-urgent",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "starred",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "task-due",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "task-past-due",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "user-available",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "user-away",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "user-idle",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "user-offline",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "view-private",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-clear",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-clear-night",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-few-clouds",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-few-clouds-night",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-fog",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-overcast",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-severe-alert",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-showers",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-showers-scattered",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-snow",
            description = _(""),
            category = STATUS
        },
        Icon () {
            name = "weather-storm",
            description = _(""),
            category = STATUS
        }
    };

    public CategoryView () {
        Object (
            orientation: Gtk.Orientation.HORIZONTAL,
            position: 256
        );
    }

    construct {
        var icon_view = new IconView ();

        listbox = new Gtk.ListBox ();
        listbox.activate_on_single_click = true;
        listbox.selection_mode = Gtk.SelectionMode.SINGLE;
        listbox.set_sort_func (sort_function);

        var scrolled_window = new Gtk.ScrolledWindow (null, null);
        scrolled_window.hscrollbar_policy = Gtk.PolicyType.NEVER;
        scrolled_window.vexpand = true;
        scrolled_window.add (listbox);

        add1 (scrolled_window);
        add2 (icon_view);

        foreach (var icon in icons) {
            var row = new IconListRow (icon.name, icon.description, icon.category);
            listbox.add (row);
        }

        listbox.row_selected.connect ((row) => {
            icon_view.icon_name = ((IconListRow) row).icon_name;
            icon_view.description = ((IconListRow) row).description;
        });
    }

    [CCode (instance_pos = -1)]
    private int sort_function (Gtk.ListBoxRow row1, Gtk.ListBoxRow row2) {
        var name1 = ((IconListRow) row1).icon_name;
        var name2 = ((IconListRow) row2).icon_name;
        return name1.collate (name2);
    }
}
