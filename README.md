## Watch Database
- SVG entity-relationship model made in [Inkscape](https://github.com/inkscape/inkscape "Inkscape").
- Diagram of database schema made in [WWW SQL Designer](https://github.com/ondras/wwwsqldesigner "WWW SQL Designer").
- [SQLite](https://www.sqlite.org/index.html "SQLite") as a database management system.

## Next work to do

- POWER RESERVE isn't supported yet. ✔
- The Crown relation named `may_have_a_crown` is still unfilled for every watch in the DB. ✔
- Instructions to solve using SQL (10). ✔
- The watch complication relation named `may_have_a_complication`. ✔
- Bezel support. ✔
- Build a REST API in [ExpressJS](https://expressjs.com/ "ExpressJS") that can support CRUD functions. ❌
- Build a frontend that can render all the information. ❌

## Docs
These are the main tables in the DB: ```Case```, ```Basic_info```, ```Movement```, ```Dial```, ```Caseback```, and ```Band```. 
| **Case**               | **Data Type**|
| :------------          |  :-------:   |
| `id_case`              |   _Integer_  |
|	`id_crystal`           |   _Integer_  |
|	`id_material`          |   _Integer_  |
|	`id_color`             |   _Integer_  |
|	`id_pusher`            |   _Integer_  |
|	`id_shape`             |   _Integer_  |
|	`diameter`             |   _Float_    |
|	`thickness`            |   _Float_    |
|	`lug_width`            |   _Float_    |
|	`lug_to_lug`           |   _Float_    |
|	`id_movement`          |   _Integer_  |
|	`id_caseback`          |   _Integer_  |
|	`id_dial`              |   _Integer_  |
|	`id_band`              |   _Integer_  |

| **Basic_info**         | **Data Type**|
| :------------          |  :-------:   |
| `id_watch`             |   _Integer_  |
| `model`                |   _String_   |
|	`id_manufactured_in`   |   _Integer_  |
|	`id_brand`             |   _Integer_  |
|	`id_style`             |   _Integer_  |
|	`id_gender`            |   _Integer_  |
|	`water_resistance`     |   _Integer_  |
|	`weight`               |   _Float_    |

| **Movement**          | **Data Type**|
| :------------         |   :-------:  |
| `id_movement`         |   _Integer_  |
|	`id_movement_type`    |   _Integer_  |
|	`id_battery`          |   _Integer_  |
|	`battery_life`        |   _Integer_  |
|	`power_reserve`       |   _Integer_  |

| **Dial**              | **Data Type**|
| :------------         |  :-------:   |
| `id_dial`             |   _Integer_  |
|	`id_dial_type`        |   _Integer_  |
|	`id_index`            |   _Integer_  |
|	`id_hand`             |   _Integer_  |
|	`id_color`            |   _Integer_  |
|	`luminance`           |   _Boolean_  |

| **Caseback**          | **Data Type**|
| :------------         |   :-------:  |
| `id_caseback`         |   _Integer_  |
|	`id_shape`            |   _Integer_  |
|	`id_caseback_design`  |   _Integer_  |
|	`id_material`         |   _Integer_  |

| **Band**              | **Data Type**|
| :------------         |  :-------:   |
| `id_band`             |   _Integer_  |
|	`id_band_type`        |   _Integer_  |
|	`id_clasp`            |   _Integer_  |
|	`id_material`         |   _Integer_  |
|	`id_color`            |   _Integer_  |








