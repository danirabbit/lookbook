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
            description = _(""),
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
            description = _(""),
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
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-highlight",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-italic",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-underline",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "format-text-strikethrough",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-bottom",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-down",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-first",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-home",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-jump",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-last",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-next",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-previous",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-top",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "go-up",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "help-about",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "help-contents",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "help-faq",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "image-adjust",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "image-auto-adjust",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "image-crop",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "image-red-eye",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "insert-image",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "insert-link",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "insert-object",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "insert-text",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "list-add",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "list-remove",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-forward",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-important",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-junk",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-notjunk",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-read",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-mark-unread",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-message-new",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-reply-all",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-reply-sender",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "mail-send",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-eject",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-playback-pause",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-playback-start",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-playback-stop",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-record",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-seek-backward",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-seek-forward",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-skip-backward",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "media-skip-forward",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "object-flip-horizontal",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "object-flip-vertical",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "object-rotate-left",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "object-rotate-right",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "process-stop",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "system-lock-screen",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "system-log-out",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "system-run",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "system-search",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "system-reboot",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "system-shutdown",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "tools-check-spelling",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "view-fullscreen",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "view-refresh",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "view-restore",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "view-sort-ascending",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "view-sort-descending",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "window-close",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "window-new",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-fit-best",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-in",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-original",
            description = _(""),
            category = ACTIONS
        },
        Icon () {
            name = "zoom-out",
            description = _(""),
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
            description = _("Accessories category of applications"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-development",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-education",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-engineering",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-fonts",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-games",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-graphics",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-internet",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-multimedia",
            description = _("Multimedia category of applications"),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-office",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-other",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-science",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-system",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "applications-utilities",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-bluetooth",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-color",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-accessibility",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-accessibility-pointing",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-accessibility-zoom",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-applications",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-display",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-keyboard",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-locale",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-online-accounts",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-peripherals",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-sound",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-desktop-wallpaper",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-other",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-network",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-notifications",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-parental-controls",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-power",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-privacy",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-sharing",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-time",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "preferences-system-windows",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "system-help",
            description = _(""),
            category = CATEGORIES
        },
        Icon () {
            name = "audio-card",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "audio-input-microphone",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "audio-subwoofer",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "battery",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "bluetooth",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "camera-photo",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "camera-video",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "camera-web",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "computer",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "computer-laptop",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "drive-harddisk",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "drive-optical",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "drive-removable-media",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "drive-removable-media-usb",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "input-gaming",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "input-keyboard",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "input-mouse",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "input-tablet",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "input-touchpad",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "media-flash",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "media-optical",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "modem",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "multimedia-player",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "network-cellular",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "network-firewall",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "network-vpn",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "network-wired",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "network-wireless",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "network-wireless-hotspot",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "phone",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "printer",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "printer-network",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "scanner",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "video-display",
            description = _(""),
            category = DEVICES
        },
        Icon () {
            name = "emblem-default",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-documents",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-downloads",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-favorite",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-important",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-mail",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-photos",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-readonly",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-shared",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-symbolic-link",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-synchronized",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-system",
            description = _(""),
            category = EMBLEMS
        },
        Icon () {
            name = "emblem-unreadable",
            description = _(""),
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
