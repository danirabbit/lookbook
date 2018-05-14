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
        }
    };

    static Icon[] mimes = {
        Icon () {
            name = "application-x-executable",
            description = _("Executable file types")
        },
        Icon () {
            name = "audio-x-generic",
            description = _("Generic audio file types")
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

        string data =
        """
        {
            "Actions" : [
                {
                    "name" : "call-start",
                    "description" : "Initiate or accept a call"
                },
                {
                    "name" : "call-stop",
                    "description" : "Stop the current call"
                },
                {
                    "name" : "contact-new",
                    "description" : "Create a new contact in an address book application"
                },
                {
                    "name" : "document-export",
                    "description" : "Export a document"
                },
                {
                    "name" : "document-import",
                    "description" : "Import a document"
                },
                {
                    "name" : "document-new",
                    "description" : "Create a new document"
                },
                {
                    "name" : "document-open",
                    "description" : "Open a document"
                },
                {
                    "name" : "document-open-recent",
                    "description" : "Open a document that was recently opened"
                },
                {
                    "name" : "document-page-setup",
                    "description" : "The page setup action of a document editor"
                },
                {
                    "name" : "document-print",
                    "description" : ""
                },
                {
                    "name" : "document-print-preview",
                    "description" : "The print preview action of an application"
                },
                {
                    "name" : "document-properties",
                    "description" : "View the properties of a document in an application"
                },
                {
                    "name" : "document-revert",
                    "description" : "Revert to a previous version of a document"
                },
                {
                    "name" : "document-save",
                    "description" : "The save action"
                },
                {
                    "name" : "document-save-as",
                    "description" : "The save as action"
                },
                {
                    "name" : "document-send",
                    "description" : "The send action"
                },
                {
                    "name" : "edit",
                    "description" : ""
                },
                {
                    "name" : "edit-clear",
                    "description" : ""
                },
                {
                    "name" : "edit-copy",
                    "description" : ""
                },
                {
                    "name" : "edit-cut",
                    "description" : ""
                },
                {
                    "name" : "edit-delete",
                    "description" : ""
                },
                {
                    "name" : "edit-find",
                    "description" : ""
                },
                {
                    "name" : "edit-find-replace",
                    "description" : ""
                },
                {
                    "name" : "edit-flag",
                    "description" : ""
                },
                {
                    "name" : "edit-paste",
                    "description" : ""
                },
                {
                    "name" : "edit-redo",
                    "description" : ""
                },
                {
                    "name" : "edit-select-all",
                    "description" : ""
                },
                {
                    "name" : "edit-undo",
                    "description" : ""
                },
                {
                    "name" : "event-new",
                    "description" : ""
                },
                {
                    "name" : "folder-copy",
                    "description" : ""
                },
                {
                    "name" : "folder-move",
                    "description" : ""
                },
                {
                    "name" : "folder-new",
                    "description" : ""
                },
                {
                    "name" : "format-indent-less",
                    "description" : ""
                },
                {
                    "name" : "format-indent-more",
                    "description" : ""
                },
                {
                    "name" : "format-justify-center",
                    "description" : ""
                },
                {
                    "name" : "format-justify-fill",
                    "description" : ""
                },
                {
                    "name" : "format-justify-right",
                    "description" : ""
                },
                {
                    "name" : "format-text-direction-ltr",
                    "description" : ""
                },
                {
                    "name" : "format-text-direction-rtl",
                    "description" : ""
                },
                {
                    "name" : "format-text-bold",
                    "description" : ""
                },
                {
                    "name" : "format-text-highlight",
                    "description" : ""
                },
                {
                    "name" : "format-text-italic",
                    "description" : ""
                },
                {
                    "name" : "format-text-underline",
                    "description" : ""
                },
                {
                    "name" : "format-text-strikethrough",
                    "description" : ""
                },
                {
                    "name" : "go-bottom",
                    "description" : ""
                },
                {
                    "name" : "go-down",
                    "description" : ""
                },
                {
                    "name" : "go-first",
                    "description" : ""
                },
                {
                    "name" : "go-home",
                    "description" : ""
                },
                {
                    "name" : "go-jump",
                    "description" : ""
                },
                {
                    "name" : "go-last",
                    "description" : ""
                },
                {
                    "name" : "go-next",
                    "description" : ""
                },
                {
                    "name" : "go-previous",
                    "description" : ""
                },
                {
                    "name" : "go-top",
                    "description" : ""
                },
                {
                    "name" : "go-up",
                    "description" : ""
                },
                {
                    "name" : "help-about",
                    "description" : ""
                },
                {
                    "name" : "help-contents",
                    "description" : ""
                },
                {
                    "name" : "help-faq",
                    "description" : ""
                },
                {
                    "name" : "image-adjust",
                    "description" : ""
                },
                {
                    "name" : "image-auto-adjust",
                    "description" : ""
                },
                {
                    "name" : "image-crop",
                    "description" : ""
                },
                {
                    "name" : "image-red-eye",
                    "description" : ""
                },
                {
                    "name" : "insert-image",
                    "description" : ""
                },
                {
                    "name" : "insert-link",
                    "description" : ""
                },
                {
                    "name" : "insert-object",
                    "description" : ""
                },
                {
                    "name" : "insert-text",
                    "description" : ""
                },
                {
                    "name" : "list-add",
                    "description" : ""
                },
                {
                    "name" : "list-remove",
                    "description" : ""
                },
                {
                    "name" : "mail-forward",
                    "description" : ""
                },
                {
                    "name" : "mail-mark-important",
                    "description" : ""
                },
                {
                    "name" : "mail-mark-junk",
                    "description" : ""
                },
                {
                    "name" : "mail-mark-notjunk",
                    "description" : ""
                },
                {
                    "name" : "mail-mark-read",
                    "description" : ""
                },
                {
                    "name" : "mail-mark-unread",
                    "description" : ""
                },
                {
                    "name" : "mail-message-new",
                    "description" : ""
                },
                {
                    "name" : "mail-reply-all",
                    "description" : ""
                },
                {
                    "name" : "mail-reply-sender",
                    "description" : ""
                },
                {
                    "name" : "mail-send",
                    "description" : ""
                },
                {
                    "name" : "mail-send-receive",
                    "description" : ""
                },
                {
                    "name" : "media-eject",
                    "description" : ""
                },
                {
                    "name" : "media-playback-pause",
                    "description" : ""
                },
                {
                    "name" : "media-playback-start",
                    "description" : ""
                },
                {
                    "name" : "media-playback-stop",
                    "description" : ""
                },
                {
                    "name" : "media-record",
                    "description" : ""
                },
                {
                    "name" : "media-seek-backward",
                    "description" : ""
                },
                {
                    "name" : "media-seek-forward",
                    "description" : ""
                },
                {
                    "name" : "media-skip-backward",
                    "description" : ""
                },
                {
                    "name" : "media-skip-forward",
                    "description" : ""
                },
                {
                    "name" : "object-flip-horizontal",
                    "description" : ""
                },
                {
                    "name" : "object-flip-vertical",
                    "description" : ""
                },
                {
                    "name" : "object-rotate-left",
                    "description" : ""
                },
                {
                    "name" : "object-rotate-right",
                    "description" : ""
                },
                {
                    "name" : "process-stop",
                    "description" : ""
                },
                {
                    "name" : "system-lock-screen",
                    "description" : ""
                },
                {
                    "name" : "system-log-out",
                    "description" : ""
                },
                {
                    "name" : "system-run",
                    "description" : ""
                },
                {
                    "name" : "system-search",
                    "description" : ""
                },
                {
                    "name" : "system-reboot",
                    "description" : ""
                },
                {
                    "name" : "system-shutdown",
                    "description" : ""
                },
                {
                    "name" : "tools-check-spelling",
                    "description" : ""
                },
                {
                    "name" : "view-fullscreen",
                    "description" : ""
                },
                {
                    "name" : "view-refresh",
                    "description" : ""
                },
                {
                    "name" : "view-restore",
                    "description" : ""
                },
                {
                    "name" : "view-sort-ascending",
                    "description" : ""
                },
                {
                    "name" : "view-sort-descending",
                    "description" : ""
                },
                {
                    "name" : "window-close",
                    "description" : ""
                },
                {
                    "name" : "window-new",
                    "description" : ""
                },
                {
                    "name" : "zoom-fit-best",
                    "description" : ""
                },
                {
                    "name" : "zoom-in",
                    "description" : ""
                },
                {
                    "name" : "zoom-original",
                    "description" : ""
                },
                {
                    "name" : "zoom-out",
                    "description" : ""
                }
            ],
            "Categories" : [
                {
                    "name" : "applications-engineering",
                    "description" : ""
                },
                {
                    "name" : "applications-games",
                    "description" : ""
                },
                {
                    "name" : "applications-graphics	",
                    "description" : ""
                },
                {
                    "name" : "applications-internet",
                    "description" : "The icon for the Internet category of applications"
                },
                {
                    "name" : "applications-multimedia",
                    "description" : "The icon for the Multimedia category of applications"
                },
                {
                    "name" : "applications-office",
                    "description" : ""
                },
                {
                    "name" : "applications-other",
                    "description" : ""
                },
                {
                    "name" : "applications-science",
                    "description" : ""
                },
                {
                    "name" : "applications-system",
                    "description" : ""
                },
                {
                    "name" : "applications-utilities",
                    "description" : ""
                },
                {
                    "name" : "preferences-desktop",
                    "description" : ""
                },
                {
                    "name" : "preferences-desktop-peripherals",
                    "description" : ""
                },
                {
                    "name" : "preferences-desktop-personal",
                    "description" : ""
                },
                {
                    "name" : "preferences-other",
                    "description" : ""
                },
                {
                    "name" : "preferences-system",
                    "description" : ""
                },
                {
                    "name" : "preferences-system-network",
                    "description" : ""
                },
                {
                    "name" : "system-help",
                    "description" : ""
                }

            ],
            "Mimetypes" : [
                {
                    "name" : "font-x-generic",
                    "description" : "Generic font file types"
                },
                {
                    "name" : "image-x-generic",
                    "description" : "Generic image file types"
                },
                {
                    "name" : "package-x-generic",
                    "description" : "Generic package file types"
                },
                {
                    "name" : "text-html",
                    "description" : "HTML text file types"
                },
                {
                    "name" : "text-x-generic",
                    "description" : "Generic text file types"
                },
                {
                    "name" : "text-x-generic-template",
                    "description" : "Generic text templates"
                },
                {
                    "name" : "text-x-script",
                    "description" : "Script file types, such as shell scripts"
                },
                {
                    "name" : "video-x-generic",
                    "description" : "Generic video file types"
                },
                {
                    "name" : "x-office-address-book",
                    "description" : "Generic address book file types"
                },
                {
                    "name" : "x-office-calendar",
                    "description" : "Generic calendar file types"
                },
                {
                    "name" : "x-office-document",
                    "description" : "Generic document and letter file types"
                },
                {
                    "name" : "x-office-presentation",
                    "description" : "Generic presentation file types"
                },
                {
                    "name" : "x-office-spreadsheet",
                    "description" : "Generic spreadsheet file types"
                }
            ]
        }
        """;

        Icon[] category;
        switch (category_name) {
            case "Actions":
                category = actions;
            case "Categories":
                category = categories;
            case "Mimetypes":
                category = mimes;
        }

        foreach (var icon in category) {
            var name = icon.name;
            var description = icon.description;
            var icon_view = new IconView (name, description);
            view.add_titled (icon_view, name, name);
        }

        var list = new IconListBox (view);
        list.row_selected.connect (() => ((IconView)view.visible_child).switched_to ());
        list.vexpand = true;

        add1 (list);
        add2 (view);

        view.realize.connect (() => ((IconView)view.visible_child).switched_to ());
    }
}
