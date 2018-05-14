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

public class IconView : Gtk.ScrolledWindow {
    public string description { get; construct; }
    public string icon_name { get; construct; }

    private bool initialized = false;
    private Gtk.Grid color_row;
    private Gtk.Grid symbolic_row;

    public IconView (string icon_name, string description) {
        Object (
            description: description,
            hscrollbar_policy: Gtk.PolicyType.NEVER,
            icon_name: icon_name
        );
    }

    construct {
        var title = new Gtk.Label (icon_name);
        title.xalign = 0;
        title.get_style_context ().add_class ("h2");

        var description = new Gtk.Label (description);
        description.xalign = 0;

        var color_title = new Gtk.Label ("Color Icons");
        color_title.margin_top = 12;
        color_title.xalign = 0;
        color_title.get_style_context ().add_class ("h4");

        color_row = new Gtk.Grid ();
        color_row.column_spacing = 24;
        color_row.row_spacing = 12;

        var symbolic_title = new Gtk.Label ("Symbolic Icons");
        symbolic_title.margin_top = 12;
        symbolic_title.xalign = 0;
        symbolic_title.get_style_context ().add_class ("h4");

        symbolic_row = new Gtk.Grid ();
        symbolic_row.column_spacing = 24;
        symbolic_row.row_spacing = 12;

        var snippet_title = new Gtk.Label ("Code Sample");
        snippet_title.margin_top = 12;
        snippet_title.xalign = 0;
        snippet_title.get_style_context ().add_class ("h4");

        var snippet = new Snippet ("var icon = new Gtk.Image ();\nicon.gicon = new ThemedIcon (\"%s\");\nicon.pixel_size = \"24\";".printf (icon_name));
        snippet.hexpand = true;
        snippet.valign = Gtk.Align.CENTER;

        var grid = new Gtk.Grid ();
        grid.column_spacing = 12;
        grid.row_spacing = 12;
        grid.margin = 24;
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.add (title);
        grid.add (description);
        grid.add (color_title);
        grid.add (color_row);
        grid.add (symbolic_title);
        grid.add (symbolic_row);
        grid.add (snippet_title);
        grid.add (snippet);

        add (grid);
    }

    public void switched_to () {
        if (!initialized) {
            string [] pixels = {"16", "24", "32", "48", "64", "128"};

            int i = 0;

            foreach (string pixel_size in pixels) {
                var color_icon = new Gtk.Image ();
                color_icon.gicon = new ThemedIcon (icon_name);
                color_icon.pixel_size = int.parse (pixel_size);
                color_icon.valign = Gtk.Align.END;

                var color_label = new Gtk.Label (pixels[i] + "px");

                color_row.attach (color_icon, i, 0);
                color_row.attach (color_label, i, 1);

                var symbolic_icon = new Gtk.Image ();
                symbolic_icon.gicon = new ThemedIcon (icon_name + "-symbolic");
                symbolic_icon.pixel_size = int.parse (pixel_size);
                symbolic_icon.valign = Gtk.Align.END;

                var symbolic_label = new Gtk.Label (pixels[i] + "px");

                symbolic_row.attach (symbolic_icon, i, 0);
                symbolic_row.attach (symbolic_label, i, 1);

                i++;
            }

            show_all ();

            initialized = true;
        }
    }

    private class Snippet : Gtk.Label {
        public Snippet (string label) {
            Object (
                label: label,
                selectable: true,
                wrap: true,
                xalign: 0
            );
        }

        construct {
            get_style_context ().add_class ("code");
        }
    }

}
