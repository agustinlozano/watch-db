## Watches Database
- SVG entity-relationship model made in [Inkscape](https://github.com/inkscape/inkscape "Inkscape").
- Diagram of database schema made in [WWW SQL Designer](https://github.com/ondras/wwwsqldesigner "WWW SQL Designer").
- [SQLite](https://www.sqlite.org/index.html "SQLite") as a database management system.

## Next work to do

- POWER RESERVE isn't supported yet.
- The Crown relation named ```may_have_a_crown``` is still unfilled for every watch in the DB.
- Instructions to solve using SQL (10).

## Docs
These are the main tables in the DB: ```Case```, ```Basic_info```, ```Movement```, ```Dial```, ```Caseback```, and ```Band```. 
| **Case**               | **Data Type**|
| :------------          |  :-------:   |
| "id_case"              |   Integer    |
|	"id_crystal"           |   Integer    |
|	"id_material"          |   Integer    |
|	"id_color"             |   Integer    |
|	"id_pusher"            |   Integer    |
|	"id_shape"             |   Integer    |
|	"thickness"            |   Float      |
|	"lug_width"            |   Float      |
|	"lug_to_lug"           |   Float      |
|	"id_movement"          |   Integer    |
|	"id_caseback"          |   Integer    |
|	"id_dial"              |   Integer    |
|	"id_band"              |   Integer    |

| **Basic_info**         | **Data Type**|
| :------------          |  :-------:   |
| "id_info"              |   Integer    |
|	"id_manufactured_in"   |   Integer    |
|	"id_brand"             |   Integer    |
|	"id_style"             |   Integer    |
|	"id_gender"            |   Integer    |
|	"water_resistance"     |   Integer    |
|	"weight"               |   Float      |

| **Movement**          | **Data Type**|
| :------------         |   :-------:  |
| "id_movement"         |   Integer    |
|	"id_movement_type"    |   Integer    |
|	"id_battery"          |   Integer    |
|	"battery_life"        |   Integer    |

| **Dial**              | **Data Type**|
| :------------         |  :-------:   |
| "id_dial"             |   Integer    |
|	"id_dial_type"        |   Integer    |
|	"id_index"            |   Integer    |
|	"id_hand"             |   Integer    |
|	"id_color"            |   Integer    |
|	"luminance"           |   Boolean    |

| **Caseback**          | **Data Type**|
| :------------         |   :-------:  |
| "id_caseback"         |   Integer    |
|	"id_shape"            |   Integer    |
|	"id_caseback_design"  |   Integer    |
|	"id_material"         |   Integer    |

| **Band**              | **Data Type**|
| :------------         |  :-------:   |
| "id_band"             |   Integer    |
|	"id_band_type"        |   Integer    |
|	"id_clasp"            |   Integer    |
|	"id_material"         |   Integer    |
|	"id_color"            |   Integer    |








