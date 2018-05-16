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

public class MainWindow : Gtk.Window {
    private Gtk.ListBox categories_sidebar;
    private Gtk.SearchEntry search_entry;

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

    public MainWindow (Gtk.Application application) {
        Object (application: application,
                icon_name: "com.github.danrabbit.lookbook",
                title: _("LookBook"),
                height_request: 700,
                width_request: 1024);
    }

    construct {
        search_entry = new Gtk.SearchEntry ();
        search_entry.hexpand = true;
        search_entry.placeholder_text = _("Search Icon Names");
        search_entry.valign = Gtk.Align.CENTER;

        var headerbar = new Gtk.HeaderBar ();
        headerbar.show_close_button = true;
        headerbar.set_custom_title (search_entry);

        set_titlebar (headerbar);

        var category_view = new CategoryView ();

        categories_sidebar = new Gtk.ListBox ();
        categories_sidebar.vexpand = true;
        categories_sidebar.get_style_context ().add_class (Gtk.STYLE_CLASS_SIDEBAR);

        foreach (var category in CategoryView.Category.all ()) {
            var sidebar_row = new SidebarRow (category);
            categories_sidebar.add (sidebar_row);
        }

        var paned = new Gtk.Paned (Gtk.Orientation.HORIZONTAL);
        paned.position = 128;
        paned.add1 (categories_sidebar);
        paned.add2 (category_view);

        add (paned);

        var provider = new Gtk.CssProvider ();
        try {
            provider.load_from_data (CODE_STYLE, CODE_STYLE.length);
            Gtk.StyleContext.add_provider_for_screen (Gdk.Screen.get_default (), provider, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);
        } catch (Error e) {
            critical (e.message);
        }

        ((Gtk.ListBox)category_view.listbox).set_filter_func (filter_function);

        search_entry.search_changed.connect (() => {
            ((Gtk.ListBox)category_view.listbox).invalidate_filter ();
        });

        categories_sidebar.row_selected.connect (() => {
            ((Gtk.ListBox)category_view.listbox).invalidate_filter ();
        });
    }

    [CCode (instance_pos = -1)]
    private bool filter_function (Gtk.ListBoxRow row) {
        if (search_entry.text == "") {
            var sidebar_row = categories_sidebar.get_selected_row ();
            if (sidebar_row != null) {
                return ((IconListRow) row).category == ((SidebarRow) sidebar_row).category;
            } else {
                return true;
            }
        }

        if (search_entry.text in ((IconListRow) row).icon_name) {
            return true;
        }
        return false;
    }

    public override bool configure_event (Gdk.EventConfigure event) {
        if (is_maximized) {
            LookBook.settings.set_boolean ("window-maximized", true);
        } else {
            LookBook.settings.set_boolean ("window-maximized", false);

            Gtk.Allocation rect;
            get_allocation (out rect);
            LookBook.settings.set_int ("window-height", rect.height);
            LookBook.settings.set_int ("window-width", rect.width);

            int root_x, root_y;
            get_position (out root_x, out root_y);
            LookBook.settings.set_int ("window-x", root_x);
            LookBook.settings.set_int ("window-y", root_y);
        }

        return base.configure_event (event);
    }
}
