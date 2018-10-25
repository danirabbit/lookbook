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

public class IconListRow : Gtk.ListBoxRow {
    public CategoryView.Category category { get; construct; }
    public string description { get; construct; }
    public string icon_name { get; construct; }

    public IconListRow (string icon_name, string description, CategoryView.Category category) {
        Object (
            category: category,
            description: description,
            icon_name: icon_name
        );
    }

    construct {
        var icon = new Gtk.Image ();

        if (Gtk.IconTheme.get_default ().has_icon (icon_name)) {
            icon.icon_name = icon_name;
            icon.pixel_size = 24;
        } else {
            icon.icon_name = icon_name + "-symbolic";
            icon.pixel_size = 16;
            icon.set_size_request (24, 24);
        }

        var label = new Gtk.Label (icon_name);
        label.ellipsize = Pango.EllipsizeMode.MIDDLE;

        var grid = new Gtk.Grid ();
        grid.column_spacing = 12;
        grid.margin = 3;
        grid.margin_start = 6;
        grid.margin_end = 6;
        grid.add (icon);
        grid.add (label);

        add (grid);
    }
}
