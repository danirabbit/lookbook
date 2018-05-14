/*
* Copyright (c) 2018 Daniel Foré (http://danielfore.com)
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

public class IconData : Object {
    public enum Category {
        ACTIONS,
        APPS,
        CATEGORIES,
        DEVICES,
        EMBLEMS,
        EMOTES,
        MIMES,
        PLACES,
        STATUS;

        public string to_string () {
            switch (this) {
                case ACTIONS:
                    return _("Actions");
                case APPS:
                    return _("Applications");
                case CATEGORIES:
                    return _("Categories");
                case DEVICES:
                    return _("Devices");
                case EMBLEMS:
                    return _("Emblems");
                case EMOTES:
                    return _("Emotes");
                case MIMES:
                    return _("Mimetypes");
                case PLACES:
                    return _("Places");
                case STATUS:
                    return _("Status");
                default:
                    return _("Other");
            }
        }
    }

    public struct Icon {
        string name;
        string description;
        Category category;
    }

    public static Icon[] icons = {
        Icon () {
            name = "address-book-new",
            description = _("Create a new address book"),
            category = Category.ACTIONS
        },
        Icon () {
            name = "align-horizontal-center",
            description = _("Create a new address book"),
            category = Category.ACTIONS
        }
    };
}
