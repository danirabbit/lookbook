/*
* Copyright (c) 2018 elementary LLC. (https://elementary.io)
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

public class ModeSwitch : Gtk.Grid {
    public bool active { get; set; }
    public string primary_icon_name { get; construct set; }
    public string primary_icon_tooltip_text { get; set; }
    public string secondary_icon_name  { get; construct set; }
    public string secondary_icon_tooltip_text { get; set; }

    public ModeSwitch (string primary_icon_name, string secondary_icon_name) {
        Object (
            primary_icon_name: primary_icon_name,
            secondary_icon_name: secondary_icon_name
        );
    }

    construct {
        var primary_icon = new Gtk.Image ();
        primary_icon.pixel_size = 16;

        var mode_switch = new Gtk.Switch ();
        mode_switch.valign = Gtk.Align.CENTER;
        mode_switch.get_style_context ().add_class ("mode-switch");

        var secondary_icon = new Gtk.Image ();
        secondary_icon.pixel_size = 16;

        bind_property ("active", mode_switch, "active", GLib.BindingFlags.BIDIRECTIONAL);
        bind_property ("primary-icon-name", primary_icon, "icon-name", GLib.BindingFlags.SYNC_CREATE);
        bind_property ("primary-icon-tooltip-text", primary_icon, "tooltip-text");
        bind_property ("secondary-icon-name", secondary_icon, "icon-name", GLib.BindingFlags.SYNC_CREATE);
        bind_property ("secondary-icon-tooltip-text", secondary_icon, "tooltip-text");

        column_spacing = 6;
        add (primary_icon);
        add (mode_switch);
        add (secondary_icon);
    }
}
