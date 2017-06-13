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
        var view = new Gtk.Stack ();

        var icon_theme = Gtk.IconTheme.get_default ();
        icon_theme.list_icons (category).foreach ((icon) => {
            message ("%s".printf (icon));
            var icon_view = new IconView (icon,"");
            view.add_titled (icon_view, icon, icon);
        });

        var list = new Gtk.StackSidebar ();
        list.stack = view;
        list.vexpand = true;
        list.get_style_context ().remove_class ("sidebar");

        add (list);
        add (view);
    }
}
