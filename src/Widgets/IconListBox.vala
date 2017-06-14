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

public class IconListBox : Gtk.ListBox {
    public IconListBox (Gtk.Stack stack) {
        Object (
            activate_on_single_click: true,
            selection_mode: Gtk.SelectionMode.SINGLE
        );

        foreach (unowned Gtk.Widget child in stack.get_children ()) {
            var row = new IconListRow (((IconView) child).icon_name);
            add (row);
        }

        row_selected.connect ((row) => {
            var title = ((IconListRow) row).icon_name;
            stack.visible_child_name = title;
        });
    }
}
