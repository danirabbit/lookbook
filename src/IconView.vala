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

public class IconView : Granite.SimpleSettingsPage {
    private Gtk.Grid color_row;
    private Gtk.Grid symbolic_row;

    public IconView () {
        Object (
            icon_name: "address-book-new",
            description: _("Create a new address book")
        );
    }

    construct {
        var color_title = new Gtk.Label (_("Color Icons"));
        color_title.margin_top = 12;
        color_title.xalign = 0;
        color_title.get_style_context ().add_class (Granite.STYLE_CLASS_H4_LABEL);

        color_row = new Gtk.Grid ();
        color_row.column_spacing = 24;
        color_row.row_spacing = 12;

        var symbolic_title = new Gtk.Label (_("Symbolic Icons"));
        symbolic_title.margin_top = 12;
        symbolic_title.xalign = 0;
        symbolic_title.get_style_context ().add_class (Granite.STYLE_CLASS_H4_LABEL);

        symbolic_row = new Gtk.Grid ();
        symbolic_row.column_spacing = 24;
        symbolic_row.row_spacing = 12;

        var snippet_title = new Gtk.Label (_("Code Sample"));
        snippet_title.margin_top = 12;
        snippet_title.xalign = 0;
        snippet_title.get_style_context ().add_class (Granite.STYLE_CLASS_H4_LABEL);

        var source_buffer = new Gtk.SourceBuffer (null);
        source_buffer.highlight_syntax = true;
        source_buffer.language = Gtk.SourceLanguageManager.get_default ().get_language ("vala");
        source_buffer.style_scheme = new Gtk.SourceStyleSchemeManager ().get_scheme ("solarized-light");

        var source_view = new Gtk.SourceView ();
        source_view.buffer = source_buffer;
        source_view.editable = false;
        source_view.left_margin = source_view.right_margin = 6;
        source_view.monospace = true;
        source_view.pixels_above_lines = source_view.pixels_below_lines = 3;
        source_view.show_line_numbers = true;

        var snippet = new Gtk.Grid ();
        snippet.get_style_context ().add_class ("code");
        snippet.add (source_view);

        content_area.column_spacing = 12;
        content_area.row_spacing = 12;
        content_area.orientation = Gtk.Orientation.VERTICAL;
        content_area.add (color_title);
        content_area.add (color_row);
        content_area.add (symbolic_title);
        content_area.add (symbolic_row);
        content_area.add (snippet_title);
        content_area.add (snippet);

        var icon_theme = Gtk.IconTheme.get_default ();
        string [] pixels = {"16", "24", "32", "48", "64", "128"};

        notify["icon-name"].connect (() => {
            title = icon_name;
            source_buffer.text = "var icon = new Gtk.Image ();\nicon.gicon = new ThemedIcon (\"%s\");\nicon.pixel_size = \"24\";".printf (icon_name);

            int i = 0;

            var has_color = icon_theme.has_icon (icon_name);
            var has_symbolic = icon_theme.has_icon (icon_name + "-symbolic");

            foreach (var child in color_row.get_children ()) {
                child.destroy ();
            }

            foreach (var child in symbolic_row.get_children ()) {
                child.destroy ();
            }

            foreach (string pixel_size in pixels) {
                if (has_color) {
                    var color_icon = new Granite.AsyncImage.from_gicon_async (new ThemedIcon (icon_name), int.parse (pixel_size));
                    color_icon.use_fallback = true;
                    color_icon.valign = Gtk.Align.END;

                    var color_label = new Gtk.Label (pixels[i] + "px");
                    color_label.hexpand = true;

                    color_row.attach (color_icon, i, 0);
                    color_row.attach (color_label, i, 1);
                }

                if (has_symbolic) {
                    var symbolic_icon = new Granite.AsyncImage.from_gicon_async (new ThemedIcon (icon_name + "-symbolic"), int.parse (pixel_size));
                    symbolic_icon.valign = Gtk.Align.END;

                    var symbolic_label = new Gtk.Label (pixels[i] + "px");
                    symbolic_label.hexpand = true;

                    symbolic_row.attach (symbolic_icon, i, 0);
                    symbolic_row.attach (symbolic_label, i, 1);
                }

                i++;
            }

            var not_has_label = new Gtk.Label (_("Unavailable"));
            not_has_label.hexpand = true;
            not_has_label.height_request = 157;

            var style_context = not_has_label.get_style_context ();
            style_context.add_class (Gtk.STYLE_CLASS_DIM_LABEL);
            style_context.add_class (Granite.STYLE_CLASS_H3_LABEL);

            if (!has_color) {
                color_row.add (not_has_label);
            } else if (!has_symbolic) {
                symbolic_row.add (not_has_label);
            }

            show_all ();
        });
    }
}
