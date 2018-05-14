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
            name = "mail-send-receive",
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
            name = "applications-engineering",
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
            name = "preferences-desktop",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-peripherals",
            description = _("")
        },
        Icon () {
            name = "preferences-desktop-personal",
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
            name = "system-help",
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
        },
        Icon () {
            name = "font-x-generic",
            description = _("Generic font file types")
        },
        Icon () {
            name = "image-x-generic",
            description = _("Generic image file types")
        },
        Icon () {
            name = "package-x-generic",
            description = _("Generic package file types")
        },
        Icon () {
            name = "text-html",
            description = _("HTML text file types")
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
            name = "text-x-script",
            description = _("Script file types, such as shell scripts")
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
            name = "x-office-presentation",
            description = _("Generic presentation file types")
        },
        Icon () {
            name = "x-office-spreadsheet",
            description = _("Generic spreadsheet file types")
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

        list = new IconListBox (view);
        list.row_selected.connect (() => ((IconView)view.visible_child).switched_to ());
        list.vexpand = true;

        add1 (list);
        add2 (view);

        view.realize.connect (() => ((IconView)view.visible_child).switched_to ());
    }
}
