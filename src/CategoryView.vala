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
    public string category { get; construct; }

    public CategoryView (string category) {
        Object (category: category);
    }

    construct {
        var address_book_new = new IconView ("address-book-new", "The icon used for the action to create a new address book.");

        var view = new Gtk.Stack ();
        view.add_titled (address_book_new, "address-book-new", "address-book-new");

        var list = new Gtk.StackSidebar ();
        list.stack = view;
        list.vexpand = true;
        list.get_style_context ().remove_class ("sidebar");

        add (list);
        add (view);
    }
}
