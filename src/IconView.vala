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
        color_title.margin_top = 24;
        color_title.xalign = 0;
        color_title.get_style_context ().add_class ("h4");

        var grid = new Gtk.Grid ();
        grid.column_spacing = 12;
        grid.row_spacing = 12;
        grid.margin = 24;
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.add (title);
        grid.add (description);
        grid.add (color_title);

        add (grid);

        var size_group = new Gtk.SizeGroup (Gtk.SizeGroupMode.HORIZONTAL);

        Gtk.IconSize [] sizes = {Gtk.IconSize.SMALL_TOOLBAR, Gtk.IconSize.LARGE_TOOLBAR, Gtk.IconSize.DND, Gtk.IconSize.DIALOG};

        string [] pixels = {"16", "24", "32", "48"};

        int i = 0;

        foreach (Gtk.IconSize size in sizes) {
            var icon = new Gtk.Image.from_icon_name (icon_name, size);
            icon.pixel_size = pixels[i].to_int ();
            size_group.add_widget (icon);

            var pixel_label = new Gtk.Label (pixels[i] + "px");

            var snippet = new Snippet ("var icon = new Gtk.Image.from_icon_name (\"%s\", %s);".printf (icon_name, size.to_string ()));
            snippet.hexpand = true;
            snippet.valign = Gtk.Align.CENTER;

            var icon_row = new Gtk.Grid ();
            icon_row.column_spacing = 12;
            icon_row.margin_top = 12;
            icon_row.add (icon);
            icon_row.add (pixel_label);
            icon_row.add (snippet);

            grid.add (icon_row);
            i++;
        }

        var symbolic_title = new Gtk.Label ("Symbolic Icons");
        symbolic_title.margin_top = 24;
        symbolic_title.xalign = 0;
        symbolic_title.get_style_context ().add_class ("h4");
        grid.add (symbolic_title);

        i = 0;

        foreach (Gtk.IconSize size in sizes) {
            var icon = new Gtk.Image.from_icon_name (icon_name + "-symbolic", size);
            icon.pixel_size = pixels[i].to_int ();
            size_group.add_widget (icon);

            var label = new Gtk.Label (pixels[i] + "px");

            var snippet = new Snippet ("var icon = new Gtk.Image.from_icon_name (\"%s-symbolic\", %s);".printf (icon_name, size.to_string ()));
            snippet.hexpand = true;
            snippet.valign = Gtk.Align.CENTER;

            var icon_row = new Gtk.Grid ();
            icon_row.column_spacing = 12;
            icon_row.margin_top = 12;
            icon_row.add (icon);
            icon_row.add (label);
            icon_row.add (snippet);

            grid.add (icon_row);
            i++;
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
