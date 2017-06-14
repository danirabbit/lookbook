/*
* Copyright (c) 2017 Daniel Foré (http://danielfore.com)
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

    public CategoryView (string category_name) {
        Object (
            category_name: category_name,
            orientation: Gtk.Orientation.HORIZONTAL
        );
    }

    construct {
        var view = new Gtk.Stack ();

        string data =
        """
        {
            "Actions" : [
                {
                    "name" : "address-book-new",
                    "description" : "The icon used for the action to create a new address book"
                },
                {
                    "name" : "align-horizontal-center",
                    "description" : ""
                },
                {
                    "name" : "align-horizontal-left",
                    "description" : ""
                },
                {
                    "name" : "align-horizontal-right",
                    "description" : ""
                },
                {
                    "name" : "align-vertical-bottom",
                    "description" : ""
                },
                {
                    "name" : "align-vertical-center",
                    "description" : ""
                },
                {
                    "name" : "align-vertical-top",
                    "description" : ""
                },
                {
                    "name" : "application-exit",
                    "description" : "Used for exiting an application"
                },
                {
                    "name" : "appointment-new",
                    "description" : "Create a new appointment in a calendaring application"
                },
                {
                    "name" : "bookmark-new",
                    "description" : "Create a new bookmark"
                },
                {
                    "name" : "call-start",
                    "description" : "Initiate or accept a call"
                },
                {
                    "name" : "call-end",
                    "description" : "Stop the current call"
                },
                {
                    "name" : "contact-new",
                    "description" : "Create a new contact in an address book application"
                }
            ],
            "Categories" : [
                {
                    "name" : "applications-accessories",
                    "description" : "The icon for the Accessories category of applications"
                },
                {
                    "name" : "applications-development",
                    "description" : ""
                },
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
                    "name" : "application-x-executable",
                    "description" : "The icon used for executable file types"
                },
                {
                    "name" : "audio-x-generic",
                    "description" : "The icon used for generic audio file types"
                },
                {
                    "name" : "font-x-generic",
                    "description" : "The icon used for generic font file types"
                },
                {
                    "name" : "image-x-generic",
                    "description" : "The icon used for generic image file types"
                },
                {
                    "name" : "package-x-generic",
                    "description" : "The icon used for generic package file types"
                },
                {
                    "name" : "text-html",
                    "description" : "The icon used for HTML text file types"
                },
                {
                    "name" : "text-x-generic",
                    "description" : "The icon used for generic text file types"
                },
                {
                    "name" : "text-x-generic-template",
                    "description" : "The icon used for generic text templates"
                },
                {
                    "name" : "text-x-script",
                    "description" : "The icon used for script file types, such as shell scripts"
                },
                {
                    "name" : "video-x-generic",
                    "description" : "The icon used for generic video file types"
                },
                {
                    "name" : "x-office-address-book",
                    "description" : "The icon used for generic address book file types"
                },
                {
                    "name" : "x-office-calendar	",
                    "description" : "The icon used for generic calendar file types"
                },
                {
                    "name" : "x-office-document",
                    "description" : "The icon used for generic document and letter file types"
                },
                {
                    "name" : "x-office-presentation",
                    "description" : "The icon used for generic presentation file types"
                },
                {
                    "name" : "x-office-spreadsheet",
                    "description" : "The icon used for generic spreadsheet file types"
                }
            ]
        }
        """;

        var parser = new Json.Parser ();

        try {
            parser.load_from_data (data);
        } catch (Error e) {
            message ("we fucked up");
            return;
        }

        var object = parser.get_root ().get_object ();

        var category = object.get_array_member (category_name);

        foreach (var icon in category.get_elements ()) {
            var name = icon.get_object ().get_string_member ("name");
            var description = icon.get_object ().get_string_member ("description");
            var icon_view = new IconView (name, description);
            view.add_titled (icon_view, name, name);
        }

        var list = new IconListBox (view);
        list.vexpand = true;

        add1 (list);
        add2 (view);
    }
}
