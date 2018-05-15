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
    public IconListBox list;

    private struct Icon {
        string name;
        string description;
    }

    static Icon[] actions = {
        Icon () {
            name = "address-book-new",
            description = _("Create a new address book")
        },
        Icon () {
            name = "align-horizontal-center",
            description = _("Create a new address book")
        },
        Icon () {
            name = "align-horizontal-left",
            description = _("Align objects left along the X axis")
        },
        Icon () {
            name = "align-horizontal-right",
            description = _("Align objects right along the X axis")
        },
        Icon () {
            name = "align-vertical-bottom",
            description = _("Align objects to bottom along the Y axis")
        },
        Icon () {
            name = "align-vertical-center",
            description = _("Align objects to center along the Y axis")
        },
        Icon () {
            name = "align-vertical-top",
            description = _("Align objects to top along the Y axis")
        },
        Icon () {
            name = "application-exit",
            description = _("Used for exiting an application")
        },
        Icon () {
            name = "appointment-new",
            description = _("Create a new appointment in a calendaring application")
        },
        Icon () {
            name = "bookmark-new",
            description = _("Create a new bookmark")
        },
        Icon () {
            name = "call-start",
            description = _("Initiate or accept a call")
        },
        Icon () {
            name = "call-stop",
            description = _("Stop the current call")
        },
        Icon () {
            name = "contact-new",
            description = _("Create a new contact in an address book application")
        },
        Icon () {
            name = "document-export",
            description = _("Export a document")
        },
        Icon () {
            name = "document-import",
            description = _("Import a document")
        },
        Icon () {
            name = "document-new",
            description = _("Create a new document")
        },
        Icon () {
            name = "document-open",
            description = _("Open a document")
        },
        Icon () {
            name = "document-open-recent",
            description = _("Open a document that was recently opened")
        },
        Icon () {
            name = "document-page-setup",
            description = _("The page setup action of a document editor")
        },
        Icon () {
            name = "document-print",
            description = _("")
        },
        Icon () {
            name = "document-print-preview",
            description = _("The print preview action of an application")
        },
        Icon () {
            name = "document-properties",
            description = _("View the properties of a document in an application")
        },
        Icon () {
            name = "document-revert",
            description = _("Revert to a previous version of a document")
        },
        Icon () {
            name = "document-save",
            description = _("The save action")
        },
        Icon () {
            name = "document-save-as",
            description = _("The save as action")
        },
        Icon () {
            name = "document-send",
            description = _("The send action")
        },
        Icon () {
            name = "edit",
            description = _("")
        },
        Icon () {
            name = "edit-clear",
            description = _("")
        },
        Icon () {
            name = "edit-copy",
            description = _("")
        },
        Icon () {
            name = "edit-cut",
            description = _("")
        },
        Icon () {
            name = "edit-delete",
            description = _("")
        },
        Icon () {
            name = "edit-find",
            description = _("")
        },
        Icon () {
            name = "edit-find-replace",
            description = _("")
        },
        Icon () {
            name = "edit-flag",
            description = _("")
        },
        Icon () {
            name = "edit-paste",
            description = _("")
        },
        Icon () {
            name = "edit-redo",
            description = _("")
        },
        Icon () {
            name = "edit-select-all",
            description = _("")
        },
        Icon () {
            name = "edit-undo",
            description = _("")
        },
        Icon () {
            name = "event-new",
            description = _("")
        },
        Icon () {
            name = "folder-copy",
            description = _("")
        },
        Icon () {
            name = "folder-move",
            description = _("")
        },
        Icon () {
            name = "folder-new",
            description = _("")
        },
        Icon () {
            name = "format-indent-less",
            description = _("")
        },
        Icon () {
            name = "format-indent-more",
            description = _("")
        },
        Icon () {
            name = "format-justify-center",
            description = _("")
        },
        Icon () {
            name = "format-justify-fill",
            description = _("")
        },
        Icon () {
            name = "format-justify-right",
            description = _("")
        },
        Icon () {
            name = "format-text-direction-ltr",
            description = _("")
        },
        Icon () {
            name = "format-text-direction-rtl",
            description = _("")
        },
        Icon () {
            name = "format-text-bold",
            description = _("")
        },
        Icon () {
            name = "format-text-highlight",
            description = _("")
        },
        Icon () {
            name = "format-text-italic",
            description = _("")
        },
        Icon () {
            name = "format-text-underline",
            description = _("")
        },
        Icon () {
            name = "format-text-strikethrough",
            description = _("")
        },
        Icon () {
            name = "go-bottom",
            description = _("")
        },
        Icon () {
            name = "go-down",
            description = _("")
        },
        Icon () {
            name = "go-first",
            description = _("")
        },
        Icon () {
            name = "go-home",
            description = _("")
        },
        Icon () {
            name = "go-jump",
            description = _("")
        },
        Icon () {
            name = "go-last",
            description = _("")
        },
        Icon () {
            name = "go-next",
            description = _("")
        },
        Icon () {
            name = "go-previous",
            description = _("")
        },
        Icon () {
            name = "go-top",
            description = _("")
        },
        Icon () {
            name = "go-up",
            description = _("")
        },
        Icon () {
            name = "help-about",
            description = _("")
        },
        Icon () {
            name = "help-contents",
            description = _("")
        },
        Icon () {
            name = "help-faq",
            description = _("")
        },
        Icon () {
            name = "image-adjust",
            description = _("")
        },
        Icon () {
            name = "image-auto-adjust",
            description = _("")
        },
        Icon () {
            name = "image-crop",
            description = _("")
        },
        Icon () {
            name = "image-red-eye",
            description = _("")
        },
        Icon () {
            name = "insert-image",
            description = _("")
        },
        Icon () {
            name = "insert-link",
            description = _("")
        },
        Icon () {
            name = "insert-object",
            description = _("")
        },
        Icon () {
            name = "insert-text",
            description = _("")
        },
        Icon () {
            name = "list-add",
            description = _("")
        },
        Icon () {
            name = "list-remove",
            description = _("")
        },
        Icon () {
            name = "mail-forward",
            description = _("")
        },
        Icon () {
            name = "mail-mark-important",
            description = _("")
        },
        Icon () {
            name = "mail-mark-junk",
            description = _("")
        },
        Icon () {
            name = "mail-mark-notjunk",
            description = _("")
        },
        Icon () {
            name = "mail-mark-read",
            description = _("")
        },
        Icon () {
            name = "mail-mark-unread",
            description = _("")
        },
        Icon () {
            name = "mail-message-new",
            description = _("")
        },
        Icon () {
            name = "mail-reply-all",
            description = _("")
        },
        Icon () {
            name = "mail-reply-sender",
            description = _("")
        },
        Icon () {
            name = "mail-send",
            description = _("")
        },
        Icon () {
            name = "media-eject",
            description = _("")
        },
        Icon () {
            name = "media-playback-pause",
            description = _("")
        },
        Icon () {
            name = "media-playback-start",
            description = _("")
        },
        Icon () {
            name = "media-playback-stop",
            description = _("")
        },
        Icon () {
            name = "media-record",
            description = _("")
        },
        Icon () {
            name = "media-seek-backward",
            description = _("")
        },
        Icon () {
            name = "media-seek-forward",
            description = _("")
        },
        Icon () {
            name = "media-skip-backward",
            description = _("")
        },
        Icon () {
            name = "media-skip-forward",
            description = _("")
        },
        Icon () {
            name = "object-flip-horizontal",
            description = _("")
        },
        Icon () {
            name = "object-flip-vertical",
            description = _("")
        },
        Icon () {
            name = "object-rotate-left",
            description = _("")
        },
        Icon () {
            name = "object-rotate-right",
            description = _("")
        },
        Icon () {
            name = "process-stop",
            description = _("")
        },
        Icon () {
            name = "system-lock-screen",
            description = _("")
        },
        Icon () {
            name = "system-log-out",
            description = _("")
        },
        Icon () {
            name = "system-run",
            description = _("")
        },
        Icon () {
            name = "system-search",
            description = _("")
        },
        Icon () {
            name = "system-reboot",
            description = _("")
        },
        Icon () {
            name = "system-shutdown",
            description = _("")
        },
        Icon () {
            name = "tools-check-spelling",
            description = _("")
        },
        Icon () {
            name = "view-fullscreen",
            description = _("")
        },
        Icon () {
            name = "view-refresh",
            description = _("")
        },
        Icon () {
            name = "view-restore",
            description = _("")
        },
        Icon () {
            name = "view-sort-ascending",
            description = _("")
        },
        Icon () {
            name = "view-sort-descending",
            description = _("")
        },
        Icon () {
            name = "window-close",
            description = _("")
        },
        Icon () {
            name = "window-new",
            description = _("")
        },
        Icon () {
            name = "zoom-fit-best",
            description = _("")
        },
        Icon () {
            name = "zoom-in",
            description = _("")
        },
        Icon () {
            name = "zoom-original",
            description = _("")
        },
        Icon () {
            name = "zoom-out",
            description = _("")
        }
    };

    static Icon[] apps = {
        Icon () {
            name = "accessories-calculator",
            description = _("")
        },
        Icon () {
            name = "accessories-camera",
            description = _("")
        },
        Icon () {
            name = "accessories-character-map",
            description = _("")
        },
        Icon () {
            name = "accessories-dictionary",
            description = _("")
        },
        Icon () {
            name = "accessories-screenshot",
            description = _("")
        },
        Icon () {
            name = "accessories-text-editor",
            description = _("")
        },
        Icon () {
            name = "application-default-icon",
            description = _("")
        },
        Icon () {
            name = "archive-manager",
            description = _("")
        },
        Icon () {
            name = "internet-chat",
            description = _("")
        },
        Icon () {
            name = "internet-mail",
            description = _("")
        },
        Icon () {
            name = "internet-news-reader",
            description = _("")
        },
        Icon () {
            name = "internet-web-browser",
            description = _("")
        },

        Icon () {
            name = "multimedia-audio-player",
            description = _("")
        },
        Icon () {
            name = "multimedia-photo-manager",
            description = _("")
        },
        Icon () {
            name = "multimedia-video-player",
            description = _("")
        },
        Icon () {
            name = "office-address-book",
            description = _("")
        },
        Icon () {
            name = "office-calendar",
            description = _("")
        },
        Icon () {
            name = "postscript-viewer",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop",
            description = _("")
        },
        Icon () {
            name = "system-file-manager",
            description = _("")
        },
        Icon () {
            name = "system-os-installer",
            description = _("")
        },
        Icon () {
            name = "system-software-install",
            description = _("")
        },
        Icon () {
            name = "system-software-update",
            description = _("")
        },
        Icon () {
            name = "system-users",
            description = _("")
        },
        Icon () {
            name = "utilities-system-monitor",
            description = _("")
        },
        Icon () {
            name = "utilities-terminal",
            description = _("")
        }
    };

    static Icon[] categories = {
        Icon () {
            name = "applications-accessories",
            description = _("Accessories category of applications")
        },
        Icon () {
            name = "applications-development",
            description = _("")
        },
        Icon () {
            name = "applications-education",
            description = _("")
        },
        Icon () {
            name = "applications-engineering",
            description = _("")
        },
        Icon () {
            name = "applications-fonts",
            description = _("")
        },
        Icon () {
            name = "applications-games",
            description = _("")
        },
        Icon () {
            name = "applications-graphics",
            description = _("")
        },
        Icon () {
            name = "applications-internet",
            description = _("")
        },
        Icon () {
            name = "applications-multimedia",
            description = _("Multimedia category of applications")
        },
        Icon () {
            name = "applications-office",
            description = _("")
        },
        Icon () {
            name = "applications-other",
            description = _("")
        },
        Icon () {
            name = "applications-science",
            description = _("")
        },
        Icon () {
            name = "applications-system",
            description = _("")
        },
        Icon () {
            name = "applications-utilities",
            description = _("")
        },
        Icon () {
            name = "preferences-bluetooth",
            description = _("")
        },
        Icon () {
            name = "preferences-color",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-accessibility",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-accessibility-pointing",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-accessibility-zoom",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-applications",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-display",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-keyboard",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-locale",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-online-accounts",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-peripherals",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-sound",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-wallpaper",
            description = _("")
        },
        Icon () {
            name = "preferences-other",
            description = _("")
        },
        Icon () {
            name = "preferences-system",
            description = _("")
        },
        Icon () {
            name = "preferences-system-network",
            description = _("")
        },
        Icon () {
            name = "preferences-system-notifications",
            description = _("")
        },
        Icon () {
            name = "preferences-system-parental-controls",
            description = _("")
        },
        Icon () {
            name = "preferences-system-power",
            description = _("")
        },
        Icon () {
            name = "preferences-system-privacy",
            description = _("")
        },
        Icon () {
            name = "preferences-system-sharing",
            description = _("")
        },
        Icon () {
            name = "preferences-system-time",
            description = _("")
        },
        Icon () {
            name = "preferences-system-windows",
            description = _("")
        },
        Icon () {
            name = "system-help",
            description = _("")
        }
    };

    static Icon[] devices = {
        Icon () {
            name = "audio-card",
            description = _("")
        },
        Icon () {
            name = "audio-input-microphone",
            description = _("")
        },
        Icon () {
            name = "audio-subwoofer",
            description = _("")
        },
        Icon () {
            name = "battery",
            description = _("")
        },
        Icon () {
            name = "bluetooth",
            description = _("")
        },
        Icon () {
            name = "camera-photo",
            description = _("")
        },
        Icon () {
            name = "camera-video",
            description = _("")
        },
        Icon () {
            name = "camera-web",
            description = _("")
        },
        Icon () {
            name = "computer",
            description = _("")
        },
        Icon () {
            name = "computer-laptop",
            description = _("")
        },
        Icon () {
            name = "drive-harddisk",
            description = _("")
        },
        Icon () {
            name = "drive-optical",
            description = _("")
        },
        Icon () {
            name = "drive-removable-media",
            description = _("")
        },
        Icon () {
            name = "drive-removable-media-usb",
            description = _("")
        },
        Icon () {
            name = "input-gaming",
            description = _("")
        },
        Icon () {
            name = "input-keyboard",
            description = _("")
        },
        Icon () {
            name = "input-mouse",
            description = _("")
        },
        Icon () {
            name = "input-tablet",
            description = _("")
        },
        Icon () {
            name = "input-touchpad",
            description = _("")
        },
        Icon () {
            name = "media-flash",
            description = _("")
        },
        Icon () {
            name = "media-optical",
            description = _("")
        },
        Icon () {
            name = "modem",
            description = _("")
        },
        Icon () {
            name = "multimedia-player",
            description = _("")
        },
        Icon () {
            name = "network-cellular",
            description = _("")
        },
        Icon () {
            name = "network-firewall",
            description = _("")
        },
        Icon () {
            name = "network-vpn",
            description = _("")
        },
        Icon () {
            name = "network-wired",
            description = _("")
        },
        Icon () {
            name = "network-wireless",
            description = _("")
        },
        Icon () {
            name = "network-wireless-hotspot",
            description = _("")
        },
        Icon () {
            name = "phone",
            description = _("")
        },
        Icon () {
            name = "printer",
            description = _("")
        },
        Icon () {
            name = "printer-network",
            description = _("")
        },
        Icon () {
            name = "scanner",
            description = _("")
        },
        Icon () {
            name = "video-display",
            description = _("")
        }
    };

    static Icon[] emblems = {
        Icon () {
            name = "emblem-default",
            description = _("")
        },
        Icon () {
            name = "emblem-documents",
            description = _("")
        },
        Icon () {
            name = "emblem-downloads",
            description = _("")
        },
        Icon () {
            name = "emblem-favorite",
            description = _("")
        },
        Icon () {
            name = "emblem-important",
            description = _("")
        },
        Icon () {
            name = "emblem-mail",
            description = _("")
        },
        Icon () {
            name = "emblem-photos",
            description = _("")
        },
        Icon () {
            name = "emblem-readonly",
            description = _("")
        },
        Icon () {
            name = "emblem-shared",
            description = _("")
        },
        Icon () {
            name = "emblem-symbolic-link",
            description = _("")
        },
        Icon () {
            name = "emblem-synchronized",
            description = _("")
        },
        Icon () {
            name = "emblem-system",
            description = _("")
        },
        Icon () {
            name = "emblem-unreadable",
            description = _("")
        }
    };

    static Icon[] emotes = {
        Icon () {
            name = "face-angel",
            description = _("")
        },
        Icon () {
            name = "face-angry",
            description = _("")
        },
        Icon () {
            name = "face-cool",
            description = _("")
        },
        Icon () {
            name = "face-crying",
            description = _("")
        },
        Icon () {
            name = "face-devilish",
            description = _("")
        },
        Icon () {
            name = "face-embarrassed",
            description = _("")
        },
        Icon () {
            name = "face-heart",
            description = _("")
        },
        Icon () {
            name = "face-heart-broken",
            description = _("")
        },
        Icon () {
            name = "face-kiss",
            description = _("")
        },
        Icon () {
            name = "face-laugh",
            description = _("")
        },
        Icon () {
            name = "face-monkey",
            description = _("")
        },
        Icon () {
            name = "face-plain",
            description = _("")
        },
        Icon () {
            name = "face-raspberry",
            description = _("")
        },
        Icon () {
            name = "face-sad",
            description = _("")
        },
        Icon () {
            name = "face-sick",
            description = _("")
        },
        Icon () {
            name = "face-smile",
            description = _("")
        },
        Icon () {
            name = "face-smile-big",
            description = _("")
        },
        Icon () {
            name = "face-smirk",
            description = _("")
        },
        Icon () {
            name = "face-surprise",
            description = _("")
        },
        Icon () {
            name = "face-tired",
            description = _("")
        },
        Icon () {
            name = "face-uncertain",
            description = _("")
        },
        Icon () {
            name = "face-wink",
            description = _("")
        },
        Icon () {
            name = "face-worried",
            description = _("")
        },
    };

    static Icon[] mimes = {
        Icon () {
            name = "application-epub+zip",
            description = _("")
        },
        Icon () {
            name = "application-illustrator",
            description = _("")
        },
        Icon () {
            name = "application-javascript",
            description = _("")
        },
        Icon () {
            name = "application-msword",
            description = _("")
        },
        Icon () {
            name = "application-octet-stream",
            description = _("")
        },
        Icon () {
            name = "application-pdf",
            description = _("")
        },
        Icon () {
            name = "application-pgp",
            description = _("")
        },
        Icon () {
            name = "application-vnd.debian.binary-package",
            description = _("")
        },
        Icon () {
            name = "application-vnd.ms-access",
            description = _("")
        },
        Icon () {
            name = "application-vnd.ms-excel",
            description = _("")
        },
        Icon () {
            name = "application-vnd.ms-powerpoint",
            description = _("")
        },
        Icon () {
            name = "application-vnd.oasis.opendocument.chart",
            description = _("")
        },
        Icon () {
            name = "application-x-bittorrent",
            description = _("")
        },
        Icon () {
            name = "application-x-cd-image",
            description = _("")
        },
        Icon () {
            name = "application-x-desktop",
            description = _("")
        },
        Icon () {
            name = "application-x-executable",
            description = _("Executable file types")
        },
        Icon () {
            name = "application-x-fictionbook+xml",
            description = _("")
        },
        Icon () {
            name = "application-x-firmware",
            description = _("")
        },
        Icon () {
            name = "application-x-flash-video",
            description = _("")
        },
        Icon () {
            name = "application-x-php",
            description = _("")
        },
        Icon () {
            name = "audio-x-generic",
            description = _("Generic audio file types")
        },
        Icon () {
            name = "audio-x-playlist",
            description = _("")
        },
        Icon () {
            name = "extension",
            description = _("")
        },
        Icon () {
            name = "font-x-generic",
            description = _("Generic font file types")
        },
        Icon () {
            name = "image-vnd.adobe.photoshop",
            description = _("")
        },
        Icon () {
            name = "image-x-generic",
            description = _("Generic image file types")
        },
        Icon () {
            name = "image-x-xcf",
            description = _("")
        },
        Icon () {
            name = "internet-feed",
            description = _("")
        },
        Icon () {
            name = "model",
            description = _("")
        },
        Icon () {
            name = "office-contact",
            description = _("")
        },
        Icon () {
            name = "office-database",
            description = _("")
        },
        Icon () {
            name = "package-x-generic",
            description = _("Generic package file types")
        },
        Icon () {
            name = "text-css",
            description = _("")
        },
        Icon () {
            name = "text-html",
            description = _("HTML text file types")
        },
        Icon () {
            name = "text-markdown",
            description = _("")
        },
        Icon () {
            name = "text-x-authors",
            description = _("")
        },
        Icon () {
            name = "text-x-changelog",
            description = _("")
        },
        Icon () {
            name = "text-x-chdr",
            description = _("")
        },
        Icon () {
            name = "text-x-copying",
            description = _("")
        },
        Icon () {
            name = "text-x-csrc",
            description = _("")
        },
        Icon () {
            name = "text-x-generic",
            description = _("Generic text file types")
        },
        Icon () {
            name = "text-x-generic-template",
            description = _("Generic text templates")
        },
        Icon () {
            name = "text-x-gettext-translation",
            description = _("")
        },
        Icon () {
            name = "text-x-gettext-translation-template",
            description = _("")
        },
        Icon () {
            name = "text-x-go",
            description = _("")
        },
        Icon () {
            name = "text-x-install",
            description = _("")
        },
        Icon () {
            name = "text-x-makefile",
            description = _("")
        },
        Icon () {
            name = "text-x-preview",
            description = _("")
        },
        Icon () {
            name = "text-x-python",
            description = _("")
        },
        Icon () {
            name = "text-x-readme",
            description = _("")
        },
        Icon () {
            name = "text-x-script",
            description = _("Script file types, such as shell scripts")
        },
        Icon () {
            name = "text-x-ssa",
            description = _("")
        },
        Icon () {
            name = "text-x-tex",
            description = _("")
        },
        Icon () {
            name = "text-x-vala",
            description = _("")
        },
        Icon () {
            name = "unknown",
            description = _("")
        },
        Icon () {
            name = "video-x-generic",
            description = _("Generic video file types")
        },
        Icon () {
            name = "x-office-address-book",
            description = _("Generic address book file types")
        },
        Icon () {
            name = "x-office-calendar",
            description = _("Generic calendar file types")
        },
        Icon () {
            name = "x-office-document",
            description = _("Generic document and letter file types")
        },
        Icon () {
            name = "x-office-document-template",
            description = _("")
        },
        Icon () {
            name = "x-office-drawing",
            description = _("")
        },
        Icon () {
            name = "x-office-drawing-template",
            description = _("")
        },
        Icon () {
            name = "x-office-presentation",
            description = _("Generic presentation file types")
        },
        Icon () {
            name = "x-office-presentation-template",
            description = _("")
        },
        Icon () {
            name = "x-office-spreadsheet",
            description = _("Generic spreadsheet file types")
        },
        Icon () {
            name = "x-office-spreadsheet-template",
            description = _("")
        }
    };

    static Icon[] places = {
        Icon () {
            name = "bookmark-missing",
            description = _("")
        },
        Icon () {
            name = "distributor-logo",
            description = _("")
        },
        Icon () {
            name = "folder",
            description = _("")
        },
        Icon () {
            name = "folder-documents",
            description = _("")
        },
        Icon () {
            name = "folder-download",
            description = _("")
        },
        Icon () {
            name = "folder-drag-accept",
            description = _("")
        },
        Icon () {
            name = "folder-music",
            description = _("")
        },
        Icon () {
            name = "folder-open",
            description = _("")
        },
        Icon () {
            name = "folder-pictures",
            description = _("")
        },
        Icon () {
            name = "folder-publicshare",
            description = _("")
        },
        Icon () {
            name = "folder-recent",
            description = _("")
        },
        Icon () {
            name = "folder-remote",
            description = _("")
        },
        Icon () {
            name = "folder-saved-search",
            description = _("")
        },
        Icon () {
            name = "folder-tag",
            description = _("")
        },
        Icon () {
            name = "folder-templates",
            description = _("")
        },
        Icon () {
            name = "folder-videos",
            description = _("")
        },
        Icon () {
            name = "internet-radio",
            description = _("")
        },
        Icon () {
            name = "library-audiobook",
            description = _("")
        },
        Icon () {
            name = "library-places",
            description = _("")
        },
        Icon () {
            name = "library-podcast",
            description = _("")
        },
        Icon () {
            name = "mail-inbox",
            description = _("")
        },
        Icon () {
            name = "mail-mailbox",
            description = _("")
        },
        Icon () {
            name = "mail-outbox",
            description = _("")
        },
        Icon () {
            name = "mail-sent",
            description = _("")
        },
        Icon () {
            name = "network-server",
            description = _("")
        },
        Icon () {
            name = "network-workgroup",
            description = _("")
        },
        Icon () {
            name = "playlist",
            description = _("")
        },
        Icon () {
            name = "playlist-automatic",
            description = _("")
        },
        Icon () {
            name = "playlist-queue",
            description = _("")
        },
        Icon () {
            name = "playlist-similar",
            description = _("")
        },
        Icon () {
            name = "tag",
            description = _("")
        },
        Icon () {
            name = "user-bookmarks",
            description = _("")
        },
        Icon () {
            name = "user-home",
            description = _("")
        },
        Icon () {
            name = "user-trash",
            description = _("")
        },
        Icon () {
            name = "user-trash-full",
            description = _("")
        }
    };

    static Icon[] status = {
        Icon () {
            name = "airplane-mode",
            description = _("")
        },
        Icon () {
            name = "appointment-missed",
            description = _("")
        },
        Icon () {
            name = "appointment-soon",
            description = _("")
        },
        Icon () {
            name = "audio-volume-high",
            description = _("")
        },
        Icon () {
            name = "audio-volume-low",
            description = _("")
        },
        Icon () {
            name = "audio-volume-medium",
            description = _("")
        },
        Icon () {
            name = "audio-volume-muted",
            description = _("")
        },
        Icon () {
            name = "audio-volume-muted-blocking",
            description = _("")
        },
        Icon () {
            name = "avatar-default",
            description = _("")
        },
        Icon () {
            name = "battery-ac-adapter",
            description = _("")
        },
        Icon () {
            name = "battery-caution",
            description = _("")
        },
        Icon () {
            name = "battery-caution-charging",
            description = _("")
        },
        Icon () {
            name = "battery-empty",
            description = _("")
        },
        Icon () {
            name = "battery-empty-charging",
            description = _("")
        },
        Icon () {
            name = "battery-full",
            description = _("")
        },
        Icon () {
            name = "battery-full-charged",
            description = _("")
        },
        Icon () {
            name = "battery-full-charging",
            description = _("")
        },
        Icon () {
            name = "battery-good",
            description = _("")
        },
        Icon () {
            name = "battery-good-charging",
            description = _("")
        },
        Icon () {
            name = "battery-low",
            description = _("")
        },
        Icon () {
            name = "battery-low-charging",
            description = _("")
        },
        Icon () {
            name = "battery-missing",
            description = _("")
        },
        Icon () {
            name = "bluetooth-disabled",
            description = _("")
        },
        Icon () {
            name = "channel-secure",
            description = _("")
        },
        Icon () {
            name = "dialog-error",
            description = _("")
        },
        Icon () {
            name = "dialog-information",
            description = _("")
        },
        Icon () {
            name = "dialog-password",
            description = _("")
        },
        Icon () {
            name = "dialog-question",
            description = _("")
        },
        Icon () {
            name = "dialog-warning",
            description = _("")
        },
        Icon () {
            name = "image-loading",
            description = _("")
        },
        Icon () {
            name = "image-missing",
            description = _("")
        },
        Icon () {
            name = "locked",
            description = _("")
        },
        Icon () {
            name = "mail-attachment",
            description = _("")
        },
        Icon () {
            name = "mail-unread",
            description = _("")
        },
        Icon () {
            name = "mail-read",
            description = _("")
        },
        Icon () {
            name = "mail-replied",
            description = _("")
        },
        Icon () {
            name = "mail-signed",
            description = _("Electronic mail that contains a signature")
        },
        Icon () {
            name = "mail-signed-verified",
            description = _("Electronic mail that contains a signature which has also been verified by the security system")
        },
        Icon () {
            name = "media-playlist-repeat",
            description = _("")
        },
        Icon () {
            name = "media-playlist-shuffle",
            description = _("")
        },
        Icon () {
            name = "network-error",
            description = _("")
        },
        Icon () {
            name = "network-idle",
            description = _("")
        },
        Icon () {
            name = "network-offline",
            description = _("")
        },
        Icon () {
            name = "network-receive",
            description = _("")
        },
        Icon () {
            name = "network-transmit",
            description = _("")
        },
        Icon () {
            name = "network-transmit-receive",
            description = _("")
        },
        Icon () {
            name = "network-wired-disconnected",
            description = _("")
        },
        Icon () {
            name = "non-starred",
            name = "non-starred",
            description = _("")
        },
        Icon () {
            name = "notification-disabled",
            description = _("")
        },
        Icon () {
            name = "printer-error",
            description = _("")
        },
        Icon () {
            name = "printer-printing",
            description = _("")
        },
        Icon () {
            name = "process-completed",
            description = _("")
        },
        Icon () {
            name = "security-high",
            description = _("")
        },
        Icon () {
            name = "security-medium",
            description = _("")
        },
        Icon () {
            name = "security-low",
            description = _("")
        },
        Icon () {
            name = "software-update-available",
            description = _("")
        },
        Icon () {
            name = "software-update-urgent",
            description = _("")
        },
        Icon () {
            name = "starred",
            description = _("")
        },
        Icon () {
            name = "task-due",
            description = _("")
        },
        Icon () {
            name = "task-past-due",
            description = _("")
        },
        Icon () {
            name = "user-available",
            description = _("")
        },
        Icon () {
            name = "user-away",
            description = _("")
        },
        Icon () {
            name = "user-idle",
            description = _("")
        },
        Icon () {
            name = "user-offline",
            description = _("")
        },
        Icon () {
            name = "view-private",
            description = _("")
        },
        Icon () {
            name = "weather-clear",
            description = _("")
        },
        Icon () {
            name = "weather-clear-night",
            description = _("")
        },
        Icon () {
            name = "weather-few-clouds",
            description = _("")
        },
        Icon () {
            name = "weather-few-clouds-night",
            description = _("")
        },
        Icon () {
            name = "weather-fog",
            description = _("")
        },
        Icon () {
            name = "weather-overcast",
            description = _("")
        },
        Icon () {
            name = "weather-severe-alert",
            description = _("")
        },
        Icon () {
            name = "weather-showers",
            description = _("")
        },
        Icon () {
            name = "weather-showers-scattered",
            description = _("")
        },
        Icon () {
            name = "weather-snow",
            description = _("")
        },
        Icon () {
            name = "weather-storm",
            description = _("")
        }
    };

    public CategoryView (string category_name) {
        Object (
            category_name: category_name,
            orientation: Gtk.Orientation.HORIZONTAL,
            position: 256
        );
    }

    construct {
        var view = new Gtk.Stack ();

        Icon[] category;
        switch (category_name) {
            case "Actions":
                category = actions;
            case "Applications":
                category = apps;
            case "Categories":
                category = categories;
            case "Devices":
                category = devices;
            case "Emblems":
                category = emblems;
            case "Emotes":
                category = emotes;
            case "Mimetypes":
                category = mimes;
            case "Places":
                category = places;
            case "Status":
                category = status;
        }

        foreach (var icon in category) {
            var name = icon.name;
            var description = icon.description;
            var icon_view = new IconView (name, description);
            view.add_titled (icon_view, name, name);
        }

        list = new IconListBox (view);
        list.row_selected.connect (() => ((IconView)view.visible_child).switched_to ());
        list.vexpand = true;

        add1 (list);
        add2 (view);

        view.realize.connect (() => ((IconView)view.visible_child).switched_to ());
    }
}
