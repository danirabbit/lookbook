// -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-
/*-
 * Copyright (c) 2017 elementary LLC. (https://elementary.io)
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

public class IconView : Gtk.Grid {
    private const string CODE_STYLE = """
        .code {
            background-color: #fdf6e3;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.20);
            color: #657b83;
            font-family: roboto mono;
            padding: 6px;
        }

        .code:selected {
            background-color: #657B84;
            color: #fdf6e3;
        }
    """;

    public string description { get; construct; }
    public string icon_name { get; construct; }

    public IconView (string icon_name, string description) {
        Object (
            description: description,
            icon_name: icon_name,
            margin: 24,
            column_spacing: 12,
            row_spacing: 12
        );
    }

    construct {
        var title = new Gtk.Label (icon_name);
        title.xalign = 0;
        title.get_style_context ().add_class ("h2");

        var description = new Gtk.Label (description);
        description.xalign = 0;

        orientation = Gtk.Orientation.VERTICAL;
        add (title);
        add (description);

        var size_group = new Gtk.SizeGroup (Gtk.SizeGroupMode.HORIZONTAL);

        Gtk.IconSize [] sizes = {Gtk.IconSize.SMALL_TOOLBAR, Gtk.IconSize.LARGE_TOOLBAR, Gtk.IconSize.DND, Gtk.IconSize.DIALOG};

        string [] pixels = {"16px", "24px", "32px", "48px"};

        int i = 0;

        foreach (Gtk.IconSize size in sizes) {
            var icon = new Gtk.Image.from_icon_name (icon_name, size);
            size_group.add_widget (icon);

            var label = new Gtk.Label (pixels[i]);

            var snippet = new Gtk.Label ("var icon = new Gtk.Image.from_icon_name (\"%s\", %s);".printf (icon_name, size.to_string ()));
            snippet.hexpand = true;
            snippet.selectable = true;
            snippet.valign = Gtk.Align.CENTER;
            snippet.wrap = true;
            snippet.xalign = 0;
            snippet.get_style_context ().add_class ("code");

            var icon_row = new Gtk.Grid ();
            icon_row.column_spacing = 12;
            icon_row.margin_top = 12;
            icon_row.add (icon);
            icon_row.add (label);
            icon_row.add (snippet);

            add (icon_row);
            i++;
        }

        var provider = new Gtk.CssProvider ();
        try {
            provider.load_from_data (CODE_STYLE, CODE_STYLE.length);
            Gtk.StyleContext.add_provider_for_screen (Gdk.Screen.get_default (), provider, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);
        } catch (Error e) {
            critical (e.message);
        }
    }
}
