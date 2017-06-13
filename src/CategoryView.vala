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

public class CategoryView : Gtk.Grid {
    private const string ICONS = """
        {
            "address-book-new",
            "appointment-new",
            "bookmark-new"
        }
    """;

    public string category_name { get; construct; }

    public CategoryView (string category_name) {
        Object (category_name: category_name);
    }

    construct {
        var view = new Gtk.Stack ();

        string data =
		"""
		{
            "actions" : [
                {
                    "name" : "address-book-new",
                    "description" : "The icon used for the action to create a new address book."
                },
                {
                    "name" : "application-exit",
                    "description" : "The icon used for exiting an application."
                },
                {
                    "name" : "call-start",
                    "description" : "The icon used for initiating or accepting a call."
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

        var list = new Gtk.StackSidebar ();
        list.stack = view;
        list.vexpand = true;
        list.get_style_context ().remove_class ("sidebar");

        add (list);
        add (view);
    }
}
