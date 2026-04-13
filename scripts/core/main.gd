extends Control

const ROGUE_LINES := 24
const ROGUE_COLUMNS := 80

const NOTHING := 0
const STAIRS := 0x04
const HORWALL := 0x08
const VERTWALL := 0x10
const DOOR := 0x20
const FLOOR := 0x40
const TUNNEL := 0x80
const TRAP := 0x100
const HIDDEN := 0x200
const OBJECT := 0x01
const MONSTER := 0x02

const MAXROOMS := 9
const BIG_ROOM := 10
const LAST_DUNGEON := 99
const NO_ROOM := -1
const PASSAGE := -3

const R_NOTHING := 0x01
const R_ROOM := 0x02
const R_MAZE := 0x04
const R_DEADEND := 0x08
const R_CROSS := 0x10

const UPWARD := 0
const RIGHT := 2
const DOWN := 4
const LEFT := 6

const ROW1 := 7
const ROW2 := 15
const COL1 := 26
const COL2 := 52
const MIN_ROW := 1

const MOVED := 0
const MOVE_FAILED := -1
const STOPPED_ON_SOMETHING := -2
const MAX_PACK_COUNT := 24
const GOLD_PERCENT := 46
const PARTY_TIME := 10
const HIDE_PERCENT := 12

const MSG_WELCOME := 10
const MSG_LEVEL := 56
const MSG_GOLD := 57
const MSG_HP := 58
const MSG_STR := 59
const MSG_ARM := 60
const MSG_EXP := 61
const MSG_MORE := 11
const MSG_MONSTER_MISS := 18
const MSG_YOU_HIT := 23
const MSG_MONSTER_HIT := 19
const MSG_PACK_FULL := 81
const MSG_HUNGRY := 71
const MSG_WEAK := 73
const MSG_FAINT := 75
const MSG_TRAP_DOOR := 217
const MSG_TRAP_DOOR_NAME := 216
const MSG_BEAR_TRAP := 219
const MSG_BEAR_TRAP_NAME := 218
const MSG_TELE_TRAP := 221
const MSG_TELE_TRAP_NAME := 220
const MSG_DART_TRAP := 223
const MSG_DART_TRAP_NAME := 222
const MSG_SLEEP_TRAP := 225
const MSG_SLEEP_TRAP_NAME := 224
const MSG_RUST_TRAP := 227
const MSG_RUST_TRAP_NAME := 226
const MSG_TRAP_FAILED := 228
const MSG_NO_TRAP_THERE := 229
const MSG_FLOATING_IN_AIR := 48
const MSG_LEVEL_UP := 53
const MSG_BEAR_STUCK := 68
const MSG_CAN_MOVE_AGAIN := 66
const MSG_FAINT_EVENT := 77
const MSG_MISS := 22
const MSG_KILL_MONSTER := 24
const MSG_NO_WAY_UP := 50
const MSG_UP_BLOCKED := 51
const MSG_UP_WRENCH := 52
const MSG_WIN_1 := 182
const MSG_WIN_2 := 183
const MSG_WIN_3 := 184
const MSG_WIN_4 := 185
const MSG_WIN_TITLE := 196
const MSG_WITH_AMULET := 189
const MSG_KILLED_BY_A := 176
const MSG_REST := 177
const MSG_IN := 178
const MSG_PEACE := 179
const MSG_AU := 180
const MSG_STEAL_GOLD := 204
const MSG_STEAL_ITEM := 205
const MSG_STING := 207
const MSG_DRAIN := 208

const MSG_CONFUSED_BY_GAZE := 209
const MSG_HOLDING := 67
const MSG_NO_ROOM_FOR_MONSTER := 64
const MSG_AGGRAVATE := 65
const MSG_STRANGE_FEELING := 230
const MSG_SCROLL_SCARE := 248
const MSG_SCROLL_ENCH_WEAPON := 249
const MSG_SCROLL_NO_WEAPON := 250
const MSG_SCROLL_ENCH_ARMOR := 251
const MSG_SCROLL_NO_ARMOR := 252
const MSG_SCROLL_IDENTIFY := 253
const MSG_SCROLL_SLEEP := 254
const MSG_SCROLL_PROTECT_ARMOR := 255
const MSG_SCROLL_NO_ARMOR_FACE := 256
const MSG_SCROLL_REMOVE_CURSE := 257
const MSG_SCROLL_REMOVE_CURSE_HALLUC := 258
const MSG_SCROLL_MAGIC_MAPPING := 259
const MSG_IDENTIFY_PROMPT := 260
const MSG_NO_SUCH_ITEM := 261
const MSG_HOLD_NONE := 269
const MSG_HOLD_ONE := 270
const MSG_HOLD_MANY := 271
const MSG_ENCH_COLOR := 275
const MSG_QUAFF_STRENGTH := 234
const MSG_QUAFF_RESTORE := 235
const MSG_QUAFF_HEAL := 236
const MSG_QUAFF_EXTRA_HEAL := 237
const MSG_QUAFF_POISON := 238
const MSG_QUAFF_HALLUC := 239
const MSG_QUAFF_CONFUSED_HALLUC := 240
const MSG_QUAFF_CONFUSED := 241
const MSG_QUAFF_LEVITATION := 242
const MSG_QUAFF_HASTE := 243
const MSG_QUAFF_SEE_INVIS := 244
const MSG_EAT_TASTY_RARE := 265
const MSG_EAT_TASTY := 266
const MSG_EAT_FRUIT := 267
const MSG_EAT_AWFUL := 268
const MSG_UNHALLUCINATE := 272
const MSG_UNBLIND := 273
const MSG_GO_BLIND := 274
const MSG_UNCONFUSE_HALLUC := 276
const MSG_UNCONFUSE := 277
const MSG_LEVITATE_END := 78
const MSG_HASTE_END := 79
const MSG_FAINT_START := 76

const SCROLL_PROTECT_ARMOR := 0
const SCROLL_HOLD_MONSTER := 1
const SCROLL_ENCH_WEAPON := 2
const SCROLL_ENCH_ARMOR := 3
const SCROLL_IDENTIFY := 4
const SCROLL_TELEPORT := 5
const SCROLL_SLEEP := 6
const SCROLL_SCARE_MONSTER := 7
const SCROLL_REMOVE_CURSE := 8
const SCROLL_CREATE_MONSTER := 9
const SCROLL_AGGRAVATE_MONSTER := 10
const SCROLL_MAGIC_MAPPING := 11

const POTION_INCREASE_STRENGTH := 0
const POTION_RESTORE_STRENGTH := 1
const POTION_HEALING := 2
const POTION_EXTRA_HEALING := 3
const POTION_POISON := 4
const POTION_RAISE_LEVEL := 5
const POTION_BLINDNESS := 6
const POTION_HALLUCINATION := 7
const POTION_DETECT_MONSTER := 8
const POTION_DETECT_OBJECTS := 9
const POTION_CONFUSION := 10
const POTION_LEVITATION := 11
const POTION_HASTE_SELF := 12
const POTION_SEE_INVISIBLE := 13

const RING_STEALTH := 0
const RING_TELEPORT := 1
const RING_REGENERATION := 2
const RING_SLOW_DIGEST := 3
const RING_ADD_STRENGTH := 4
const RING_SUSTAIN_STRENGTH := 5
const RING_DEXTERITY := 6
const RING_ADORNMENT := 7
const RING_SEE_INVISIBLE := 8
const RING_MAINTAIN_ARMOR := 9
const RING_SEARCHING := 10
const RING_TELE_PERCENT := 8
const WAND_KIND_MAGIC_MISSILE := 7
const WAND_KIND_CANCELLATION := 8
const WAND_KIND_TELEPORT_AWAY := 0
const WAND_KIND_SLOW_MONSTER := 1
const WAND_KIND_CONFUSE_MONSTER := 2
const WAND_KIND_INVISIBILITY := 3
const WAND_KIND_POLYMORPH := 4
const WAND_KIND_HASTE_MONSTER := 5
const WAND_KIND_SLEEP := 6
const WAND_KIND_DO_NOTHING := 9
const SLOT_WEAPON := "weapon"
const SLOT_ARMOR := "armor"
const SLOT_RING_LEFT := "ring_left"
const SLOT_RING_RIGHT := "ring_right"
const SLOT_RING_GENERIC := "ring"
const EQUIPMENT_SLOTS: PackedStringArray = [SLOT_WEAPON, SLOT_ARMOR, SLOT_RING_LEFT, SLOT_RING_RIGHT]
const DIRECTION_PAD_MODE_ROW_HEIGHT_PX := 110.0
const KIND_ITEM := "item"
const KIND_GOLD := "gold"
const KIND_FOOD := "food"
const KIND_AMULET := "amulet"
const KIND_POTION := "potion"
const KIND_SCROLL := "scroll"
const KIND_WAND := "wand"
const KIND_RING := "ring"
const KIND_WEAPON := "weapon"
const KIND_ARMOR := "armor"
const CALLABLE_ITEM_KINDS: PackedStringArray = [KIND_POTION, KIND_SCROLL, KIND_WAND, KIND_RING]
const IDENTIFIABLE_ITEM_KINDS: PackedStringArray = [KIND_POTION, KIND_SCROLL, KIND_WAND, KIND_RING, KIND_WEAPON, KIND_ARMOR]

const ARMOR_KIND_LEATHER := 0

const WAKE_PERCENT := 45
const FLIT_PERCENT := 33
const STEALTH_FACTOR := 3
const PARTY_WAKE_PERCENT := 75

const M_HASTED := 1 << 0
const M_SLOWED := 1 << 1
const M_INVISIBLE := 1 << 2
const M_ASLEEP := 1 << 3
const M_WAKENS := 1 << 4
const M_WANDERS := 1 << 5
const M_FLIES := 1 << 6
const M_FLITS := 1 << 7
const M_CAN_FLIT := 1 << 8
const M_CONFUSED := 1 << 9
const M_RUSTS := 1 << 10
const M_HOLDS := 1 << 11
const M_FREEZES := 1 << 12
const M_STEALS_GOLD := 1 << 13
const M_STEALS_ITEM := 1 << 14
const M_STINGS := 1 << 15
const M_DRAINS_LIFE := 1 << 16
const M_DROPS_LEVEL := 1 << 17
const M_SEEKS_GOLD := 1 << 18
const M_FREEZING_ROGUE := 1 << 19
const M_CONFUSES := 1 << 20
const M_IMITATES := 1 << 21
const M_FLAMES := 1 << 22
const M_STATIONARY := 1 << 23
const M_NAPPING := 1 << 24
const M_ALREADY_MOVED := 1 << 25

const HUNGRY_THRESHOLD := 300
const WEAK_THRESHOLD := 150
const FAINT_THRESHOLD := 20
const STARVE_THRESHOLD := 0
const AMULET_LEVEL := 26
const MAX_EXP_LEVEL := 21
const MAX_EXP_POINTS := 10000000
const MAX_GOLD := 900000
const MAX_HP := 800
const MAX_STRENGTH := 99

const SCORE_WEAPON_VALUES: PackedInt32Array = [150, 8, 15, 27, 35, 360, 470, 580]
const SCORE_ARMOR_VALUES: PackedInt32Array = [300, 300, 400, 500, 600, 600, 700]
const SCORE_WAND_VALUES: PackedInt32Array = [25, 50, 45, 8, 55, 2, 25, 20, 20, 0]
const SCORE_SCROLL_VALUES: PackedInt32Array = [505, 200, 235, 235, 175, 190, 25, 610, 210, 100, 25, 180]
const SCORE_POTION_VALUES: PackedInt32Array = [100, 250, 100, 200, 10, 300, 10, 25, 100, 100, 10, 80, 150, 145]
const SCORE_RING_VALUES: PackedInt32Array = [250, 100, 255, 295, 200, 250, 250, 25, 300, 290, 270]

const LEVEL_POINTS: PackedInt64Array = [
	10,
	20,
	40,
	80,
	160,
	320,
	640,
	1300,
	2600,
	5200,
	10000,
	20000,
	40000,
	80000,
	160000,
	320000,
	1000000,
	3333333,
	6666666,
	10000000,
	99900000,
]

const MONSTER_TEMPLATES: Array = [
	{"char": "A", "flags": M_ASLEEP | M_WAKENS | M_WANDERS | M_RUSTS, "first": 9, "last": 18, "hit": 100, "exp": 20, "atk": 4, "damage": "0d0", "hp_min": 10, "hp_max": 16},
	{"char": "B", "flags": M_ASLEEP | M_WANDERS | M_FLITS, "first": 1, "last": 8, "hit": 60, "exp": 2, "atk": 2, "damage": "1d3", "hp_min": 2, "hp_max": 5},
	{"char": "C", "flags": M_ASLEEP | M_WANDERS, "first": 7, "last": 16, "hit": 85, "exp": 15, "atk": 4, "damage": "3d3/2d5", "hp_min": 8, "hp_max": 14},
	{"char": "D", "flags": M_ASLEEP | M_WAKENS | M_FLAMES, "first": 21, "last": 126, "hit": 100, "exp": 5000, "atk": 18, "damage": "4d6/4d9", "hp_min": 40, "hp_max": 60},
	{"char": "E", "flags": M_ASLEEP | M_WAKENS, "first": 1, "last": 7, "hit": 65, "exp": 2, "atk": 2, "damage": "1d3", "hp_min": 2, "hp_max": 5},
	{"char": "F", "flags": M_HOLDS | M_STATIONARY, "first": 12, "last": 126, "hit": 80, "exp": 91, "atk": 10, "damage": "5d5", "hp_min": 20, "hp_max": 30},
	{"char": "G", "flags": M_ASLEEP | M_WAKENS | M_WANDERS | M_FLIES, "first": 20, "last": 126, "hit": 85, "exp": 2000, "atk": 14, "damage": "5d5/5d5", "hp_min": 26, "hp_max": 36},
	{"char": "H", "flags": M_ASLEEP | M_WAKENS | M_WANDERS, "first": 1, "last": 10, "hit": 67, "exp": 3, "atk": 3, "damage": "1d3/1d2", "hp_min": 3, "hp_max": 7},
	{"char": "I", "flags": M_ASLEEP | M_FREEZES, "first": 2, "last": 11, "hit": 68, "exp": 5, "atk": 2, "damage": "0d0", "hp_min": 4, "hp_max": 8},
	{"char": "J", "flags": M_ASLEEP | M_WANDERS, "first": 21, "last": 126, "hit": 100, "exp": 3000, "atk": 16, "damage": "3d10/4d5", "hp_min": 32, "hp_max": 46},
	{"char": "K", "flags": M_ASLEEP | M_WAKENS | M_WANDERS | M_FLIES, "first": 1, "last": 6, "hit": 60, "exp": 2, "atk": 2, "damage": "1d4", "hp_min": 2, "hp_max": 6},
	{"char": "L", "flags": M_ASLEEP | M_STEALS_GOLD, "first": 6, "last": 16, "hit": 75, "exp": 21, "atk": 1, "damage": "0d0", "hp_min": 6, "hp_max": 12},
	{"char": "M", "flags": M_ASLEEP | M_WAKENS | M_WANDERS | M_CONFUSES, "first": 18, "last": 126, "hit": 85, "exp": 250, "atk": 10, "damage": "4d4/3d7", "hp_min": 16, "hp_max": 26},
	{"char": "N", "flags": M_ASLEEP | M_STEALS_ITEM, "first": 10, "last": 19, "hit": 75, "exp": 39, "atk": 1, "damage": "0d0", "hp_min": 8, "hp_max": 14},
	{"char": "O", "flags": M_ASLEEP | M_WANDERS | M_WAKENS | M_SEEKS_GOLD, "first": 4, "last": 13, "hit": 70, "exp": 5, "atk": 3, "damage": "1d6", "hp_min": 5, "hp_max": 9},
	{"char": "P", "flags": M_ASLEEP | M_INVISIBLE | M_WANDERS | M_FLITS, "first": 15, "last": 24, "hit": 80, "exp": 120, "atk": 9, "damage": "5d4", "hp_min": 15, "hp_max": 24},
	{"char": "Q", "flags": M_ASLEEP | M_WAKENS | M_WANDERS, "first": 8, "last": 17, "hit": 78, "exp": 20, "atk": 6, "damage": "3d5", "hp_min": 10, "hp_max": 16},
	{"char": "R", "flags": M_ASLEEP | M_WAKENS | M_WANDERS | M_STINGS, "first": 3, "last": 12, "hit": 70, "exp": 10, "atk": 4, "damage": "2d5", "hp_min": 6, "hp_max": 12},
	{"char": "S", "flags": M_ASLEEP | M_WAKENS | M_WANDERS, "first": 1, "last": 9, "hit": 50, "exp": 2, "atk": 2, "damage": "1d3", "hp_min": 2, "hp_max": 5},
	{"char": "T", "flags": M_ASLEEP | M_WAKENS | M_WANDERS, "first": 13, "last": 22, "hit": 75, "exp": 125, "atk": 9, "damage": "4d6/1d4", "hp_min": 14, "hp_max": 24},
	{"char": "U", "flags": M_ASLEEP | M_WAKENS | M_WANDERS, "first": 17, "last": 26, "hit": 85, "exp": 200, "atk": 12, "damage": "4d10", "hp_min": 20, "hp_max": 30},
	{"char": "V", "flags": M_ASLEEP | M_WAKENS | M_WANDERS | M_DRAINS_LIFE, "first": 19, "last": 126, "hit": 85, "exp": 350, "atk": 8, "damage": "1d14/1d4", "hp_min": 20, "hp_max": 30},
	{"char": "W", "flags": M_ASLEEP | M_WANDERS | M_DROPS_LEVEL, "first": 14, "last": 23, "hit": 75, "exp": 55, "atk": 7, "damage": "2d8", "hp_min": 12, "hp_max": 20},
	{"char": "X", "flags": M_ASLEEP | M_IMITATES, "first": 16, "last": 25, "hit": 75, "exp": 110, "atk": 10, "damage": "4d6", "hp_min": 16, "hp_max": 26},
	{"char": "Y", "flags": M_ASLEEP | M_WANDERS, "first": 11, "last": 20, "hit": 80, "exp": 50, "atk": 7, "damage": "3d6", "hp_min": 10, "hp_max": 18},
	{"char": "Z", "flags": M_ASLEEP | M_WAKENS | M_WANDERS, "first": 5, "last": 14, "hit": 69, "exp": 8, "atk": 3, "damage": "1d7", "hp_min": 5, "hp_max": 10},
]

const MONSTER_HP_TO_KILL: Dictionary = {
	"A": 20, "B": 2, "C": 15, "D": 5000, "E": 2, "F": 91, "G": 2000,
	"H": 3, "I": 5, "J": 3000, "K": 2, "L": 21, "M": 250, "N": 39,
	"O": 5, "P": 120, "Q": 20, "R": 10, "S": 2, "T": 125, "U": 200,
	"V": 350, "W": 55, "X": 110, "Y": 50, "Z": 8,
}

const MONSTER_DROP_PERCENT: Dictionary = {
	"A": 0, "B": 0, "C": 10, "D": 90, "E": 0, "F": 0, "G": 10,
	"H": 0, "I": 0, "J": 0, "K": 0, "L": 0, "M": 25, "N": 100,
	"O": 10, "P": 50, "Q": 20, "R": 0, "S": 0, "T": 33, "U": 33,
	"V": 18, "W": 0, "X": 0, "Y": 20, "Z": 0,
}

@export var debug_logs_enabled: bool = false

var cur_level: int = 0
var max_level: int = 1
var random_rooms: Array[int] = [3, 7, 5, 2, 0, 6, 1, 4, 8]
var party_room: int = NO_ROOM
var party_counter: int = 1
var r_de: int = NO_ROOM

var dungeon: Array = []
var rooms: Array = []

var rogue_row: int = -1
var rogue_col: int = -1
var view_top_row: int = 0
var view_left_col: int = 0
var current_move_mode: String = "step"
var cur_room: int = PASSAGE
var inventory_count: int = 0
var inventory_items: Array[Dictionary] = []
var foods_generated_on_level: int = 0
var selected_inventory_index: int = -1
var inventory_slot_buttons: Array[Button] = []
var call_name_target_index: int = -1
var equipped_weapon_index: int = -1
var equipped_armor_index: int = -1
var equipped_ring_left_index: int = -1
var equipped_ring_right_index: int = -1
var selected_equipment_slot: String = SLOT_WEAPON
var top_message: String = ""
var message_queue: Array[String] = []

var player_gold: int = 0
var hp_current: int = 12
var hp_max: int = 12
var str_current: int = 16
var str_max: int = 16
var armor_class: int = 0
var exp_level: int = 1
var exp_points: int = 0
var hunger_text: String = ""
var moves_left: int = 1250
var bear_trap_turns: int = 0
var turn_counter: int = 0
var last_dir_row: int = 0
var last_dir_col: int = 1
var stealthy: int = 0
var player_confused_turns: int = 0
var player_held: bool = false
var has_amulet: bool = false
var game_over: bool = false
var game_won: bool = false
var death_reason: String = ""
var death_kind: String = ""
var death_monster_name: String = ""
var death_monster_char: String = ""
var post_game_phase: String = ""
var score_recorded: bool = false
var leaderboard_cache: Array = []
var leaderboard_highlight_rank: int = -1
var auto_fight_active: bool = false
var fight_to_death_enabled: bool = false
var invincible_debug_enabled: bool = false
var action_interrupted: bool = false
var auto_fight_dir_row: int = 0
var auto_fight_dir_col: int = 0
var blind: bool = false
var detect_monster: bool = false
var hallucination_turns: int = 0
var blind_turns: int = 0
var levitation_turns: int = 0
var haste_self_turns: int = 0
var potion_see_invisible: bool = false
var ring_teleport: bool = false
var ring_see_invisible: bool = false
var ring_sustain_strength: bool = false
var ring_maintain_armor: bool = false
var ring_count: int = 0
var ring_energy_load: int = 0
var ring_add_strength: int = 0
var ring_regeneration: int = 0
var ring_exp_bonus: int = 0
var ring_auto_search: int = 0
var _ring_hunger_toggle: int = 0
var _heal_exp_level: int = -1
var _heal_interval: int = 2
var _heal_counter: int = 0
var _heal_alt_boost: bool = false
var _manual_search_reg_toggle: bool = false

var stairs_pos: Vector2i = Vector2i(-1, -1)
var monster_glyphs: Dictionary = {}
var object_glyphs: Dictionary = {}
var object_data: Dictionary = {}
var monster_data: Dictionary = {}
var trap_data: Dictionary = {}
var localized_messages: Dictionary = {}
var localized_ui: Dictionary = {}
var map_visible: Array = []
var map_revealed: Array = []
var rooms_visited: Array[bool] = []
var spotted_traps: Dictionary = {}

const MONSTER_CHARS: PackedStringArray = ["K", "B", "H", "S", "I", "O"]
const OBJECT_CHARS: PackedStringArray = ["!", "?", ")", "]", "/", "="]
const HALLUCINATION_OBJECT_CHARS: PackedStringArray = ["!", "?", ")", "]", "/", "=", "%", "^", "*", ":", ","]
var POTION_COLORS_JA: PackedStringArray = []
var POTION_COLORS_EN: PackedStringArray = []
const WEAPON_KIND_DAGGER := 0
const WEAPON_KIND_ARROW := 1
const WEAPON_KIND_MACE := 2
const WEAPON_KIND_LONG_SWORD := 3
const WEAPON_KIND_BOW := 4
const WEAPON_KIND_DART := 5
const WEAPON_KIND_SHURIKEN := 6
const WEAPON_KIND_TWO_HANDED_SWORD := 7

var WEAPON_NAMES_JA: PackedStringArray = []
var WEAPON_NAMES_EN: PackedStringArray = []
var ARMOR_NAMES_JA: PackedStringArray = []
var ARMOR_NAMES_EN: PackedStringArray = []
var WAND_MATERIALS_JA: PackedStringArray = []
var WAND_MATERIALS_EN: PackedStringArray = []
var RING_GEMS_JA: PackedStringArray = []
var RING_GEMS_EN: PackedStringArray = []
var SCROLL_SYLLABLES_JA: PackedStringArray = []
var SCROLL_SYLLABLES_EN: PackedStringArray = []

@onready var root_margin: MarginContainer = $RootMargin
@onready var play_area: PanelContainer = $RootMargin/VerticalSplit/PlayArea
@onready var play_viewport: Control = $RootMargin/VerticalSplit/PlayArea/PlayVBox/PlayViewport
@onready var message_line_label: Label = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MessageLine
@onready var play_text: RichTextLabel = $RootMargin/VerticalSplit/PlayArea/PlayVBox/PlayViewport/PlayText
@onready var tomb_overlay_text: RichTextLabel = $RootMargin/VerticalSplit/PlayArea/PlayVBox/PlayViewport/TombOverlay
@onready var status_line_label: Label = $RootMargin/VerticalSplit/PlayArea/PlayVBox/StatusLine
@onready var minimap_frame: PanelContainer = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapFrame
@onready var minimap_top_row: HBoxContainer = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapTopRow
@onready var lang_ja_button: Button = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapTopRow/LangJaButton
@onready var lang_en_button: Button = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapTopRow/LangEnButton
@onready var minimap_texture_rect: TextureRect = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapFrame/MiniMapCenter/MiniMapTexture
@onready var minimap_overlay: Control = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapFrame/MiniMapCenter/MiniMapOverlay
@onready var minimap_marker_border: ColorRect = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapFrame/MiniMapCenter/MiniMapOverlay/MiniMapMarkerBorder
@onready var minimap_marker_core: ColorRect = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapFrame/MiniMapCenter/MiniMapOverlay/MiniMapMarkerBorder/MiniMapMarkerCore
@onready var bottom_tabs: TabContainer = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs
@onready var controls_tab: MarginContainer = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab
@onready var equipment_tab: MarginContainer = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab
@onready var inventory_tab: MarginContainer = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab
@onready var log_tab: MarginContainer = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/LogTab
@onready var log_header_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/LogTab/LogVBox/LogHeader
@onready var log_text: RichTextLabel = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/LogTab/LogVBox/LogText
@onready var step_mode_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/MoveModeRow/StepMode
@onready var run_hit_mode_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/MoveModeRow/RunHitMode
@onready var run_before_mode_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/MoveModeRow/RunBeforeMode
@onready var pickup_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Pickup
@onready var trap_identify_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/TrapIdentify
@onready var search_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Search
@onready var search10_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Search10
@onready var rest_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Rest
@onready var rest10_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Rest10
@onready var fight_to_death_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/FightToDeath
@onready var invincible_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Invincible
@onready var interrupt_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Interrupt
@onready var quit_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Quit
@onready var pickup_toggle_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/PickupToggle
@onready var zap_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Zap
@onready var throw_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/ControlsTab/ControlsTabVBox/ControlsMainRow/ControlsRightVBox/ActionGrid/Throw
@onready var symbol_legend_button: Button = $RootMargin/VerticalSplit/PlayArea/PlayVBox/MiniMapTopRow/MiniMapSymbolsButton
@onready var symbol_legend_popup: PopupPanel = $SymbolLegendPopup
@onready var symbol_legend_title_label: Label = $SymbolLegendPopup/SymbolLegendMargin/SymbolLegendVBox/SymbolLegendTitle
@onready var symbol_legend_tabs: TabContainer = $SymbolLegendPopup/SymbolLegendMargin/SymbolLegendVBox/SymbolLegendTabs
@onready var symbol_items_tab: MarginContainer = $SymbolLegendPopup/SymbolLegendMargin/SymbolLegendVBox/SymbolLegendTabs/SymbolItemsTab
@onready var symbol_items_text: RichTextLabel = $SymbolLegendPopup/SymbolLegendMargin/SymbolLegendVBox/SymbolLegendTabs/SymbolItemsTab/SymbolItemsText
@onready var symbol_monsters_tab: MarginContainer = $SymbolLegendPopup/SymbolLegendMargin/SymbolLegendVBox/SymbolLegendTabs/SymbolMonstersTab
@onready var symbol_monsters_text: RichTextLabel = $SymbolLegendPopup/SymbolLegendMargin/SymbolLegendVBox/SymbolLegendTabs/SymbolMonstersTab/SymbolMonstersText
@onready var symbol_legend_close_button: Button = $SymbolLegendPopup/SymbolLegendMargin/SymbolLegendVBox/SymbolLegendButtons/SymbolLegendClose
@onready var equipment_header_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentHeader
@onready var weapon_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/WeaponLabel
@onready var weapon_value_label: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/WeaponValue
@onready var armor_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/ArmorLabel
@onready var armor_value_label: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/ArmorValue
@onready var ring_left_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/RingLeftLabel
@onready var ring_left_value_label: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/RingLeftValue
@onready var ring_right_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/RingRightLabel
@onready var ring_right_value_label: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/EquipmentTab/EquipmentVBox/EquipmentGrid/RingRightValue
@onready var inventory_header_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab/InventoryVBox/InventoryHeaderRow/InventoryHeader
@onready var inventory_selected_detail_label: Label = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab/InventoryVBox/InventoryHeaderRow/InventorySelectedDetail
@onready var inventory_scroll: ScrollContainer = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab/InventoryVBox/InventoryScroll
@onready var inventory_grid: GridContainer = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab/InventoryVBox/InventoryScroll/InventoryGrid
@onready var item_use_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab/InventoryVBox/InventoryActionRow/ItemUse
@onready var item_equip_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab/InventoryVBox/InventoryActionRow/ItemEquip
@onready var item_drop_button: Button = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/BottomTabs/InventoryTab/InventoryVBox/InventoryActionRow/ItemDrop
@onready var call_name_popup: PopupPanel = $CallNamePopup
@onready var call_name_title_label: Label = $CallNamePopup/CallNameMargin/CallNameVBox/CallNameTitle
@onready var call_name_input: LineEdit = $CallNamePopup/CallNameMargin/CallNameVBox/CallNameInput
@onready var call_name_cancel_button: Button = $CallNamePopup/CallNameMargin/CallNameVBox/CallNameButtons/CallNameCancel
@onready var call_name_confirm_button: Button = $CallNamePopup/CallNameMargin/CallNameVBox/CallNameButtons/CallNameConfirm
@onready var wand_select_popup: PopupPanel = $WandSelectPopup
@onready var wand_select_title_label: Label = $WandSelectPopup/WandSelectMargin/WandSelectVBox/WandSelectTitle
@onready var wand_select_list: ItemList = $WandSelectPopup/WandSelectMargin/WandSelectVBox/WandSelectList
@onready var wand_select_cancel_button: Button = $WandSelectPopup/WandSelectMargin/WandSelectVBox/WandSelectButtons/WandSelectCancel
@onready var wand_select_confirm_button: Button = $WandSelectPopup/WandSelectMargin/WandSelectVBox/WandSelectButtons/WandSelectConfirm
@onready var throw_select_popup: PopupPanel = $ThrowSelectPopup
@onready var throw_select_title_label: Label = $ThrowSelectPopup/ThrowSelectMargin/ThrowSelectVBox/ThrowSelectTitle
@onready var throw_select_list: ItemList = $ThrowSelectPopup/ThrowSelectMargin/ThrowSelectVBox/ThrowSelectList
@onready var throw_select_cancel_button: Button = $ThrowSelectPopup/ThrowSelectMargin/ThrowSelectVBox/ThrowSelectButtons/ThrowSelectCancel
@onready var throw_select_confirm_button: Button = $ThrowSelectPopup/ThrowSelectMargin/ThrowSelectVBox/ThrowSelectButtons/ThrowSelectConfirm
@onready var equip_select_popup: PopupPanel = $EquipSelectPopup
@onready var equip_select_title_label: Label = $EquipSelectPopup/EquipSelectMargin/EquipSelectVBox/EquipSelectTitle
@onready var equip_select_list: ItemList = $EquipSelectPopup/EquipSelectMargin/EquipSelectVBox/EquipSelectList
@onready var equip_select_cancel_button: Button = $EquipSelectPopup/EquipSelectMargin/EquipSelectVBox/EquipSelectButtons/EquipSelectCancel
@onready var equip_select_confirm_button: Button = $EquipSelectPopup/EquipSelectMargin/EquipSelectVBox/EquipSelectButtons/EquipSelectConfirm
@onready var identify_select_popup: PopupPanel = $IdentifySelectPopup
@onready var identify_select_title_label: Label = $IdentifySelectPopup/IdentifySelectMargin/IdentifySelectVBox/IdentifySelectTitle
@onready var identify_select_list: ItemList = $IdentifySelectPopup/IdentifySelectMargin/IdentifySelectVBox/IdentifySelectList
@onready var identify_select_cancel_button: Button = $IdentifySelectPopup/IdentifySelectMargin/IdentifySelectVBox/IdentifySelectButtons/IdentifySelectCancel
@onready var identify_select_confirm_button: Button = $IdentifySelectPopup/IdentifySelectMargin/IdentifySelectVBox/IdentifySelectButtons/IdentifySelectConfirm
@onready var direction_pad_image: TextureRect = $RootMargin/VerticalSplit/ControlArea/ControlsMargin/BottomVBox/DirectionPadImage

var _debug_log_path: String = ""
var _debug_file_error_reported: bool = false
var wand_select_item_indexes: Array[int] = []
var throw_select_item_indexes: Array[int] = []
var equip_select_item_indexes: Array[int] = []
var equip_select_target_slot: String = ""
var identify_select_item_indexes: Array[int] = []
var identify_scroll_source_index: int = -1
var pending_targeting_action: String = ""
var pending_targeting_inventory_index: int = -1
var quit_confirm_pending: bool = false
var _direction_pad_mode_material: ShaderMaterial = null
var scroll_use_advance_cost: int = 1
var nap_remaining_turns: int = 0
var nap_progress_elapsed: float = 0.0
var trap_door_pending: bool = false
var _rng: RandomNumberGenerator = RandomNumberGenerator.new()
var _rng_seed_override: String = ""
var auto_pickup_non_gold_enabled: bool = true
var _status_line_default_color: Color = Color(0.95, 0.95, 0.95, 1.0)
var _last_message_advance_input_msec: int = -1000
var _last_message_line_len: int = 0
var _play_text_mono_font: Font = null
var _play_text_mono_font_size: int = 14
var _play_text_ui_font: Font = null
var _play_text_ui_font_size: int = 14
var _message_line_ui_font_size: int = 14
var _status_line_ui_font_size: int = 14

const COLOR_THEME: String = "cbmyg"
const COLOR_HEX: Dictionary = {
	"w": "#f2f2f2",
	"r": "#ff6b6b",
	"g": "#7bd88f",
	"y": "#ffd24d",
	"b": "#6fa8ff",
	"m": "#d78cff",
	"c": "#66d9ef",
}
const ACTIVE_BUTTON_TINT: Color = Color(1.0, 0.72, 0.36, 1.0)
const INACTIVE_BUTTON_TINT: Color = Color(1.0, 1.0, 1.0, 1.0)
const NAP_PROGRESS_INTERVAL_SECONDS: float = 0.06
const INVINCIBLE_MESSAGE_QUEUE_TRIM_THRESHOLD: int = 8
const INVINCIBLE_MESSAGE_QUEUE_KEEP: int = 2
const RECENT_MESSAGE_LOG_LIMIT: int = 9
const ID_UNIDENTIFIED: int = 0
const ID_IDENTIFIED: int = 1
const ID_CALLED: int = 2
const PICKUP_RESULT_FAILED: int = 0
const PICKUP_RESULT_SUCCESS: int = 1
const PICKUP_RESULT_NO_TURN: int = 2
const MINIMAP_PADDING_PX: float = 6.0
const MINIMAP_MIN_SIZE_PX: float = 64.0
const MINIMAP_MAX_HEIGHT_PX: float = 160.0
const MINIMAP_DIM_FACTOR: float = 0.45
const CONTENT_EDGE_MARGIN_PX: int = 12
const CONTENT_EDGE_EXTRA_PX: int = 4
const PLAY_LINE_LEFT_PAD_CHARS_DESKTOP: int = 1
const PLAY_LINE_LEFT_PAD_CHARS_MOBILE: int = 1
const BOTTOM_TABS_TOUCH_MIN_HEIGHT_PX: float = 44.0
const BOTTOM_TABS_FONT_SIZE: int = 16
const BOTTOM_TABS_H_PADDING_PX: int = 8
const BOTTOM_TABS_V_PADDING_PX: int = 6
const TOMB_OVERLAY_VERTICAL_PAD_LINES: int = 0
const TOMB_OVERLAY_ROW_SHIFT: int = -2
const TOMB_OVERLAY_COL_SHIFT: int = 0
const TOMB_OUTLINE_COL_SHIFT: int = 2
const DIRECTION_PAD_BASE_SIZE_PX: float = 156.0
const DIRECTION_PAD_SCALE: float = 1.5
const DIRECTION_PAD_HIT_SLOP_BASE_PX: float = 8.0
const DIRECTION_PAD_HIT_SLOP_BASE_SCALE: float = 1.2
const AUTO_PLAY_FONT_SCALE_MAX: float = 1.8
const MESSAGE_LINE_MIN_FONT_SIZE_MOBILE: int = 16

var _called_name_counter: int = 1
var _loaded_from_autosave: bool = false
var _autosave_load_failed: bool = false
var recent_message_log: Array[String] = []
var potion_color_per_kind: Array[int] = []
var wand_material_per_kind: Array[int] = []
var ring_gem_per_kind: Array[int] = []
var scroll_title_tokens_per_kind: Array = []
var called_name_by_kind: Dictionary = {}
var id_status_by_kind: Dictionary = {}
var _minimap_texture: ImageTexture = ImageTexture.new()
var preferred_language: String = "" # "ja" / "en" / "" (system default)

func _ready() -> void:
	_initialize_rng()
	_apply_root_safe_margins()
	_load_language_preference()
	_load_word_tables()
	_apply_direction_pad_ui_scale()
	_capture_status_line_default_color()
	_capture_play_fonts()
	if message_line_label != null:
		message_line_label.clip_text = true
	if status_line_label != null:
		status_line_label.clip_text = true
	play_text.bbcode_enabled = true
	tomb_overlay_text.bbcode_enabled = true
	tomb_overlay_text.visible = false
	_setup_state()
	_loaded_from_autosave = _try_load_autosave_state()
	if _autosave_load_failed:
		return
	if not _loaded_from_autosave:
		_start_new_level()
	_setup_move_mode_buttons()
	_setup_symbol_legend_button()
	_apply_bottom_tabs_touch_target()
	_disable_keyboard_focus_for_mobile_ui()
	_setup_direction_pad_mode_highlight()
	_setup_inventory_palette_ui()
	_apply_localized_texts()
	_update_recent_message_log_view()
	_update_invincible_button_text()
	if _loaded_from_autosave:
		_queue_message(_ui("message.autosave.resumed", ""))
	else:
		_set_welcome_message()
	_render_play_area()
	pickup_button.pressed.connect(_on_pickup_pressed)
	trap_identify_button.pressed.connect(_on_trap_identify_pressed)
	search_button.pressed.connect(_on_search_pressed)
	search10_button.pressed.connect(_on_search10_pressed)
	rest_button.pressed.connect(_on_rest_pressed)
	rest10_button.pressed.connect(_on_rest10_pressed)
	fight_to_death_button.pressed.connect(_on_fight_to_death_pressed)
	invincible_button.toggled.connect(_on_invincible_toggled)
	interrupt_button.pressed.connect(_on_interrupt_pressed)
	quit_button.pressed.connect(_on_quit_pressed)
	pickup_toggle_button.toggled.connect(_on_pickup_toggle_toggled)
	zap_button.pressed.connect(_on_zap_pressed)
	throw_button.pressed.connect(_on_throw_pressed)
	if symbol_legend_button != null:
		symbol_legend_button.pressed.connect(_on_symbol_legend_pressed)
	if lang_ja_button != null:
		lang_ja_button.pressed.connect(_on_language_ja_pressed)
	if lang_en_button != null:
		lang_en_button.pressed.connect(_on_language_en_pressed)
	symbol_legend_close_button.pressed.connect(_on_symbol_legend_close_pressed)
	item_use_button.pressed.connect(_on_item_use_pressed)
	item_equip_button.pressed.connect(_on_item_call_pressed)
	item_drop_button.pressed.connect(_on_item_drop_pressed)
	weapon_value_label.pressed.connect(func() -> void: _select_equipment_slot(SLOT_WEAPON, true))
	armor_value_label.pressed.connect(func() -> void: _select_equipment_slot(SLOT_ARMOR, true))
	ring_left_value_label.pressed.connect(func() -> void: _select_equipment_slot(SLOT_RING_LEFT, true))
	ring_right_value_label.pressed.connect(func() -> void: _select_equipment_slot(SLOT_RING_RIGHT, true))
	call_name_confirm_button.pressed.connect(_on_call_name_confirm_pressed)
	call_name_cancel_button.pressed.connect(_on_call_name_cancel_pressed)
	call_name_input.text_submitted.connect(_on_call_name_submitted)
	wand_select_confirm_button.pressed.connect(_on_wand_select_confirm_pressed)
	wand_select_cancel_button.pressed.connect(_on_wand_select_cancel_pressed)
	wand_select_list.item_activated.connect(_on_wand_select_item_activated)
	throw_select_confirm_button.pressed.connect(_on_throw_select_confirm_pressed)
	throw_select_cancel_button.pressed.connect(_on_throw_select_cancel_pressed)
	throw_select_list.item_activated.connect(_on_throw_select_item_activated)
	equip_select_confirm_button.pressed.connect(_on_equip_select_confirm_pressed)
	equip_select_cancel_button.pressed.connect(_on_equip_select_cancel_pressed)
	equip_select_list.item_activated.connect(_on_equip_select_item_activated)
	identify_select_confirm_button.pressed.connect(_on_identify_select_confirm_pressed)
	identify_select_cancel_button.pressed.connect(_on_identify_select_cancel_pressed)
	identify_select_list.item_activated.connect(_on_identify_select_item_activated)
	direction_pad_image.gui_input.connect(_on_direction_pad_gui_input)
	play_viewport.gui_input.connect(_on_play_text_gui_input)
	play_text.gui_input.connect(_on_play_text_gui_input)
	inventory_scroll.resized.connect(_on_inventory_scroll_resized)
	play_text.resized.connect(_on_play_text_resized)
	call_deferred("_render_play_area")
	_debug_log_path = ProjectSettings.globalize_path("user://scroll_debug.log")
	_debug_emit("[DEBUG_READY] log_path=%s" % _debug_log_path)
	set_process(true)
	if not tree_exiting.is_connected(_on_tree_exiting_autosave):
		tree_exiting.connect(_on_tree_exiting_autosave)

func _notification(what: int) -> void:
	match what:
		NOTIFICATION_WM_SIZE_CHANGED:
			_apply_root_safe_margins()
		NOTIFICATION_APPLICATION_PAUSED:
			_save_autosave_if_needed()
		NOTIFICATION_APPLICATION_FOCUS_OUT:
			_save_autosave_if_needed()
		NOTIFICATION_WM_CLOSE_REQUEST:
			_save_autosave_if_needed()
		NOTIFICATION_CRASH:
			_save_autosave_if_needed()

func _apply_root_safe_margins() -> void:
	if root_margin == null:
		return

	var left_margin: int = CONTENT_EDGE_MARGIN_PX
	var top_margin: int = CONTENT_EDGE_MARGIN_PX
	var right_margin: int = CONTENT_EDGE_MARGIN_PX
	var bottom_margin: int = CONTENT_EDGE_MARGIN_PX

	var safe_rect: Rect2i = DisplayServer.get_display_safe_area()
	if safe_rect.size.x > 0 and safe_rect.size.y > 0:
		var visible_rect: Rect2 = get_viewport().get_visible_rect()
		var vis_left: int = int(round(visible_rect.position.x))
		var vis_top: int = int(round(visible_rect.position.y))
		var vis_right: int = int(round(visible_rect.position.x + visible_rect.size.x))
		var vis_bottom: int = int(round(visible_rect.position.y + visible_rect.size.y))
		var safe_left: int = safe_rect.position.x
		var safe_top: int = safe_rect.position.y
		var safe_right: int = safe_rect.position.x + safe_rect.size.x
		var safe_bottom: int = safe_rect.position.y + safe_rect.size.y

		left_margin += max(0, safe_left - vis_left)
		top_margin += max(0, safe_top - vis_top)
		right_margin += max(0, vis_right - safe_right)
		bottom_margin += max(0, vis_bottom - safe_bottom)

	left_margin += CONTENT_EDGE_EXTRA_PX
	top_margin += CONTENT_EDGE_EXTRA_PX
	right_margin += CONTENT_EDGE_EXTRA_PX
	bottom_margin += CONTENT_EDGE_EXTRA_PX

	root_margin.add_theme_constant_override("margin_left", left_margin)
	root_margin.add_theme_constant_override("margin_top", top_margin)
	root_margin.add_theme_constant_override("margin_right", right_margin)
	root_margin.add_theme_constant_override("margin_bottom", bottom_margin)

func _to_packed_string_array(value: Variant) -> PackedStringArray:
	var out: PackedStringArray = []
	if value is Array:
		for entry in value:
			out.append(str(entry))
	return out

func _load_word_tables() -> void:
	var path: String = "res://assets/localization/word_tables.json"
	if not FileAccess.file_exists(path):
		return

	var text: String = FileAccess.get_file_as_string(path)
	if text.is_empty():
		return

	var parsed: Variant = JSON.parse_string(text)
	if not (parsed is Dictionary):
		return

	var table: Dictionary = parsed
	POTION_COLORS_JA = _to_packed_string_array(table.get("POTION_COLORS_JA", POTION_COLORS_JA))
	POTION_COLORS_EN = _to_packed_string_array(table.get("POTION_COLORS_EN", POTION_COLORS_EN))
	WEAPON_NAMES_JA = _to_packed_string_array(table.get("WEAPON_NAMES_JA", WEAPON_NAMES_JA))
	WEAPON_NAMES_EN = _to_packed_string_array(table.get("WEAPON_NAMES_EN", WEAPON_NAMES_EN))
	ARMOR_NAMES_JA = _to_packed_string_array(table.get("ARMOR_NAMES_JA", ARMOR_NAMES_JA))
	ARMOR_NAMES_EN = _to_packed_string_array(table.get("ARMOR_NAMES_EN", ARMOR_NAMES_EN))
	WAND_MATERIALS_JA = _to_packed_string_array(table.get("WAND_MATERIALS_JA", WAND_MATERIALS_JA))
	WAND_MATERIALS_EN = _to_packed_string_array(table.get("WAND_MATERIALS_EN", WAND_MATERIALS_EN))
	RING_GEMS_JA = _to_packed_string_array(table.get("RING_GEMS_JA", RING_GEMS_JA))
	RING_GEMS_EN = _to_packed_string_array(table.get("RING_GEMS_EN", RING_GEMS_EN))
	SCROLL_SYLLABLES_JA = _to_packed_string_array(table.get("SCROLL_SYLLABLES_JA", SCROLL_SYLLABLES_JA))
	SCROLL_SYLLABLES_EN = _to_packed_string_array(table.get("SCROLL_SYLLABLES_EN", SCROLL_SYLLABLES_EN))

func _disable_keyboard_focus_for_mobile_ui() -> void:
	# Mobile-first UI: disable focus-based keyboard activation for controls.
	# Keep LineEdit focus so the item naming popup can still accept text input.
	var stack: Array[Node] = [self]
	while not stack.is_empty():
		var node: Node = stack.pop_back()
		for child in node.get_children():
			stack.append(child)
		if node is LineEdit:
			continue
		if node is Control:
			(node as Control).focus_mode = Control.FOCUS_NONE

func _apply_direction_pad_ui_scale() -> void:
	if direction_pad_image == null:
		return
	var scaled_size: float = round(DIRECTION_PAD_BASE_SIZE_PX * DIRECTION_PAD_SCALE)
	direction_pad_image.custom_minimum_size = Vector2(scaled_size, scaled_size)

func _capture_status_line_default_color() -> void:
	if status_line_label == null:
		return
	var fallback: Color = _status_line_default_color
	_status_line_default_color = status_line_label.get_theme_color("font_color", "Label")
	if _status_line_default_color.a <= 0.0:
		_status_line_default_color = fallback

func _capture_play_fonts() -> void:
	if play_text != null:
		_play_text_mono_font = play_text.get_theme_font("normal_font")
		_play_text_mono_font_size = play_text.get_theme_font_size("normal_font_size")
	if message_line_label != null:
		_message_line_ui_font_size = message_line_label.get_theme_font_size("font_size")
	if status_line_label != null:
		_play_text_ui_font = status_line_label.get_theme_font("font")
		_play_text_ui_font_size = status_line_label.get_theme_font_size("font_size")
		_status_line_ui_font_size = _play_text_ui_font_size

func _is_mobile_runtime() -> bool:
	if OS.has_feature("mobile"):
		return true
	var os_name: String = OS.get_name()
	return os_name == "Android" or os_name == "iOS"

func _auto_play_font_scale() -> float:
	# Keep desktop rendering unchanged; this targets mobile readability only.
	if not _is_mobile_runtime():
		return 1.0
	if status_line_label == null or _play_text_ui_font == null:
		return 1.0

	var width_limit: float = status_line_label.size.x
	var viewport: Viewport = get_viewport()
	if viewport != null:
		var visible_w: float = viewport.get_visible_rect().size.x
		if visible_w > 1.0:
			width_limit = min(width_limit, visible_w)
	if width_limit <= 1.0:
		return 1.0

	var status_base_size: int = max(1, _status_line_ui_font_size)
	var left_pad: String = " ".repeat(_play_line_left_pad_chars())
	var status_text: String = left_pad + _get_status_line()
	if status_text.strip_edges().is_empty():
		status_text = left_pad + _primary_status_line_text()
	var status_width: float = _play_text_ui_font.get_string_size(status_text, HORIZONTAL_ALIGNMENT_LEFT, -1, status_base_size).x
	if status_width <= 0.0:
		return 1.0

	var scale: float = width_limit / status_width
	return clamp(scale, 1.0, AUTO_PLAY_FONT_SCALE_MAX)

func _auto_message_font_scale() -> float:
	if not _is_mobile_runtime():
		return 1.0
	if message_line_label == null:
		return 1.0

	var font: Font = message_line_label.get_theme_font("font")
	if font == null:
		return 1.0

	var width_limit: float = _label_available_width_px(message_line_label, _play_line_left_pad_chars())
	var viewport: Viewport = get_viewport()
	if viewport != null:
		var visible_w: float = viewport.get_visible_rect().size.x
		if visible_w > 1.0:
			width_limit = min(width_limit, visible_w)
	if width_limit <= 1.0:
		return 1.0

	var base_size: int = max(1, _message_line_ui_font_size)
	var msg_text: String = _get_message_line_text()
	if msg_text.is_empty():
		return 1.0

	var msg_width: float = font.get_string_size(msg_text, HORIZONTAL_ALIGNMENT_LEFT, -1, base_size).x
	if msg_width <= 0.0:
		return 1.0

	var scale: float = width_limit / msg_width
	return clamp(scale, 1.0, AUTO_PLAY_FONT_SCALE_MAX)

func _apply_play_fonts_for_phase() -> void:
	var play_target_font: Font = _play_text_mono_font
	var play_target_size: int = _play_text_mono_font_size
	var overlay_target_font: Font = _play_text_mono_font
	var overlay_target_size: int = _play_text_mono_font_size
	var auto_scale: float = _auto_play_font_scale()

	if game_over:
		# Map rows are still rendered in death/win message phases, so keep PlayText monospaced.
		if (post_game_phase == "death_message" or post_game_phase == "win_message"):
			play_target_font = _play_text_mono_font
			play_target_size = _play_text_mono_font_size
		elif post_game_phase == "tomb" and _play_text_ui_font != null:
			# Tomb outline is ASCII-art based and must stay monospaced, overlay text needs JP glyphs.
			overlay_target_font = _play_text_ui_font
			overlay_target_size = _play_text_ui_font_size
		elif post_game_phase == "ranking" and _play_text_ui_font != null:
			# Ranking text does not rely on ASCII-art alignment, so prioritize JP readability.
			play_target_font = _play_text_ui_font
			play_target_size = _play_text_ui_font_size

	# Keep map/tomb font metrics unchanged; scale only status/message UI lines.
	var message_scale: float = _auto_message_font_scale()
	var message_line_target_size: int = max(1, int(round(float(_message_line_ui_font_size) * message_scale)))
	var status_line_target_size: int = max(1, int(round(float(_status_line_ui_font_size) * auto_scale)))
	if _is_mobile_runtime():
		message_line_target_size = max(message_line_target_size, MESSAGE_LINE_MIN_FONT_SIZE_MOBILE)

	# Guarantee that the status text fits by reducing only UI line font sizes when needed.
	if _is_mobile_runtime() and status_line_label != null and _play_text_ui_font != null:
		var status_width_limit: float = status_line_label.size.x
		var viewport: Viewport = get_viewport()
		if viewport != null:
			var visible_w: float = viewport.get_visible_rect().size.x
			if visible_w > 1.0:
				status_width_limit = min(status_width_limit, visible_w)
		if status_width_limit > 1.0:
			var left_pad: String = " ".repeat(_play_line_left_pad_chars())
			var status_text: String = left_pad + _primary_status_line_text()
			while status_line_target_size > 1:
				var w: float = _play_text_ui_font.get_string_size(status_text, HORIZONTAL_ALIGNMENT_LEFT, -1, status_line_target_size).x
				if w <= status_width_limit:
					break
				status_line_target_size -= 1

	if play_text != null and play_target_font != null:
		play_text.add_theme_font_override("normal_font", play_target_font)
		play_text.add_theme_font_size_override("normal_font_size", play_target_size)
	if tomb_overlay_text != null and overlay_target_font != null:
		tomb_overlay_text.add_theme_font_override("normal_font", overlay_target_font)
		tomb_overlay_text.add_theme_font_size_override("normal_font_size", overlay_target_size)
	if message_line_label != null:
		message_line_label.add_theme_font_size_override("font_size", message_line_target_size)
	if status_line_label != null:
		status_line_label.add_theme_font_size_override("font_size", status_line_target_size)

func _apply_status_line_hunger_color() -> void:
	if status_line_label == null:
		return

	var color: Color = _status_line_default_color
	if moves_left <= FAINT_THRESHOLD:
		color = Color.from_string(str(COLOR_HEX.get("r", "#ff6b6b")), Color(1.0, 0.42, 0.42, 1.0))
	elif moves_left <= WEAK_THRESHOLD:
		color = Color.from_string(str(COLOR_HEX.get("m", "#d78cff")), Color(0.84, 0.55, 1.0, 1.0))
	elif moves_left <= HUNGRY_THRESHOLD:
		color = Color.from_string(str(COLOR_HEX.get("y", "#ffd24d")), Color(1.0, 0.82, 0.3, 1.0))

	status_line_label.add_theme_color_override("font_color", color)

func _apply_bottom_tabs_touch_target() -> void:
	if bottom_tabs == null:
		return

	bottom_tabs.add_theme_font_size_override("font_size", BOTTOM_TABS_FONT_SIZE)
	var tab_bar: TabBar = bottom_tabs.get_tab_bar()
	if tab_bar == null:
		return

	var min_size: Vector2 = tab_bar.custom_minimum_size
	min_size.y = max(min_size.y, BOTTOM_TABS_TOUCH_MIN_HEIGHT_PX)
	tab_bar.custom_minimum_size = min_size
	tab_bar.add_theme_font_size_override("font_size", BOTTOM_TABS_FONT_SIZE)

	var stylebox_names: PackedStringArray = ["tab_selected", "tab_unselected", "tab_hovered", "tab_disabled"]
	for stylebox_name in stylebox_names:
		var stylebox: StyleBox = tab_bar.get_theme_stylebox(stylebox_name)
		if stylebox is StyleBoxFlat:
			var copy: StyleBoxFlat = (stylebox as StyleBoxFlat).duplicate()
			copy.content_margin_left = max(copy.content_margin_left, float(BOTTOM_TABS_H_PADDING_PX))
			copy.content_margin_right = max(copy.content_margin_right, float(BOTTOM_TABS_H_PADDING_PX))
			copy.content_margin_top = max(copy.content_margin_top, float(BOTTOM_TABS_V_PADDING_PX))
			copy.content_margin_bottom = max(copy.content_margin_bottom, float(BOTTOM_TABS_V_PADDING_PX))
			tab_bar.add_theme_stylebox_override(stylebox_name, copy)

func _setup_symbol_legend_button() -> void:
	if symbol_legend_button == null:
		return
	symbol_legend_button.custom_minimum_size = Vector2(114, 26)
	symbol_legend_button.focus_mode = Control.FOCUS_NONE
	symbol_legend_button.remove_theme_font_size_override("font_size")

	# Keep legend list text at normal readable size.
	if symbol_items_text != null:
		symbol_items_text.add_theme_font_size_override("normal_font_size", 14)
	if symbol_monsters_text != null:
		symbol_monsters_text.add_theme_font_size_override("normal_font_size", 14)

func _position_symbol_legend_button() -> void:
	# Button is statically positioned in the scene under the minimap overlay.
	return

func _initialize_rng() -> void:
	var seed_text: String = OS.get_environment("ROGUE_SEED").strip_edges()
	if not seed_text.is_empty() and seed_text.is_valid_int():
		_rng.seed = int(seed_text)
		_rng_seed_override = seed_text
		return
	_rng.randomize()
	_rng_seed_override = ""

func _on_tree_exiting_autosave() -> void:
	_save_autosave_if_needed()

func _autosave_path() -> String:
	return "user://rogue_autosave.json"

func _save_autosave_if_needed() -> void:
	if game_over:
		_clear_autosave_state()
		return
	_save_autosave_state()

func _save_autosave_state() -> void:
	var f: FileAccess = FileAccess.open(_autosave_path(), FileAccess.WRITE)
	if f == null:
		return
	f.store_string(JSON.stringify(_capture_game_state()))
	f.close()

func _clear_autosave_state() -> void:
	var path: String = _autosave_path()
	if not FileAccess.file_exists(path):
		return
	DirAccess.remove_absolute(ProjectSettings.globalize_path(path))

func _try_load_autosave_state() -> bool:
	var path: String = _autosave_path()
	if not FileAccess.file_exists(path):
		return false

	var text: String = FileAccess.get_file_as_string(path)
	if text.is_empty():
		_autosave_load_failed = true
		_fail_autosave_load(_ui("message.autosave.exists_read_failed", ""))
		return false

	var parsed: Variant = JSON.parse_string(text)
	if not (parsed is Dictionary):
		_autosave_load_failed = true
		_fail_autosave_load(_ui("message.autosave.corrupted", ""))
		return false

	var data: Dictionary = parsed
	if int(data.get("schema", 0)) != 1:
		_autosave_load_failed = true
		_fail_autosave_load(_ui("message.autosave.schema_incompatible", ""))
		return false

	_apply_loaded_game_state(data)
	return true

func _fail_autosave_load(reason: String) -> void:
	var message: String = _uif("message.autosave.resume_failed", "", [reason])
	push_error(message)
	printerr(message)
	get_tree().quit()

func _capture_game_state() -> Dictionary:
	var state: Dictionary = {"schema": 1}
	state.merge(_capture_level_state(), true)
	state.merge(_capture_inventory_and_ui_state(), true)
	state.merge(_capture_player_state(), true)
	state.merge(_capture_status_state(), true)
	return state

func _capture_level_state() -> Dictionary:
	return {
		"cur_level": cur_level,
		"max_level": max_level,
		"random_rooms": random_rooms.duplicate(true),
		"party_room": party_room,
		"party_counter": party_counter,
		"dungeon": dungeon.duplicate(true),
		"rooms": rooms.duplicate(true),
		"rogue_row": rogue_row,
		"rogue_col": rogue_col,
		"view_top_row": view_top_row,
		"view_left_col": view_left_col,
		"cur_room": cur_room,
		"stairs_pos": [stairs_pos.x, stairs_pos.y],
		"monster_glyphs": monster_glyphs.duplicate(true),
		"object_glyphs": object_glyphs.duplicate(true),
		"object_data": object_data.duplicate(true),
		"monster_data": monster_data.duplicate(true),
		"trap_data": trap_data.duplicate(true),
		"map_visible": map_visible.duplicate(true),
		"map_revealed": map_revealed.duplicate(true),
		"rooms_visited": rooms_visited.duplicate(true),
		"spotted_traps": spotted_traps.duplicate(true),
		"foods_generated_on_level": foods_generated_on_level,
		"potion_color_per_kind": potion_color_per_kind.duplicate(true),
		"wand_material_per_kind": wand_material_per_kind.duplicate(true),
		"ring_gem_per_kind": ring_gem_per_kind.duplicate(true),
		"scroll_title_tokens_per_kind": scroll_title_tokens_per_kind.duplicate(true),
		"called_name_by_kind": called_name_by_kind.duplicate(true),
		"id_status_by_kind": id_status_by_kind.duplicate(true),
	}

func _capture_inventory_and_ui_state() -> Dictionary:
	return {
		"inventory_items": inventory_items.duplicate(true),
		"selected_inventory_index": selected_inventory_index,
		"equipped_weapon_index": equipped_weapon_index,
		"equipped_armor_index": equipped_armor_index,
		"equipped_ring_left_index": equipped_ring_left_index,
		"equipped_ring_right_index": equipped_ring_right_index,
		"selected_equipment_slot": selected_equipment_slot,
		"auto_pickup_non_gold_enabled": auto_pickup_non_gold_enabled,
		# Do not persist transient message line/history across autosave resume.
		"top_message": "",
		"message_queue": [],
		"leaderboard_cache": leaderboard_cache.duplicate(true),
	}

func _capture_player_state() -> Dictionary:
	return {
		"player_gold": player_gold,
		"hp_current": hp_current,
		"hp_max": hp_max,
		"str_current": str_current,
		"str_max": str_max,
		"armor_class": armor_class,
		"exp_level": exp_level,
		"exp_points": exp_points,
		"hunger_text": hunger_text,
		"moves_left": moves_left,
		"bear_trap_turns": bear_trap_turns,
		"turn_counter": turn_counter,
		"last_dir_row": last_dir_row,
		"last_dir_col": last_dir_col,
		"stealthy": stealthy,
		"player_confused_turns": player_confused_turns,
		"player_held": player_held,
		"has_amulet": has_amulet,
		"game_over": game_over,
		"game_won": game_won,
		"death_reason": death_reason,
		"death_kind": death_kind,
		"death_monster_name": death_monster_name,
		"death_monster_char": death_monster_char,
		"post_game_phase": post_game_phase,
		"score_recorded": score_recorded,
		"auto_fight_active": auto_fight_active,
		"fight_to_death_enabled": fight_to_death_enabled,
		"invincible_debug_enabled": invincible_debug_enabled,
		"auto_fight_dir_row": auto_fight_dir_row,
		"auto_fight_dir_col": auto_fight_dir_col,
	}

func _capture_status_state() -> Dictionary:
	return {
		"blind": blind,
		"detect_monster": detect_monster,
		"hallucination_turns": hallucination_turns,
		"blind_turns": blind_turns,
		"levitation_turns": levitation_turns,
		"haste_self_turns": haste_self_turns,
		"potion_see_invisible": potion_see_invisible,
		"ring_teleport": ring_teleport,
		"ring_see_invisible": ring_see_invisible,
		"ring_sustain_strength": ring_sustain_strength,
		"ring_maintain_armor": ring_maintain_armor,
		"ring_count": ring_count,
		"ring_energy_load": ring_energy_load,
		"ring_add_strength": ring_add_strength,
		"ring_regeneration": ring_regeneration,
		"ring_exp_bonus": ring_exp_bonus,
		"ring_auto_search": ring_auto_search,
		"_ring_hunger_toggle": _ring_hunger_toggle,
		"_heal_exp_level": _heal_exp_level,
		"_heal_interval": _heal_interval,
		"_heal_counter": _heal_counter,
		"_heal_alt_boost": _heal_alt_boost,
		"nap_remaining_turns": nap_remaining_turns,
		"nap_progress_elapsed": nap_progress_elapsed,
	}

func _apply_loaded_game_state(data: Dictionary) -> void:
	_apply_loaded_level_state(data)
	_apply_loaded_inventory_and_ui_state(data)
	_apply_loaded_player_state(data)
	_apply_loaded_status_state(data)
	_sanitize_loaded_indexes()
	_migrate_called_name_table_from_inventory_if_needed()
	_migrate_id_status_table_from_inventory_if_needed()

	_refresh_ring_effects()
	_sync_armor_class_from_equipment()
	_update_inventory_header()
	_update_equipment_panel()
	_update_stairs_button_text()
	_update_fight_to_death_button_text()
	_update_invincible_button_text()

func _apply_loaded_level_state(data: Dictionary) -> void:
	cur_level = int(data.get("cur_level", 1))
	max_level = int(data.get("max_level", cur_level))
	random_rooms.clear()
	var loaded_random_rooms: Array = data.get("random_rooms", [3, 7, 5, 2, 0, 6, 1, 4, 8])
	for value in loaded_random_rooms:
		random_rooms.append(int(value))
	if random_rooms.size() < MAXROOMS:
		while random_rooms.size() < MAXROOMS:
			random_rooms.append(random_rooms.size())
	elif random_rooms.size() > MAXROOMS:
		random_rooms = random_rooms.slice(0, MAXROOMS)
	party_room = int(data.get("party_room", NO_ROOM))
	party_counter = int(data.get("party_counter", party_counter))
	dungeon = data.get("dungeon", dungeon).duplicate(true)
	rooms = data.get("rooms", rooms).duplicate(true)
	rogue_row = int(data.get("rogue_row", rogue_row))
	rogue_col = int(data.get("rogue_col", rogue_col))
	view_top_row = int(data.get("view_top_row", 0))
	view_left_col = int(data.get("view_left_col", 0))
	cur_room = int(data.get("cur_room", cur_room))
	var stairs_arr: Array = data.get("stairs_pos", [stairs_pos.x, stairs_pos.y])
	if stairs_arr.size() >= 2:
		stairs_pos = Vector2i(int(stairs_arr[0]), int(stairs_arr[1]))
	monster_glyphs = data.get("monster_glyphs", {}).duplicate(true)
	object_glyphs = data.get("object_glyphs", {}).duplicate(true)
	object_data = data.get("object_data", {}).duplicate(true)
	monster_data = data.get("monster_data", {}).duplicate(true)
	trap_data = data.get("trap_data", {}).duplicate(true)
	map_visible = data.get("map_visible", map_visible).duplicate(true)
	map_revealed = data.get("map_revealed", map_revealed).duplicate(true)

	rooms_visited.clear()
	var loaded_rooms_visited: Array = data.get("rooms_visited", [])
	for value in loaded_rooms_visited:
		rooms_visited.append(bool(value))
	if rooms_visited.size() < MAXROOMS:
		while rooms_visited.size() < MAXROOMS:
			rooms_visited.append(false)

	spotted_traps = data.get("spotted_traps", {}).duplicate(true)
	foods_generated_on_level = int(data.get("foods_generated_on_level", 0))

	potion_color_per_kind.clear()
	for value in data.get("potion_color_per_kind", []):
		potion_color_per_kind.append(int(value))
	if potion_color_per_kind.is_empty():
		potion_color_per_kind = _shuffled_index_list(POTION_COLORS_EN.size())

	wand_material_per_kind.clear()
	for value in data.get("wand_material_per_kind", []):
		wand_material_per_kind.append(int(value))
	if wand_material_per_kind.is_empty():
		wand_material_per_kind = _take_unique_indices(WAND_MATERIALS_EN.size(), 10)

	ring_gem_per_kind.clear()
	for value in data.get("ring_gem_per_kind", []):
		ring_gem_per_kind.append(int(value))
	if ring_gem_per_kind.is_empty():
		ring_gem_per_kind = _take_unique_indices(RING_GEMS_EN.size(), 11)

	scroll_title_tokens_per_kind.clear()
	for raw_tokens in data.get("scroll_title_tokens_per_kind", []):
		if raw_tokens is Array:
			var token_list: Array[int] = []
			for token in raw_tokens:
				token_list.append(int(token))
			scroll_title_tokens_per_kind.append(token_list)
	if scroll_title_tokens_per_kind.is_empty():
		for _i in range(12):
			scroll_title_tokens_per_kind.append(_generate_scroll_title_tokens())

	called_name_by_kind = data.get("called_name_by_kind", {}).duplicate(true)
	id_status_by_kind = data.get("id_status_by_kind", {}).duplicate(true)

func _apply_loaded_inventory_and_ui_state(data: Dictionary) -> void:
	inventory_items.clear()
	var loaded_inventory: Array = data.get("inventory_items", [])
	for item in loaded_inventory:
		if item is Dictionary:
			inventory_items.append(item)

	selected_inventory_index = int(data.get("selected_inventory_index", -1))
	equipped_weapon_index = int(data.get("equipped_weapon_index", -1))
	equipped_armor_index = int(data.get("equipped_armor_index", -1))
	equipped_ring_left_index = int(data.get("equipped_ring_left_index", -1))
	equipped_ring_right_index = int(data.get("equipped_ring_right_index", -1))
	selected_equipment_slot = str(data.get("selected_equipment_slot", "weapon"))
	auto_pickup_non_gold_enabled = bool(data.get("auto_pickup_non_gold_enabled", true))
	pickup_toggle_button.button_pressed = not auto_pickup_non_gold_enabled
	top_message = str(data.get("top_message", ""))

	message_queue.clear()
	var loaded_queue: Array = data.get("message_queue", [])
	for msg in loaded_queue:
		message_queue.append(str(msg))

	leaderboard_cache = data.get("leaderboard_cache", []).duplicate(true)

func _apply_loaded_player_state(data: Dictionary) -> void:
	player_gold = int(data.get("player_gold", 0))
	hp_current = int(data.get("hp_current", 12))
	hp_max = int(data.get("hp_max", 12))
	str_current = int(data.get("str_current", 16))
	str_max = int(data.get("str_max", 16))
	armor_class = int(data.get("armor_class", 0))
	exp_level = int(data.get("exp_level", 1))
	exp_points = int(data.get("exp_points", 0))
	hunger_text = str(data.get("hunger_text", ""))
	moves_left = int(data.get("moves_left", 1250))
	bear_trap_turns = int(data.get("bear_trap_turns", 0))
	turn_counter = int(data.get("turn_counter", 0))
	last_dir_row = int(data.get("last_dir_row", 0))
	last_dir_col = int(data.get("last_dir_col", 1))
	stealthy = int(data.get("stealthy", 0))
	player_confused_turns = int(data.get("player_confused_turns", 0))
	player_held = bool(data.get("player_held", false))
	has_amulet = bool(data.get("has_amulet", false))
	game_over = bool(data.get("game_over", false))
	game_won = bool(data.get("game_won", false))
	death_reason = str(data.get("death_reason", ""))
	death_kind = str(data.get("death_kind", ""))
	death_monster_name = str(data.get("death_monster_name", ""))
	death_monster_char = str(data.get("death_monster_char", ""))
	post_game_phase = str(data.get("post_game_phase", ""))
	score_recorded = bool(data.get("score_recorded", false))
	auto_fight_active = bool(data.get("auto_fight_active", false))
	fight_to_death_enabled = bool(data.get("fight_to_death_enabled", false))
	invincible_debug_enabled = bool(data.get("invincible_debug_enabled", false))
	auto_fight_dir_row = int(data.get("auto_fight_dir_row", 0))
	auto_fight_dir_col = int(data.get("auto_fight_dir_col", 0))
	_apply_stat_caps_original()

func _apply_loaded_status_state(data: Dictionary) -> void:
	blind = bool(data.get("blind", false))
	detect_monster = bool(data.get("detect_monster", false))
	hallucination_turns = int(data.get("hallucination_turns", 0))
	blind_turns = int(data.get("blind_turns", 0))
	levitation_turns = int(data.get("levitation_turns", 0))
	haste_self_turns = int(data.get("haste_self_turns", 0))
	potion_see_invisible = bool(data.get("potion_see_invisible", false))
	ring_teleport = bool(data.get("ring_teleport", false))
	ring_see_invisible = bool(data.get("ring_see_invisible", false))
	ring_sustain_strength = bool(data.get("ring_sustain_strength", false))
	ring_maintain_armor = bool(data.get("ring_maintain_armor", false))
	ring_count = int(data.get("ring_count", 0))
	ring_energy_load = int(data.get("ring_energy_load", 0))
	ring_add_strength = int(data.get("ring_add_strength", 0))
	ring_regeneration = int(data.get("ring_regeneration", 0))
	ring_exp_bonus = int(data.get("ring_exp_bonus", 0))
	ring_auto_search = int(data.get("ring_auto_search", 0))
	_ring_hunger_toggle = int(data.get("_ring_hunger_toggle", 0))
	_heal_exp_level = int(data.get("_heal_exp_level", -1))
	_heal_interval = int(data.get("_heal_interval", 2))
	_heal_counter = int(data.get("_heal_counter", 0))
	_heal_alt_boost = bool(data.get("_heal_alt_boost", false))
	nap_remaining_turns = int(data.get("nap_remaining_turns", 0))
	nap_progress_elapsed = float(data.get("nap_progress_elapsed", 0.0))
	_clear_status_locks_if_invincible()

func _clear_status_locks_if_invincible() -> void:
	if not invincible_debug_enabled:
		return
	nap_remaining_turns = 0
	nap_progress_elapsed = 0.0
	player_held = false
	auto_fight_active = false

func _sanitize_loaded_indexes() -> void:
	selected_inventory_index = _sanitize_inventory_index(selected_inventory_index)
	equipped_weapon_index = _sanitize_inventory_index(equipped_weapon_index)
	equipped_armor_index = _sanitize_inventory_index(equipped_armor_index)
	equipped_ring_left_index = _sanitize_inventory_index(equipped_ring_left_index)
	equipped_ring_right_index = _sanitize_inventory_index(equipped_ring_right_index)

	if selected_equipment_slot not in EQUIPMENT_SLOTS:
		selected_equipment_slot = SLOT_WEAPON

func _sanitize_inventory_index(index: int) -> int:
	if not _is_valid_inventory_index(index):
		return -1
	return index

func _is_valid_inventory_index(index: int) -> bool:
	return index >= 0 and index < inventory_items.size()

func _process(delta: float) -> void:
	if symbol_legend_popup.visible:
		return
	_process_nap_progress(delta)
	if nap_remaining_turns > 0:
		return
	if auto_fight_active:
		_auto_fight_tick()

func _process_nap_progress(delta: float) -> void:
	if nap_remaining_turns <= 0:
		nap_progress_elapsed = 0.0
		return

	nap_progress_elapsed += max(0.0, delta)
	if nap_progress_elapsed < NAP_PROGRESS_INTERVAL_SECONDS:
		return
	nap_progress_elapsed -= NAP_PROGRESS_INTERVAL_SECONDS

	if game_over:
		nap_remaining_turns = 0
		nap_progress_elapsed = 0.0
		return

	_monster_turn()
	_release_hold_if_needed()
	nap_remaining_turns = max(0, nap_remaining_turns - 1)
	_render_play_area()

	if game_over:
		nap_remaining_turns = 0
		nap_progress_elapsed = 0.0
		return

	if nap_remaining_turns <= 0:
		nap_progress_elapsed = 0.0
		_queue_message(_msg(MSG_CAN_MOVE_AGAIN, "You can move again"))
		_render_play_area()

func _is_haste_skipping_monsters() -> bool:
	return haste_self_turns > 0 and (haste_self_turns % 2) == 1

func set_debug_logs_enabled(enabled: bool) -> void:
	debug_logs_enabled = enabled
	if debug_logs_enabled:
		_debug_emit("[DEBUG_TOGGLE] enabled")

func _is_japanese_locale() -> bool:
	if preferred_language == "ja":
		return true
	if preferred_language == "en":
		return false

	var language: String = ""

	# Prefer OS locale (Android/iOS/desktop) over TranslationServer locale.
	if OS.has_method("get_locale_language"):
		language = String(OS.get_locale_language()).to_lower()

	if language.is_empty():
		var os_locale: String = String(OS.get_locale()).to_lower()
		if os_locale.length() >= 2:
			language = os_locale.substr(0, 2)

	if language.is_empty():
		var tr_locale: String = String(TranslationServer.get_locale()).to_lower()
		if tr_locale.length() >= 2:
			language = tr_locale.substr(0, 2)

	return language == "ja"

func _apply_localized_texts() -> void:
	_load_localized_ui_texts()
	_load_localized_messages()
	_clear_object_display_name_cache()
	_relocalize_inventory_item_names()
	_relocalize_hunger_status_text()
	var is_ja: bool = _is_japanese_locale()

	var controls_tab_index: int = bottom_tabs.get_tab_idx_from_control(controls_tab)
	var equipment_tab_index: int = bottom_tabs.get_tab_idx_from_control(equipment_tab)
	var inventory_tab_index: int = bottom_tabs.get_tab_idx_from_control(inventory_tab)
	var log_tab_index: int = bottom_tabs.get_tab_idx_from_control(log_tab)

	_apply_tab_titles_localized(is_ja, controls_tab_index, equipment_tab_index, inventory_tab_index, log_tab_index)
	_update_move_mode_button_labels()
	_apply_action_labels_localized(is_ja)
	_apply_equipment_labels_localized(is_ja)
	_apply_log_labels_localized(is_ja)
	# Rebuild visible inventory button labels after item names are relocalized.
	_refresh_inventory_palette()
	_update_inventory_header()
	_apply_inventory_action_labels_localized(is_ja)
	_update_equipment_panel()
	_apply_popup_labels_localized(is_ja)
	_update_language_buttons()

func _relocalize_hunger_status_text() -> void:
	if moves_left <= FAINT_THRESHOLD:
		hunger_text = _msg(MSG_FAINT, "Faint")
	elif moves_left <= WEAK_THRESHOLD:
		hunger_text = _msg(MSG_WEAK, "Weak")
	elif moves_left <= HUNGRY_THRESHOLD:
		hunger_text = _msg(MSG_HUNGRY, "Hungry")
	else:
		hunger_text = ""

func _clear_object_display_name_cache() -> void:
	# Object display names are language-dependent cache values.
	# Clear them so they are rebuilt in the currently selected language.
	for key in object_data.keys():
		var info: Variant = object_data.get(key)
		if info is Dictionary:
			var dict_info: Dictionary = info
			if dict_info.has("display_name"):
				dict_info.erase("display_name")
				object_data[key] = dict_info

func _relocalize_inventory_item_names() -> void:
	for i in range(inventory_items.size()):
		var item: Variant = inventory_items[i]
		if not (item is Dictionary):
			continue
		var entry: Dictionary = item
		var kind: String = str(entry.get("kind", KIND_ITEM))
		var which_kind: int = int(entry.get("which_kind", -1))

		entry["unknown_name"] = _localized_unknown_name_for_inventory_item(kind, which_kind)
		entry["identified_name"] = _localized_identified_name_for_inventory_item(kind, which_kind, str(entry.get("unknown_name", "")))

		# Keep the canonical name in sync with localized identified name.
		# Display formatting (enchant values, quantity, called-name suffix) is applied later.
		entry["name"] = str(entry.get("identified_name", ""))
		inventory_items[i] = entry

func _localized_unknown_name_for_inventory_item(kind: String, which_kind: int) -> String:
	match kind:
		KIND_POTION:
			var color_kind: int = which_kind
			if which_kind >= 0 and which_kind < potion_color_per_kind.size():
				color_kind = int(potion_color_per_kind[which_kind])
			var color_name: String = _word_by_kind(POTION_COLORS_EN, POTION_COLORS_JA, color_kind)
			return _uif("item.potion.color", "%s potion", [color_name])
		KIND_SCROLL:
			return _uif("item.scroll.entitled", "scroll entitled %s", [_scroll_title_for_kind(which_kind)])
		KIND_WAND:
			var material_kind: int = which_kind
			if which_kind >= 0 and which_kind < wand_material_per_kind.size():
				material_kind = int(wand_material_per_kind[which_kind])
			var wand_material: String = _word_by_kind(WAND_MATERIALS_EN, WAND_MATERIALS_JA, material_kind)
			return _uif("item.wand.material", "%s wand", [wand_material])
		KIND_RING:
			var gem_kind: int = which_kind
			if which_kind >= 0 and which_kind < ring_gem_per_kind.size():
				gem_kind = int(ring_gem_per_kind[which_kind])
			var ring_gem: String = _word_by_kind(RING_GEMS_EN, RING_GEMS_JA, gem_kind)
			return _uif("item.ring.gem", "%s ring", [ring_gem])
		KIND_WEAPON:
			return _word_by_kind(WEAPON_NAMES_EN, WEAPON_NAMES_JA, which_kind)
		KIND_ARMOR:
			return _word_by_kind(ARMOR_NAMES_EN, ARMOR_NAMES_JA, which_kind)
		KIND_FOOD:
			return _ui("item.food", "")
		KIND_AMULET:
			return _msg(27, "the Amulet of Yendor")
		_:
			return _ui("item.unknown", "")

func _localized_identified_name_for_inventory_item(kind: String, which_kind: int, unknown_name: String) -> String:
	match kind:
		KIND_SCROLL, KIND_POTION, KIND_WAND, KIND_RING:
			return _identified_name_for_item(kind, which_kind, _ui("item.unknown", "item"))
		KIND_FOOD:
			return _ui("item.food", "food")
		KIND_AMULET:
			return _msg(27, "the Amulet of Yendor")
		KIND_WEAPON, KIND_ARMOR:
			return unknown_name
		_:
			return unknown_name

func _settings_path() -> String:
	return "user://rogue_settings.cfg"

func _load_language_preference() -> void:
	preferred_language = ""
	var cfg := ConfigFile.new()
	if cfg.load(_settings_path()) != OK:
		return
	var lang: String = str(cfg.get_value("ui", "language", "")).to_lower()
	if lang == "ja" or lang == "en":
		preferred_language = lang

func _save_language_preference() -> void:
	var cfg := ConfigFile.new()
	cfg.set_value("ui", "language", preferred_language)
	cfg.save(_settings_path())

func _set_preferred_language(lang: String) -> void:
	var normalized: String = lang.to_lower()
	if normalized != "ja" and normalized != "en":
		return
	if preferred_language == normalized:
		_update_language_buttons()
		return
	preferred_language = normalized
	_save_language_preference()
	_apply_localized_texts()
	_render_play_area()

func _on_language_ja_pressed() -> void:
	_set_preferred_language("ja")

func _on_language_en_pressed() -> void:
	_set_preferred_language("en")

func _update_language_buttons() -> void:
	if lang_ja_button == null or lang_en_button == null:
		return
	var is_ja: bool = _is_japanese_locale()
	if is_ja:
		lang_ja_button.text = _ui("lang.button.ja.active", "")
		lang_en_button.text = _ui("lang.button.en.active", "")
	else:
		lang_ja_button.text = _ui("lang.button.ja.inactive", "")
		lang_en_button.text = _ui("lang.button.en.inactive", "")
	lang_ja_button.button_pressed = is_ja
	lang_en_button.button_pressed = not is_ja
	_set_toggle_button_emphasis(lang_ja_button, is_ja)
	_set_toggle_button_emphasis(lang_en_button, not is_ja)

func _apply_tab_titles_localized(is_ja: bool, controls_tab_index: int, equipment_tab_index: int, inventory_tab_index: int, log_tab_index: int) -> void:
	bottom_tabs.set_tab_title(controls_tab_index, _ui("tab.controls", "Controls"))
	bottom_tabs.set_tab_title(equipment_tab_index, _ui("tab.equipment", "Equipment"))
	bottom_tabs.set_tab_title(inventory_tab_index, _ui("tab.inventory", "Inventory"))
	bottom_tabs.set_tab_title(log_tab_index, _ui("tab.log", "Log"))

func _apply_log_labels_localized(is_ja: bool) -> void:
	log_header_label.visible = false

func _apply_action_labels_localized(is_ja: bool) -> void:
	pickup_button.text = _ui("action.pickup", "Pickup")
	trap_identify_button.text = _ui("action.trap_identify", "Trap ID")
	rest_button.text = _ui("action.rest", "Rest")
	search_button.text = _ui("action.search", "Search")
	search10_button.text = _ui("action.search10", "Search x10")
	rest10_button.text = _ui("action.rest10", "Rest x10")
	invincible_button.text = _ui("action.invincible", "Invincible")
	interrupt_button.text = _ui("action.interrupt", "Interrupt")
	quit_button.text = _ui("action.quit", "Quit")
	zap_button.text = _ui("action.zap", "Zap")
	throw_button.text = _ui("action.throw", "Throw")
	if symbol_legend_button != null:
		symbol_legend_button.text = _ui("symbol.button", "Symbols")
	symbol_legend_title_label.text = _ui("symbol.title", "Symbol Legend")
	symbol_legend_tabs.set_tab_title(symbol_legend_tabs.get_tab_idx_from_control(symbol_items_tab), _ui("symbol.tab.items", "Items"))
	symbol_legend_tabs.set_tab_title(symbol_legend_tabs.get_tab_idx_from_control(symbol_monsters_tab), _ui("symbol.tab.monsters", "Monsters"))
	symbol_legend_close_button.text = _ui("symbol.close", "Close")
	_update_pickup_toggle_button_text(is_ja)
	symbol_items_text.text = _build_symbol_item_legend_text()
	symbol_monsters_text.text = _build_symbol_monster_legend_text()
	_update_fight_to_death_button_text()
	_update_invincible_button_text()

func _update_pickup_toggle_button_text(is_ja: bool) -> void:
	var dont_pickup_enabled: bool = pickup_toggle_button.button_pressed
	pickup_toggle_button.text = _ui("action.pickup_toggle", "No Pickup")
	_set_toggle_button_emphasis(pickup_toggle_button, dont_pickup_enabled)

func _on_symbol_legend_pressed() -> void:
	if _prepare_message_for_new_input():
		return
	symbol_items_text.text = _build_symbol_item_legend_text()
	symbol_monsters_text.text = _build_symbol_monster_legend_text()
	symbol_legend_popup.popup_centered()

func _on_symbol_legend_close_pressed() -> void:
	symbol_legend_popup.hide()

func _legend_symbol_bbcode(ch: String) -> String:
	return "[b]%s[/b]" % _apply_char_color(ch)

func _build_symbol_item_legend_text() -> String:
	var symbols: PackedStringArray = PackedStringArray(["@", ".", "|", "-", "+", "#", "%", "^", "*", ":", "]", ")", "?", "!", "/", "=", ","])
	var fallback_desc: PackedStringArray = PackedStringArray([
		"You",
		"floor of a room",
		"wall of a room",
		"wall of a room",
		"door",
		"passage",
		"staircase",
		"secret trap",
		"a pile or pot of gold",
		"food ration",
		"an armor",
		"a weapon",
		"a scroll",
		"a potion",
		"a wand or a staff",
		"a ring",
		"the Amulet of Yendor",
	])
	var desc: PackedStringArray = PackedStringArray()
	for i in range(symbols.size()):
		desc.append(_msg(138 + i, fallback_desc[i]))

	var half: int = int(ceil(float(symbols.size()) / 2.0))
	var table_text: String = "[table=4]"
	for i in range(half):
		var left_text: String = "%s  %s" % [_legend_symbol_bbcode(symbols[i]), desc[i]]
		var right_index: int = i + half
		var right_text: String = ""
		if right_index < symbols.size():
			right_text = "%s  %s" % [_legend_symbol_bbcode(symbols[right_index]), desc[right_index]]
		table_text += "[cell]%s[/cell][cell]    [/cell][cell]%s[/cell][cell][/cell]" % [left_text, right_text]
	table_text += "[/table]"
	return table_text

func _build_symbol_monster_legend_text() -> String:
	var fallback_monster_names: PackedStringArray = PackedStringArray([
		"Aquator",
		"Bat",
		"Centaur",
		"Dragon",
		"Emu",
		"Venus fly-trap",
		"Griffin",
		"Hobgoblin",
		"Ice monster",
		"Jabberwock",
		"Kestrel",
		"Leprechaun",
		"Medusa",
		"Nymph",
		"Orc",
		"Phantom",
		"Quagga",
		"Rattlesnake",
		"Snake",
		"Troll",
		"Black unicorn",
		"Vampire",
		"Wraith",
		"Xeroc",
		"Yeti",
		"Zombie",
	])

	var entries: PackedStringArray = PackedStringArray()
	for i in range(26):
		var letter_code: int = "A".unicode_at(0) + i
		var letter: String = String.chr(letter_code)
		var name: String = _msg(307 + i, fallback_monster_names[i])
		entries.append("%s  %s" % [_legend_symbol_bbcode(letter), name])

	var col_size: int = int(ceil(float(entries.size()) / 3.0))
	var table_text: String = "[table=6]"
	for row in range(col_size):
		var c1: String = entries[row]
		var c2: String = entries[row + col_size] if row + col_size < entries.size() else ""
		var c3: String = entries[row + (col_size * 2)] if row + (col_size * 2) < entries.size() else ""
		table_text += "[cell]%s[/cell][cell]   [/cell][cell]%s[/cell][cell]   [/cell][cell]%s[/cell][cell][/cell]" % [c1, c2, c3]
	table_text += "[/table]"
	return table_text

func _monster_fallback_name_by_letter(ch: String) -> String:
	var fallback_monster_names: PackedStringArray = PackedStringArray([
		"Aquator",
		"Bat",
		"Centaur",
		"Dragon",
		"Emu",
		"Venus fly-trap",
		"Griffin",
		"Hobgoblin",
		"Ice monster",
		"Jabberwock",
		"Kestrel",
		"Leprechaun",
		"Medusa",
		"Nymph",
		"Orc",
		"Phantom",
		"Quagga",
		"Rattlesnake",
		"Snake",
		"Troll",
		"Black unicorn",
		"Vampire",
		"Wraith",
		"Xeroc",
		"Yeti",
		"Zombie",
	])

	if ch.length() != 1:
		return ch
	if ch[0] < "A" or ch[0] > "Z":
		return ch

	var idx: int = ch.unicode_at(0) - "A".unicode_at(0)
	if idx < 0 or idx >= fallback_monster_names.size():
		return ch
	return fallback_monster_names[idx]

func _apply_equipment_labels_localized(is_ja: bool) -> void:
	equipment_header_label.text = _ui("equipment.header", "Current Equipment")
	weapon_label.text = _ui("equipment.weapon", "Weapon")
	armor_label.text = _ui("equipment.armor", "Armor")
	ring_left_label.text = _ui("equipment.ring_left", "Ring L")
	ring_right_label.text = _ui("equipment.ring_right", "Ring R")

func _apply_inventory_action_labels_localized(is_ja: bool) -> void:
	item_use_button.text = _ui("inventory.action.use", "Use")
	item_equip_button.text = _ui("inventory.action.name", "Name")
	item_drop_button.text = _ui("inventory.action.drop", "Drop")

func _apply_popup_labels_localized(is_ja: bool) -> void:
	call_name_title_label.text = _ui("popup.call_name.title", "Name this item")
	call_name_input.placeholder_text = _ui("popup.call_name.placeholder", "Enter name")
	call_name_cancel_button.text = _ui("popup.common.cancel", "Cancel")
	call_name_confirm_button.text = _ui("popup.call_name.confirm", "OK")
	wand_select_title_label.text = _ui("popup.wand_select.title", "Which wand do you want to zap with?")
	wand_select_cancel_button.text = _ui("popup.common.cancel", "Cancel")
	wand_select_confirm_button.text = _ui("popup.wand_select.confirm", "Use")
	throw_select_title_label.text = _ui("popup.throw_select.title", "What do you want to throw?")
	throw_select_cancel_button.text = _ui("popup.common.cancel", "Cancel")
	throw_select_confirm_button.text = _ui("popup.throw_select.confirm", "Throw")
	equip_select_title_label.text = _ui("popup.equip_select.title", "Choose item to equip")
	equip_select_cancel_button.text = _ui("popup.common.cancel", "Cancel")
	equip_select_confirm_button.text = _ui("popup.equip_select.confirm", "Equip")
	identify_select_title_label.text = _ui("popup.identify_select.title", "What would you like to identify?")
	identify_select_cancel_button.text = _ui("popup.common.cancel", "Cancel")
	identify_select_confirm_button.text = _ui("popup.identify_select.confirm", "Identify")

func _update_inventory_header() -> void:
	inventory_header_label.text = _uif("inventory.header", "Inventory %d / %d", [inventory_count, MAX_PACK_COUNT])

	if selected_inventory_index >= 0 and selected_inventory_index < inventory_items.size():
		inventory_selected_detail_label.text = _inventory_display_name(inventory_items[selected_inventory_index])
	else:
		inventory_selected_detail_label.text = ""

func _setup_inventory_palette_ui() -> void:
	inventory_slot_buttons.clear()
	for child in inventory_grid.get_children():
		if child is Button:
			var button: Button = child as Button
			button.toggle_mode = true
			button.clip_text = true
			inventory_slot_buttons.append(button)

	for i in range(inventory_slot_buttons.size()):
		var slot_index: int = i
		inventory_slot_buttons[i].pressed.connect(func() -> void:
			_on_inventory_slot_pressed(slot_index)
		)

	_update_inventory_grid_columns()
	_update_inventory_slot_widths()
	_refresh_inventory_palette()

func _on_inventory_scroll_resized() -> void:
	_update_inventory_slot_widths()

func _update_inventory_grid_columns() -> void:
	var target_columns: int = 2
	if inventory_grid.columns != target_columns:
		inventory_grid.columns = target_columns

func _update_inventory_slot_widths() -> void:
	var columns: int = max(1, inventory_grid.columns)
	var h_sep: int = inventory_grid.get_theme_constant("h_separation")
	var available_width: float = max(1.0, inventory_scroll.size.x)
	var slot_width: float = floor((available_width - float(h_sep * (columns - 1))) / float(columns))
	slot_width = max(24.0, slot_width)

	for button in inventory_slot_buttons:
		button.custom_minimum_size = Vector2(slot_width, 36)

func _on_inventory_slot_pressed(index: int) -> void:
	if not _is_valid_inventory_index(index):
		return
	selected_inventory_index = index
	_refresh_inventory_palette()

func _refresh_inventory_palette() -> void:
	_normalize_inventory_items()
	inventory_count = _pack_count_with_candidate({})
	if inventory_items.is_empty():
		selected_inventory_index = -1
	elif selected_inventory_index < 0 or selected_inventory_index >= inventory_items.size():
		selected_inventory_index = 0

	_update_inventory_grid_columns()
	_update_inventory_slot_widths()

	for i in range(inventory_slot_buttons.size()):
		var button: Button = inventory_slot_buttons[i]
		if i < inventory_items.size():
			var item: Dictionary = inventory_items[i]
			button.visible = true
			button.disabled = false
			button.text = _inventory_display_name(item)
			_apply_inventory_item_text_color(button, item)
			button.button_pressed = (i == selected_inventory_index)
			_set_toggle_button_emphasis(button, i == selected_inventory_index)
		else:
			button.visible = false
			button.disabled = true
			button.button_pressed = false

	_update_inventory_header()
	_update_inventory_action_buttons()

func _normalize_inventory_items() -> void:
	if inventory_items.is_empty():
		return

	var old_selected_index: int = selected_inventory_index
	var old_weapon_index: int = equipped_weapon_index
	var old_armor_index: int = equipped_armor_index
	var old_ring_left_index: int = equipped_ring_left_index
	var old_ring_right_index: int = equipped_ring_right_index

	var grouped: Array[Dictionary] = []
	for i in range(inventory_items.size()):
		var item: Dictionary = inventory_items[i]
		var merged: bool = false
		if _is_inventory_merge_target(item):
			for g in grouped:
				if _can_merge_inventory_entries(item, g["item"]):
					var merged_item: Dictionary = g["item"]
					if str(merged_item.get("kind", KIND_ITEM)) == KIND_FOOD:
						var merged_kinds: Array[int] = _food_kind_list_from_item(merged_item)
						merged_kinds.append_array(_food_kind_list_from_item(item))
						merged_item["food_stack_kinds"] = merged_kinds
						if not merged_kinds.is_empty():
							merged_item["which_kind"] = int(merged_kinds[0])
					merged_item["quantity"] = max(1, int(merged_item.get("quantity", 1))) + max(1, int(item.get("quantity", 1)))
					g["item"] = merged_item
					var old_indexes: Array = g["old_indexes"]
					old_indexes.append(i)
					g["old_indexes"] = old_indexes
					merged = true
					break
		if merged:
			continue
		grouped.append({
			"item": item,
			"old_indexes": [i],
		})

	grouped.sort_custom(func(a: Dictionary, b: Dictionary) -> bool:
		var a_item: Dictionary = a["item"]
		var b_item: Dictionary = b["item"]
		var ak: int = _inventory_kind_sort_key(str(a_item.get("kind", KIND_ITEM)))
		var bk: int = _inventory_kind_sort_key(str(b_item.get("kind", KIND_ITEM)))
		if ak != bk:
			return ak < bk
		var aw: int = int(a_item.get("which_kind", -1))
		var bw: int = int(b_item.get("which_kind", -1))
		if aw != bw:
			return aw < bw
		return _inventory_display_name(a_item) < _inventory_display_name(b_item)
	)

	var old_to_new: Dictionary = {}
	var new_items: Array[Dictionary] = []
	for ni in range(grouped.size()):
		var group: Dictionary = grouped[ni]
		new_items.append(group["item"])
		var old_indexes: Array = group["old_indexes"]
		for old_idx in old_indexes:
			old_to_new[int(old_idx)] = ni

	inventory_items = new_items
	selected_inventory_index = _remap_inventory_index(old_selected_index, old_to_new)
	equipped_weapon_index = _remap_inventory_index(old_weapon_index, old_to_new)
	equipped_armor_index = _remap_inventory_index(old_armor_index, old_to_new)
	equipped_ring_left_index = _remap_inventory_index(old_ring_left_index, old_to_new)
	equipped_ring_right_index = _remap_inventory_index(old_ring_right_index, old_to_new)

func _inventory_kind_sort_key(kind: String) -> int:
	match kind:
		KIND_FOOD:
			return 0
		KIND_SCROLL:
			return 1
		KIND_POTION:
			return 2
		KIND_WAND:
			return 3
		KIND_RING:
			return 4
		KIND_WEAPON:
			return 5
		KIND_ARMOR:
			return 6
		KIND_AMULET:
			return 7
		KIND_GOLD:
			return 8
		_:
			return 9

func _is_inventory_merge_target(item: Dictionary) -> bool:
	var kind: String = str(item.get("kind", KIND_ITEM))
	if kind == KIND_WEAPON:
		return _is_stackable_thrown_weapon_kind(int(item.get("which_kind", -1)))
	return kind == KIND_FOOD or kind == KIND_SCROLL or kind == KIND_POTION

func _can_merge_inventory_entries(a: Dictionary, b: Dictionary) -> bool:
	var kind_a: String = str(a.get("kind", KIND_ITEM))
	var kind_b: String = str(b.get("kind", KIND_ITEM))
	if kind_a != kind_b:
		return false
	if kind_a == KIND_FOOD:
		var food_kind_a: int = int(a.get("which_kind", 0))
		var food_kind_b: int = int(b.get("which_kind", 0))
		if food_kind_a != food_kind_b:
			return false
		return food_kind_a != 1
	if kind_a == KIND_WEAPON:
		var which_kind_a: int = int(a.get("which_kind", -1))
		var which_kind_b: int = int(b.get("which_kind", -1))
		if which_kind_a != which_kind_b:
			return false
		if not _is_stackable_thrown_weapon_kind(which_kind_a):
			return false
		return int(a.get("quiver", -1)) == int(b.get("quiver", -1))
	if int(a.get("which_kind", -1)) != int(b.get("which_kind", -1)):
		return false
	return true

func _pack_count_with_candidate(info: Dictionary) -> int:
	var count: int = 0
	for item in inventory_items:
		count += _pack_units_for_inventory_item(item)
	if not info.is_empty():
		count += _pack_units_for_candidate_info(info)
	return count

func _pack_units_for_inventory_item(item: Dictionary) -> int:
	var kind: String = str(item.get("kind", KIND_ITEM))
	if kind == KIND_WEAPON:
		return 1
	return max(1, int(item.get("quantity", 1)))

func _pack_units_for_candidate_info(info: Dictionary) -> int:
	var kind: String = str(info.get("kind", KIND_ITEM))
	if kind == KIND_GOLD:
		return 0
	if kind == KIND_WEAPON:
		return 0 if _find_pickup_merge_target_index(info) >= 0 else 1
	return max(1, int(info.get("quantity", 1)))

func _food_kind_list_from_item(item: Dictionary) -> Array[int]:
	var kinds: Array[int] = []
	if str(item.get("kind", KIND_ITEM)) != KIND_FOOD:
		return kinds

	var raw_kinds: Variant = item.get("food_stack_kinds", null)
	if raw_kinds is Array:
		for value in raw_kinds:
			kinds.append(int(value))

	var quantity: int = max(1, int(item.get("quantity", 1)))
	if kinds.is_empty():
		var which_kind: int = int(item.get("which_kind", 0))
		for _i in range(quantity):
			kinds.append(which_kind)
	elif kinds.size() < quantity:
		var fill_kind: int = int(item.get("which_kind", int(kinds[0]) if not kinds.is_empty() else 0))
		for _i in range(quantity - kinds.size()):
			kinds.append(fill_kind)
	elif kinds.size() > quantity:
		kinds.resize(quantity)

	return kinds

func _remap_inventory_index(old_index: int, old_to_new: Dictionary) -> int:
	if old_index < 0:
		return -1
	if old_to_new.has(old_index):
		return int(old_to_new[old_index])
	return -1

func _is_unidentified_inventory_item(item: Dictionary) -> bool:
	var kind: String = str(item.get("kind", KIND_ITEM))
	if not (kind in CALLABLE_ITEM_KINDS):
		return false
	return int(item.get("id_status", ID_IDENTIFIED)) != ID_IDENTIFIED

func _apply_inventory_item_text_color(button: Button, item: Dictionary) -> void:
	const FONT_COLOR_KEYS: PackedStringArray = [
		"font_color",
		"font_focus_color",
		"font_hover_color",
		"font_hover_pressed_color",
		"font_pressed_color",
		"font_disabled_color",
	]
	var has_override: bool = false
	var target_color: Color = Color(1.0, 1.0, 1.0, 1.0)

	if _is_item_cursed(item) and _is_curse_known(item):
		target_color = Color.from_string(str(COLOR_HEX.get("r", "#ff6b6b")), Color(1.0, 0.42, 0.42, 1.0))
		has_override = true
	elif _is_unidentified_inventory_item(item):
		target_color = Color.from_string(_theme_color_at(3), Color(1.0, 0.82, 0.3, 1.0))
		has_override = true

	if not has_override:
		for key in FONT_COLOR_KEYS:
			button.remove_theme_color_override(key)
		return

	for key in FONT_COLOR_KEYS:
		button.add_theme_color_override(key, target_color)

func _can_call_item(item: Dictionary) -> bool:
	if item.is_empty():
		return false
	var kind: String = str(item.get("kind", "item"))
	if not (kind in CALLABLE_ITEM_KINDS):
		return false
	return int(item.get("id_status", ID_UNIDENTIFIED)) != ID_IDENTIFIED

func _update_inventory_action_buttons() -> void:
	var item: Dictionary = _get_selected_inventory_item()
	item_equip_button.disabled = not _can_call_item(item)

func _inventory_display_name(item: Dictionary) -> String:
	var id_status: int = int(item.get("id_status", ID_IDENTIFIED))
	var kind: String = str(item.get("kind", "item"))
	var quantity: int = max(1, int(item.get("quantity", 1)))
	if kind in CALLABLE_ITEM_KINDS:
		if id_status == ID_IDENTIFIED:
			var resolved_name: String = _identified_name_for_item(kind, int(item.get("which_kind", -1)), str(item.get("identified_name", _ui("item.unknown", "item"))))
			return _name_with_quantity(resolved_name, quantity)
		var which_kind: int = int(item.get("which_kind", -1))
		var call_name: String = _called_name_for_kind(kind, which_kind)
		if call_name.is_empty() and id_status == ID_CALLED:
			call_name = str(item.get("called_name", ""))
			if not call_name.is_empty():
				_set_called_name_for_kind(kind, which_kind, call_name)
		if not call_name.is_empty():
			var kind_name: String = _called_item_kind_name(kind)
			if _is_japanese_locale():
				return _name_with_quantity(_uif("item.called_format", "%sと呼ぶ%s", [call_name, kind_name]), quantity)
			return _name_with_quantity(_uif("item.called_format", "%s - %s", [call_name, kind_name]), quantity)
		return _name_with_quantity(str(item.get("unknown_name", _ui("item.unknown", "item"))), quantity)

	if kind == KIND_ARMOR and id_status == ID_IDENTIFIED:
		return _name_with_quantity(_armor_identified_display_name(item), quantity)

	if kind == KIND_WEAPON:
		return _name_with_quantity(_weapon_identified_display_name(item), quantity)

	return _name_with_quantity(str(item.get("name", _ui("item.unknown", "item"))), quantity)

func _called_item_kind_name(kind: String) -> String:
	match kind:
		KIND_SCROLL:
			return _ui("item.scroll.generic", "巻物")
		KIND_POTION:
			return _ui("item.potion.generic", "薬")
		KIND_WAND:
			return _ui("item.wand.generic", "杖")
		KIND_RING:
			return _ui("item.ring.generic", "指輪")
		_:
			return _ui("item.generic", "アイテム")

func _armor_identified_display_name(item: Dictionary) -> String:
	var base_name: String = str(item.get("identified_name", item.get("name", _ui("slot.armor", "armor"))))
	var enchant: int = int(item.get("d_enchant", 0))
	var armor_value: int = int(item.get("class", _base_armor_class_for_kind(int(item.get("which_kind", 0))))) + enchant
	return "%+d %s [%d]" % [enchant, base_name, armor_value]

func _weapon_identified_display_name(item: Dictionary) -> String:
	var base_name: String = str(item.get("identified_name", item.get("name", _ui("slot.weapon", "weapon"))))
	var hit_enchant: int = int(item.get("hit_enchant", 0))
	var damage_enchant: int = int(item.get("d_enchant", 0))
	return "%+d, %+d %s" % [hit_enchant, damage_enchant, base_name]

func _name_with_quantity(base_name: String, quantity: int) -> String:
	if quantity <= 1:
		return base_name
	return "%d x %s" % [quantity, base_name]

func _get_selected_inventory_item() -> Dictionary:
	if selected_inventory_index < 0 or selected_inventory_index >= inventory_items.size():
		return {}
	return inventory_items[selected_inventory_index]

func _set_selected_inventory_item(item: Dictionary) -> void:
	if selected_inventory_index < 0 or selected_inventory_index >= inventory_items.size():
		return
	inventory_items[selected_inventory_index] = item
	_refresh_inventory_palette()

func _wand_inventory_indexes() -> Array[int]:
	var indexes: Array[int] = []
	for i in range(inventory_items.size()):
		if str(inventory_items[i].get("kind", "")) == "wand":
			indexes.append(i)
	return indexes

func _open_wand_select_popup() -> bool:
	wand_select_item_indexes = _wand_inventory_indexes()
	wand_select_list.clear()

	if wand_select_item_indexes.is_empty():
		return false

	for idx in wand_select_item_indexes:
		wand_select_list.add_item(_inventory_display_name(inventory_items[idx]))

	wand_select_list.select(0)
	wand_select_confirm_button.disabled = false
	wand_select_popup.popup_centered()
	wand_select_list.grab_focus()
	return true

func _close_wand_select_popup() -> void:
	wand_select_popup.hide()
	wand_select_item_indexes.clear()

func _on_wand_select_cancel_pressed() -> void:
	_close_wand_select_popup()

func _on_wand_select_item_activated(_index: int) -> void:
	_on_wand_select_confirm_pressed()

func _on_wand_select_confirm_pressed() -> void:
	if wand_select_item_indexes.is_empty():
		_close_wand_select_popup()
		return

	var selected: PackedInt32Array = wand_select_list.get_selected_items()
	var list_index: int = int(selected[0]) if selected.size() > 0 else 0
	list_index = clamp(list_index, 0, wand_select_item_indexes.size() - 1)
	selected_inventory_index = wand_select_item_indexes[list_index]
	_refresh_inventory_palette()
	_close_wand_select_popup()
	_zap_with_selected_wand_in_direction(selected_inventory_index, last_dir_row, last_dir_col)

func _throwable_inventory_indexes() -> Array[int]:
	var indexes: Array[int] = []
	for i in range(inventory_items.size()):
		var kind: String = str(inventory_items[i].get("kind", ""))
		if kind == KIND_WEAPON or kind == KIND_WAND or kind == KIND_POTION:
			indexes.append(i)
	return indexes

func _open_throw_select_popup() -> bool:
	throw_select_item_indexes = _throwable_inventory_indexes()
	throw_select_list.clear()

	if throw_select_item_indexes.is_empty():
		return false

	for idx in throw_select_item_indexes:
		throw_select_list.add_item(_inventory_display_name(inventory_items[idx]))

	throw_select_list.select(0)
	throw_select_confirm_button.disabled = false
	throw_select_popup.popup_centered()
	throw_select_list.grab_focus()
	return true

func _close_throw_select_popup() -> void:
	throw_select_popup.hide()
	throw_select_item_indexes.clear()

func _on_throw_select_cancel_pressed() -> void:
	_close_throw_select_popup()

func _on_throw_select_item_activated(_index: int) -> void:
	_on_throw_select_confirm_pressed()

func _on_throw_select_confirm_pressed() -> void:
	if throw_select_item_indexes.is_empty():
		_close_throw_select_popup()
		return

	var selected: PackedInt32Array = throw_select_list.get_selected_items()
	var list_index: int = int(selected[0]) if selected.size() > 0 else 0
	list_index = clamp(list_index, 0, throw_select_item_indexes.size() - 1)
	selected_inventory_index = throw_select_item_indexes[list_index]
	_refresh_inventory_palette()
	_close_throw_select_popup()
	_throw_selected_item_in_direction(selected_inventory_index, last_dir_row, last_dir_col)

func _clear_targeting_action() -> void:
	pending_targeting_action = ""
	pending_targeting_inventory_index = -1

func _show_message_and_render(text: String) -> void:
	_set_message(text)
	_render_play_area()

func _show_priority_message_and_render(text: String) -> void:
	# Use for immediate UI feedback (e.g. interrupt), replacing queued prompts.
	top_message = ""
	message_queue.clear()
	_set_message(text)
	_render_play_area()

func _begin_targeting(action: String, inventory_index: int = -1) -> void:
	pending_targeting_action = action
	pending_targeting_inventory_index = inventory_index
	_show_message_and_render(_msg(55, "Direction?"))

func _selected_item_or_render_error() -> Dictionary:
	var item: Dictionary = _get_selected_inventory_item()
	if item.is_empty():
		_show_message_and_render(_ui("message.item.no_selected", ""))
	return item

func _consume_targeting_direction(dr: int, dc: int) -> bool:
	if pending_targeting_action.is_empty():
		return false
	if dr == 0 and dc == 0:
		return true

	last_dir_row = dr
	last_dir_col = dc

	var action: String = pending_targeting_action
	var targeting_index: int = pending_targeting_inventory_index
	_clear_targeting_action()

	if action == "throw":
		if not _open_throw_select_popup():
			_show_message_and_render(_msg(93, "Nothing appropriate"))
	elif action == "zap":
		if _is_valid_inventory_index(targeting_index):
			selected_inventory_index = targeting_index
			_refresh_inventory_palette()
			_zap_with_selected_wand_in_direction(selected_inventory_index, dr, dc)
		else:
			if not _open_wand_select_popup():
				_show_message_and_render(_msg(93, "Nothing appropriate"))
	elif action == "trap_identify":
		_identify_trap_in_direction(dr, dc)

	return true

func _on_item_use_pressed() -> void:
	if _prepare_message_for_new_input():
		return
	var item: Dictionary = _selected_item_or_render_error()
	if item.is_empty():
		return

	var kind: String = str(item.get("kind", "item"))
	if kind in ["potion", "scroll"] and int(item.get("id_status", ID_UNIDENTIFIED)) != ID_IDENTIFIED:
		_identify_same_kind_inventory_items(kind, int(item.get("which_kind", -1)))
		item = _get_selected_inventory_item()

	if kind == "scroll":
		scroll_use_advance_cost = 1
		if not _use_scroll_effect(selected_inventory_index):
			_render_play_area()
			return
		_consume_inventory_item_at(selected_inventory_index, 1)
		if scroll_use_advance_cost > 0:
			_advance_turn(scroll_use_advance_cost)
		_render_play_area()
		return

	if kind == "potion":
		_use_potion_effect(selected_inventory_index)
		_consume_inventory_item_at(selected_inventory_index, 1)
		_advance_turn(1)
		_render_play_area()
		return

	if kind == "food":
		_use_food_effect(selected_inventory_index)
		_advance_turn(1)
		_render_play_area()
		return

	if kind == "wand":
		_begin_targeting("zap", selected_inventory_index)
		return

	_show_message_and_render(_ui("message.item.cant_use", ""))

func _on_item_call_pressed() -> void:
	if _prepare_message_for_new_input():
		return
	var item: Dictionary = _selected_item_or_render_error()
	if item.is_empty():
		return

	if not _can_call_item(item):
		if int(item.get("id_status", ID_UNIDENTIFIED)) == ID_IDENTIFIED:
			_show_message_and_render(_ui("message.item.already_identified", ""))
			return
		_show_message_and_render(_ui("message.item.cannot_name", ""))
		return
	_open_call_name_popup(item)

func _open_call_name_popup(item: Dictionary) -> void:
	call_name_target_index = selected_inventory_index
	var kind: String = str(item.get("kind", KIND_ITEM))
	var which_kind: int = int(item.get("which_kind", -1))
	var current_call: String = _called_name_for_kind(kind, which_kind)
	if current_call.is_empty():
		current_call = str(item.get("called_name", ""))
	if current_call.is_empty() and int(item.get("id_status", ID_UNIDENTIFIED)) == ID_CALLED:
		current_call = _uif("message.call_name.default", "", [_called_name_counter])
	call_name_input.text = current_call
	call_name_popup.popup_centered()
	call_name_input.grab_focus()
	call_name_input.select_all()

func _close_call_name_popup() -> void:
	call_name_popup.hide()
	call_name_target_index = -1

func _on_call_name_cancel_pressed() -> void:
	_close_call_name_popup()

func _on_call_name_submitted(_text: String) -> void:
	_on_call_name_confirm_pressed()

func _on_call_name_confirm_pressed() -> void:
	if call_name_target_index < 0 or call_name_target_index >= inventory_items.size():
		_close_call_name_popup()
		return

	var call_name: String = call_name_input.text.strip_edges()
	if call_name.is_empty():
		_show_message_and_render(_ui("message.call_name.empty", ""))
		call_name_input.grab_focus()
		return

	var item: Dictionary = inventory_items[call_name_target_index]
	var kind: String = str(item.get("kind", KIND_ITEM))
	var which_kind: int = int(item.get("which_kind", -1))
	_set_id_status_for_kind(kind, which_kind, ID_CALLED)
	_set_called_name_for_kind(kind, which_kind, call_name)
	for i in range(inventory_items.size()):
		var entry: Dictionary = inventory_items[i]
		if str(entry.get("kind", KIND_ITEM)) != kind:
			continue
		if int(entry.get("which_kind", -1)) != which_kind:
			continue
		if int(entry.get("id_status", ID_UNIDENTIFIED)) == ID_IDENTIFIED:
			continue
		entry["called_name"] = call_name
		entry["id_status"] = ID_CALLED
		inventory_items[i] = entry
	selected_inventory_index = call_name_target_index
	_refresh_inventory_palette()
	_show_message_and_render(_uif("message.call_name.now_called", "", [call_name]))
	_close_call_name_popup()

func _on_item_drop_pressed() -> void:
	if _prepare_message_for_new_input():
		return
	var cell: int = int(dungeon[rogue_row][rogue_col])
	if (cell & int(OBJECT | STAIRS | TRAP)) != 0:
		_show_message_and_render(_ui("message.drop.already_there", ""))
		return
	if selected_inventory_index < 0 or selected_inventory_index >= inventory_items.size():
		_show_message_and_render(_ui("message.item.no_selected", ""))
		return
	if _is_equipped_index(selected_inventory_index):
		var equipped_item: Dictionary = inventory_items[selected_inventory_index]
		if _is_item_cursed(equipped_item):
			_mark_curse_known(selected_inventory_index)
			_show_message_and_render(_ui("message.item.cursed", ""))
			return
		_unequip_index(selected_inventory_index)

	var dropped: Dictionary = _drop_inventory_item_to_floor(selected_inventory_index, rogue_row, rogue_col)
	if dropped.is_empty():
		_show_message_and_render(_ui("message.drop.cannot_now", ""))
		return
	var dropped_name: String = _inventory_display_name(dropped)
	_show_message_and_render(_uif("message.drop.done", "", [dropped_name]))
	_advance_turn(1)
	_render_play_area()

func _drop_inventory_item_to_floor(index: int, row: int, col: int) -> Dictionary:
	if not _is_valid_inventory_index(index):
		return {}

	var item: Dictionary = inventory_items[index]
	var dropped: Dictionary = item.duplicate(true)
	var kind: String = str(item.get("kind", KIND_ITEM))
	var quantity: int = max(1, int(item.get("quantity", 1)))

	if quantity > 1 and kind != KIND_WEAPON:
		dropped["quantity"] = 1
		if kind == KIND_FOOD:
			var stack_kinds: Array[int] = _food_kind_list_from_item(item)
			var dropped_kind: int = int(stack_kinds[0]) if not stack_kinds.is_empty() else int(item.get("which_kind", 0))
			dropped["which_kind"] = dropped_kind
			dropped["food_stack_kinds"] = [dropped_kind]
			if not stack_kinds.is_empty():
				stack_kinds.remove_at(0)
			item["food_stack_kinds"] = stack_kinds
			item["quantity"] = max(1, stack_kinds.size())
			if not stack_kinds.is_empty():
				item["which_kind"] = int(stack_kinds[0])
		else:
			item["quantity"] = quantity - 1
		inventory_items[index] = item
		_refresh_inventory_palette()
		_update_equipment_panel()
	else:
		_remove_inventory_item_at(index)

	var key: String = _pos_key(row, col)
	object_data[key] = _inventory_item_to_floor_info(dropped)
	object_glyphs[key] = _glyph_from_kind(kind)
	dungeon[row][col] = int(dungeon[row][col]) | OBJECT
	return dropped

func _inventory_item_to_floor_info(item: Dictionary) -> Dictionary:
	var info: Dictionary = {
		"kind": str(item.get("kind", KIND_ITEM)),
		"which_kind": int(item.get("which_kind", -1)),
		"quantity": max(1, int(item.get("quantity", 1))),
		"quiver": int(item.get("quiver", -1)),
		"class": int(item.get("class", 0)),
		"is_cursed": bool(item.get("is_cursed", false)),
		"is_protected": bool(item.get("is_protected", false)),
		"hit_enchant": int(item.get("hit_enchant", 0)),
		"d_enchant": int(item.get("d_enchant", 0)),
		"id_status": int(item.get("id_status", ID_IDENTIFIED)),
		"called_name": str(item.get("called_name", "")),
		"unknown_name": str(item.get("unknown_name", "")),
		"identified_name": str(item.get("identified_name", "")),
		"name": str(item.get("name", "")),
		"picked_up": true,
	}
	if str(item.get("kind", KIND_ITEM)) == KIND_FOOD:
		info["food_stack_kinds"] = _food_kind_list_from_item(item)
	return info

func _is_item_cursed(item: Dictionary) -> bool:
	return bool(item.get("is_cursed", false))

func _is_armor_protected() -> bool:
	if ring_maintain_armor:
		return true
	if not _is_valid_inventory_index(equipped_armor_index):
		return false
	var armor_item: Dictionary = inventory_items[equipped_armor_index]
	return bool(armor_item.get("is_protected", false))

func _effective_strength_current() -> int:
	return max(1, str_current + ring_add_strength)

func _effective_strength_max() -> int:
	return max(1, str_max + ring_add_strength)

func _effective_exp_with_rings() -> int:
	return max(1, exp_level + ring_exp_bonus)

func _base_armor_class_for_kind(which_kind: int) -> int:
	return clamp(4 + which_kind, 4, 10)

func _current_armor_class_from_equipment() -> int:
	if not _is_valid_inventory_index(equipped_armor_index):
		return 0

	var armor_item: Dictionary = inventory_items[equipped_armor_index]
	if str(armor_item.get("kind", "")) != "armor":
		return 0

	var base_class: int = int(armor_item.get("class", _base_armor_class_for_kind(int(armor_item.get("which_kind", 0)))))
	var enchant: int = int(armor_item.get("d_enchant", 0))
	return base_class + enchant

func _sync_armor_class_from_equipment() -> void:
	armor_class = _current_armor_class_from_equipment()

func _rust_equipped_armor() -> bool:
	if not _is_valid_inventory_index(equipped_armor_index):
		return false
	if _is_armor_protected():
		return false

	var armor_item: Dictionary = inventory_items[equipped_armor_index]
	if str(armor_item.get("kind", "")) != "armor":
		return false
	if int(armor_item.get("which_kind", 0)) == ARMOR_KIND_LEATHER:
		return false
	if _current_armor_class_from_equipment() <= 1:
		return false

	armor_item["d_enchant"] = int(armor_item.get("d_enchant", 0)) - 1
	inventory_items[equipped_armor_index] = armor_item
	_sync_armor_class_from_equipment()
	return true

func _refresh_ring_effects() -> void:
	stealthy = 0
	ring_count = 0
	ring_energy_load = 0
	ring_teleport = false
	ring_sustain_strength = false
	ring_add_strength = 0
	ring_regeneration = 0
	ring_exp_bonus = 0
	ring_see_invisible = false
	ring_maintain_armor = false
	ring_auto_search = 0

	for slot in [SLOT_RING_LEFT, SLOT_RING_RIGHT]:
		var idx: int = _get_equipped_index_for_slot(slot)
		if not _is_valid_inventory_index(idx):
			continue
		var ring: Dictionary = inventory_items[idx]
		if str(ring.get("kind", "")) != "ring":
			continue

		ring_count += 1
		ring_energy_load += 1
		var which_kind: int = int(ring.get("which_kind", -1))
		match which_kind:
			RING_STEALTH:
				stealthy += 1
			RING_TELEPORT:
				ring_teleport = true
			RING_REGENERATION:
				ring_regeneration += 1
			RING_SLOW_DIGEST:
				ring_energy_load -= 2
			RING_ADD_STRENGTH:
				ring_add_strength += int(ring.get("class", 0))
			RING_SUSTAIN_STRENGTH:
				ring_sustain_strength = true
			RING_DEXTERITY:
				ring_exp_bonus += int(ring.get("class", 0))
			RING_ADORNMENT:
				pass
			RING_SEE_INVISIBLE:
				ring_see_invisible = true
			RING_MAINTAIN_ARMOR:
				ring_maintain_armor = true
			RING_SEARCHING:
				ring_auto_search += 2

	_apply_stat_caps_original()

func _apply_stat_caps_original() -> void:
	if hp_max > MAX_HP:
		hp_current -= (hp_max - MAX_HP)
		hp_max = MAX_HP
	if str_max > MAX_STRENGTH:
		str_current -= (str_max - MAX_STRENGTH)
		str_max = MAX_STRENGTH

	hp_max = max(1, hp_max)
	str_max = max(1, str_max)
	hp_current = clamp(hp_current, 0, hp_max)
	str_current = clamp(str_current, 1, str_max)

func _is_curse_known(item: Dictionary) -> bool:
	return bool(item.get("known_cursed", false))

func _mark_curse_known(index: int) -> void:
	if not _is_valid_inventory_index(index):
		return
	var item: Dictionary = inventory_items[index]
	if not _is_item_cursed(item):
		return
	if _is_curse_known(item):
		return
	item["known_cursed"] = true
	inventory_items[index] = item
	_refresh_inventory_palette()
	_update_equipment_panel()

func _is_equipped_index(index: int) -> bool:
	return index == equipped_weapon_index or index == equipped_armor_index or index == equipped_ring_left_index or index == equipped_ring_right_index

func _slot_for_item(item: Dictionary) -> String:
	var kind: String = str(item.get("kind", KIND_ITEM))
	if kind == KIND_WEAPON:
		return SLOT_WEAPON
	if kind == KIND_ARMOR:
		return SLOT_ARMOR
	if kind == KIND_RING:
		return SLOT_RING_GENERIC
	return ""

func _slot_name(slot: String) -> String:
	if slot == SLOT_WEAPON:
		return _ui("slot.weapon", "")
	if slot == SLOT_ARMOR:
		return _ui("slot.armor", "")
	if slot == SLOT_RING_LEFT:
		return _ui("slot.left_ring", "")
	if slot == SLOT_RING_RIGHT:
		return _ui("slot.right_ring", "")
	return _ui("item.generic", "")

func _get_equipped_index_for_slot(slot: String) -> int:
	match slot:
		SLOT_WEAPON:
			return equipped_weapon_index
		SLOT_ARMOR:
			return equipped_armor_index
		SLOT_RING_LEFT:
			return equipped_ring_left_index
		SLOT_RING_RIGHT:
			return equipped_ring_right_index
		_:
			return -1

func _set_equipped_index_for_slot(slot: String, index: int) -> void:
	match slot:
		SLOT_WEAPON:
			equipped_weapon_index = index
		SLOT_ARMOR:
			equipped_armor_index = index
		SLOT_RING_LEFT:
			equipped_ring_left_index = index
		SLOT_RING_RIGHT:
			equipped_ring_right_index = index
	_refresh_ring_effects()
	_sync_armor_class_from_equipment()

func _equipment_slot_button(slot: String) -> Button:
	match slot:
		SLOT_WEAPON:
			return weapon_value_label
		SLOT_ARMOR:
			return armor_value_label
		SLOT_RING_LEFT:
			return ring_left_value_label
		SLOT_RING_RIGHT:
			return ring_right_value_label
		_:
			return weapon_value_label

func _equipment_none_text() -> String:
	return _ui("equipment.none", "None")

func _equipment_slot_display_text(slot: String) -> String:
	var idx: int = _get_equipped_index_for_slot(slot)
	if not _is_valid_inventory_index(idx):
		return "[%s]" % _equipment_none_text()

	var item: Dictionary = inventory_items[idx]
	var name: String = _inventory_display_name(item)
	if _is_curse_known(item):
		name += _ui("equipment.cursed_suffix", "")
	return "[%s]" % name

func _select_equipment_slot(slot: String, open_change_when_empty: bool = false) -> void:
	selected_equipment_slot = slot
	_update_equipment_panel()
	if open_change_when_empty:
		if not _open_equip_select_popup(slot):
			_set_message(_ui("message.equip.no_item_for_slot", ""))
			_render_play_area()

func _item_matches_slot(item: Dictionary, slot: String) -> bool:
	var kind: String = str(item.get("kind", KIND_ITEM))
	if slot == SLOT_WEAPON:
		return kind == KIND_WEAPON
	if slot == SLOT_ARMOR:
		return kind == KIND_ARMOR
	if slot == SLOT_RING_LEFT or slot == SLOT_RING_RIGHT:
		return kind == KIND_RING
	return false

func _equippable_indexes_for_slot(slot: String) -> Array[int]:
	var indexes: Array[int] = []
	for i in range(inventory_items.size()):
		var item: Dictionary = inventory_items[i]
		if not _item_matches_slot(item, slot):
			continue
		if slot == SLOT_RING_LEFT and i == equipped_ring_right_index:
			continue
		if slot == SLOT_RING_RIGHT and i == equipped_ring_left_index:
			continue
		indexes.append(i)
	return indexes

func _open_equip_select_popup(slot: String) -> bool:
	equip_select_target_slot = slot
	equip_select_item_indexes = _equippable_indexes_for_slot(slot)
	equip_select_list.clear()

	for idx in equip_select_item_indexes:
		equip_select_list.add_item(_inventory_display_name(inventory_items[idx]))
	equip_select_list.add_item(_equipment_none_text())

	equip_select_list.select(0)
	equip_select_confirm_button.disabled = false
	equip_select_popup.popup_centered()
	equip_select_list.grab_focus()
	return true

func _close_equip_select_popup() -> void:
	equip_select_popup.hide()
	equip_select_item_indexes.clear()
	equip_select_target_slot = ""

func _on_equip_select_cancel_pressed() -> void:
	_close_equip_select_popup()

func _on_equip_select_item_activated(_index: int) -> void:
	_on_equip_select_confirm_pressed()

func _equip_inventory_index_to_slot(slot: String, index: int) -> bool:
	if not _is_valid_inventory_index(index):
		_set_message(_ui("message.item.no_selected", ""))
		return false

	var item: Dictionary = inventory_items[index]
	if not _item_matches_slot(item, slot):
		_set_message(_ui("message.equip.cannot", ""))
		return false

	var current_index: int = _get_equipped_index_for_slot(slot)
	if _is_valid_inventory_index(current_index) and current_index != index:
		var current_item: Dictionary = inventory_items[current_index]
		if _is_item_cursed(current_item):
			_mark_curse_known(current_index)
			_set_message(_ui("message.item.cursed", ""))
			return false

	if slot == SLOT_ARMOR:
		item["id_status"] = ID_IDENTIFIED
		inventory_items[index] = item

	_set_equipped_index_for_slot(slot, index)
	_set_message(_uif("message.equip.done", "", [_inventory_display_name(item)]))
	_update_equipment_panel()
	_refresh_inventory_palette()
	return true

func _on_equip_select_confirm_pressed() -> void:
	if equip_select_target_slot.is_empty():
		_close_equip_select_popup()
		return

	var target_slot: String = equip_select_target_slot
	var candidate_indexes: Array[int] = equip_select_item_indexes.duplicate()
	var item_count: int = candidate_indexes.size()
	var selected: PackedInt32Array = equip_select_list.get_selected_items()
	var list_index: int = int(selected[0]) if selected.size() > 0 else 0
	list_index = clamp(list_index, 0, item_count)
	_select_equipment_slot(target_slot)
	_close_equip_select_popup()
	if list_index == item_count:
		if _unequip_slot(selected_equipment_slot):
			_advance_turn(1)
		else:
			_set_message(_ui("message.unequip.nothing", ""))
		_render_play_area()
		return

	var inv_index: int = candidate_indexes[list_index]
	selected_inventory_index = inv_index
	if _equip_inventory_index_to_slot(selected_equipment_slot, inv_index):
		_advance_turn(1)
	_render_play_area()

func _unequip_slot(slot: String) -> bool:
	var idx: int = _get_equipped_index_for_slot(slot)
	if not _is_valid_inventory_index(idx):
		return false
	var item: Dictionary = inventory_items[idx]
	if _is_item_cursed(item):
		_mark_curse_known(idx)
		_set_message(_ui("message.item.cursed", ""))
		return false
	if slot == SLOT_ARMOR:
		_move_aquatars_before_armor_change()

	_set_equipped_index_for_slot(slot, -1)
	_update_equipment_panel()
	_refresh_inventory_palette()
	_set_message(_uif("message.unequip.done", "", [_inventory_display_name(item)]))
	return true

func _unequip_index(index: int) -> bool:
	if index == equipped_weapon_index:
		return _unequip_slot(SLOT_WEAPON)
	if index == equipped_armor_index:
		return _unequip_slot(SLOT_ARMOR)
	if index == equipped_ring_left_index:
		return _unequip_slot(SLOT_RING_LEFT)
	if index == equipped_ring_right_index:
		return _unequip_slot(SLOT_RING_RIGHT)
	return false

func _update_equipment_panel() -> void:
	weapon_value_label.text = _equipment_slot_display_text(SLOT_WEAPON)
	armor_value_label.text = _equipment_slot_display_text(SLOT_ARMOR)
	ring_left_value_label.text = _equipment_slot_display_text(SLOT_RING_LEFT)
	ring_right_value_label.text = _equipment_slot_display_text(SLOT_RING_RIGHT)

	_set_toggle_button_emphasis(weapon_value_label, selected_equipment_slot == SLOT_WEAPON)
	_set_toggle_button_emphasis(armor_value_label, selected_equipment_slot == SLOT_ARMOR)
	_set_toggle_button_emphasis(ring_left_value_label, selected_equipment_slot == SLOT_RING_LEFT)
	_set_toggle_button_emphasis(ring_right_value_label, selected_equipment_slot == SLOT_RING_RIGHT)

func _inventory_name_from_info(key: String, info: Dictionary) -> String:
	var kind: String = str(info.get("kind", "item"))
	match kind:
		"amulet":
			return _msg(27, "the Amulet of Yendor")
		"food":
			return _ui("item.food", "")
		"gold":
			var amount: int = int(info.get("amount", 0))
			return _uif("item.gold_format", "", [amount])
		_:
			return _ensure_unidentified_item_display_name(key, info)

func _ensure_unidentified_item_display_name(key: String, info: Dictionary) -> String:
	if info.has("display_name"):
		return str(info.get("display_name", _ui("item.unknown", "")))

	var glyph: String = str(object_glyphs.get(key, "?"))
	var which_kind: int = int(info.get("which_kind", -1))
	var display_name: String = ""
	match glyph:
		"!":
			var color_kind: int = which_kind
			if which_kind >= 0 and which_kind < potion_color_per_kind.size():
				color_kind = int(potion_color_per_kind[which_kind])
			var color_name: String = _word_by_kind(POTION_COLORS_EN, POTION_COLORS_JA, color_kind)
			display_name = _uif("item.potion.color", "%s potion", [color_name])
		"?":
			var scroll_title: String = _scroll_title_for_kind(which_kind)
			display_name = _uif("item.scroll.entitled", "scroll entitled %s", [scroll_title])
		"/":
			var material_kind: int = which_kind
			if which_kind >= 0 and which_kind < wand_material_per_kind.size():
				material_kind = int(wand_material_per_kind[which_kind])
			var wand_material: String = _word_by_kind(WAND_MATERIALS_EN, WAND_MATERIALS_JA, material_kind)
			display_name = _uif("item.wand.material", "%s wand", [wand_material])
		"=":
			var gem_kind: int = which_kind
			if which_kind >= 0 and which_kind < ring_gem_per_kind.size():
				gem_kind = int(ring_gem_per_kind[which_kind])
			var ring_gem: String = _word_by_kind(RING_GEMS_EN, RING_GEMS_JA, gem_kind)
			display_name = _uif("item.ring.gem", "%s ring", [ring_gem])
		")":
			display_name = _word_by_kind(WEAPON_NAMES_EN, WEAPON_NAMES_JA, which_kind)
		"]":
			display_name = _word_by_kind(ARMOR_NAMES_EN, ARMOR_NAMES_JA, which_kind)
		_:
			display_name = _ui("item.unknown", "")

	info["display_name"] = display_name
	if object_data.has(key):
		object_data[key] = info
	return display_name

func _word_by_kind(en_words: PackedStringArray, ja_words: PackedStringArray, which_kind: int) -> String:
	var words: PackedStringArray = ja_words if _is_japanese_locale() else en_words
	if words.is_empty():
		return _ui("item.mysterious", "")
	if which_kind < 0:
		return words[_get_rand(0, words.size() - 1)]
	return words[posmod(which_kind, words.size())]

func _random_item_word(en_words: PackedStringArray, ja_words: PackedStringArray) -> String:
	var words: PackedStringArray = ja_words if _is_japanese_locale() else en_words
	if words.is_empty():
		return _ui("item.mysterious", "")
	return words[_get_rand(0, words.size() - 1)]

func _make_scroll_title() -> String:
	if _is_japanese_locale():
		var count: int = _get_rand(2, 5)
		var title: String = ""
		for _i in range(count):
			title += SCROLL_SYLLABLES_JA[_get_rand(0, SCROLL_SYLLABLES_JA.size() - 1)]
		return "「%s」" % title

	var count_en: int = _get_rand(2, 5)
	var title_en: String = ""
	for _i in range(count_en):
		title_en += SCROLL_SYLLABLES_EN[_get_rand(0, SCROLL_SYLLABLES_EN.size() - 1)]
	return "'%s'" % title_en

func _scroll_title_for_kind(which_kind: int) -> String:
	if which_kind < 0:
		return _make_scroll_title()
	if which_kind >= 0 and which_kind < scroll_title_tokens_per_kind.size():
		return _render_scroll_title_tokens(scroll_title_tokens_per_kind[which_kind])
	return _make_scroll_title()

func _add_inventory_item(key: String, info: Dictionary) -> void:
	var kind: String = str(info.get("kind", "item"))
	var merge_target_index: int = _find_pickup_merge_target_index(info)
	if merge_target_index >= 0:
		var merged_item: Dictionary = inventory_items[merge_target_index]
		merged_item["quantity"] = max(1, int(merged_item.get("quantity", 1))) + max(1, int(info.get("quantity", 1)))
		inventory_items[merge_target_index] = merged_item
		_refresh_inventory_palette()
		_update_equipment_panel()
		return

	var unknown_name: String = str(info.get("unknown_name", ""))
	if unknown_name.is_empty():
		unknown_name = _inventory_name_from_info(key, info)
	var identified_name: String = str(info.get("identified_name", ""))
	if identified_name.is_empty():
		identified_name = _ui("item.unknown", "item")
	match kind:
		"potion", "scroll", "wand", "ring":
			if identified_name == _ui("item.unknown", "item"):
				identified_name = _identified_name_for_item(kind, int(info.get("which_kind", -1)), identified_name)
		"food":
			if identified_name == _ui("item.unknown", "item"):
				identified_name = _ui("item.food", "food")
		"amulet":
			if identified_name == _ui("item.unknown", "item"):
				identified_name = _msg(27, "the Amulet of Yendor")
		"weapon":
			if identified_name == _ui("item.unknown", "item"):
				identified_name = unknown_name
		"armor":
			if identified_name == _ui("item.unknown", "item"):
				identified_name = unknown_name
		"gold":
			if identified_name == _ui("item.unknown", "item"):
				identified_name = unknown_name

	var id_status: int = ID_IDENTIFIED
	if kind in IDENTIFIABLE_ITEM_KINDS:
		id_status = ID_UNIDENTIFIED
	if info.has("id_status"):
		id_status = int(info.get("id_status", id_status))
	if kind in CALLABLE_ITEM_KINDS:
		var global_status: int = _id_status_for_kind(kind, int(info.get("which_kind", -1)))
		if global_status == ID_IDENTIFIED:
			id_status = ID_IDENTIFIED
		elif global_status == ID_CALLED and id_status != ID_IDENTIFIED:
			id_status = ID_CALLED
	var called_name: String = str(info.get("called_name", ""))
	if called_name.is_empty() and kind in CALLABLE_ITEM_KINDS:
		called_name = _called_name_for_kind(kind, int(info.get("which_kind", -1)))
	if not called_name.is_empty() and id_status != ID_IDENTIFIED:
		id_status = ID_CALLED

	var item: Dictionary = {
		"kind": kind,
		"which_kind": int(info.get("which_kind", -1)),
		"class": int(info.get("class", _base_armor_class_for_kind(int(info.get("which_kind", 0))) if kind == "armor" else 0)),
		"quantity": max(1, int(info.get("quantity", 1))),
		"quiver": int(info.get("quiver", -1)),
		"name": identified_name,
		"unknown_name": unknown_name,
		"identified_name": identified_name,
		"called_name": called_name,
		"id_status": id_status,
		"is_cursed": bool(info.get("is_cursed", false)),
		"known_cursed": false,
		"hit_enchant": int(info.get("hit_enchant", 0)),
		"d_enchant": int(info.get("d_enchant", 0)),
		"is_protected": bool(info.get("is_protected", false)),
	}
	if kind == KIND_FOOD:
		item["food_stack_kinds"] = [int(item.get("which_kind", 0))]
	inventory_items.append(item)
	_refresh_inventory_palette()
	_update_equipment_panel()

func _identified_name_for_item(kind: String, which_kind: int, fallback: String) -> String:
	match kind:
		KIND_SCROLL:
			return _identified_scroll_name(which_kind)
		KIND_POTION:
			return _identified_potion_name(which_kind)
		KIND_WAND:
			return _identified_wand_name(which_kind)
		KIND_RING:
			return _identified_ring_name(which_kind)
		_:
			return fallback

func _identified_scroll_name(which_kind: int) -> String:
	match which_kind:
		SCROLL_PROTECT_ARMOR:
			return _ui("item.scroll.protect_armor", "scroll")
		SCROLL_HOLD_MONSTER:
			return _ui("item.scroll.hold_monster", "scroll")
		SCROLL_ENCH_WEAPON:
			return _ui("item.scroll.enchant_weapon", "scroll")
		SCROLL_ENCH_ARMOR:
			return _ui("item.scroll.enchant_armor", "scroll")
		SCROLL_IDENTIFY:
			return _ui("item.scroll.identify", "scroll")
		SCROLL_TELEPORT:
			return _ui("item.scroll.teleportation", "scroll")
		SCROLL_SLEEP:
			return _ui("item.scroll.sleep", "scroll")
		SCROLL_SCARE_MONSTER:
			return _ui("item.scroll.scare_monster", "scroll")
		SCROLL_REMOVE_CURSE:
			return _ui("item.scroll.remove_curse", "scroll")
		SCROLL_CREATE_MONSTER:
			return _ui("item.scroll.create_monster", "scroll")
		SCROLL_AGGRAVATE_MONSTER:
			return _ui("item.scroll.aggravate_monster", "scroll")
		SCROLL_MAGIC_MAPPING:
			return _ui("item.scroll.magic_mapping", "scroll")
		_:
			return _ui("item.scroll.generic", "scroll")

func _identified_potion_name(which_kind: int) -> String:
	match which_kind:
		POTION_INCREASE_STRENGTH:
			return _ui("item.potion.increase_strength", "potion")
		POTION_RESTORE_STRENGTH:
			return _ui("item.potion.restore_strength", "potion")
		POTION_HEALING:
			return _ui("item.potion.healing", "potion")
		POTION_EXTRA_HEALING:
			return _ui("item.potion.extra_healing", "potion")
		POTION_POISON:
			return _ui("item.potion.poison", "potion")
		POTION_RAISE_LEVEL:
			return _ui("item.potion.raise_level", "potion")
		POTION_BLINDNESS:
			return _ui("item.potion.blindness", "potion")
		POTION_HALLUCINATION:
			return _ui("item.potion.hallucination", "potion")
		POTION_DETECT_MONSTER:
			return _ui("item.potion.detect_monster", "potion")
		POTION_DETECT_OBJECTS:
			return _ui("item.potion.detect_objects", "potion")
		POTION_CONFUSION:
			return _ui("item.potion.confusion", "potion")
		POTION_LEVITATION:
			return _ui("item.potion.levitation", "potion")
		POTION_HASTE_SELF:
			return _ui("item.potion.haste_self", "potion")
		POTION_SEE_INVISIBLE:
			return _ui("item.potion.see_invisible", "potion")
		_:
			return _ui("item.potion.generic", "potion")

func _identified_wand_name(which_kind: int) -> String:
	match which_kind:
		0:
			return _ui("item.wand.teleport_away", "wand")
		1:
			return _ui("item.wand.slow_monster", "wand")
		2:
			return _ui("item.wand.invisibility", "wand")
		3:
			return _ui("item.wand.polymorph", "wand")
		4:
			return _ui("item.wand.haste_monster", "wand")
		5:
			return _ui("item.wand.sleep", "wand")
		6:
			return _ui("item.wand.drain_life", "wand")
		WAND_KIND_MAGIC_MISSILE:
			return _ui("item.wand.magic_missile", "wand")
		WAND_KIND_CANCELLATION:
			return _ui("item.wand.cancellation", "wand")
		9:
			return _ui("item.wand.do_nothing", "wand")
		_:
			return _ui("item.wand.generic", "wand")

func _identified_ring_name(which_kind: int) -> String:
	match which_kind:
		RING_STEALTH:
			return _ui("item.ring.stealth", "ring")
		RING_TELEPORT:
			return _ui("item.ring.teleportation", "ring")
		RING_REGENERATION:
			return _ui("item.ring.regeneration", "ring")
		RING_SLOW_DIGEST:
			return _ui("item.ring.slow_digestion", "ring")
		RING_ADD_STRENGTH:
			return _ui("item.ring.add_strength", "ring")
		RING_SUSTAIN_STRENGTH:
			return _ui("item.ring.sustain_strength", "ring")
		RING_DEXTERITY:
			return _ui("item.ring.dexterity", "ring")
		RING_ADORNMENT:
			return _ui("item.ring.adornment", "ring")
		RING_SEE_INVISIBLE:
			return _ui("item.ring.see_invisible", "ring")
		RING_MAINTAIN_ARMOR:
			return _ui("item.ring.maintain_armor", "ring")
		RING_SEARCHING:
			return _ui("item.ring.searching", "ring")
		_:
			return _ui("item.ring.generic", "ring")

func _is_stackable_thrown_weapon_kind(which_kind: int) -> bool:
	return which_kind == WEAPON_KIND_ARROW or which_kind == WEAPON_KIND_DAGGER or which_kind == WEAPON_KIND_DART or which_kind == WEAPON_KIND_SHURIKEN

func _find_pickup_merge_target_index(info: Dictionary) -> int:
	if str(info.get("kind", "")) != "weapon":
		return -1

	var which_kind: int = int(info.get("which_kind", -1))
	if not _is_stackable_thrown_weapon_kind(which_kind):
		return -1

	var quiver: int = int(info.get("quiver", -1))
	for i in range(inventory_items.size()):
		var item: Dictionary = inventory_items[i]
		if str(item.get("kind", "")) != "weapon":
			continue
		if int(item.get("which_kind", -1)) != which_kind:
			continue
		if int(item.get("quiver", -1)) != quiver:
			continue
		return i

	return -1

func _format_msg(template: String, replacements: Array[String]) -> String:
	var formatted: String = template
	for value in replacements:
		var pos: int = formatted.find("%s")
		if pos < 0:
			break
		formatted = "%s%s%s" % [formatted.substr(0, pos), value, formatted.substr(pos + 2)]
	return formatted

func _called_name_key(kind: String, which_kind: int) -> String:
	return "%s:%d" % [kind, which_kind]

func _id_status_key(kind: String, which_kind: int) -> String:
	return _called_name_key(kind, which_kind)

func _id_status_for_kind(kind: String, which_kind: int) -> int:
	if not (kind in CALLABLE_ITEM_KINDS):
		return ID_UNIDENTIFIED
	if which_kind < 0:
		return ID_UNIDENTIFIED
	var key: String = _id_status_key(kind, which_kind)
	if not id_status_by_kind.has(key):
		return ID_UNIDENTIFIED
	return int(id_status_by_kind.get(key, ID_UNIDENTIFIED))

func _set_id_status_for_kind(kind: String, which_kind: int, id_status: int) -> void:
	if not (kind in CALLABLE_ITEM_KINDS):
		return
	if which_kind < 0:
		return
	id_status_by_kind[_id_status_key(kind, which_kind)] = id_status

func _called_name_for_kind(kind: String, which_kind: int) -> String:
	if not (kind in CALLABLE_ITEM_KINDS):
		return ""
	if which_kind < 0:
		return ""
	var key: String = _called_name_key(kind, which_kind)
	if not called_name_by_kind.has(key):
		return ""
	return str(called_name_by_kind.get(key, ""))

func _set_called_name_for_kind(kind: String, which_kind: int, call_name: String) -> void:
	if not (kind in CALLABLE_ITEM_KINDS):
		return
	if which_kind < 0:
		return
	called_name_by_kind[_called_name_key(kind, which_kind)] = call_name

func _clear_called_name_for_kind(kind: String, which_kind: int) -> void:
	if not (kind in CALLABLE_ITEM_KINDS):
		return
	var key: String = _called_name_key(kind, which_kind)
	if called_name_by_kind.has(key):
		called_name_by_kind.erase(key)

func _migrate_called_name_table_from_inventory_if_needed() -> void:
	if not called_name_by_kind.is_empty():
		return
	for item in inventory_items:
		if int(item.get("id_status", ID_UNIDENTIFIED)) != ID_CALLED:
			continue
		var kind: String = str(item.get("kind", KIND_ITEM))
		if not (kind in CALLABLE_ITEM_KINDS):
			continue
		var which_kind: int = int(item.get("which_kind", -1))
		if which_kind < 0:
			continue
		var call_name: String = str(item.get("called_name", ""))
		if call_name.is_empty():
			continue
		_set_called_name_for_kind(kind, which_kind, call_name)

func _migrate_id_status_table_from_inventory_if_needed() -> void:
	if not id_status_by_kind.is_empty():
		return
	for item in inventory_items:
		var kind: String = str(item.get("kind", KIND_ITEM))
		if not (kind in CALLABLE_ITEM_KINDS):
			continue
		var which_kind: int = int(item.get("which_kind", -1))
		if which_kind < 0:
			continue
		var item_status: int = int(item.get("id_status", ID_UNIDENTIFIED))
		var current_status: int = _id_status_for_kind(kind, which_kind)
		if item_status == ID_IDENTIFIED or current_status == ID_IDENTIFIED:
			_set_id_status_for_kind(kind, which_kind, ID_IDENTIFIED)
			continue
		if item_status == ID_CALLED or current_status == ID_CALLED:
			_set_id_status_for_kind(kind, which_kind, ID_CALLED)

func _identify_inventory_item(index: int) -> void:
	if not _is_valid_inventory_index(index):
		return
	var item: Dictionary = inventory_items[index]
	var kind: String = str(item.get("kind", KIND_ITEM))
	if kind in CALLABLE_ITEM_KINDS:
		_identify_same_kind_inventory_items(kind, int(item.get("which_kind", -1)))
		return
	if int(item.get("id_status", ID_IDENTIFIED)) != ID_IDENTIFIED:
		item["id_status"] = ID_IDENTIFIED
		inventory_items[index] = item

func _identify_same_kind_inventory_items(kind: String, which_kind: int) -> void:
	_set_id_status_for_kind(kind, which_kind, ID_IDENTIFIED)
	for i in range(inventory_items.size()):
		var item: Dictionary = inventory_items[i]
		if str(item.get("kind", KIND_ITEM)) != kind:
			continue
		if int(item.get("which_kind", -1)) != which_kind:
			continue
		if int(item.get("id_status", ID_UNIDENTIFIED)) == ID_IDENTIFIED:
			continue
		var resolved_name: String = _identified_name_for_item(kind, which_kind, str(item.get("identified_name", _ui("item.unknown", ""))))
		item["identified_name"] = resolved_name
		item["name"] = resolved_name
		item["id_status"] = ID_IDENTIFIED
		item["called_name"] = ""
		inventory_items[i] = item
	_clear_called_name_for_kind(kind, which_kind)

func _open_identify_select_popup(source_index: int) -> bool:
	identify_scroll_source_index = source_index
	identify_select_item_indexes.clear()
	identify_select_list.clear()

	for i in range(inventory_items.size()):
		if source_index >= 0 and i == source_index:
			continue
		identify_select_item_indexes.append(i)
		identify_select_list.add_item(_inventory_display_name(inventory_items[i]))

	if identify_select_item_indexes.is_empty():
		return false

	identify_select_list.select(0)
	identify_select_confirm_button.disabled = false
	identify_select_popup.popup_centered()
	identify_select_list.grab_focus()
	return true

func _close_identify_select_popup() -> void:
	identify_select_popup.hide()
	identify_select_item_indexes.clear()
	identify_scroll_source_index = -1

func _consume_identify_scroll_and_finish() -> void:
	_advance_turn(1)
	_render_play_area()
	_close_identify_select_popup()

func _on_identify_select_cancel_pressed() -> void:
	_consume_identify_scroll_and_finish()

func _on_identify_select_item_activated(_index: int) -> void:
	_on_identify_select_confirm_pressed()

func _on_identify_select_confirm_pressed() -> void:
	if identify_select_item_indexes.is_empty():
		_consume_identify_scroll_and_finish()
		return

	var selected: PackedInt32Array = identify_select_list.get_selected_items()
	var list_index: int = int(selected[0]) if selected.size() > 0 else 0
	list_index = clamp(list_index, 0, identify_select_item_indexes.size() - 1)
	var inv_index: int = identify_select_item_indexes[list_index]

	_identify_inventory_item(inv_index)
	selected_inventory_index = clamp(inv_index, 0, max(0, inventory_items.size() - 1))
	_refresh_inventory_palette()
	_set_message(_inventory_display_name(inventory_items[inv_index]))
	_consume_identify_scroll_and_finish()

func _hold_monster_effect() -> void:
	var held_count: int = 0
	for dr in range(-2, 3):
		for dc in range(-2, 3):
			var row: int = rogue_row + dr
			var col: int = rogue_col + dc
			if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
				continue
			if (int(dungeon[row][col]) & MONSTER) == 0:
				continue
			var key: String = _pos_key(row, col)
			if not monster_data.has(key):
				continue
			var info: Dictionary = monster_data[key]
			var flags: int = int(info.get("flags", 0))
			flags |= M_ASLEEP
			flags &= ~M_WAKENS
			info["flags"] = flags
			monster_data[key] = info
			held_count += 1

	if held_count == 0:
		_set_message(_msg(MSG_HOLD_NONE, "You feel a strange sense of loss"))
	elif held_count == 1:
		_set_message(_msg(MSG_HOLD_ONE, "The monster freezes"))
	else:
		_set_message(_msg(MSG_HOLD_MANY, "The monsters around you freeze"))

func _create_monster_effect() -> void:
	var offsets: Array[Vector2i] = []
	for dr in range(-1, 2):
		for dc in range(-1, 2):
			offsets.append(Vector2i(dr, dc))
	offsets.shuffle()

	for offset in offsets:
		if offset.x == 0 and offset.y == 0:
			continue
		var row: int = rogue_row + offset.x
		var col: int = rogue_col + offset.y
		if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
			continue
		if (int(dungeon[row][col]) & MONSTER) != 0:
			continue
		if (int(dungeon[row][col]) & int(FLOOR | TUNNEL | STAIRS | DOOR)) == 0:
			continue

		var info: Dictionary = _create_monster_info(row, col)
		var flags: int = int(info.get("flags", 0))
		if (flags & int(M_WANDERS | M_WAKENS)) != 0:
			info = _wake_monster(info)

		var key: String = _pos_key(row, col)
		dungeon[row][col] = int(dungeon[row][col]) | MONSTER
		monster_data[key] = info
		monster_glyphs[key] = str(info.get("m_char", "M"))
		_aim_monster(key)
		return

	_set_message(_msg(MSG_NO_ROOM_FOR_MONSTER, "You hear a faint cry of anguish in the distance"))

func _aggravate_monsters_effect() -> void:
	_set_message(_msg(MSG_AGGRAVATE, "You hear a high pitched humming noise"))
	for key_var in monster_data.keys():
		var key: String = str(key_var)
		if not monster_data.has(key):
			continue
		var info: Dictionary = monster_data[key]
		info = _wake_monster(info)
		var flags: int = int(info.get("flags", 0))
		flags &= ~M_IMITATES
		info["flags"] = flags
		monster_data[key] = info

func _magic_mapping_effect() -> void:
	_set_message(_msg(MSG_SCROLL_MAGIC_MAPPING, "This scroll seems to have a map on it"))
	for r in range(ROGUE_LINES):
		for c in range(ROGUE_COLUMNS):
			var cell: int = int(dungeon[r][c])
			if (cell & int(HORWALL | VERTWALL | DOOR | TUNNEL | TRAP | STAIRS | MONSTER)) == 0:
				continue
			dungeon[r][c] = cell & ~HIDDEN
			if (cell & int(HORWALL | VERTWALL | DOOR | TUNNEL | TRAP | STAIRS)) != 0:
				map_revealed[r][c] = true
			if (cell & TRAP) != 0:
				spotted_traps[_pos_key(r, c)] = true

func _take_a_nap_immediate(turns: int) -> void:
	var add_turns: int = max(1, turns)
	nap_remaining_turns = min(999, nap_remaining_turns + add_turns)
	nap_progress_elapsed = NAP_PROGRESS_INTERVAL_SECONDS

func _use_potion_effect(item_index: int) -> void:
	if item_index < 0 or item_index >= inventory_items.size():
		_set_message(_msg(MSG_NO_SUCH_ITEM, "No such item, try again"))
		return

	var item: Dictionary = inventory_items[item_index]
	var which_kind: int = posmod(int(item.get("which_kind", POTION_INCREASE_STRENGTH)), 14)

	match which_kind:
		POTION_INCREASE_STRENGTH:
			_set_message(_msg(MSG_QUAFF_STRENGTH, "You feel stronger now"))
			str_current += 1
			if str_current > str_max:
				str_max = str_current
		POTION_RESTORE_STRENGTH:
			str_current = str_max
			_set_message(_msg(MSG_QUAFF_RESTORE, "This tastes great, you feel warm all over"))
		POTION_HEALING:
			_set_message(_msg(MSG_QUAFF_HEAL, "You begin to feel better"))
			_potion_heal(false)
		POTION_EXTRA_HEALING:
			_set_message(_msg(MSG_QUAFF_EXTRA_HEAL, "You begin to feel much better"))
			_potion_heal(true)
		POTION_POISON:
			if not ring_sustain_strength:
				str_current = max(1, str_current - _get_rand(1, 3))
			_set_message(_msg(MSG_QUAFF_POISON, "You feel very sick now"))
			if hallucination_turns > 0:
				hallucination_turns = 0
				_queue_message(_msg(MSG_UNHALLUCINATE, "Everything looks SO boring now"))
		POTION_RAISE_LEVEL:
			exp_points = _exp_threshold(exp_level)
			_add_exp(1, true)
		POTION_BLINDNESS:
			_go_blind_effect()
		POTION_HALLUCINATION:
			_set_message(_msg(MSG_QUAFF_HALLUC, "Oh wow, everything seems so cosmic"))
			hallucination_turns += _get_rand(500, 800)
		POTION_DETECT_MONSTER:
			_detect_monsters_effect()
		POTION_DETECT_OBJECTS:
			_detect_objects_effect()
		POTION_CONFUSION:
			_set_message(_msg(MSG_QUAFF_CONFUSED_HALLUC if hallucination_turns > 0 else MSG_QUAFF_CONFUSED, "You feel confused"))
			player_confused_turns += _get_rand(12, 22)
		POTION_LEVITATION:
			_set_message(_msg(MSG_QUAFF_LEVITATION, "You begin to float in the air"))
			levitation_turns += _get_rand(15, 30)
			player_held = false
			bear_trap_turns = 0
		POTION_HASTE_SELF:
			_set_message(_msg(MSG_QUAFF_HASTE, "You feel yourself moving much faster"))
			haste_self_turns += _get_rand(11, 21)
			if haste_self_turns % 2 == 0:
				haste_self_turns += 1
		POTION_SEE_INVISIBLE:
			var fruit_name: String = _msg(333, "slime-mold")
			_set_message(_format_msg(_msg(MSG_QUAFF_SEE_INVIS, "This potion tastes like %s juice"), [fruit_name]))
			potion_see_invisible = true
			if blind:
				blind = false
				blind_turns = 0
				_queue_message(_msg(MSG_UNBLIND, "The veil of darkness lifts"))
			_refresh_player_vision()
		_:
			_set_message(_msg(MSG_STRANGE_FEELING, "You have a strange feeling for a moment"))

	_apply_stat_caps_original()

func _use_food_effect(item_index: int) -> void:
	if item_index < 0 or item_index >= inventory_items.size():
		_set_message(_msg(MSG_NO_SUCH_ITEM, "No such item, try again"))
		return

	var which_kind: int = _consume_random_food_kind(item_index)
	var is_fruit: bool = which_kind == 1
	var moves_gain: int = 0

	if is_fruit or _rand_percent(60):
		moves_gain = _get_rand(900, 1100)
		if is_fruit:
			var fruit_name: String = _msg(333, "slime-mold")
			_set_message(_format_msg(_msg(MSG_EAT_FRUIT, "My, that was a yummy %s"), [fruit_name]))
		else:
			if _rand_percent(10):
				_set_message(_msg(MSG_EAT_TASTY_RARE, "Yum, that tasted good"))
			else:
				_set_message(_msg(MSG_EAT_TASTY, "Yum, that tasted good"))
	else:
		moves_gain = _get_rand(700, 900)
		_set_message(_msg(MSG_EAT_AWFUL, "Yuk, that food tasted awful"))
		_add_exp(2, true)

	moves_left = int(moves_left / 3)
	moves_left += moves_gain
	hunger_text = ""

func _consume_inventory_item_at(index: int, amount: int = 1) -> void:
	if not _is_valid_inventory_index(index):
		return

	var item: Dictionary = inventory_items[index]
	var quantity: int = max(1, int(item.get("quantity", 1)))
	var consume_amount: int = max(1, amount)
	if quantity <= consume_amount:
		_remove_inventory_item_at(index)
		return

	item["quantity"] = quantity - consume_amount
	inventory_items[index] = item
	_refresh_inventory_palette()
	_update_equipment_panel()

func _consume_random_food_kind(item_index: int) -> int:
	if not _is_valid_inventory_index(item_index):
		return 0

	var item: Dictionary = inventory_items[item_index]
	var kinds: Array[int] = _food_kind_list_from_item(item)
	if kinds.is_empty():
		_consume_inventory_item_at(item_index, 1)
		return int(item.get("which_kind", 0))

	var pick_index: int = _get_rand(0, kinds.size() - 1)
	var consumed_kind: int = int(kinds[pick_index])
	kinds.remove_at(pick_index)

	if kinds.is_empty():
		_remove_inventory_item_at(item_index)
	else:
		item["food_stack_kinds"] = kinds
		item["which_kind"] = int(kinds[0])
		item["quantity"] = kinds.size()
		inventory_items[item_index] = item
		_refresh_inventory_palette()
		_update_equipment_panel()

	return consumed_kind

func _potion_heal(extra: bool) -> void:
	hp_current += exp_level
	var ratio: int = int((float(hp_current) * 100.0) / max(1.0, float(hp_max)))
	if ratio >= 100:
		var gain_full: int = 2 if extra else 1
		hp_max += gain_full
		hp_current = hp_max
	elif ratio >= 90:
		var gain_high: int = 1 if extra else 0
		hp_max += gain_high
		hp_current = hp_max
	else:
		var use_ratio: int = max(33, ratio)
		if extra:
			use_ratio += use_ratio
		var add_hp: int = int((float(use_ratio) * float(hp_max - hp_current)) / 100.0)
		hp_current = min(hp_max, hp_current + add_hp)

	if blind:
		blind = false
		blind_turns = 0
		_queue_message(_msg(MSG_UNBLIND, "The veil of darkness lifts"))
		_refresh_player_vision()

	if player_confused_turns > 0:
		if extra:
			player_confused_turns = 0
			_queue_message(_msg(MSG_UNCONFUSE_HALLUC if hallucination_turns > 0 else MSG_UNCONFUSE, "You feel less confused now"))
		else:
			player_confused_turns = int(player_confused_turns / 2) + 1

	if hallucination_turns > 0:
		if extra:
			hallucination_turns = 0
			_queue_message(_msg(MSG_UNHALLUCINATE, "Everything looks SO boring now"))
		else:
			hallucination_turns = int(hallucination_turns / 2) + 1

	_apply_stat_caps_original()

func _refresh_player_vision() -> void:
	if cur_room == PASSAGE:
		_light_passage(rogue_row, rogue_col)
	elif cur_room != NO_ROOM:
		_light_up_room(cur_room)

func _go_blind_effect() -> void:
	if not blind:
		_set_message(_msg(MSG_GO_BLIND, "A cloak of darkness falls around you"))
	blind = true
	blind_turns += _get_rand(500, 800)
	for r in range(ROGUE_LINES):
		for c in range(ROGUE_COLUMNS):
			map_visible[r][c] = false
			if cur_room != NO_ROOM:
				map_revealed[r][c] = false

func _detect_monsters_effect() -> void:
	var has_monsters: bool = false
	for key_var in monster_data.keys():
		var key: String = str(key_var)
		if not monster_data.has(key):
			continue
		has_monsters = true
		var pos: Vector2i = _key_to_pos(key)
		if pos.x >= 0 and pos.x < ROGUE_LINES and pos.y >= 0 and pos.y < ROGUE_COLUMNS:
			map_revealed[pos.x][pos.y] = true
		var info: Dictionary = monster_data[key]
		var flags: int = int(info.get("flags", 0))
		if (flags & M_IMITATES) != 0:
			flags &= ~M_IMITATES
			flags |= M_WAKENS
			info["flags"] = flags
			monster_data[key] = info

	if not has_monsters:
		_set_message(_msg(MSG_STRANGE_FEELING, "You have a strange feeling for a moment"))
		return
	detect_monster = true

func _detect_objects_effect() -> void:
	var has_objects: bool = false
	for key_var in object_data.keys():
		var key: String = str(key_var)
		var pos: Vector2i = _key_to_pos(key)
		if pos.x < 0 or pos.y < 0:
			continue
		has_objects = true
		if not blind:
			map_revealed[pos.x][pos.y] = true

	if not has_objects:
		_set_message(_msg(MSG_STRANGE_FEELING, "You have a strange feeling for a moment"))

func _use_scroll_effect(scroll_index: int) -> bool:
	if scroll_index < 0 or scroll_index >= inventory_items.size():
		_set_message(_msg(MSG_NO_SUCH_ITEM, "No such item, try again"))
		return false

	var scroll_item: Dictionary = inventory_items[scroll_index]
	var which_kind: int = posmod(int(scroll_item.get("which_kind", SCROLL_SCARE_MONSTER)), 12)
	var ench_color: String = _msg(MSG_ENCH_COLOR, "blue ")

	match which_kind:
		SCROLL_SCARE_MONSTER:
			_set_message(_msg(MSG_SCROLL_SCARE, "You hear maniacal laughter in the distance"))
		SCROLL_HOLD_MONSTER:
			_hold_monster_effect()
		SCROLL_ENCH_WEAPON:
			if equipped_weapon_index >= 0 and equipped_weapon_index < inventory_items.size():
				var weapon_item: Dictionary = inventory_items[equipped_weapon_index]
				var weapon_name: String = _inventory_display_name(weapon_item)
				var msg: String = _format_msg(_msg(MSG_SCROLL_ENCH_WEAPON, "Your %s glows %sfor a moment"), [weapon_name, "", ench_color])
				_set_message(msg)
				if _coin_toss():
					weapon_item["hit_enchant"] = int(weapon_item.get("hit_enchant", 0)) + 1
				else:
					weapon_item["d_enchant"] = int(weapon_item.get("d_enchant", 0)) + 1
				weapon_item["is_cursed"] = false
				inventory_items[equipped_weapon_index] = weapon_item
			else:
				_set_message(_msg(MSG_SCROLL_NO_WEAPON, "Your hands tingle"))
		SCROLL_ENCH_ARMOR:
			if equipped_armor_index >= 0 and equipped_armor_index < inventory_items.size():
				var armor_item: Dictionary = inventory_items[equipped_armor_index]
				var msg: String = _format_msg(_msg(MSG_SCROLL_ENCH_ARMOR, "Your armor glows %sfor a moment"), [ench_color])
				_set_message(msg)
				armor_item["d_enchant"] = int(armor_item.get("d_enchant", 0)) + 1
				armor_item["is_cursed"] = false
				inventory_items[equipped_armor_index] = armor_item
				_sync_armor_class_from_equipment()
			else:
				_set_message(_msg(MSG_SCROLL_NO_ARMOR, "Your skin crawls"))
		SCROLL_IDENTIFY:
			_set_message(_msg(MSG_SCROLL_IDENTIFY, "This is a scroll of identify"))
			_consume_inventory_item_at(scroll_index, 1)
			if not _open_identify_select_popup(-1):
				_advance_turn(1)
			return false
		SCROLL_TELEPORT:
			_put_player(NO_ROOM)
			player_held = false
			bear_trap_turns = 0
		SCROLL_SLEEP:
			_set_message(_msg(MSG_SCROLL_SLEEP, "You fall asleep"))
			_take_a_nap_immediate(_get_rand(2, 5))
			scroll_use_advance_cost = 0
		SCROLL_PROTECT_ARMOR:
			if equipped_armor_index >= 0 and equipped_armor_index < inventory_items.size():
				var armor_item: Dictionary = inventory_items[equipped_armor_index]
				_set_message(_msg(MSG_SCROLL_PROTECT_ARMOR, "Your armor is covered by a shimmering gold shield"))
				armor_item["is_protected"] = true
				armor_item["is_cursed"] = false
				inventory_items[equipped_armor_index] = armor_item
			else:
				_set_message(_msg(MSG_SCROLL_NO_ARMOR_FACE, "Your acne seems to have disappeared"))
		SCROLL_REMOVE_CURSE:
			var remove_msg: int = MSG_SCROLL_REMOVE_CURSE_HALLUC if hallucination_turns > 0 else MSG_SCROLL_REMOVE_CURSE
			_set_message(_msg(remove_msg, "You feel as though someone is watching over you"))
			for i in range(inventory_items.size()):
				var entry: Dictionary = inventory_items[i]
				entry["is_cursed"] = false
				inventory_items[i] = entry
		SCROLL_CREATE_MONSTER:
			_create_monster_effect()
		SCROLL_AGGRAVATE_MONSTER:
			_aggravate_monsters_effect()
		SCROLL_MAGIC_MAPPING:
			_magic_mapping_effect()
		_:
			_set_message(_msg(MSG_STRANGE_FEELING, "You have a strange feeling for a moment"))

	_refresh_inventory_palette()
	_update_equipment_panel()
	return true

func _remove_inventory_item_at(index: int) -> void:
	if not _is_valid_inventory_index(index):
		return

	var removed: Dictionary = inventory_items[index]
	inventory_items.remove_at(index)

	if equipped_weapon_index == index:
		equipped_weapon_index = -1
	elif equipped_weapon_index > index:
		equipped_weapon_index -= 1

	if equipped_armor_index == index:
		equipped_armor_index = -1
	elif equipped_armor_index > index:
		equipped_armor_index -= 1

	if equipped_ring_left_index == index:
		equipped_ring_left_index = -1
	elif equipped_ring_left_index > index:
		equipped_ring_left_index -= 1

	if equipped_ring_right_index == index:
		equipped_ring_right_index = -1
	elif equipped_ring_right_index > index:
		equipped_ring_right_index -= 1

	if str(removed.get("kind", "")) == "amulet":
		has_amulet = false
		for entry in inventory_items:
			if str(entry.get("kind", "")) == "amulet":
				has_amulet = true
				break
		_update_stairs_button_text()

	_refresh_inventory_palette()
	_refresh_ring_effects()
	_sync_armor_class_from_equipment()
	_update_equipment_panel()

func _update_stairs_button_text() -> void:
	pass

func _update_move_mode_button_labels() -> void:
	var step_base: String = _ui("mode.step", "STEP")
	var run_hit_base: String = _ui("mode.run_hit", "RUN HIT")
	var run_before_base: String = _ui("mode.run_before", "RUN BEFORE")

	step_mode_button.text = step_base
	run_hit_mode_button.text = run_hit_base
	run_before_mode_button.text = run_before_base

	_set_toggle_button_emphasis(step_mode_button, current_move_mode == "step")
	_set_toggle_button_emphasis(run_hit_mode_button, current_move_mode == "run_hit")
	_set_toggle_button_emphasis(run_before_mode_button, current_move_mode == "run_before")

func _update_fight_to_death_button_text() -> void:
	fight_to_death_button.button_pressed = fight_to_death_enabled
	var base: String = _ui("action.fight_to_death", "All-Out")
	fight_to_death_button.text = base
	_set_toggle_button_emphasis(fight_to_death_button, fight_to_death_enabled)

func _update_invincible_button_text() -> void:
	invincible_button.button_pressed = invincible_debug_enabled
	_set_toggle_button_emphasis(invincible_button, invincible_debug_enabled)

func _set_toggle_button_emphasis(button: Button, enabled: bool) -> void:
	button.modulate = ACTIVE_BUTTON_TINT if enabled else INACTIVE_BUTTON_TINT

func _set_welcome_message() -> void:
	var template: String = _msg(MSG_WELCOME, "Hello %s, welcome to the Dungeons of Doom...")
	if template.find("%s") != -1:
		_set_message(template % _player_name_label())
	else:
		_set_message(template)

func _msg(index: int, fallback: String) -> String:
	if localized_messages.has(index):
		return str(localized_messages[index])
	return fallback

func _player_name_label() -> String:
	return _ui("player.label", "you")

func _msg_with_player(index: int, fallback: String) -> String:
	var text: String = _msg(index, fallback)
	if text.find("%s") != -1:
		return text % _player_name_label()
	return text

func _format_monster_hit_message(monster_name: String) -> String:
	var template: String = _msg(MSG_MONSTER_HIT, "The %s hit")
	if template.find("%s%s") != -1:
		return template % [monster_name, _msg(21, "")]
	if template.find("%s") != -1:
		return template % monster_name
	return template

func _format_monster_miss_message(monster_name: String) -> String:
	var template: String = _msg(MSG_MONSTER_MISS, "The %s misses")
	if template.find("%s") != -1:
		return template % monster_name
	return template

func _format_killed_by_monster(monster_name: String) -> String:
	if _is_japanese_locale():
		return "%sに倒された" % monster_name
	return "killed by %s" % monster_name

func _trap_name_message(trap_type: String) -> String:
	match trap_type:
		"trap_door":
			return _msg(MSG_TRAP_DOOR_NAME, "trap door")
		"bear_trap":
			return _msg(MSG_BEAR_TRAP_NAME, "bear trap")
		"teleport":
			return _msg(MSG_TELE_TRAP_NAME, "teleport trap")
		"sleep":
			return _msg(MSG_SLEEP_TRAP_NAME, "sleeping gas trap")
		"rust":
			return _msg(MSG_RUST_TRAP_NAME, "rust trap")
		_:
			return _msg(MSG_DART_TRAP_NAME, "poison dart trap")

func _txt(en_text: String, ja_text: String) -> String:
	return ja_text if _is_japanese_locale() else en_text

func _ui(key: String, fallback: String) -> String:
	if localized_ui.has(key):
		return str(localized_ui[key])
	return fallback

func _uif(key: String, fallback_template: String, args: Array) -> String:
	var template: String = _ui(key, fallback_template)
	if template.find("%") == -1:
		return template
	return template % args

func _load_localized_ui_texts() -> void:
	localized_ui.clear()

	var path: String = "res://assets/localization/ui_ja.txt" if _is_japanese_locale() else "res://assets/localization/ui_en.txt"
	if not FileAccess.file_exists(path):
		return

	var text: String = FileAccess.get_file_as_string(path)
	if text.is_empty():
		return

	for raw_line in text.split("\n"):
		var line: String = raw_line.strip_edges()
		if line.is_empty() or line.begins_with("#"):
			continue
		var eq_idx: int = line.find("=")
		if eq_idx <= 0:
			continue
		var key: String = line.substr(0, eq_idx).strip_edges()
		var value: String = line.substr(eq_idx + 1).strip_edges()
		localized_ui[key] = value

func _load_localized_messages() -> void:
	localized_messages.clear()

	var path: String = "res://assets/localization/mesg_ja.txt" if _is_japanese_locale() else "res://assets/localization/mesg_en.txt"
	if not FileAccess.file_exists(path):
		return

	var text: String = FileAccess.get_file_as_string(path)
	if text.is_empty():
		return

	var rx := RegEx.new()
	rx.compile("^\\s*(\\d+)\\s+\"([^\"]*)\"(?:\\s+\"([^\"]*)\")?")

	for line in text.split("\n"):
		var m: RegExMatch = rx.search(line)
		if m == null:
			continue

		var key: int = int(m.get_string(1))
		var first: String = m.get_string(2)
		if first.is_empty():
			continue

		localized_messages[key] = first

func _start_new_level() -> void:
	_clear_level()
	_make_level()
	_populate_level_features()
	_put_player(party_room)
	hunger_text = ""

func _setup_move_mode_buttons() -> void:
	step_mode_button.pressed.connect(func() -> void: _set_move_mode("step"))
	run_hit_mode_button.pressed.connect(func() -> void: _set_move_mode("run_hit"))
	run_before_mode_button.pressed.connect(func() -> void: _set_move_mode("run_before"))
	_set_move_mode("run_before")

func _set_move_mode(mode: String) -> void:
	current_move_mode = mode
	step_mode_button.button_pressed = (mode == "step")
	run_hit_mode_button.button_pressed = (mode == "run_hit")
	run_before_mode_button.button_pressed = (mode == "run_before")
	_update_move_mode_button_labels()
	_update_direction_pad_mode_highlight()

func _setup_direction_pad_mode_highlight() -> void:
	if direction_pad_image == null or direction_pad_image.texture == null:
		return

	var tex_size: Vector2 = direction_pad_image.texture.get_size()
	if tex_size.y <= 0.0:
		return

	var mode_row_ratio: float = clamp(DIRECTION_PAD_MODE_ROW_HEIGHT_PX / tex_size.y, 0.0, 1.0)
	var shader := Shader.new()
	shader.code = """
shader_type canvas_item;

uniform int selected_mode = 2;
uniform float mode_row_ratio = 0.25;
uniform float overlay_strength = 0.85;
uniform float selected_inset_x_px = 5.0;
uniform float selected_inset_y_px = 4.0;

void fragment() {
	vec4 src = texture(TEXTURE, UV);
	if (UV.y < mode_row_ratio) {
		float sx = clamp(UV.x * 3.0, 0.0, 2.999);
		int col = int(floor(sx));
		if (col == selected_mode) {
			float tex_width = 1.0 / TEXTURE_PIXEL_SIZE.x;
			float tex_height = 1.0 / TEXTURE_PIXEL_SIZE.y;
			float col_width = tex_width / 3.0;
			float mode_row_height = tex_height * mode_row_ratio;
			float px = UV.x * tex_width;
			float py = UV.y * tex_height;
			float col_start = float(col) * col_width + selected_inset_x_px;
			float col_end = float(col + 1) * col_width - selected_inset_x_px;
			float row_start = selected_inset_y_px;
			float row_end = mode_row_height - selected_inset_y_px;
			if (px >= col_start && px < col_end && py >= row_start && py < row_end) {
				vec3 inverted = vec3(1.0) - src.rgb;
				src.rgb = mix(src.rgb, inverted, overlay_strength);
			}
		}
	}
	COLOR = src;
}
"""

	_direction_pad_mode_material = ShaderMaterial.new()
	_direction_pad_mode_material.shader = shader
	_direction_pad_mode_material.set_shader_parameter("mode_row_ratio", mode_row_ratio)
	direction_pad_image.material = _direction_pad_mode_material
	_update_direction_pad_mode_highlight()

func _update_direction_pad_mode_highlight() -> void:
	if _direction_pad_mode_material == null:
		return

	var mode_index: int = 0
	if current_move_mode == "run_hit":
		mode_index = 1
	elif current_move_mode == "run_before":
		mode_index = 2

	_direction_pad_mode_material.set_shader_parameter("selected_mode", mode_index)

func _on_play_text_resized() -> void:
	_debug_scroll("resized_before_render")
	_render_play_area()

func _on_direction_pad_gui_input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		if event.pressed:
			_apply_direction_pad_press(event.position)
	elif event is InputEventMouseButton:
		# On mobile, a screen tap can generate both touch and emulated mouse events.
		# Ignore mouse button events there to avoid duplicate moves.
		if OS.has_feature("mobile"):
			return
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			_apply_direction_pad_press(event.position)

func _on_play_text_gui_input(event: InputEvent) -> void:
	if _try_advance_post_game_from_input(event) or _try_advance_more_message_from_input(event):
		var vp: Viewport = get_viewport()
		if vp != null:
			vp.set_input_as_handled()

func _unhandled_input(event: InputEvent) -> void:
	if _try_advance_post_game_from_input(event) or _try_advance_more_message_from_input(event):
		get_viewport().set_input_as_handled()

func _is_primary_pointer_press(event: InputEvent) -> bool:
	if event is InputEventMouseButton:
		return event.button_index == MOUSE_BUTTON_LEFT and event.pressed
	if event is InputEventScreenTouch:
		return event.pressed
	return false

func _accept_message_advance_pointer_input(event: InputEvent) -> bool:
	if not _is_primary_pointer_press(event):
		return false
	var now_msec: int = Time.get_ticks_msec()
	if now_msec - _last_message_advance_input_msec < 80:
		return false
	_last_message_advance_input_msec = now_msec
	return true

func _try_advance_post_game_from_input(event: InputEvent) -> bool:
	if not game_over:
		return false
	if not (post_game_phase == "tomb" or post_game_phase == "ranking" or post_game_phase == "death_message" or post_game_phase == "win_message"):
		return false

	if not _accept_message_advance_pointer_input(event):
		return false

	if _prepare_message_for_new_input():
		return true
	return false

func _try_advance_more_message_from_input(event: InputEvent) -> bool:
	if game_over:
		return false
	if message_queue.is_empty():
		return false
	if not _accept_message_advance_pointer_input(event):
		return false
	return _consume_message_ack_if_needed()

func _apply_direction_pad_press(local_pos: Vector2) -> void:
	if _prepare_message_for_new_input():
		return

	var size := direction_pad_image.size
	if size.x <= 0.0 or size.y <= 0.0:
		return

	var input_rect: Rect2 = _get_direction_pad_input_rect()
	if input_rect.size.x <= 0.0 or input_rect.size.y <= 0.0:
		return

	# Keep edge hit tolerance proportional when the pad is scaled.
	var hit_slop_px: float = DIRECTION_PAD_HIT_SLOP_BASE_PX * (DIRECTION_PAD_SCALE / DIRECTION_PAD_HIT_SLOP_BASE_SCALE)
	var hit_rect: Rect2 = input_rect.grow(hit_slop_px)
	if not hit_rect.has_point(local_pos):
		return

	var tex: Texture2D = direction_pad_image.texture
	if tex == null:
		return

	var tex_size: Vector2 = tex.get_size()
	if tex_size.x <= 0.0 or tex_size.y <= 0.0:
		return

	var tex_pos: Vector2 = _direction_pad_local_to_texture_pos(local_pos, input_rect, tex_size)

	if tex_size.y > DIRECTION_PAD_MODE_ROW_HEIGHT_PX and tex_pos.y < DIRECTION_PAD_MODE_ROW_HEIGHT_PX:
		_apply_direction_pad_mode_press(tex_pos.x, tex_size.x)
		return

	var y_offset: float = 0.0
	var move_area_height: float = tex_size.y
	if tex_size.y > DIRECTION_PAD_MODE_ROW_HEIGHT_PX:
		y_offset = DIRECTION_PAD_MODE_ROW_HEIGHT_PX
		move_area_height = tex_size.y - y_offset

	if move_area_height <= 0.0:
		return

	var normalized_x: float = clamp(tex_pos.x / tex_size.x, 0.0, 0.999999)
	var normalized_y: float = clamp((tex_pos.y - y_offset) / move_area_height, 0.0, 0.999999)

	var x_index := int(floor(normalized_x * 3.0))
	var y_index := int(floor(normalized_y * 3.0))

	x_index = clamp(x_index, 0, 2)
	y_index = clamp(y_index, 0, 2)

	var dir_row := y_index - 1
	var dir_col := x_index - 1

	if debug_logs_enabled:
		_debug_emit("[INPUT] pos=%s tex=%s rect=%s cell=%s dir=%s" % [str(local_pos), str(tex_pos), str(input_rect), str(Vector2i(x_index, y_index)), str(Vector2i(dir_col, dir_row))])

	_apply_move_by_mode(dir_row, dir_col)

func _direction_pad_local_to_texture_pos(local_pos: Vector2, input_rect: Rect2, tex_size: Vector2) -> Vector2:
	if input_rect.size.x <= 0.0 or input_rect.size.y <= 0.0:
		return Vector2.ZERO

	var rel_pos: Vector2 = local_pos - input_rect.position
	var uv_x: float = clamp(rel_pos.x / input_rect.size.x, 0.0, 1.0)
	var uv_y: float = clamp(rel_pos.y / input_rect.size.y, 0.0, 1.0)
	return Vector2(uv_x * tex_size.x, uv_y * tex_size.y)

func _apply_direction_pad_mode_press(tex_x: float, tex_width: float) -> void:
	if tex_width <= 0.0:
		return

	var mode_index: int = int(floor((tex_x / tex_width) * 3.0))
	mode_index = clamp(mode_index, 0, 2)

	match mode_index:
		0:
			_set_move_mode("step")
		1:
			_set_move_mode("run_hit")
		_:
			_set_move_mode("run_before")

	if debug_logs_enabled:
		_debug_emit("[INPUT] mode_select index=%d x=%f width=%f" % [mode_index, tex_x, tex_width])

func _get_direction_pad_input_rect() -> Rect2:
	var control_size: Vector2 = direction_pad_image.size
	if control_size.x <= 0.0 or control_size.y <= 0.0:
		return Rect2(Vector2.ZERO, Vector2.ZERO)

	var tex: Texture2D = direction_pad_image.texture
	if tex == null:
		return Rect2(Vector2.ZERO, control_size)

	var tex_size: Vector2 = tex.get_size()
	if tex_size.x <= 0.0 or tex_size.y <= 0.0:
		return Rect2(Vector2.ZERO, control_size)

	# TextureRect uses aspect-preserving stretch here, so map input to the drawn sub-rect.
	var scale_factor: float = min(control_size.x / tex_size.x, control_size.y / tex_size.y)
	var draw_size: Vector2 = tex_size * scale_factor
	var offset: Vector2 = (control_size - draw_size) * 0.5
	return Rect2(offset, draw_size)

func _apply_move_by_mode(dr: int, dc: int) -> void:
	if _consume_targeting_direction(dr, dc):
		return

	if dr == 0 and dc == 0:
		_handle_direction_pad_center_command()
		return

	if dr != 0 or dc != 0:
		last_dir_row = dr
		last_dir_col = dc

	if current_move_mode == "run_hit":
		_run_move_hit(dr, dc)
	elif current_move_mode == "run_before":
		_run_move_before(dr, dc)
	else:
		_try_move_player(dr, dc)

func _handle_direction_pad_center_command() -> void:
	if _is_player_on_stairs():
		_on_stairs_pressed()
		return
	_on_search_pressed()

func _is_player_on_stairs() -> bool:
	if rogue_row < MIN_ROW or rogue_row > (ROGUE_LINES - 2) or rogue_col < 0 or rogue_col >= ROGUE_COLUMNS:
		return false
	return (int(dungeon[rogue_row][rogue_col]) & STAIRS) != 0

func _run_move_hit(dr: int, dc: int) -> void:
	if dr == 0 and dc == 0:
		_try_move_player(dr, dc)
		return

	action_interrupted = false
	var guard: int = 0
	while guard < 256:
		var m: int = _step_move_player(dr, dc)
		if m != MOVED or action_interrupted:
			break
		guard += 1

	_debug_scroll("run_hit_done")
	_render_play_area()

func _run_move_before(dr: int, dc: int) -> void:
	if dr == 0 and dc == 0:
		_try_move_player(dr, dc)
		return

	action_interrupted = false
	var guard: int = 0
	while guard < 256:
		var prev_row: int = rogue_row
		var prev_col: int = rogue_col
		var m: int = _step_move_player(dr, dc)
		if m != MOVED or action_interrupted:
			break

		if _next_to_something(prev_row, prev_col):
			break

		guard += 1

	_debug_scroll("run_before_done")
	_render_play_area()

func _is_passable_cell(row: int, col: int) -> bool:
	if row < MIN_ROW or row > (ROGUE_LINES - 2):
		return false
	if col < 0 or col >= ROGUE_COLUMNS:
		return false

	var cell: int = int(dungeon[row][col])
	if (cell & HIDDEN) != 0:
		return (cell & TRAP) != 0

	var passable: int = int(FLOOR | TUNNEL | DOOR | STAIRS | TRAP)
	return (cell & passable) != 0

func _can_move(row1: int, col1: int, row2: int, col2: int) -> bool:
	if not _is_passable_cell(row2, col2):
		return false

	if row1 != row2 and col1 != col2:
		if ((int(dungeon[row1][col1]) & DOOR) != 0) or ((int(dungeon[row2][col2]) & DOOR) != 0) or (int(dungeon[row1][col2]) == 0) or (int(dungeon[row2][col1]) == 0):
			return false

	return true

func _next_to_something(drow: int, dcol: int) -> bool:
	if player_confused_turns > 0:
		return true
	if blind:
		return false

	var pass_count: int = 0

	for i in range(-1, 2):
		for j in range(-1, 2):
			if i == 0 and j == 0:
				continue

			var row: int = rogue_row + i
			var col: int = rogue_col + j

			if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
				continue

			if row == drow and col == dcol:
				continue

			var s: int = int(dungeon[row][col])
			if (s & HIDDEN) != 0:
				continue

			if (s & int(MONSTER | OBJECT | STAIRS)) != 0:
				if (row == drow or col == dcol) and not (row == rogue_row or col == rogue_col):
					continue
				return true

			if (s & TRAP) != 0:
				if (row == drow or col == dcol) and not (row == rogue_row or col == rogue_col):
					continue
				return true

			if ((i - j == 1) or (i - j == -1)) and ((s & TUNNEL) != 0):
				pass_count += 1
				if pass_count > 1:
					return true

			if ((s & DOOR) != 0) and (i == 0 or j == 0):
				return true

	return false

func _step_move_player(dr: int, dc: int) -> int:
	if game_over:
		return MOVE_FAILED

	if dr == 0 and dc == 0:
		_advance_turn(1)
		return MOVED

	var confused_move: bool = player_confused_turns > 0
	if confused_move:
		dr = _get_rand(-1, 1)
		dc = _get_rand(-1, 1)
		if dr == 0 and dc == 0:
			dc = 1

	var new_row: int = rogue_row + dr
	var new_col: int = rogue_col + dc
	var prev_row: int = rogue_row
	var prev_col: int = rogue_col

	if not _can_move(rogue_row, rogue_col, new_row, new_col):
		return MOVE_FAILED

	if player_held:
		var held_target: int = int(dungeon[new_row][new_col])
		if (held_target & MONSTER) == 0:
			_set_message(_msg(MSG_HOLDING, "You are being held"))
			return MOVE_FAILED

	if bear_trap_turns > 0:
		var stuck_target: int = int(dungeon[new_row][new_col])
		if (stuck_target & MONSTER) == 0:
			bear_trap_turns -= 1
			_set_message(_msg(MSG_BEAR_STUCK, "You are still stuck in the bear trap"))
			_advance_turn(1)
			return MOVE_FAILED

	if ring_teleport and _rand_percent(RING_TELE_PERCENT):
		_put_player(NO_ROOM)
		_advance_turn(1)
		return STOPPED_ON_SOMETHING

	var target: int = int(dungeon[new_row][new_col])
	if (target & MONSTER) != 0:
		_attack_monster(new_row, new_col)
		_advance_turn(1)
		if fight_to_death_enabled and not game_over:
			var after_cell: int = int(dungeon[new_row][new_col])
			if (after_cell & MONSTER) != 0:
				auto_fight_active = true
				auto_fight_dir_row = dr
				auto_fight_dir_col = dc
		return STOPPED_ON_SOMETHING

	rogue_row = new_row
	rogue_col = new_col
	_handle_room_transition(prev_row, prev_col, new_row, new_col)

	var s: int = int(dungeon[new_row][new_col])
	if levitation_turns <= 0 and (s & TRAP) != 0:
		_trigger_trap(new_row, new_col)
		_advance_turn(1)
		return STOPPED_ON_SOMETHING

	if (s & OBJECT) != 0:
		_auto_pickup_on_move(new_row, new_col)

	if (s & STAIRS) != 0:
		_set_message(_ui("message.stairs.here", ""))

	_advance_turn(1)
	if confused_move:
		return STOPPED_ON_SOMETHING
	if (s & int(DOOR | STAIRS | TRAP | OBJECT | MONSTER)) != 0:
		return STOPPED_ON_SOMETHING

	return MOVED

func _try_move_player(dr: int, dc: int) -> int:
	if debug_logs_enabled:
		_debug_emit("[MOVE_REQ] from=%s delta=%s" % [str(Vector2i(rogue_col, rogue_row)), str(Vector2i(dc, dr))])

	var m: int = _step_move_player(dr, dc)
	if m == MOVE_FAILED:
		if debug_logs_enabled:
			_debug_emit("[MOVE_BLOCKED] from=%s delta=%s" % [str(Vector2i(rogue_col, rogue_row)), str(Vector2i(dc, dr))])
		return MOVE_FAILED

	if dr == 0 and dc == 0:
		_debug_scroll("wait_applied_before_render")
	else:
		_debug_scroll("move_applied_before_render")
	_render_play_area()
	return m

func _setup_state() -> void:
	dungeon.clear()
	for r in range(ROGUE_LINES):
		var row: Array[int] = []
		row.resize(ROGUE_COLUMNS)
		row.fill(NOTHING)
		dungeon.append(row)

	rooms.clear()
	for _i in range(MAXROOMS):
		rooms.append(_new_room())

	map_visible.clear()
	map_revealed.clear()
	rooms_visited.clear()
	rooms_visited.resize(MAXROOMS)
	rooms_visited.fill(false)
	spotted_traps.clear()
	for _r in range(ROGUE_LINES):
		var v_row: Array[bool] = []
		v_row.resize(ROGUE_COLUMNS)
		v_row.fill(false)
		map_visible.append(v_row)

		var k_row: Array[bool] = []
		k_row.resize(ROGUE_COLUMNS)
		k_row.fill(false)
		map_revealed.append(k_row)

	party_counter = _get_rand(1, PARTY_TIME)
	called_name_by_kind.clear()
	id_status_by_kind.clear()
	_initialize_identification_tables()

func _initialize_identification_tables() -> void:
	potion_color_per_kind = _shuffled_index_list(POTION_COLORS_EN.size())
	wand_material_per_kind = _take_unique_indices(WAND_MATERIALS_EN.size(), 10)
	ring_gem_per_kind = _take_unique_indices(RING_GEMS_EN.size(), 11)
	scroll_title_tokens_per_kind.clear()
	for _i in range(12):
		scroll_title_tokens_per_kind.append(_generate_scroll_title_tokens())

func _shuffled_index_list(size: int) -> Array[int]:
	var indices: Array[int] = []
	for i in range(size):
		indices.append(i)
	for i in range(indices.size()):
		var j: int = _get_rand(i, indices.size() - 1)
		var t: int = indices[i]
		indices[i] = indices[j]
		indices[j] = t
	return indices

func _take_unique_indices(pool_size: int, count: int) -> Array[int]:
	var pool: Array[int] = _shuffled_index_list(pool_size)
	var picked: Array[int] = []
	for i in range(min(count, pool.size())):
		picked.append(pool[i])
	return picked

func _generate_scroll_title_tokens() -> Array[int]:
	var tokens: Array[int] = []
	var count: int = _get_rand(2, 5)
	for _i in range(count):
		tokens.append(_get_rand(0, SCROLL_SYLLABLES_EN.size() - 1))
	return tokens

func _render_scroll_title_tokens(tokens: Array[int]) -> String:
	if tokens.is_empty():
		return _make_scroll_title()

	if _is_japanese_locale():
		var title_ja: String = ""
		for token in tokens:
			title_ja += SCROLL_SYLLABLES_JA[posmod(int(token), SCROLL_SYLLABLES_JA.size())]
		return "「%s」" % title_ja

	var title_en: String = ""
	for token in tokens:
		title_en += SCROLL_SYLLABLES_EN[posmod(int(token), SCROLL_SYLLABLES_EN.size())]
	return "'%s'" % title_en

func _new_room() -> Dictionary:
	var doors: Array = []
	for _i in range(4):
		doors.append({
			"oth_room": NO_ROOM,
			"oth_row": 0,
			"oth_col": 0,
			"door_row": 0,
			"door_col": 0,
		})

	return {
		"top_row": 0,
		"bottom_row": 0,
		"left_col": 0,
		"right_col": 0,
		"is_room": R_NOTHING,
		"doors": doors,
	}

func _clear_level() -> void:
	for i in range(MAXROOMS):
		rooms[i] = _new_room()

	for r in range(ROGUE_LINES):
		for c in range(ROGUE_COLUMNS):
			dungeon[r][c] = NOTHING

	rogue_row = -1
	rogue_col = -1
	stairs_pos = Vector2i(-1, -1)
	monster_glyphs.clear()
	object_glyphs.clear()
	object_data.clear()
	monster_data.clear()
	trap_data.clear()
	detect_monster = false
	party_room = NO_ROOM
	player_held = false
	bear_trap_turns = 0
	potion_see_invisible = false
	trap_door_pending = false

	for r in range(ROGUE_LINES):
		for c in range(ROGUE_COLUMNS):
			map_visible[r][c] = false
			map_revealed[r][c] = false

	rooms_visited.fill(false)
	spotted_traps.clear()

func _populate_level_features() -> void:
	if _should_generate_objects_for_level_original():
		if cur_level == party_counter:
			_make_party_original()
			party_counter = _next_party_original()
		_place_objects(_object_count_for_level_original())
		_place_gold_original()
	_place_amulet_if_needed()
	_place_stairs()
	_place_traps(_trap_count_for_level())
	_place_monsters(_get_rand(4, 6))

func _next_party_original() -> int:
	var n: int = cur_level
	while n % PARTY_TIME != 0:
		n += 1
	return _get_rand(n + 1, n + PARTY_TIME)

func _gr_room_original() -> int:
	for _attempt in range(100):
		var i: int = _get_rand(0, MAXROOMS - 1)
		if _room_has_any(i, R_ROOM | R_MAZE):
			return i
	for i in range(MAXROOMS):
		if _room_has_any(i, R_ROOM | R_MAZE):
			return i
	return 0

func _make_party_original() -> void:
	party_room = _gr_room_original()
	var n: int = _party_objects_original(party_room) if _rand_percent(99) else 11
	if _rand_percent(99):
		_party_monsters_original(party_room, n)

func _party_objects_original(rn: int) -> int:
	if rn < 0 or rn >= rooms.size():
		return 0

	var room_info: Dictionary = rooms[rn]
	var interior_height: int = (int(room_info.get("bottom_row", 0)) - int(room_info.get("top_row", 0))) - 1
	var interior_width: int = (int(room_info.get("right_col", 0)) - int(room_info.get("left_col", 0))) - 1
	var capacity: int = interior_height * interior_width
	if capacity <= 2:
		return 0

	var n: int = _get_rand(5, 10)
	if n > capacity:
		n = capacity - 2

	var placed: int = 0
	for _i in range(n):
		var found: bool = false
		var row: int = 0
		var col: int = 0
		for _j in range(250):
			row = _get_rand(int(room_info.get("top_row", 0)) + 1, int(room_info.get("bottom_row", 0)) - 1)
			col = _get_rand(int(room_info.get("left_col", 0)) + 1, int(room_info.get("right_col", 0)) - 1)
			var cell: int = int(dungeon[row][col])
			if cell == FLOOR or cell == TUNNEL:
				found = true
				break
		if not found:
			continue

		var key: String = _pos_key(row, col)
		var item_info: Dictionary = _generate_non_gold_object_info_original()
		object_glyphs[key] = _glyph_from_kind(str(item_info.get("kind", KIND_ITEM)))
		object_data[key] = item_info
		dungeon[row][col] = int(dungeon[row][col]) | OBJECT
		placed += 1

	return placed

func _no_room_for_monster_original(rn: int) -> bool:
	if rn < 0 or rn >= rooms.size():
		return true

	var room_info: Dictionary = rooms[rn]
	for row in range(int(room_info.get("top_row", 0)) + 1, int(room_info.get("bottom_row", 0))):
		for col in range(int(room_info.get("left_col", 0)) + 1, int(room_info.get("right_col", 0))):
			if (int(dungeon[row][col]) & MONSTER) == 0:
				return false
	return true

func _party_monsters_original(rn: int, n: int) -> void:
	if rn < 0 or rn >= rooms.size():
		return

	var room_info: Dictionary = rooms[rn]
	var total: int = n * 2
	for _i in range(total):
		if _no_room_for_monster_original(rn):
			break

		var found: bool = false
		var row: int = 0
		var col: int = 0
		for _j in range(250):
			row = _get_rand(int(room_info.get("top_row", 0)) + 1, int(room_info.get("bottom_row", 0)) - 1)
			col = _get_rand(int(room_info.get("left_col", 0)) + 1, int(room_info.get("right_col", 0)) - 1)
			var cell: int = int(dungeon[row][col])
			if (cell & MONSTER) == 0 and (cell & int(FLOOR | TUNNEL)) != 0:
				found = true
				break

		if not found:
			continue

		var info: Dictionary = _create_monster_info_with_template(row, col, _select_monster_template_for_party_original())
		var flags: int = int(info.get("flags", 0))
		if (flags & M_IMITATES) == 0:
			flags |= M_WAKENS
		info["flags"] = flags

		var key: String = _pos_key(row, col)
		dungeon[row][col] = int(dungeon[row][col]) | MONSTER
		monster_data[key] = info
		monster_glyphs[key] = str(info.get("m_char", "M"))
		_aim_monster(key)

func _should_generate_objects_for_level_original() -> bool:
	return cur_level >= max_level

func _object_count_for_level_original() -> int:
	var count: int = _get_rand(2, 4) if _coin_toss() else _get_rand(3, 5)
	while _rand_percent(33):
		count += 1
	return count

func _place_gold_original() -> void:
	for i in range(MAXROOMS):
		if i < 0 or i >= rooms.size():
			continue

		var room_info: Dictionary = rooms[i]
		var is_maze: bool = (int(room_info.get("is_room", 0)) & R_MAZE) != 0
		var is_room: bool = (int(room_info.get("is_room", 0)) & R_ROOM) != 0
		if not is_maze and not is_room:
			continue

		if not is_maze and not _rand_percent(GOLD_PERCENT):
			continue

		_plant_gold_in_room(room_info, is_maze)

func _plant_gold_in_room(room_info: Dictionary, is_maze: bool) -> void:
	var top_row: int = int(room_info.get("top_row", 0)) + 1
	var bottom_row: int = int(room_info.get("bottom_row", 0)) - 1
	var left_col: int = int(room_info.get("left_col", 0)) + 1
	var right_col: int = int(room_info.get("right_col", 0)) - 1

	if top_row > bottom_row or left_col > right_col:
		return

	for _try_idx in range(50):
		var row: int = _get_rand(top_row, bottom_row)
		var col: int = _get_rand(left_col, right_col)
		var cell: int = int(dungeon[row][col])
		if cell != FLOOR and cell != TUNNEL:
			continue

		var amount: int = _get_rand(2 * cur_level, 16 * cur_level)
		if is_maze:
			amount += int(amount / 2)

		var key: String = _pos_key(row, col)
		object_glyphs[key] = "*"
		object_data[key] = {"kind": "gold", "amount": amount}
		dungeon[row][col] = int(dungeon[row][col]) | OBJECT
		return

func _trap_count_for_level() -> int:
	if cur_level <= 2:
		return 0
	if cur_level <= 7:
		return _get_rand(0, 2)
	if cur_level <= 11:
		return _get_rand(1, 2)
	if cur_level <= 16:
		return _get_rand(2, 3)
	if cur_level <= 21:
		return _get_rand(2, 4)
	if cur_level <= (AMULET_LEVEL + 2):
		return _get_rand(3, 5)
	return _get_rand(5, 10)

func _place_amulet_if_needed() -> void:
	if has_amulet:
		return
	if cur_level < AMULET_LEVEL:
		return

	var rc: Array[int] = _find_feature_cell(true)
	if rc.is_empty():
		return

	var row: int = rc[0]
	var col: int = rc[1]
	var key: String = _pos_key(row, col)
	object_glyphs[key] = ","
	object_data[key] = {"kind": "amulet"}
	dungeon[row][col] = int(dungeon[row][col]) | OBJECT

func _place_stairs() -> void:
	var rc: Array[int] = _find_feature_cell(true)
	if rc.is_empty():
		return
	var row: int = rc[0]
	var col: int = rc[1]
	dungeon[row][col] = int(dungeon[row][col]) | STAIRS
	stairs_pos = Vector2i(col, row)

func _place_objects(count: int) -> void:
	for _i in range(count):
		var rc: Array[int] = _find_feature_cell(true)
		if rc.is_empty():
			return
		var row: int = rc[0]
		var col: int = rc[1]
		var key: String = _pos_key(row, col)
		var item_info: Dictionary = _generate_non_gold_object_info_original()
		object_glyphs[key] = _glyph_from_kind(str(item_info.get("kind", KIND_ITEM)))
		object_data[key] = item_info
		dungeon[row][col] = int(dungeon[row][col]) | OBJECT

func _glyph_from_kind(kind: String) -> String:
	match kind:
		KIND_POTION:
			return "!"
		KIND_SCROLL:
			return "?"
		KIND_WEAPON:
			return ")"
		KIND_ARMOR:
			return "]"
		KIND_WAND:
			return "/"
		KIND_RING:
			return "="
		KIND_FOOD:
			return ","
		KIND_AMULET:
			return ","
		_:
			return "?"

func _generate_non_gold_object_info_original() -> Dictionary:
	# Original Rogue tracks this as a run-global counter.
	if foods_generated_on_level < int(cur_level / 3):
		foods_generated_on_level += 1
		return _generate_food_info_original()

	var kind: String = _generate_object_kind_original()
	match kind:
		KIND_SCROLL:
			return _generate_scroll_info_original()
		KIND_POTION:
			return _generate_potion_info_original()
		KIND_WAND:
			return _generate_wand_info_original()
		KIND_WEAPON:
			return _generate_weapon_info_original()
		KIND_ARMOR:
			return _generate_armor_info_original()
		KIND_FOOD:
			return _generate_food_info_original(false)
		KIND_RING:
			return _generate_ring_info_original()
		_:
			return _generate_scroll_info_original()

func _generate_object_kind_original() -> String:
	var percent: int = _get_rand(1, 91)
	if percent <= 30:
		return KIND_SCROLL
	if percent <= 60:
		return KIND_POTION
	if percent <= 64:
		return KIND_WAND
	if percent <= 74:
		return KIND_WEAPON
	if percent <= 83:
		return KIND_ARMOR
	if percent <= 88:
		return KIND_FOOD
	return KIND_RING

func _pick_index_from_threshold_roll(roll_value: int, thresholds: PackedInt32Array) -> int:
	for i in range(thresholds.size()):
		if roll_value <= thresholds[i]:
			return i
	return max(0, thresholds.size() - 1)

func _generate_scroll_info_original() -> Dictionary:
	var thresholds: PackedInt32Array = PackedInt32Array([5, 11, 16, 21, 36, 44, 51, 56, 65, 74, 80, 85])
	var which_kind: int = _pick_index_from_threshold_roll(_get_rand(0, 85), thresholds)
	return {"kind": KIND_SCROLL, "which_kind": which_kind}

func _generate_potion_info_original() -> Dictionary:
	var thresholds: PackedInt32Array = PackedInt32Array([10, 20, 30, 40, 50, 55, 65, 75, 85, 95, 105, 110, 114, 118])
	var which_kind: int = _pick_index_from_threshold_roll(_get_rand(1, 118), thresholds)
	return {"kind": KIND_POTION, "which_kind": which_kind}

func _generate_wand_info_original() -> Dictionary:
	var which_kind: int = _get_rand(0, 9)
	var cls: int
	if which_kind == WAND_KIND_MAGIC_MISSILE:
		cls = _get_rand(6, 12)
	elif which_kind == WAND_KIND_CANCELLATION:
		cls = _get_rand(5, 9)
	else:
		cls = _get_rand(3, 6)
	return {
		"kind": KIND_WAND,
		"which_kind": which_kind,
		"class": cls,
	}

func _generate_food_info_original(force_ration: bool = false) -> Dictionary:
	return {
		"kind": KIND_FOOD,
		"which_kind": 0 if force_ration or _rand_percent(80) else 1,
	}

func _generate_armor_info_original() -> Dictionary:
	var which_kind: int = _get_rand(0, ARMOR_NAMES_EN.size() - 1)
	var armor_class_base: int = which_kind + 2
	if which_kind == 5 or which_kind == 6:
		armor_class_base -= 1

	var info: Dictionary = {
		"kind": KIND_ARMOR,
		"which_kind": which_kind,
		"class": armor_class_base,
		"is_protected": false,
		"d_enchant": 0,
		"is_cursed": false,
	}

	var percent: int = _get_rand(1, 100)
	var blessing: int = _get_rand(1, 3)
	if percent <= 16:
		info["is_cursed"] = true
		info["d_enchant"] = -blessing
	elif percent <= 33:
		info["d_enchant"] = blessing

	return info

func _generate_ring_info_original() -> Dictionary:
	var which_kind: int = _get_rand(0, RING_SEARCHING)
	var info: Dictionary = {
		"kind": KIND_RING,
		"which_kind": which_kind,
		"class": 0,
		"is_cursed": false,
	}

	if which_kind == RING_TELEPORT:
		info["is_cursed"] = true
	elif which_kind == RING_ADD_STRENGTH or which_kind == RING_DEXTERITY:
		var cls: int = 0
		while cls == 0:
			cls = _get_rand(-2, 2)
		info["class"] = cls
		info["is_cursed"] = cls < 0
	elif which_kind == RING_ADORNMENT:
		info["is_cursed"] = _coin_toss()

	return info

func _generate_weapon_info_original() -> Dictionary:
	var which_kind: int = _get_rand(0, WEAPON_NAMES_EN.size() - 1)
	var info: Dictionary = {
		"kind": KIND_WEAPON,
		"which_kind": which_kind,
		"hit_enchant": 0,
		"d_enchant": 0,
		"is_cursed": false,
	}

	if which_kind == WEAPON_KIND_ARROW or which_kind == WEAPON_KIND_DAGGER or which_kind == WEAPON_KIND_SHURIKEN or which_kind == WEAPON_KIND_DART:
		info["quantity"] = _get_rand(3, 15)
		info["quiver"] = _get_rand(0, 126)
	else:
		info["quantity"] = 1
		info["quiver"] = -1

	var percent: int = _get_rand(1, 96)
	if percent <= 32:
		var increment: int = 1 if percent <= 16 else -1
		if increment < 0:
			info["is_cursed"] = true
		var blessing: int = _get_rand(1, 3)
		for _i in range(blessing):
			if _coin_toss():
				info["hit_enchant"] = int(info.get("hit_enchant", 0)) + increment
			else:
				info["d_enchant"] = int(info.get("d_enchant", 0)) + increment

	return info

func _kind_from_glyph(glyph: String) -> String:
	match glyph:
		"!":
			return KIND_POTION
		"?":
			return KIND_SCROLL
		")":
			return KIND_WEAPON
		"]":
			return KIND_ARMOR
		"/":
			return KIND_WAND
		"=":
			return KIND_RING
		_:
			return KIND_ITEM

func _kind_variants_count(kind: String) -> int:
	match kind:
		KIND_POTION:
			return POTION_COLORS_EN.size()
		KIND_SCROLL:
			return 12
		KIND_WEAPON:
			return WEAPON_NAMES_EN.size()
		KIND_ARMOR:
			return ARMOR_NAMES_EN.size()
		KIND_WAND:
			return 10
		KIND_RING:
			return 11
		_:
			return 0

func _place_traps(count: int) -> void:
	var trap_types: PackedStringArray = ["trap_door", "bear_trap", "teleport", "dart", "sleep", "rust"]
	for i in range(count):
		var rc: Array[int]
		if i == 0 and party_room != NO_ROOM and party_room >= 0 and party_room < rooms.size():
			rc = _find_trap_cell_in_party_room_original(party_room)
			if rc.is_empty():
				rc = _gr_row_col(FLOOR | MONSTER)
		else:
			rc = _gr_row_col(FLOOR | MONSTER)
		if rc.is_empty():
			return
		var row: int = rc[0]
		var col: int = rc[1]
		var trap_type: String = trap_types[_get_rand(0, trap_types.size() - 1)]
		trap_data[_pos_key(row, col)] = trap_type
		dungeon[row][col] = int(dungeon[row][col]) | TRAP | HIDDEN

func _find_trap_cell_in_party_room_original(rn: int) -> Array[int]:
	if rn < 0 or rn >= rooms.size():
		return []

	var room_info: Dictionary = rooms[rn]
	for _try_idx in range(15):
		var row: int = _get_rand(int(room_info.get("top_row", 0)) + 1, int(room_info.get("bottom_row", 0)) - 1)
		var col: int = _get_rand(int(room_info.get("left_col", 0)) + 1, int(room_info.get("right_col", 0)) - 1)
		var cell: int = int(dungeon[row][col])
		if (cell & int(OBJECT | STAIRS | TRAP | TUNNEL)) != 0:
			continue
		if cell == NOTHING:
			continue
		return [row, col]

	return []

func _place_monsters(count: int) -> void:
	for _i in range(count):
		var rc: Array[int] = _find_feature_cell(false)
		if rc.is_empty():
			return
		var row: int = rc[0]
		var col: int = rc[1]
		var key: String = _pos_key(row, col)
		var info: Dictionary = _create_monster_info(row, col)
		dungeon[row][col] = int(dungeon[row][col]) | MONSTER
		monster_glyphs[key] = str(info.get("m_char", "M"))
		monster_data[key] = info
		_aim_monster(key)

func _select_monster_template() -> Dictionary:
	for _try_idx in range(1024):
		var t: Dictionary = MONSTER_TEMPLATES[_get_rand(0, MONSTER_TEMPLATES.size() - 1)]
		if cur_level >= int(t.get("first", 1)) and cur_level <= int(t.get("last", 999)):
			return t
	return MONSTER_TEMPLATES[_get_rand(0, MONSTER_TEMPLATES.size() - 1)]

func _select_monster_template_for_party_original() -> Dictionary:
	var level_bias: int = cur_level % 3
	for _try_idx in range(1024):
		var t: Dictionary = MONSTER_TEMPLATES[_get_rand(0, MONSTER_TEMPLATES.size() - 1)]
		var first: int = int(t.get("first", 1)) - level_bias
		var last: int = int(t.get("last", 999))
		if cur_level >= first and cur_level <= last:
			return t
	return _select_monster_template()

func _wake_monster(info: Dictionary) -> Dictionary:
	if (int(info.get("flags", 0)) & M_NAPPING) == 0:
		var flags: int = int(info.get("flags", 0))
		flags &= ~M_ASLEEP
		flags &= ~M_IMITATES
		flags &= ~M_WAKENS
		info["flags"] = flags
	return info

func _create_monster_info(row: int, col: int) -> Dictionary:
	return _create_monster_info_with_template(row, col, _select_monster_template())

func _create_monster_info_with_template(row: int, col: int, t: Dictionary) -> Dictionary:
	var flags: int = int(t.get("flags", M_ASLEEP))
	var m_char: String = str(t.get("char", "M"))
	if cur_level > 28:
		flags |= M_HASTED

	if (flags & M_WANDERS) != 0 and _coin_toss():
		var tmp: Dictionary = {"flags": flags}
		tmp = _wake_monster(tmp)
		flags = int(tmp.get("flags", flags))

	return {
		"flags": flags,
		"m_char": m_char,
		"m_damage": str(t.get("damage", "1d3")),
		"m_hit_chance": int(t.get("hit", 65)),
		"exp": int(t.get("exp", 5)),
		"drop_percent": _default_monster_drop_percent_for_char(m_char),
		"atk": int(t.get("atk", 3)),
		"hp": _get_rand(int(t.get("hp_min", 3)), int(t.get("hp_max", 8))),
		"trow": NO_ROOM,
		"tcol": 0,
		"o_row": row,
		"o_col": col,
		"o": 0,
		"slowed_toggle": false,
		"moves_confused": 0,
		"nap_length": 0,
		"stationary_damage": 0,
	}

func _find_feature_cell(allow_tunnel: bool) -> Array[int]:
	for _attempt in range(400):
		var row: int = _get_rand(MIN_ROW, ROGUE_LINES - 2)
		var col: int = _get_rand(0, ROGUE_COLUMNS - 1)
		if _can_place_feature_at(row, col, allow_tunnel):
			return [row, col]
	return []

func _can_place_feature_at(row: int, col: int, allow_tunnel: bool) -> bool:
	if row == rogue_row and col == rogue_col:
		return false

	var cell: int = int(dungeon[row][col])
	if (cell & int(STAIRS | TRAP | OBJECT | MONSTER | DOOR | HORWALL | VERTWALL)) != 0:
		return false

	if (cell & FLOOR) != 0:
		return true

	if allow_tunnel and (cell & TUNNEL) != 0:
		return true

	return false

func _pos_key(row: int, col: int) -> String:
	return "%d,%d" % [row, col]

func _attack_monster(row: int, col: int) -> void:
	var key: String = _pos_key(row, col)
	if not monster_data.has(key):
		dungeon[row][col] = int(dungeon[row][col]) & ~MONSTER
		monster_glyphs.erase(key)
		_set_message(_msg_with_player(MSG_YOU_HIT, "You hit."))
		return

	var info: Dictionary = monster_data[key]
	if _check_imitator(key):
		return

	info = monster_data.get(key, info)
	var hit_chance: int = _get_hit_chance()
	if not invincible_debug_enabled and not _rand_percent(max(1, hit_chance)):
		_set_message(_msg_with_player(MSG_MISS, "%s missed"))
		return

	var dmg: int = int(info.get("hp", 1)) if invincible_debug_enabled else _get_weapon_damage()
	info["hp"] = int(info["hp"]) - dmg
	if monster_data.has(key):
		monster_data[key] = info
	_set_message(_msg_with_player(MSG_YOU_HIT, "You hit."))

	if int(info["hp"]) <= 0:
		_try_defeat_monster(key)
		return

func _on_pickup_pressed() -> void:
	if _prepare_message_for_new_input():
		return

	var cell: int = int(dungeon[rogue_row][rogue_col])
	if (cell & OBJECT) == 0:
		_set_message(_ui("message.pickup.nothing_here", ""))
		_render_play_area()
		return

	var pickup_result: int = _pickup_current_tile_object()
	if pickup_result == PICKUP_RESULT_SUCCESS:
		_advance_turn(1)
	_update_inventory_header()
	_render_play_area()

func _on_trap_identify_pressed() -> void:
	if _prepare_message_for_new_input():
		return
	_begin_targeting("trap_identify")

func _on_pickup_toggle_toggled(enabled: bool) -> void:
	auto_pickup_non_gold_enabled = not enabled
	_update_pickup_toggle_button_text(_is_japanese_locale())

func _identify_trap_in_direction(dr: int, dc: int) -> void:
	var row: int = rogue_row + dr
	var col: int = rogue_col + dc
	if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
		_show_message_and_render(_msg(MSG_NO_TRAP_THERE, "No trap there"))
		return

	var cell: int = int(dungeon[row][col])
	if (cell & TRAP) == 0 or (cell & HIDDEN) != 0:
		_show_message_and_render(_msg(MSG_NO_TRAP_THERE, "No trap there"))
		return

	var key: String = _pos_key(row, col)
	var trap_type: String = str(trap_data.get(key, "dart"))
	_show_message_and_render(_trap_name_message(trap_type))

func _on_search_pressed() -> void:
	if _prepare_message_for_new_input():
		return

	var found_count: int = _search_once()
	if found_count > 0:
		_set_message(_ui("message.search.found", ""))
	else:
		_set_message(_ui("message.search.failed", ""))

	_maybe_advance_turn_for_manual_search()
	_render_play_area()

func _on_search10_pressed() -> void:
	if _prepare_message_for_new_input():
		return

	var found: bool = false
	var hidden_total: int = _count_hidden_neighbors()
	var shown: int = 0
	for _i in range(10):
		var found_this: int = _search_once()
		if found_this > 0:
			found = true
			shown += found_this
		if hidden_total > 0 and shown >= hidden_total:
			break
		if auto_fight_active:
			break
		_maybe_advance_turn_for_manual_search()

	if found:
		_set_message(_ui("message.search.found", ""))
	else:
		_set_message(_ui("message.search.failed", ""))

	_render_play_area()

func _on_rest10_pressed() -> void:
	if _prepare_message_for_new_input():
		return

	_rest_original(10)
	_render_play_area()

func _on_rest_pressed() -> void:
	if _prepare_message_for_new_input():
		return

	_rest_original(1)
	_render_play_area()

func _rest_original(count: int) -> void:
	var turns: int = max(1, count)
	for _i in range(turns):
		if _rest_interrupted_original():
			break
		_advance_turn(1)
		if _rest_interrupted_original():
			break

func _rest_interrupted_original() -> bool:
	if game_over:
		return true
	if nap_remaining_turns > 0:
		return true
	if auto_fight_active:
		return true
	return action_interrupted

func _on_fight_to_death_pressed() -> void:
	if _prepare_message_for_new_input():
		return
	if game_over:
		return
	fight_to_death_enabled = fight_to_death_button.button_pressed
	_update_fight_to_death_button_text()
	_set_message(_ui("message.fight_to_death.on", "Fight-to-death mode ON.") if fight_to_death_enabled else _ui("message.fight_to_death.off", "Fight-to-death mode OFF."))
	_render_play_area()

func _on_invincible_toggled(enabled: bool) -> void:
	invincible_debug_enabled = enabled
	if enabled:
		_clear_status_locks_if_invincible()
	_update_invincible_button_text()
	_set_message(_ui("message.invincible.on", "Invincible mode ON.") if enabled else _ui("message.invincible.off", "Invincible mode OFF."))
	_render_play_area()

func _on_interrupt_pressed() -> void:
	if game_over:
		return
	quit_confirm_pending = false

	var had_interruptible_action: bool = auto_fight_active or not pending_targeting_action.is_empty()
	if not had_interruptible_action:
		_show_message_and_render(_ui("message.interrupt.nothing", ""))
		return
	if not pending_targeting_action.is_empty():
		_clear_targeting_action()
	auto_fight_active = false
	_show_priority_message_and_render(_ui("message.interrupt.done", ""))

func _on_quit_pressed() -> void:
	if game_over:
		return

	if quit_confirm_pending:
		_quit_game()
		_render_play_area()
		return

	quit_confirm_pending = true
	_show_message_and_render(_ui("message.quit.confirm_again", ""))

func _quit_game() -> void:
	if game_over:
		return
	quit_confirm_pending = false
	death_kind = "quit"
	death_monster_name = ""
	_end_game(false, _msg(195, "quit"))

func _auto_fight_tick() -> void:
	if game_over:
		auto_fight_active = false
		return

	if not auto_fight_active:
		return

	# Keep --More-- style acknowledgment blocking: auto-fight must stop
	# until queued combat messages are explicitly acknowledged by input.
	if not top_message.is_empty() or not message_queue.is_empty():
		auto_fight_active = false
		return

	var row: int = rogue_row + auto_fight_dir_row
	var col: int = rogue_col + auto_fight_dir_col
	if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
		auto_fight_active = false
		return

	if (int(dungeon[row][col]) & MONSTER) == 0:
		auto_fight_active = false
		return

	var mres: int = _step_move_player(auto_fight_dir_row, auto_fight_dir_col)
	_render_play_area()

	if mres == MOVE_FAILED:
		auto_fight_active = false
		return

	var still_row: int = rogue_row + auto_fight_dir_row
	var still_col: int = rogue_col + auto_fight_dir_col
	if still_row < MIN_ROW or still_row > (ROGUE_LINES - 2) or still_col < 0 or still_col >= ROGUE_COLUMNS:
		auto_fight_active = false
		return
	if (int(dungeon[still_row][still_col]) & MONSTER) == 0:
		auto_fight_active = false

func _search_once() -> int:
	var found_count: int = 0
	for i in range(-1, 2):
		for j in range(-1, 2):
			var row: int = rogue_row + i
			var col: int = rogue_col + j
			if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
				continue

			var cell: int = int(dungeon[row][col])
			if (cell & HIDDEN) != 0 and _rand_percent(17 + _effective_exp_with_rings()):
				dungeon[row][col] = cell & ~HIDDEN
				if not blind and (row != rogue_row or col != rogue_col):
					map_revealed[row][col] = true
				if (cell & TRAP) != 0:
					spotted_traps[_pos_key(row, col)] = true
				found_count += 1
	return found_count

func _count_hidden_neighbors() -> int:
	var count: int = 0
	for i in range(-1, 2):
		for j in range(-1, 2):
			var row: int = rogue_row + i
			var col: int = rogue_col + j
			if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
				continue
			if (int(dungeon[row][col]) & HIDDEN) != 0:
				count += 1
	return count

func _maybe_advance_turn_for_manual_search() -> void:
	_manual_search_reg_toggle = not _manual_search_reg_toggle
	if _manual_search_reg_toggle:
		_advance_turn(1)

func _on_throw_pressed() -> void:
	if _prepare_message_for_new_input():
		return
	_begin_targeting("throw")

func _weapon_damage_spec_for_kind(which_kind: int) -> String:
	match which_kind:
		WEAPON_KIND_DAGGER:
			return "1d3"
		WEAPON_KIND_ARROW:
			return "1d2"
		WEAPON_KIND_MACE:
			return "2d3"
		WEAPON_KIND_LONG_SWORD:
			return "3d4"
		WEAPON_KIND_BOW:
			return "1d1"
		WEAPON_KIND_DART:
			return "1d1"
		WEAPON_KIND_SHURIKEN:
			return "1d4"
		WEAPON_KIND_TWO_HANDED_SWORD:
			return "4d5"
		_:
			return "1d2"

func _equipped_weapon_kind() -> int:
	if not _is_valid_inventory_index(equipped_weapon_index):
		return -1
	return int(inventory_items[equipped_weapon_index].get("which_kind", -1))

func _is_bow_equipped() -> bool:
	return _equipped_weapon_kind() == WEAPON_KIND_BOW

func _throw_hit_chance(throw_item: Dictionary, was_wielded: bool) -> int:
	var hit_chance: int = _hit_chance_for_weapon_item(throw_item)
	var which_kind: int = int(throw_item.get("which_kind", -1))
	if which_kind == WEAPON_KIND_ARROW and _is_bow_equipped():
		hit_chance += int(hit_chance / 3)
	elif was_wielded and (which_kind == WEAPON_KIND_DAGGER or which_kind == WEAPON_KIND_SHURIKEN or which_kind == WEAPON_KIND_DART):
		hit_chance += int(hit_chance / 3)
	return hit_chance

func _weapon_damage_numbers_from_item(weapon_item: Dictionary) -> Vector2i:
	var which_kind: int = int(weapon_item.get("which_kind", -1))
	var spec: String = _weapon_damage_spec_for_kind(which_kind)
	var parts: PackedStringArray = spec.split("d")
	if parts.size() != 2:
		return Vector2i(1, 1)
	return Vector2i(int(parts[0]), int(parts[1]))

func _weapon_to_hit_from_item(weapon_item: Dictionary) -> int:
	var damage_nums: Vector2i = _weapon_damage_numbers_from_item(weapon_item)
	return damage_nums.x + int(weapon_item.get("hit_enchant", 0))

func _hit_chance_for_weapon_item(weapon_item: Dictionary) -> int:
	var to_hit: int = _weapon_to_hit_from_item(weapon_item)
	return 40 + (3 * to_hit) + ((2 * _effective_exp_with_rings()) - ring_count)

func _weapon_damage_from_item(weapon_item: Dictionary) -> int:
	var damage_nums: Vector2i = _weapon_damage_numbers_from_item(weapon_item)
	var to_hit: int = damage_nums.x + int(weapon_item.get("hit_enchant", 0))
	var die_sides: int = max(1, damage_nums.y + int(weapon_item.get("d_enchant", 0)))
	var damage: int = _roll_damage("%dd%d" % [to_hit, die_sides])
	damage += _damage_for_strength()
	damage += int(((_effective_exp_with_rings() - ring_count) + 1) / 2)
	return damage

func _throw_damage(throw_item: Dictionary, was_wielded: bool) -> int:
	var which_kind: int = int(throw_item.get("which_kind", -1))
	var damage: int = _weapon_damage_from_item(throw_item)

	if which_kind == WEAPON_KIND_ARROW and _is_bow_equipped():
		damage += _weapon_damage_from_item(inventory_items[equipped_weapon_index])
		damage = int((damage * 2) / 3)
	elif was_wielded and (which_kind == WEAPON_KIND_DAGGER or which_kind == WEAPON_KIND_SHURIKEN or which_kind == WEAPON_KIND_DART):
		damage = int((damage * 3) / 2)

	return damage

func _monster_hp_cap_from_info(info: Dictionary) -> int:
	var m_char: String = str(info.get("m_char", "M"))
	if MONSTER_HP_TO_KILL.has(m_char):
		return max(1, int(MONSTER_HP_TO_KILL[m_char]))
	return max(1, int(info.get("hp", 1)))

func _find_teleport_destination_for_monster() -> Array[int]:
	var allowed: int = int(FLOOR | TUNNEL | STAIRS | OBJECT)
	for _i in range(2000):
		var row: int = _get_rand(MIN_ROW, ROGUE_LINES - 2)
		var col: int = _get_rand(0, ROGUE_COLUMNS - 1)
		var cell: int = int(dungeon[row][col])
		if cell == NOTHING:
			continue
		if (cell & MONSTER) != 0:
			continue
		if row == rogue_row and col == rogue_col:
			continue
		if (cell & ~allowed) != 0:
			continue
		return [row, col]
	return []

func _apply_thrown_potion_effect_to_monster(monster_key: String, which_kind: int) -> void:
	if not monster_data.has(monster_key):
		return

	var info: Dictionary = monster_data[monster_key]
	var flags: int = int(info.get("flags", 0))
	var hp_now: int = int(info.get("hp", 1))
	var hp_cap: int = _monster_hp_cap_from_info(info)

	match which_kind:
		POTION_EXTRA_HEALING:
			hp_now += int((hp_cap - hp_now) * 2 / 3)
		POTION_INCREASE_STRENGTH, POTION_HEALING, POTION_RAISE_LEVEL:
			hp_now += int((hp_cap - hp_now) / 5)
		POTION_POISON:
			hp_now -= int(hp_now / 4) + 1
		POTION_BLINDNESS:
			flags |= M_ASLEEP | M_WAKENS
		POTION_CONFUSION:
			flags |= M_CONFUSED
			info["moves_confused"] = int(info.get("moves_confused", 0)) + _get_rand(12, 22)
		POTION_HASTE_SELF:
			if (flags & M_SLOWED) != 0:
				flags &= ~M_SLOWED
			else:
				flags |= M_HASTED
		_:
			pass

	info["hp"] = hp_now
	info["flags"] = flags
	monster_data[monster_key] = info

func _apply_wand_effect_to_monster(monster_key: String, which_kind: int) -> String:
	if not monster_data.has(monster_key):
		return monster_key

	var info: Dictionary = monster_data[monster_key]
	var flags: int = int(info.get("flags", 0))

	match which_kind:
		WAND_KIND_SLOW_MONSTER:
			if (flags & M_HASTED) != 0:
				flags &= ~M_HASTED
			else:
				flags |= M_SLOWED
				info["slowed_toggle"] = 0
		WAND_KIND_HASTE_MONSTER:
			if (flags & M_SLOWED) != 0:
				flags &= ~M_SLOWED
			else:
				flags |= M_HASTED
		WAND_KIND_TELEPORT_AWAY:
			if (flags & M_HOLDS) != 0:
				player_held = false
			var rc: Array[int] = _find_teleport_destination_for_monster()
			if not rc.is_empty():
				monster_data[monster_key]["flags"] = flags
				return _move_monster_key(monster_key, rc[0], rc[1])
		WAND_KIND_CONFUSE_MONSTER:
			flags |= M_CONFUSED
			info["moves_confused"] = int(info.get("moves_confused", 0)) + _get_rand(12, 22)
		WAND_KIND_INVISIBILITY:
			flags |= M_INVISIBLE
		WAND_KIND_POLYMORPH:
			if (flags & M_HOLDS) != 0:
				player_held = false
			var pos: Vector2i = _key_to_pos(monster_key)
			var replacement: Dictionary = _create_monster_info(pos.x, pos.y)
			if (int(replacement.get("flags", 0)) & M_IMITATES) == 0:
				replacement = _wake_monster(replacement)
			replacement["o_row"] = pos.x
			replacement["o_col"] = pos.y
			monster_data[monster_key] = replacement
			monster_glyphs[monster_key] = str(replacement.get("m_char", "M"))
			return monster_key
		WAND_KIND_SLEEP:
			flags |= M_ASLEEP | M_NAPPING
			info["nap_length"] = _get_rand(3, 6)
		WAND_KIND_MAGIC_MISSILE:
			info["hp"] = int(info.get("hp", 1)) - _get_weapon_damage()
		WAND_KIND_CANCELLATION:
			if (flags & M_HOLDS) != 0:
				player_held = false
			if (flags & M_STEALS_ITEM) != 0:
				info["drop_percent"] = 0
			flags &= ~(M_FLIES | M_FLITS | M_FREEZES | M_STINGS | M_DRAINS_LIFE | M_DROPS_LEVEL | M_RUSTS | M_STEALS_GOLD | M_STEALS_ITEM | M_INVISIBLE | M_FLAMES | M_IMITATES | M_CONFUSES | M_SEEKS_GOLD | M_HOLDS)
		WAND_KIND_DO_NOTHING:
			_queue_message(_msg(282, "Nothing happens"))
		_:
			pass

	info["flags"] = flags
	monster_data[monster_key] = info
	return monster_key

func _try_defeat_monster(monster_key: String) -> bool:
	if not monster_data.has(monster_key):
		return false

	var info: Dictionary = monster_data[monster_key]
	if int(info.get("hp", 1)) > 0:
		return false

	var pos: Vector2i = _key_to_pos(monster_key)
	_spawn_monster_drop_on_defeat(info, pos.x, pos.y)
	dungeon[pos.x][pos.y] = int(dungeon[pos.x][pos.y]) & ~MONSTER
	monster_glyphs.erase(monster_key)
	monster_data.erase(monster_key)
	_release_hold_if_needed()
	_add_exp(int(info.get("exp", 1)), true)
	var kill_msg: String = _msg(MSG_KILL_MONSTER, "Defeated the %s")
	var monster_name: String = _monster_name_from_info(info)
	if kill_msg.find("%s") != -1:
		_queue_message(kill_msg % monster_name)
	else:
		_queue_message(_ui("message.defeated.simple", ""))
	return true

func _monster_drop_percent_from_info(info: Dictionary) -> int:
	if info.has("drop_percent"):
		return max(0, int(info.get("drop_percent", 0)))
	var m_char: String = str(info.get("m_char", "M"))
	if MONSTER_DROP_PERCENT.has(m_char):
		return _default_monster_drop_percent_for_char(m_char)
	return 0

func _default_monster_drop_percent_for_char(m_char: String) -> int:
	if MONSTER_DROP_PERCENT.has(m_char):
		return int(MONSTER_DROP_PERCENT[m_char])
	return 0

func _can_place_monster_drop_at(row: int, col: int) -> bool:
	if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
		return false
	var cell: int = int(dungeon[row][col])
	if (cell & int(OBJECT | STAIRS | TRAP)) != 0:
		return false
	return (cell & int(TUNNEL | FLOOR | DOOR)) != 0

func _find_monster_drop_position(center_row: int, center_col: int) -> Vector2i:
	for n in range(6):
		for i in range(-n, n + 1):
			var row1: int = center_row + n
			var col1: int = center_col + i
			if _can_place_monster_drop_at(row1, col1):
				return Vector2i(row1, col1)
			var row2: int = center_row - n
			var col2: int = center_col + i
			if _can_place_monster_drop_at(row2, col2):
				return Vector2i(row2, col2)

		for i in range(-n, n + 1):
			var row3: int = center_row + i
			var col3: int = center_col - n
			if _can_place_monster_drop_at(row3, col3):
				return Vector2i(row3, col3)
			var row4: int = center_row + i
			var col4: int = center_col + n
			if _can_place_monster_drop_at(row4, col4):
				return Vector2i(row4, col4)

	return Vector2i(-1, -1)

func _spawn_monster_drop_on_defeat(info: Dictionary, row: int, col: int) -> void:
	if cur_level < max_level:
		return

	var drop_item: Dictionary = {}
	var flags: int = int(info.get("flags", 0))
	if (flags & M_STEALS_GOLD) != 0:
		drop_item = {
			"kind": KIND_GOLD,
			"amount": _get_rand(cur_level * 15, cur_level * 30),
		}
	else:
		if not _rand_percent(_monster_drop_percent_from_info(info)):
			return
		drop_item = _generate_non_gold_object_info_original()

	var drop_pos: Vector2i = _find_monster_drop_position(row, col)
	if drop_pos.x < 0:
		return

	var drop_key: String = _pos_key(drop_pos.x, drop_pos.y)
	object_data[drop_key] = drop_item
	if str(drop_item.get("kind", KIND_ITEM)) == KIND_GOLD:
		object_glyphs[drop_key] = "*"
	else:
		object_glyphs[drop_key] = _glyph_from_kind(str(drop_item.get("kind", KIND_ITEM)))
	dungeon[drop_pos.x][drop_pos.y] = int(dungeon[drop_pos.x][drop_pos.y]) | OBJECT

func _throw_at_monster(throw_item: Dictionary, was_wielded: bool, row: int, col: int) -> bool:
	var key: String = _pos_key(row, col)
	if not monster_data.has(key):
		return false

	var info: Dictionary = monster_data[key]
	var pre_flags: int = int(info.get("flags", 0)) & ~M_SEEKS_GOLD
	info["flags"] = pre_flags
	info = _wake_monster(info)
	monster_data[key] = info
	var base_msg: String = _msg(212, "%s")
	var thrown_name: String = _inventory_display_name(throw_item)
	if base_msg.find("%s") != -1:
		base_msg = base_msg % thrown_name
	else:
		base_msg = thrown_name

	if not invincible_debug_enabled and not _rand_percent(_throw_hit_chance(throw_item, was_wielded)):
		_set_message(base_msg + _msg(213, " misses."))
		return false

	var throw_kind: String = str(throw_item.get("kind", KIND_ITEM))
	var which_kind: int = int(throw_item.get("which_kind", -1))
	var resolved_key: String = key

	if not invincible_debug_enabled and throw_kind == KIND_WAND and _rand_percent(75):
		resolved_key = _apply_wand_effect_to_monster(key, which_kind)
	elif not invincible_debug_enabled and throw_kind == KIND_POTION:
		_apply_thrown_potion_effect_to_monster(key, which_kind)
	else:
		var throw_damage: int = int(info.get("hp", 1)) if invincible_debug_enabled else _throw_damage(throw_item, was_wielded)
		info["hp"] = int(info.get("hp", 1)) - throw_damage
		monster_data[key] = info

	_set_message(base_msg + _msg(214, " hits."))
	if not monster_data.has(resolved_key):
		return true

	_try_defeat_monster(resolved_key)
	return true

func _can_drop_thrown_item_at(row: int, col: int) -> bool:
	if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
		return false
	if object_data.has(_pos_key(row, col)):
		return false

	var cell: int = int(dungeon[row][col])
	if cell == NOTHING:
		return false
	if (cell & int(HORWALL | VERTWALL | HIDDEN)) != 0 and (cell & TRAP) == 0:
		return false
	var allowed: int = int(FLOOR | TUNNEL | DOOR | MONSTER | TRAP)
	return (cell & ~allowed) == 0

func _drop_thrown_item(throw_item: Dictionary, row: int, col: int) -> bool:
	var candidates: Array[Vector2i] = [Vector2i(0, 0)]
	var around: Array[Vector2i] = [
		Vector2i(-1, -1),
		Vector2i(-1, 0),
		Vector2i(-1, 1),
		Vector2i(0, -1),
		Vector2i(0, 1),
		Vector2i(1, -1),
		Vector2i(1, 0),
		Vector2i(1, 1),
	]
	for i in range(around.size()):
		var j: int = _get_rand(i, around.size() - 1)
		var tmp: Vector2i = around[i]
		around[i] = around[j]
		around[j] = tmp
	candidates.append_array(around)

	for offset in candidates:
		var rr: int = row + offset.x
		var cc: int = col + offset.y
		if not _can_drop_thrown_item_at(rr, cc):
			continue

		var key: String = _pos_key(rr, cc)
		var dropped: Dictionary = throw_item.duplicate(true)
		dropped["kind"] = str(throw_item.get("kind", KIND_ITEM))
		dropped["quantity"] = 1
		object_glyphs[key] = _glyph_from_kind(str(dropped.get("kind", KIND_ITEM)))
		object_data[key] = dropped
		dungeon[rr][cc] = int(dungeon[rr][cc]) | OBJECT
		return true

	var vanish_msg: String = _msg(215, "The %s vanishes as it hits the ground")
	var thrown_name: String = _inventory_display_name(throw_item)
	if vanish_msg.find("%s") != -1:
		_set_message(vanish_msg % thrown_name)
	else:
		_set_message(vanish_msg)
	return false

func _consume_thrown_inventory_item(index: int) -> Dictionary:
	if not _is_valid_inventory_index(index):
		return {}

	var item: Dictionary = inventory_items[index]
	var quantity: int = int(item.get("quantity", 1))
	var thrown_piece: Dictionary = item.duplicate(true)
	thrown_piece["quantity"] = 1

	if quantity > 1:
		item["quantity"] = quantity - 1
		inventory_items[index] = item
		_refresh_inventory_palette()
		_update_equipment_panel()
		return thrown_piece

	_remove_inventory_item_at(index)
	return thrown_piece

func _throw_selected_item_in_direction(throw_index: int, dir_row: int, dir_col: int) -> void:
	if throw_index < 0 or throw_index >= inventory_items.size():
		_show_message_and_render(_msg(MSG_NO_SUCH_ITEM, "No such item, try again"))
		return

	var throw_item: Dictionary = inventory_items[throw_index]
	var throw_kind: String = str(throw_item.get("kind", ""))
	if throw_kind != KIND_WEAPON and throw_kind != KIND_WAND and throw_kind != KIND_POTION:
		_show_message_and_render(_msg(93, "Nothing appropriate"))
		return

	var was_wielded: bool = (throw_index == equipped_weapon_index)
	if was_wielded and _is_item_cursed(throw_item):
		_mark_curse_known(throw_index)
		_show_message_and_render(_ui("message.item.cursed", ""))
		return

	var row: int = rogue_row
	var col: int = rogue_col
	var prev_row: int = rogue_row
	var prev_col: int = rogue_col
	var monster_encountered: bool = false
	var hit_success: bool = false
	var distance_budget: int = 24

	while distance_budget > 0:
		prev_row = row
		prev_col = col
		row += dir_row
		col += dir_col
		distance_budget -= 1
		if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
			row = prev_row
			col = prev_col
			break

		var cell: int = int(dungeon[row][col])
		if cell == NOTHING or (((cell & int(HORWALL | VERTWALL | HIDDEN)) != 0) and (cell & TRAP) == 0):
			row = prev_row
			col = prev_col
			break

		if (cell & MONSTER) != 0:
			if _monster_is_imitating_at(row, col):
				continue
			monster_encountered = true
			hit_success = _throw_at_monster(throw_item, was_wielded, row, col)
			break

		if (cell & TUNNEL) != 0:
			distance_budget = max(0, distance_budget - 2)

	throw_item = _consume_thrown_inventory_item(throw_index)
	if throw_item.is_empty():
		_show_message_and_render(_msg(MSG_NO_SUCH_ITEM, "No such item, try again"))
		return

	if monster_encountered:
		if not hit_success:
			_drop_thrown_item(throw_item, row, col)
	else:
		_drop_thrown_item(throw_item, row, col)

	_advance_turn(1)
	_render_play_area()

func _on_stairs_pressed() -> void:
	if has_amulet:
		_on_ascend_pressed()
	else:
		_on_descend_pressed()

func _on_descend_pressed() -> void:
	if game_over:
		return

	if _prepare_message_for_new_input():
		return

	var cell: int = int(dungeon[rogue_row][rogue_col])
	if (cell & STAIRS) == 0:
		_set_message(_msg(49, "I see no way down."))
		_render_play_area()
		return

	if levitation_turns > 0:
		_set_message(_msg(MSG_FLOATING_IN_AIR, "You're floating in the air!"))
		_render_play_area()
		return

	_start_new_level()
	_set_message(_ui("message.stairs.descend", ""))
	_update_inventory_header()
	_update_stairs_button_text()
	_render_play_area()

func _on_ascend_pressed() -> void:
	if game_over:
		return

	if _prepare_message_for_new_input():
		return

	var cell: int = int(dungeon[rogue_row][rogue_col])
	if (cell & STAIRS) == 0:
		_set_message(_msg(MSG_NO_WAY_UP, "I see no way up"))
		_render_play_area()
		return

	if not has_amulet:
		_set_message(_msg(MSG_UP_BLOCKED, "Your way is magically blocked"))
		_render_play_area()
		return

	if cur_level <= 1:
		_win_game()
		_render_play_area()
		return

	_set_message(_msg(MSG_UP_WRENCH, "You feel a wrenching sensation in your gut"))

	cur_level -= 2
	_start_new_level()
	_update_inventory_header()
	_update_stairs_button_text()
	_render_play_area()

func _on_zap_pressed() -> void:
	if game_over:
		return

	if _prepare_message_for_new_input():
		return
	_begin_targeting("zap")

func _zap_with_selected_wand_in_direction(wand_index: int, dir_row: int, dir_col: int) -> void:
	if wand_index < 0 or wand_index >= inventory_items.size():
		_show_message_and_render(_msg(MSG_NO_SUCH_ITEM, "No such item, try again"))
		return

	var wand_item: Dictionary = inventory_items[wand_index]
	if wand_item.is_empty() or str(wand_item.get("kind", "")) != KIND_WAND:
		_show_message_and_render(_ui("message.wand.not_wand", ""))
		return

	var charges: int = int(wand_item.get("class", 0))
	if charges <= 0:
		_set_message(_msg(281, "Nothing happens"))
		_advance_turn(1)
		_render_play_area()
		return

	wand_item["class"] = charges - 1
	inventory_items[wand_index] = wand_item
	_refresh_inventory_palette()
	_update_equipment_panel()

	var row: int = rogue_row
	var col: int = rogue_col
	var target_key: String = ""

	for _step in range(256):
		row += dir_row
		col += dir_col
		if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
			break

		var cell: int = int(dungeon[row][col])
		if cell == NOTHING or (cell & int(HORWALL | VERTWALL)) != 0:
			break

		if (cell & MONSTER) != 0:
			if _monster_is_imitating_at(row, col):
				continue
			target_key = _pos_key(row, col)
			break

	if not target_key.is_empty() and monster_data.has(target_key):
		var info: Dictionary = monster_data[target_key]
		info = _wake_monster(info)
		monster_data[target_key] = info
		var which_kind: int = int(wand_item.get("which_kind", -1))
		var resolved_key: String = _apply_wand_effect_to_monster(target_key, which_kind)
		_try_defeat_monster(resolved_key)

	_advance_turn(1)
	_render_play_area()

func _pickup_current_tile_object() -> int:
	var key: String = _pos_key(rogue_row, rogue_col)
	if not object_data.has(key):
		return PICKUP_RESULT_FAILED
	var info: Dictionary = object_data.get(key, {"kind": "item"})
	var raw_kind: String = str(info.get("kind", "item"))
	var kind: String = raw_kind
	if raw_kind == "item":
		var glyph: String = str(object_glyphs.get(key, "?"))
		kind = _kind_from_glyph(glyph)
		info["kind"] = kind

	if kind == KIND_SCROLL and int(info.get("which_kind", -1)) == SCROLL_SCARE_MONSTER and bool(info.get("picked_up", false)):
		_set_message(_ui("message.scroll.turns_to_dust", ""))
		dungeon[rogue_row][rogue_col] = int(dungeon[rogue_row][rogue_col]) & ~OBJECT
		object_glyphs.erase(key)
		object_data.erase(key)
		return PICKUP_RESULT_NO_TURN
	var item_name: String = _item_name_for_message(key, info)

	if kind == "gold":
		player_gold += int(info.get("amount", 0))
		_set_message(item_name)
	else:
		if _pack_count_with_candidate(info) > MAX_PACK_COUNT:
			_set_message(_msg(MSG_PACK_FULL, "Your pack is full."))
			return PICKUP_RESULT_FAILED
		info["picked_up"] = true
		_add_inventory_item(key, info)
		if kind == "amulet":
			has_amulet = true
			_update_stairs_button_text()
		_set_message(item_name)

	var cell: int = int(dungeon[rogue_row][rogue_col])
	dungeon[rogue_row][rogue_col] = cell & ~OBJECT
	object_glyphs.erase(key)
	object_data.erase(key)
	return PICKUP_RESULT_SUCCESS

func _auto_pickup_if_gold(row: int, col: int) -> void:
	var key: String = _pos_key(row, col)
	if not object_data.has(key):
		return

	var info: Dictionary = object_data[key]
	if str(info.get("kind", "")) != "gold":
		return

	player_gold += int(info.get("amount", 0))
	_set_message(_item_name_for_message(key, info))
	dungeon[row][col] = int(dungeon[row][col]) & ~OBJECT
	object_glyphs.erase(key)
	object_data.erase(key)

func _auto_pickup_on_move(row: int, col: int) -> void:
	var key: String = _pos_key(row, col)
	if not object_data.has(key):
		return

	var info: Dictionary = object_data[key]
	if levitation_turns > 0:
		_set_moved_onto_message(info)
		return

	var kind: String = str(info.get("kind", "item"))

	if kind == "gold":
		_auto_pickup_if_gold(row, col)
		return

	if not auto_pickup_non_gold_enabled:
		_set_moved_onto_message(info)
		return

	_pickup_current_tile_object()
	_update_inventory_header()

func _item_name_for_message(key: String, info: Dictionary) -> String:
	var base_name: String = _inventory_name_from_info(key, info)
	if str(info.get("kind", "item")) == "gold":
		return base_name
	base_name = _name_with_quantity(base_name, max(1, int(info.get("quantity", 1))))

	if _is_japanese_locale():
		return "%s%s" % [base_name, _msg(69, "を手に入れた。")]
	return base_name

func _set_moved_onto_message(info: Dictionary) -> void:
	var key: String = _pos_key(rogue_row, rogue_col)
	var item_name: String = _item_name_for_message(key, info)
	if _is_japanese_locale() and item_name.ends_with(_msg(69, "を手に入れた。")):
		item_name = item_name.trim_suffix(_msg(69, "を手に入れた。"))
	var moved_onto: String = _msg(70, "Moved onto ")
	if _is_japanese_locale():
		_set_message("%s%s" % [item_name, moved_onto])
	else:
		_set_message("%s%s" % [moved_onto, item_name])

func _trigger_trap(row: int, col: int) -> void:
	var key: String = _pos_key(row, col)
	dungeon[row][col] = int(dungeon[row][col]) & ~HIDDEN
	spotted_traps[key] = true

	if _rand_percent(_effective_exp_with_rings()):
		_set_message(_msg(MSG_TRAP_FAILED, "The trap failed"))
		return

	var trap_type: String = str(trap_data.get(key, "dart"))
	match trap_type:
		"trap_door":
			_set_message(_msg(MSG_TRAP_DOOR, "You fell down a trap"))
			trap_door_pending = true
		"bear_trap":
			bear_trap_turns = _get_rand(4, 7)
			_set_message(_msg(MSG_BEAR_TRAP, "You are caught in a bear trap"))
		"teleport":
			_set_message(_msg(MSG_TELE_TRAP, "Teleport"))
			_put_player(NO_ROOM)
			player_held = false
			bear_trap_turns = 0
		"sleep":
			_set_message(_msg(MSG_SLEEP_TRAP, "A strange white mist envelopes you and you fall asleep"))
			_take_a_nap_immediate(_get_rand(2, 5))
		"rust":
			_set_message(_msg(MSG_RUST_TRAP, "A gush of water hits you on the head"))
			if _rust_equipped_armor():
				_queue_message(_msg(202, "Your armor weakens"))
		_:
			_apply_damage(_get_rand(1, 6), _ui("death.poison_dart", ""), "poison_dart")
			if not ring_sustain_strength and _rand_percent(40) and str_current >= 3:
				str_current -= 1
			_set_message(_msg(MSG_DART_TRAP, "A small dart just hit you in the shoulder"))

func _apply_damage(damage: int, death_cause: String = "", cause_kind: String = "generic", killer_monster: String = "", killer_monster_char: String = "") -> void:
	if invincible_debug_enabled:
		damage = 0
	hp_current = max(0, hp_current - max(0, damage))
	if hp_current <= 0:
		hp_current = 0
		death_kind = cause_kind
		death_monster_name = killer_monster
		death_monster_char = killer_monster_char
		var cause: String = death_cause
		if cause.is_empty():
			cause = _ui("death.you_died", "")
		_end_game(false, cause)

func _check_level_up() -> void:
	while exp_level < MAX_EXP_LEVEL and exp_points >= _exp_threshold(exp_level):
		exp_level += 1
		var hp_gain: int = _hp_raise()
		hp_max += hp_gain
		hp_current = min(hp_max, hp_current + hp_gain)
		_apply_stat_caps_original()
		_queue_message(_format_level_up_message(exp_level))

func _add_exp(amount: int, promotion: bool) -> void:
	if amount <= 0:
		return

	exp_points += amount
	if exp_points > (MAX_EXP_POINTS + 1):
		exp_points = MAX_EXP_POINTS + 1
	if promotion:
		_check_level_up()

func _key_to_pos(key: String) -> Vector2i:
	var parts: PackedStringArray = key.split(",")
	if parts.size() != 2:
		return Vector2i(-1, -1)
	return Vector2i(int(parts[0]), int(parts[1]))

func _monster_can_go(info: Dictionary, from_row: int, from_col: int, row: int, col: int) -> bool:
	var dr: int = from_row - row
	var dc: int = from_col - col
	if dr >= 2 or dr <= -2 or dc >= 2 or dc <= -2:
		return false

	if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
		return false

	if int(dungeon[from_row][col]) == NOTHING or int(dungeon[row][from_col]) == NOTHING:
		return false

	if not _is_passable_cell(row, col):
		return false

	if row != rogue_row or col != rogue_col:
		if (int(dungeon[row][col]) & MONSTER) != 0:
			return false

	if from_row != row and from_col != col:
		if ((int(dungeon[row][col]) & DOOR) != 0) or ((int(dungeon[from_row][from_col]) & DOOR) != 0):
			return false

	var flags: int = int(info.get("flags", 0))
	if (flags & int(M_FLITS | M_CONFUSED | M_CAN_FLIT)) == 0 and int(info.get("trow", NO_ROOM)) == NO_ROOM:
		if ((from_row < rogue_row) and (row < from_row)) or ((from_row > rogue_row) and (row > from_row)) or ((from_col < rogue_col) and (col < from_col)) or ((from_col > rogue_col) and (col > from_col)):
			return false

	var key: String = _pos_key(row, col)
	if object_data.has(key):
		var obj: Dictionary = object_data[key]
		if str(obj.get("kind", "")) == "scare_monster":
			return false

	return true

func _move_monster_key(from_key: String, to_row: int, to_col: int) -> String:
	if not monster_data.has(from_key):
		return from_key

	var pos: Vector2i = _key_to_pos(from_key)
	var from_row: int = pos.x
	var from_col: int = pos.y
	var info: Dictionary = monster_data[from_key]
	var glyph: String = str(monster_glyphs.get(from_key, "M"))

	dungeon[from_row][from_col] = int(dungeon[from_row][from_col]) & ~MONSTER
	monster_data.erase(from_key)
	monster_glyphs.erase(from_key)

	var to_key: String = _pos_key(to_row, to_col)
	dungeon[to_row][to_col] = int(dungeon[to_row][to_col]) | MONSTER
	monster_data[to_key] = info
	monster_glyphs[to_key] = glyph
	return to_key

func _monster_mtry(key: String, info: Dictionary, row: int, col: int) -> String:
	var pos: Vector2i = _key_to_pos(key)
	if _monster_can_go(info, pos.x, pos.y, row, col):
		return _move_monster_key(key, row, col)
	return ""

func _monster_is_around(row: int, col: int) -> bool:
	var rdif: int = row - rogue_row
	var cdif: int = col - rogue_col
	return rdif >= -1 and rdif <= 1 and cdif >= -1 and cdif <= 1

func _monster_sees(row: int, col: int, target_row: int, target_col: int) -> bool:
	var rn: int = _get_room_number(target_row, target_col)
	if rn != NO_ROOM and rn == _get_room_number(row, col) and not _room_has_any(rn, R_MAZE):
		return true
	return abs(target_row - row) <= 1 and abs(target_col - col) <= 1

func _monster_flit(key: String, info: Dictionary) -> String:
	if not _rand_percent(FLIT_PERCENT):
		return key
	if _rand_percent(10):
		return key

	var pos: Vector2i = _key_to_pos(key)
	for target in _rand_around_positions(pos.x, pos.y):
		var row: int = target.x
		var col: int = target.y
		if row == rogue_row and col == rogue_col:
			continue
		var moved_key: String = _monster_mtry(key, info, row, col)
		if not moved_key.is_empty():
			return moved_key
	return key

func _monster_move_confused(key: String, info: Dictionary) -> String:
	var flags: int = int(info.get("flags", 0))
	if (flags & M_ASLEEP) != 0:
		return key

	var turns: int = int(info.get("moves_confused", 0)) - 1
	info["moves_confused"] = turns
	if turns <= 0:
		flags &= ~M_CONFUSED
		info["flags"] = flags

	if (flags & M_STATIONARY) != 0:
		if _coin_toss():
			monster_data[key] = info
			return key
	elif _rand_percent(15):
		monster_data[key] = info
		return key

	var pos: Vector2i = _key_to_pos(key)
	for target in _rand_around_positions(pos.x, pos.y):
		var row: int = target.x
		var col: int = target.y
		if row == rogue_row and col == rogue_col:
			monster_data[key] = info
			return key
		var moved_key: String = _monster_mtry(key, info, row, col)
		if not moved_key.is_empty():
			if moved_key != key:
				monster_data[moved_key] = info
			return moved_key

	monster_data[key] = info
	return key

func _monster_attack_player(key: String, info: Dictionary) -> void:
	var hit_chance: int
	if cur_level >= (AMULET_LEVEL * 2):
		hit_chance = 100
	else:
		hit_chance = int(info.get("m_hit_chance", 65)) - ((2 * _effective_exp_with_rings()) - ring_count)
	var monster_name: String = _monster_name_for_key(key)

	if not _rand_percent(hit_chance):
		action_interrupted = true
		_queue_message(_format_monster_miss_message(monster_name))
		return

	action_interrupted = true
	_queue_message(_format_monster_hit_message(monster_name))
	var base_damage: int
	if (int(info.get("flags", 0)) & M_STATIONARY) != 0:
		base_damage = int(info.get("stationary_damage", 0))
		info["stationary_damage"] = base_damage + 1
	else:
		base_damage = _roll_damage(str(info.get("m_damage", "1d3")))

	var minus: int
	if cur_level >= (AMULET_LEVEL * 2):
		minus = (AMULET_LEVEL * 2) - cur_level
	else:
		minus = int(float(armor_class * 3) * float(base_damage) / 100.0)

	var reduced: int = base_damage - minus
	if reduced > 0:
		_apply_damage(reduced, _format_killed_by_monster(monster_name), "monster", monster_name, str(info.get("m_char", "")))
	if game_over:
		return

	var flags: int = int(info.get("flags", 0))
	if (flags & M_RUSTS) != 0:
		_rust_equipped_armor()
	if (flags & M_HOLDS) != 0 and levitation_turns <= 0:
		player_held = true
		_queue_message(_msg(MSG_HOLDING, "You are being held"))
	if (flags & M_FREEZES) != 0:
		_apply_freeze_special(key, monster_name)
	if (flags & M_STINGS) != 0:
		_apply_sting_special(monster_name)
	if (flags & M_DRAINS_LIFE) != 0:
		_apply_drain_life_special()
	if (flags & M_DROPS_LEVEL) != 0:
		_apply_drop_level_special()
	if (flags & M_STEALS_GOLD) != 0:
		_apply_steal_gold_special(key)
	elif (flags & M_STEALS_ITEM) != 0:
		_apply_steal_item_special(key)
	monster_data[key] = info

func _monster_confuse_gaze(key: String, info: Dictionary) -> bool:
	var pos: Vector2i = _key_to_pos(key)
	if blind or not _monster_sees(pos.x, pos.y, rogue_row, rogue_col):
		return false

	var flags: int = int(info.get("flags", 0))
	if _rand_percent(45):
		flags &= ~M_CONFUSES
		info["flags"] = flags
		monster_data[key] = info
		return false

	if _rand_percent(55):
		flags &= ~M_CONFUSES
		info["flags"] = flags
		monster_data[key] = info
		player_confused_turns += _get_rand(12, 22)
		var gaze: String = _msg(MSG_CONFUSED_BY_GAZE, "The gaze of the %s has confused you")
		var monster_name: String = _monster_name_for_key(key)
		if gaze.find("%s") != -1:
			gaze = gaze % monster_name
		_queue_message(gaze)
		return true

	return false

func _is_clear_straight_path(from_row: int, from_col: int, to_row: int, to_col: int) -> bool:
	if from_row != to_row and from_col != to_col:
		return false

	if from_row == to_row:
		var step: int = 1 if to_col > from_col else -1
		for c in range(from_col + step, to_col, step):
			if (int(dungeon[from_row][c]) & int(HORWALL | VERTWALL | DOOR)) != 0:
				return false
		return true

	var step_row: int = 1 if to_row > from_row else -1
	for r in range(from_row + step_row, to_row, step_row):
		if (int(dungeon[r][from_col]) & int(HORWALL | VERTWALL | DOOR)) != 0:
			return false
	return true

func _monster_flame_broil(key: String, info: Dictionary) -> bool:
	var pos: Vector2i = _key_to_pos(key)
	var row: int = pos.x
	var col: int = pos.y
	if not _monster_sees(row, col, rogue_row, rogue_col) or _coin_toss():
		return false

	var rd: int = abs(rogue_row - row)
	var cd: int = abs(rogue_col - col)
	if ((rd != 0 and cd != 0 and rd != cd) or rd > 7 or cd > 7):
		return false

	var monster_name: String = _monster_name_for_key(key)
	var hit_chance: int
	if cur_level >= (AMULET_LEVEL * 2):
		hit_chance = 100
	else:
		hit_chance = int(info.get("m_hit_chance", 65)) - ((3 * _effective_exp_with_rings()) - ring_count)
	if not _rand_percent(hit_chance):
		_queue_message(_format_monster_miss_message(monster_name))
		return true

	var base_damage: int = _roll_damage(str(info.get("m_damage", "1d3")))
	base_damage -= armor_class
	var minus: int
	if cur_level >= (AMULET_LEVEL * 2):
		minus = (AMULET_LEVEL * 2) - cur_level
	else:
		minus = int(float(armor_class * 3) * float(base_damage) / 100.0)
	var reduced: int = base_damage - minus
	_queue_message(_ui("message.flame.scorch", ""))
	if reduced > 0:
		_apply_damage(reduced, _format_killed_by_monster(monster_name), "monster", monster_name, str(info.get("m_char", "")))
	return true

func _monster_seek_gold(key: String, info: Dictionary) -> String:
	var pos: Vector2i = _key_to_pos(key)
	var rn: int = _get_room_number(pos.x, pos.y)
	if rn == NO_ROOM:
		return key

	var rm: Dictionary = rooms[rn]
	for i in range(rm["top_row"] + 1, rm["bottom_row"]):
		for j in range(rm["left_col"] + 1, rm["right_col"]):
			var target_key: String = _pos_key(i, j)
			if not object_data.has(target_key):
				continue
			if str(object_data[target_key].get("kind", "")) != "gold":
				continue
			if (int(dungeon[i][j]) & MONSTER) != 0:
				continue

			var flags: int = int(info.get("flags", 0)) | M_CAN_FLIT
			info["flags"] = flags
			if _monster_can_go(info, pos.x, pos.y, i, j):
				var moved_key: String = _move_monster_key(key, i, j)
				flags = int(info.get("flags", 0)) | M_ASLEEP
				flags &= ~M_WAKENS
				flags &= ~M_SEEKS_GOLD
				info["flags"] = flags
				monster_data[moved_key] = info
				return moved_key

			flags &= ~M_SEEKS_GOLD
			flags |= M_CAN_FLIT
			info["flags"] = flags
			monster_data[key] = info
			var moved: String = _monster_move_toward(key, info, i, j)
			if moved.is_empty():
				moved = key
			if monster_data.has(moved):
				var updated: Dictionary = monster_data[moved]
				updated["flags"] = int(updated.get("flags", 0)) | M_SEEKS_GOLD
				updated["flags"] = int(updated.get("flags", 0)) & ~M_CAN_FLIT
				monster_data[moved] = updated
			return moved

	return key

func _monster_move_toward(key: String, info: Dictionary, target_row: int, target_col: int) -> String:
	var pos: Vector2i = _key_to_pos(key)
	var from_row: int = pos.x
	var from_col: int = pos.y

	var row: int = target_row
	var col: int = target_col

	if from_row > row:
		row = from_row - 1
	elif from_row < row:
		row = from_row + 1

	if (int(dungeon[row][from_col]) & DOOR) != 0:
		var moved_key: String = _monster_mtry(key, info, row, from_col)
		if not moved_key.is_empty():
			return moved_key

	if from_col > col:
		col = from_col - 1
	elif from_col < col:
		col = from_col + 1

	if (int(dungeon[from_row][col]) & DOOR) != 0:
		var moved_key2: String = _monster_mtry(key, info, from_row, col)
		if not moved_key2.is_empty():
			return moved_key2

	var moved_main: String = _monster_mtry(key, info, row, col)
	if not moved_main.is_empty():
		return moved_main

	var tried: Dictionary = {}
	for _i in range(6):
		var n: int = _get_rand(0, 5)
		while tried.has(n):
			n = _get_rand(0, 5)
		tried[n] = true

		var rr: int = from_row
		var cc: int = from_col
		match n:
			0:
				rr = row
				cc = from_col - 1
			1:
				rr = row
				cc = from_col
			2:
				rr = row
				cc = from_col + 1
			3:
				rr = from_row - 1
				cc = col
			4:
				rr = from_row
				cc = col
			_:
				rr = from_row + 1
				cc = col

		var moved_try: String = _monster_mtry(key, info, rr, cc)
		if not moved_try.is_empty():
			return moved_try

	return ""

func _monster_turn() -> void:
	var keys: Array = monster_data.keys()
	for key_var in keys:
		var key: String = str(key_var)
		if not monster_data.has(key):
			continue

		var info: Dictionary = monster_data[key]
		var flags: int = int(info.get("flags", 0))
		var pos: Vector2i = _key_to_pos(key)
		var row: int = pos.x
		var col: int = pos.y

		if (flags & M_HASTED) != 0:
			key = _monster_take_turn(key)
			if key.is_empty():
				continue

		if not monster_data.has(key):
			continue
		info = monster_data[key]
		flags = int(info.get("flags", 0))

		if (flags & M_SLOWED) != 0:
			var toggle: bool = not bool(info.get("slowed_toggle", false))
			info["slowed_toggle"] = toggle
			monster_data[key] = info
			if toggle:
				continue

		if (flags & M_CONFUSED) != 0:
			var moved_key: String = _monster_move_confused(key, info)
			if moved_key != key:
				key = moved_key
			continue

		_monster_take_turn(key)

func _monster_take_turn(key: String) -> String:
	if not monster_data.has(key):
		return ""

	var info: Dictionary = monster_data[key]
	var flags: int = int(info.get("flags", 0))
	var pos: Vector2i = _key_to_pos(key)
	var row: int = pos.x
	var col: int = pos.y

	if (flags & M_ASLEEP) != 0:
		if (flags & M_NAPPING) != 0:
			var nap: int = int(info.get("nap_length", 0)) - 1
			info["nap_length"] = nap
			if nap <= 0:
				flags &= ~(M_NAPPING | M_ASLEEP)
				info["flags"] = flags
			monster_data[key] = info
			return key

		if (flags & M_WAKENS) != 0 and _monster_is_around(row, col):
			var wake_percent: int = WAKE_PERCENT
			if stealthy > 0:
				wake_percent = int(float(wake_percent) / float(STEALTH_FACTOR + stealthy))
			if _rand_percent(wake_percent):
				info = _wake_monster(info)
				monster_data[key] = info
			return key

	if (flags & M_ALREADY_MOVED) != 0:
		flags &= ~M_ALREADY_MOVED
		info["flags"] = flags
		monster_data[key] = info
		return key

	if (flags & M_FLITS) != 0:
		var flitted: String = _monster_flit(key, info)
		if flitted != key:
			return flitted

	if (flags & M_STATIONARY) != 0 and not _monster_can_go(info, row, col, rogue_row, rogue_col):
		return key

	if (flags & M_FREEZING_ROGUE) != 0:
		return key

	if (flags & M_CONFUSES) != 0 and _monster_confuse_gaze(key, info):
		return key

	if _monster_can_go(info, row, col, rogue_row, rogue_col):
		_monster_attack_player(key, info)
		return key

	if (flags & M_FLAMES) != 0 and _monster_flame_broil(key, info):
		return key

	if (flags & M_SEEKS_GOLD) != 0:
		var moved_seek: String = _monster_seek_gold(key, info)
		if moved_seek != key:
			return moved_seek

	var target_row: int = rogue_row
	var target_col: int = rogue_col
	if int(info.get("trow", NO_ROOM)) != NO_ROOM:
		target_row = int(info.get("trow", rogue_row))
		target_col = int(info.get("tcol", rogue_col))

	var moved_key: String = _monster_move_toward(key, info, target_row, target_col)
	if moved_key.is_empty():
		moved_key = key

	if not monster_data.has(moved_key):
		return ""

	var updated: Dictionary = monster_data[moved_key]
	var moved_pos: Vector2i = _key_to_pos(moved_key)
	if moved_pos.x == int(updated.get("o_row", moved_pos.x)) and moved_pos.y == int(updated.get("o_col", moved_pos.y)):
		var stuck: int = int(updated.get("o", 0)) + 1
		updated["o"] = stuck
		if stuck > 4:
			if int(updated.get("trow", NO_ROOM)) == NO_ROOM and not _monster_sees(moved_pos.x, moved_pos.y, rogue_row, rogue_col):
				updated["trow"] = _get_rand(1, ROGUE_LINES - 2)
				updated["tcol"] = _get_rand(0, ROGUE_COLUMNS - 1)
			else:
				updated["trow"] = NO_ROOM
				updated["o"] = 0
	else:
		updated["o_row"] = moved_pos.x
		updated["o_col"] = moved_pos.y
		updated["o"] = 0

	monster_data[moved_key] = updated
	return moved_key

func _move_aquatars_before_armor_change() -> void:
	for key_var in monster_data.keys():
		var key: String = str(key_var)
		if not monster_data.has(key):
			continue
		var info: Dictionary = monster_data[key]
		if str(info.get("m_char", "")) != "A":
			continue
		var pos: Vector2i = _key_to_pos(key)
		if not _monster_can_go(info, pos.x, pos.y, rogue_row, rogue_col):
			continue
		var moved_key: String = _move_monster_key(key, rogue_row, rogue_col)
		if monster_data.has(moved_key):
			var moved_info: Dictionary = monster_data[moved_key]
			moved_info["flags"] = int(moved_info.get("flags", 0)) | M_ALREADY_MOVED
			monster_data[moved_key] = moved_info

func _spawn_wanderer() -> void:
	for _i in range(15):
		var template: Dictionary = _select_monster_template()
		var flags: int = int(template.get("flags", M_ASLEEP))
		if (flags & int(M_WAKENS | M_WANDERS)) == 0:
			continue

		var rc: Array[int] = _find_feature_cell(true)
		if rc.is_empty():
			return

		var row: int = rc[0]
		var col: int = rc[1]
		if bool(map_visible[row][col]):
			continue

		var info: Dictionary = _create_monster_info(row, col)
		info = _wake_monster(info)

		var key: String = _pos_key(row, col)
		dungeon[row][col] = int(dungeon[row][col]) | MONSTER
		monster_data[key] = info
		monster_glyphs[key] = str(info.get("m_char", "M"))
		_aim_monster(key)
		return

func _monster_name_for_key(key: String) -> String:
	if not monster_data.has(key):
		return _msg(63, "something")

	var info: Dictionary = monster_data[key]
	if _monster_name_should_be_hidden(info):
		return _msg(63, "something")

	var ch: String = str(info.get("m_char", "M"))
	if ch.length() == 1 and ch[0] >= "A" and ch[0] <= "Z":
		var idx: int = 307 + (ch.unicode_at(0) - "A".unicode_at(0))
		var resolved: String = _msg(idx, ch)
		if resolved.strip_edges().is_empty() or resolved == ch:
			return _monster_fallback_name_by_letter(ch)
		return resolved
	return ch

func _check_imitator(key: String) -> bool:
	if not monster_data.has(key):
		return false

	var info: Dictionary = monster_data[key]
	var flags: int = int(info.get("flags", 0))
	if (flags & M_IMITATES) == 0:
		return false

	info = _wake_monster(info)
	monster_data[key] = info
	if blind:
		return true

	var name: String = _monster_name_for_key(key)
	var msg: String = _msg(206, "Wait, that's a %s!")
	if msg.find("%s") != -1:
		msg = msg % name
	_set_message(msg)
	return true

func _monster_name_should_be_hidden(info: Dictionary) -> bool:
	if blind:
		return true
	var flags: int = int(info.get("flags", 0))
	if (flags & M_IMITATES) != 0:
		return true
	if (flags & M_INVISIBLE) != 0 and not detect_monster and not _can_see_invisible():
		return true
	return false

func _rand_around_positions(center_row: int, center_col: int) -> Array[Vector2i]:
	var positions: Array[Vector2i] = [
		Vector2i(center_row - 1, center_col - 1),
		Vector2i(center_row - 1, center_col),
		Vector2i(center_row - 1, center_col + 1),
		Vector2i(center_row, center_col - 1),
		Vector2i(center_row, center_col),
		Vector2i(center_row, center_col + 1),
		Vector2i(center_row + 1, center_col - 1),
		Vector2i(center_row + 1, center_col),
		Vector2i(center_row + 1, center_col + 1),
	]
	for i in range(positions.size()):
		var j: int = _get_rand(i, positions.size() - 1)
		var tmp: Vector2i = positions[i]
		positions[i] = positions[j]
		positions[j] = tmp
	return positions

func _aim_monster(key: String) -> void:
	if not monster_data.has(key):
		return

	var pos: Vector2i = _key_to_pos(key)
	var rn: int = _get_room_number(pos.x, pos.y)
	if rn == NO_ROOM:
		return

	var r: int = _get_rand(0, 12)
	for i in range(4):
		var d: int = (r + i) % 4
		var door: Dictionary = rooms[rn]["doors"][d]
		if int(door.get("oth_room", NO_ROOM)) != NO_ROOM:
			var info: Dictionary = monster_data[key]
			info["trow"] = int(door.get("door_row", pos.x))
			info["tcol"] = int(door.get("door_col", pos.y))
			monster_data[key] = info
			break

func _wake_room(rn: int, entering: bool, row: int, col: int) -> void:
	if rn == NO_ROOM:
		return

	var wake_percent: int = PARTY_WAKE_PERCENT if rn == party_room else WAKE_PERCENT
	if stealthy > 0:
		wake_percent = int(float(wake_percent) / float(STEALTH_FACTOR + stealthy))

	for key_var in monster_data.keys():
		var key: String = str(key_var)
		if not monster_data.has(key):
			continue

		var pos: Vector2i = _key_to_pos(key)
		var in_room: bool = (rn == _get_room_number(pos.x, pos.y))
		if not in_room:
			continue

		var info: Dictionary = monster_data[key]
		if entering:
			info["trow"] = NO_ROOM
		else:
			info["trow"] = row
			info["tcol"] = col

		var flags: int = int(info.get("flags", 0))
		if (flags & M_WAKENS) != 0 and _rand_percent(wake_percent):
			info = _wake_monster(info)

		monster_data[key] = info

func _monster_is_imitating_at(row: int, col: int) -> bool:
	var key: String = _pos_key(row, col)
	if not monster_data.has(key):
		return false
	return (int(monster_data[key].get("flags", 0)) & M_IMITATES) != 0

func _light_up_room(rn: int) -> void:
	if rn == NO_ROOM:
		return

	rooms_visited[rn] = true
	if blind:
		return

	var rm: Dictionary = rooms[rn]
	for i in range(int(rm["top_row"]), int(rm["bottom_row"]) + 1):
		for j in range(int(rm["left_col"]), int(rm["right_col"]) + 1):
			map_visible[i][j] = true
			map_revealed[i][j] = true
			if (int(dungeon[i][j]) & TRAP) != 0 and (int(dungeon[i][j]) & HIDDEN) == 0:
				spotted_traps[_pos_key(i, j)] = true

func _clear_map_visible() -> void:
	for r in range(ROGUE_LINES):
		for c in range(ROGUE_COLUMNS):
			map_visible[r][c] = false

func _light_passage(row: int, col: int) -> void:
	if blind:
		return

	# Recompute visible cells each step in passages so visibility does not accumulate.
	_clear_map_visible()
	if cur_room != PASSAGE and cur_room != NO_ROOM:
		_light_up_room(cur_room)

	var i_start: int = -1 if row > MIN_ROW else 0
	var i_end: int = 1 if row < (ROGUE_LINES - 2) else 0
	var j_start: int = -1 if col > 0 else 0
	var j_end: int = 1 if col < (ROGUE_COLUMNS - 1) else 0

	for i in range(i_start, i_end + 1):
		for j in range(j_start, j_end + 1):
			var rr: int = row + i
			var cc: int = col + j
			if _can_move(row, col, rr, cc):
				map_visible[rr][cc] = true
				map_revealed[rr][cc] = true
				if (int(dungeon[rr][cc]) & TRAP) != 0 and (int(dungeon[rr][cc]) & HIDDEN) == 0:
					spotted_traps[_pos_key(rr, cc)] = true

func _darken_room(rn: int) -> void:
	if rn == NO_ROOM:
		return

	var rm: Dictionary = rooms[rn]
	for i in range(int(rm["top_row"]) + 1, int(rm["bottom_row"])):
		for j in range(int(rm["left_col"]) + 1, int(rm["right_col"])):
			map_visible[i][j] = false
			if blind:
				map_revealed[i][j] = false
				continue

			var cell: int = int(dungeon[i][j])
			var keep_visible: bool = false
			if (cell & int(OBJECT | STAIRS)) != 0:
				keep_visible = true
			elif detect_monster and (cell & MONSTER) != 0:
				keep_visible = true
			elif _monster_is_imitating_at(i, j):
				keep_visible = true

			if keep_visible:
				map_revealed[i][j] = true
			else:
				map_revealed[i][j] = false
				if (cell & TRAP) != 0 and (cell & HIDDEN) == 0:
					spotted_traps[_pos_key(i, j)] = true

func _set_cur_room_from_player_position() -> void:
	if rogue_row < MIN_ROW or rogue_row > (ROGUE_LINES - 2):
		cur_room = PASSAGE
		return

	if (int(dungeon[rogue_row][rogue_col]) & TUNNEL) != 0:
		cur_room = PASSAGE
	else:
		cur_room = _get_room_number(rogue_row, rogue_col)

func _handle_room_transition(old_row: int, old_col: int, new_row: int, new_col: int) -> void:
	var old_cell: int = int(dungeon[old_row][old_col])
	var new_cell: int = int(dungeon[new_row][new_col])

	if (new_cell & DOOR) != 0:
		if cur_room == PASSAGE:
			cur_room = _get_room_number(new_row, new_col)
			if cur_room != NO_ROOM:
				_light_up_room(cur_room)
				_wake_room(cur_room, true, new_row, new_col)
		else:
			_light_passage(new_row, new_col)
	elif (old_cell & DOOR) != 0 and (new_cell & TUNNEL) != 0:
		_light_passage(new_row, new_col)
		if cur_room != PASSAGE and cur_room != NO_ROOM:
			_wake_room(cur_room, false, old_row, old_col)
			_darken_room(cur_room)
		cur_room = PASSAGE
	elif (new_cell & TUNNEL) != 0:
		cur_room = PASSAGE
		_light_passage(new_row, new_col)
	else:
		cur_room = _get_room_number(new_row, new_col)

func _refresh_visibility() -> void:
	for r in range(ROGUE_LINES):
		for c in range(ROGUE_COLUMNS):
			map_visible[r][c] = false

	if rogue_row < MIN_ROW or rogue_row > (ROGUE_LINES - 2):
		return

	var room_no: int = _get_room_number(rogue_row, rogue_col)
	if room_no != NO_ROOM and _room_has_any(room_no, R_ROOM):
		var rm: Dictionary = rooms[room_no]
		for r in range(rm["top_row"], rm["bottom_row"] + 1):
			for c in range(rm["left_col"], rm["right_col"] + 1):
				map_visible[r][c] = true
	else:
		for i in range(-1, 2):
			for j in range(-1, 2):
				var row: int = rogue_row + i
				var col: int = rogue_col + j
				if row < MIN_ROW or row > (ROGUE_LINES - 2) or col < 0 or col >= ROGUE_COLUMNS:
					continue
				map_visible[row][col] = true

	for r in range(ROGUE_LINES):
		for c in range(ROGUE_COLUMNS):
			if map_visible[r][c]:
				map_revealed[r][c] = true

func _exp_threshold(level: int) -> int:
	if level <= 0:
		return 0
	if level - 1 >= LEVEL_POINTS.size():
		return int(LEVEL_POINTS[LEVEL_POINTS.size() - 1])
	return int(LEVEL_POINTS[level - 1])

func _hp_raise() -> int:
	return _get_rand(3, 10)

func _format_level_up_message(level: int) -> String:
	var template: String = _msg(MSG_LEVEL_UP, "Welcome to level %d")
	if template.find("%d") != -1:
		return template % level
	if template.find("%s") != -1:
		return template % str(level)
	return _uif("message.level.welcome", "", [level])

func _advance_turn(cost: int) -> void:
	if cost <= 0:
		return
	if game_over:
		return

	for _i in range(cost):
		var skip_monsters: bool = _is_haste_skipping_monsters()
		var should_apply_hunger: bool = _should_apply_hunger_tick_original()
		if should_apply_hunger:
			if not _process_hunger_status_before_decrement():
				return
			moves_left = max(0, moves_left - _hunger_cost_per_turn())

		if not skip_monsters:
			_monster_turn()
			_release_hold_if_needed()
		turn_counter += 1
		if turn_counter % 120 == 0:
			_spawn_wanderer()

		if hallucination_turns > 0:
			hallucination_turns -= 1
			if hallucination_turns == 0:
				_queue_message(_msg(MSG_UNHALLUCINATE, "Everything looks SO boring now"))
		if blind_turns > 0:
			blind_turns -= 1
			if blind_turns == 0:
				blind = false
				_queue_message(_msg(MSG_UNBLIND, "The veil of darkness lifts"))
				_refresh_player_vision()
		if player_confused_turns > 0:
			player_confused_turns -= 1
			if player_confused_turns == 0:
				_queue_message(_msg(MSG_UNCONFUSE_HALLUC if hallucination_turns > 0 else MSG_UNCONFUSE, "You feel less confused now"))
		if levitation_turns > 0:
			levitation_turns -= 1
			if levitation_turns == 0:
				_queue_message(_msg(MSG_LEVITATE_END, "You float gently to the ground"))
				if (int(dungeon[rogue_row][rogue_col]) & TRAP) != 0:
					_trigger_trap(rogue_row, rogue_col)
		if haste_self_turns > 0:
			haste_self_turns -= 1
			if haste_self_turns == 0:
				_queue_message(_msg(MSG_HASTE_END, "You feel yourself slowing down"))

		_natural_heal_tick()
		if ring_auto_search > 0:
			for _j in range(ring_auto_search):
				_search_once()

		if trap_door_pending:
			trap_door_pending = false
			_start_new_level()
			return

func _process_hunger_status_before_decrement() -> bool:
	if moves_left == HUNGRY_THRESHOLD:
		hunger_text = _msg(MSG_HUNGRY, "Hungry")
		_queue_message(_msg(72, "Hungry"))
	elif moves_left == WEAK_THRESHOLD:
		hunger_text = _msg(MSG_WEAK, "Weak")
		_queue_message(_msg(74, "Weak"))
	elif moves_left <= FAINT_THRESHOLD:
		if moves_left == FAINT_THRESHOLD:
			hunger_text = _msg(MSG_FAINT, "Faint")
			_queue_message(_msg(MSG_FAINT_START, "You feel very weak. You can barely move."))
		var faint_roll: int = _get_rand(0, max(0, FAINT_THRESHOLD - moves_left))
		if faint_roll > 0:
			if _rand_percent(40):
				moves_left += 1
			_queue_message(_msg(MSG_FAINT_EVENT, "You faint"))
			for _j in range(faint_roll):
				if _coin_toss():
					_monster_turn()
					_release_hold_if_needed()
			_queue_message(_msg(MSG_CAN_MOVE_AGAIN, "You can move again"))
	elif moves_left > HUNGRY_THRESHOLD:
		hunger_text = ""

	if moves_left <= STARVE_THRESHOLD:
		death_kind = "starvation"
		death_monster_name = ""
		_end_game(false, _ui("death.starvation", ""))
		return false

	return true

func _should_apply_hunger_tick_original() -> bool:
	return moves_left <= HUNGRY_THRESHOLD or cur_level >= max_level

func _natural_heal_tick() -> void:
	if hp_current >= hp_max:
		_heal_counter = 0
		return

	if exp_level != _heal_exp_level:
		_heal_exp_level = exp_level
		match exp_level:
			1:
				_heal_interval = 20
			2:
				_heal_interval = 18
			3:
				_heal_interval = 17
			4:
				_heal_interval = 14
			5:
				_heal_interval = 13
			6:
				_heal_interval = 10
			7:
				_heal_interval = 9
			8:
				_heal_interval = 8
			9:
				_heal_interval = 7
			10:
				_heal_interval = 4
			11:
				_heal_interval = 3
			_:
				_heal_interval = 2

	_heal_counter += 1
	if _heal_counter < _heal_interval:
		return

	_heal_counter = 0
	hp_current = min(hp_max, hp_current + 1)
	_heal_alt_boost = not _heal_alt_boost
	if _heal_alt_boost:
		hp_current = min(hp_max, hp_current + 1)
	hp_current = min(hp_max, hp_current + ring_regeneration)

func _hunger_cost_per_turn() -> int:
	match ring_energy_load:
		-1:
			var delta_half: int = _ring_hunger_toggle
			_ring_hunger_toggle = 1 - _ring_hunger_toggle
			return delta_half
		0:
			_ring_hunger_toggle = 1 - _ring_hunger_toggle
			return 1
		1:
			var delta_one_half: int = 1 + _ring_hunger_toggle
			_ring_hunger_toggle = 1 - _ring_hunger_toggle
			return delta_one_half
		2:
			_ring_hunger_toggle = 1 - _ring_hunger_toggle
			return 2
		_:
			_ring_hunger_toggle = 1 - _ring_hunger_toggle
			return max(0, ring_energy_load)

func _set_message(message: String) -> void:
	if message.is_empty():
		return
	_append_recent_message_log(message)
	if top_message.is_empty():
		top_message = message
		return
	message_queue.append(message)

func _queue_message(message: String) -> void:
	if message.is_empty():
		return
	_append_recent_message_log(message)
	if top_message.is_empty():
		top_message = message
	else:
		message_queue.append(message)

func _append_recent_message_log(message: String) -> void:
	if message.is_empty():
		return
	recent_message_log.append(message)
	while recent_message_log.size() > RECENT_MESSAGE_LOG_LIMIT:
		recent_message_log.remove_at(0)
	_update_recent_message_log_view()

func _update_recent_message_log_view() -> void:
	if log_text == null:
		return
	if recent_message_log.is_empty():
		log_text.text = _ui("log.none_recent", "")
		return
	log_text.text = "\n".join(recent_message_log)

func _consume_message_ack_if_needed() -> bool:
	if message_queue.is_empty():
		return false

	top_message = message_queue[0]
	message_queue.remove_at(0)
	_render_play_area()
	return true

func _prepare_message_for_new_input() -> bool:
	quit_confirm_pending = false
	if nap_remaining_turns > 0:
		return true
	if call_name_popup.visible or wand_select_popup.visible or identify_select_popup.visible:
		return true

	if auto_fight_active:
		return true

	if invincible_debug_enabled and not game_over:
		if message_queue.size() > INVINCIBLE_MESSAGE_QUEUE_TRIM_THRESHOLD:
			while message_queue.size() > INVINCIBLE_MESSAGE_QUEUE_KEEP:
				message_queue.remove_at(0)

	# Original rogue clears the message line on each command input.
	if _consume_message_ack_if_needed():
		return true

	if not top_message.is_empty():
		top_message = ""
		if game_over:
			if post_game_phase == "death_message":
				post_game_phase = "tomb"
			elif post_game_phase == "win_message":
				post_game_phase = "ranking"
		_render_play_area()
		if game_over:
			return true

	if game_over:
		if post_game_phase == "death_message":
			post_game_phase = "tomb"
			_render_play_area()
			return true
		if post_game_phase == "tomb":
			post_game_phase = "ranking"
			_render_play_area()
			return true
		if post_game_phase == "ranking":
			get_tree().reload_current_scene()
			return true

	action_interrupted = false
	return game_over

func _get_message_line_text() -> String:
	if message_queue.is_empty():
		return top_message
	return "%s %s" % [top_message, _msg(MSG_MORE, "--More--")]

func _make_level() -> void:
	if cur_level < LAST_DUNGEON:
		cur_level += 1
	if cur_level > max_level:
		max_level = cur_level

	var must_exist1 := _get_rand(0, 2)
	var must_exist2: int
	var must_exist3: int
	var vertical := _coin_toss()

	if vertical:
		must_exist2 = must_exist1 + 3
		must_exist3 = must_exist2 + 3
	else:
		must_exist1 *= 3
		must_exist2 = must_exist1 + 1
		must_exist3 = must_exist2 + 1

	var big_room: bool = (cur_level == party_counter) and _rand_percent(1)
	if big_room:
		_make_room(BIG_ROOM, 0, 0, 0)
	else:
		for i in range(MAXROOMS):
			_make_room(i, must_exist1, must_exist2, must_exist3)

	if not big_room:
		_add_mazes_original()

		_mix_random_rooms()

		for j in range(MAXROOMS):
			var i := random_rooms[j]

			if i < (MAXROOMS - 1):
				_connect_rooms(i, i + 1)
			if i < (MAXROOMS - 3):
				_connect_rooms(i, i + 3)
			if i < (MAXROOMS - 2):
				if _room_has_flag(i + 1, R_NOTHING) and (i + 1 != 4 or vertical):
					if _connect_rooms(i, i + 2):
						rooms[i + 1]["is_room"] = R_CROSS
			if i < (MAXROOMS - 6):
				if _room_has_flag(i + 3, R_NOTHING) and (i + 3 != 4 or not vertical):
					if _connect_rooms(i, i + 6):
						rooms[i + 3]["is_room"] = R_CROSS

			if _is_all_connected():
				break

		_fill_out_level_original()

func _add_mazes_original() -> void:
	if cur_level <= 1:
		return

	var start: int = _get_rand(0, MAXROOMS - 1)
	var maze_percent: int = int((cur_level * 5) / 4)
	if cur_level > 15:
		maze_percent += cur_level

	for i in range(MAXROOMS):
		var j: int = (start + i) % MAXROOMS
		if not _room_has_flag(j, R_NOTHING):
			continue
		if not _rand_percent(maze_percent):
			continue

		rooms[j]["is_room"] = R_MAZE
		_make_maze_original(
			_get_rand(int(rooms[j]["top_row"]) + 1, int(rooms[j]["bottom_row"]) - 1),
			_get_rand(int(rooms[j]["left_col"]) + 1, int(rooms[j]["right_col"]) - 1),
			int(rooms[j]["top_row"]),
			int(rooms[j]["bottom_row"]),
			int(rooms[j]["left_col"]),
			int(rooms[j]["right_col"])
		)
		_hide_boxed_passage_original(
			int(rooms[j]["top_row"]),
			int(rooms[j]["left_col"]),
			int(rooms[j]["bottom_row"]),
			int(rooms[j]["right_col"]),
			_get_rand(0, 2)
		)

func _fill_out_level_original() -> void:
	_mix_random_rooms()
	r_de = NO_ROOM

	for i in range(MAXROOMS):
		var rn: int = random_rooms[i]
		if _room_has_flag(rn, R_NOTHING) or (_room_has_flag(rn, R_CROSS) and _coin_toss()):
			_fill_it_original(rn, true)

	if r_de != NO_ROOM:
		_fill_it_original(r_de, false)

func _fill_it_original(rn: int, do_rec_de: bool) -> void:
	var offsets: Array[int] = []
	offsets.append(-1)
	offsets.append(1)
	offsets.append(3)
	offsets.append(-3)
	for _i in range(10):
		var a: int = _get_rand(0, 3)
		var b: int = _get_rand(0, 3)
		var t: int = offsets[a]
		offsets[a] = offsets[b]
		offsets[b] = t

	var rooms_found: int = 0
	var did_this: bool = false
	for i in range(4):
		var target_room: int = rn + offsets[i]
		if target_room < 0 or target_room >= MAXROOMS:
			continue
		if not (_same_row(rn, target_room) or _same_col(rn, target_room)):
			continue
		if not _room_has_any(target_room, R_ROOM | R_MAZE):
			continue

		var tunnel_dir: int
		if _same_row(rn, target_room):
			tunnel_dir = RIGHT if int(rooms[rn]["left_col"]) < int(rooms[target_room]["left_col"]) else LEFT
		else:
			tunnel_dir = DOWN if int(rooms[rn]["top_row"]) < int(rooms[target_room]["top_row"]) else UPWARD

		var door_dir: int = (tunnel_dir + 4) % 8
		if int(rooms[target_room]["doors"][int(door_dir / 2)]["oth_room"]) != NO_ROOM:
			continue

		var source: Array = _mask_room_original(rn, TUNNEL)
		var srow: int
		var scol: int
		if (not do_rec_de) or did_this or (source.is_empty()) or (not bool(source[0])):
			srow = int((int(rooms[rn]["top_row"]) + int(rooms[rn]["bottom_row"])) / 2)
			scol = int((int(rooms[rn]["left_col"]) + int(rooms[rn]["right_col"])) / 2)
		else:
			srow = int(source[1])
			scol = int(source[2])

		var door_rc: Array[int] = _put_door(target_room, door_dir)
		var drow: int = door_rc[0]
		var dcol: int = door_rc[1]
		rooms_found += 1
		_draw_simple_passage(srow, scol, drow, dcol, tunnel_dir)
		rooms[rn]["is_room"] = R_DEADEND
		dungeon[srow][scol] = TUNNEL

		if i < 3 and not did_this:
			did_this = true
			if _coin_toss():
				continue

		if rooms_found < 2 and do_rec_de:
			_recursive_deadend_original(rn, offsets, srow, scol)
		break

func _recursive_deadend_original(rn: int, offsets: Array[int], srow: int, scol: int) -> void:
	rooms[rn]["is_room"] = R_DEADEND
	dungeon[srow][scol] = TUNNEL

	for i in range(4):
		var de: int = rn + offsets[i]
		if de < 0 or de >= MAXROOMS:
			continue
		if not (_same_row(rn, de) or _same_col(rn, de)):
			continue
		if not _room_has_flag(de, R_NOTHING):
			continue

		var drow: int = int((int(rooms[de]["top_row"]) + int(rooms[de]["bottom_row"])) / 2)
		var dcol: int = int((int(rooms[de]["left_col"]) + int(rooms[de]["right_col"])) / 2)
		var tunnel_dir: int
		if _same_row(rn, de):
			tunnel_dir = RIGHT if int(rooms[rn]["left_col"]) < int(rooms[de]["left_col"]) else LEFT
		else:
			tunnel_dir = DOWN if int(rooms[rn]["top_row"]) < int(rooms[de]["top_row"]) else UPWARD

		_draw_simple_passage(srow, scol, drow, dcol, tunnel_dir)
		r_de = de
		_recursive_deadend_original(de, offsets, drow, dcol)

func _mask_room_original(rn: int, mask: int) -> Array:
	for row in range(int(rooms[rn]["top_row"]), int(rooms[rn]["bottom_row"]) + 1):
		for col in range(int(rooms[rn]["left_col"]), int(rooms[rn]["right_col"]) + 1):
			if (int(dungeon[row][col]) & mask) != 0:
				return [true, row, col]
	return []

func _is_tunnel_original(row: int, col: int) -> bool:
	if row < 0 or row >= ROGUE_LINES:
		return false
	if col < 0 or col >= ROGUE_COLUMNS:
		return false
	return (int(dungeon[row][col]) & TUNNEL) != 0

func _make_maze_original(r: int, c: int, tr: int, br: int, lc: int, rc: int) -> void:
	if r < 0 or r >= ROGUE_LINES or c < 0 or c >= ROGUE_COLUMNS:
		return

	dungeon[r][c] = TUNNEL
	var dirs: Array[int] = []
	dirs.append(UPWARD)
	dirs.append(DOWN)
	dirs.append(LEFT)
	dirs.append(RIGHT)
	if _rand_percent(33):
		for _i in range(10):
			var t1: int = _get_rand(0, 3)
			var t2: int = _get_rand(0, 3)
			var tmp: int = dirs[t1]
			dirs[t1] = dirs[t2]
			dirs[t2] = tmp

	for dir in dirs:
		match int(dir):
			UPWARD:
				if (r - 1) >= tr and not _is_tunnel_original(r - 1, c) and not _is_tunnel_original(r - 1, c - 1) and not _is_tunnel_original(r - 1, c + 1) and not _is_tunnel_original(r - 2, c):
					_make_maze_original(r - 1, c, tr, br, lc, rc)
			DOWN:
				if (r + 1) <= br and not _is_tunnel_original(r + 1, c) and not _is_tunnel_original(r + 1, c - 1) and not _is_tunnel_original(r + 1, c + 1) and not _is_tunnel_original(r + 2, c):
					_make_maze_original(r + 1, c, tr, br, lc, rc)
			LEFT:
				if (c - 1) >= lc and not _is_tunnel_original(r, c - 1) and not _is_tunnel_original(r - 1, c - 1) and not _is_tunnel_original(r + 1, c - 1) and not _is_tunnel_original(r, c - 2):
					_make_maze_original(r, c - 1, tr, br, lc, rc)
			RIGHT:
				if (c + 1) <= rc and not _is_tunnel_original(r, c + 1) and not _is_tunnel_original(r - 1, c + 1) and not _is_tunnel_original(r + 1, c + 1) and not _is_tunnel_original(r, c + 2):
					_make_maze_original(r, c + 1, tr, br, lc, rc)

func _hide_boxed_passage_original(row1_in: int, col1_in: int, row2_in: int, col2_in: int, n: int) -> void:
	if cur_level <= 2:
		return

	var row1: int = row1_in
	var col1: int = col1_in
	var row2: int = row2_in
	var col2: int = col2_in
	if row1 > row2:
		var tr: int = row1
		row1 = row2
		row2 = tr
	if col1 > col2:
		var tc: int = col1
		col1 = col2
		col2 = tc

	var h: int = row2 - row1
	var w: int = col2 - col1
	if w < 5 and h < 5:
		return

	var row_cut: int = 1 if h >= 2 else 0
	var col_cut: int = 1 if w >= 2 else 0
	for _i in range(max(0, n)):
		for _j in range(10):
			var row: int = _get_rand(row1 + row_cut, row2 - row_cut)
			var col: int = _get_rand(col1 + col_cut, col2 - col_cut)
			if (int(dungeon[row][col]) & TUNNEL) != 0:
				dungeon[row][col] = int(dungeon[row][col]) | HIDDEN
				break

func _make_room(rn: int, r1: int, r2: int, r3: int) -> void:
	var left_col: int
	var right_col: int
	var top_row: int
	var bottom_row: int

	if rn == BIG_ROOM:
		top_row = _get_rand(MIN_ROW, MIN_ROW + 5)
		bottom_row = _get_rand(ROGUE_LINES - 7, ROGUE_LINES - 2)
		left_col = _get_rand(0, 10)
		right_col = _get_rand(ROGUE_COLUMNS - 11, ROGUE_COLUMNS - 2)
		rn = 0
	else:
		match rn % 3:
			0:
				left_col = 0
				right_col = COL1 - 1
			1:
				left_col = COL1 + 1
				right_col = COL2 - 1
			_:
				left_col = COL2 + 1
				right_col = ROGUE_COLUMNS - 2

		match int(rn / 3):
			0:
				top_row = MIN_ROW
				bottom_row = ROW1 - 1
			1:
				top_row = ROW1 + 1
				bottom_row = ROW2 - 1
			_:
				top_row = ROW2 + 1
				bottom_row = ROGUE_LINES - 2

		var height := _get_rand(4, (bottom_row - top_row + 1))
		var width := _get_rand(7, (right_col - left_col - 2))

		var row_offset := _get_rand(0, ((bottom_row - top_row) - height + 1))
		var col_offset := _get_rand(0, ((right_col - left_col) - width + 1))

		top_row += row_offset
		bottom_row = top_row + height - 1
		left_col += col_offset
		right_col = left_col + width - 1

		if (rn != r1) and (rn != r2) and (rn != r3) and _rand_percent(40):
			rooms[rn]["top_row"] = top_row
			rooms[rn]["bottom_row"] = bottom_row
			rooms[rn]["left_col"] = left_col
			rooms[rn]["right_col"] = right_col
			return

	rooms[rn]["is_room"] = R_ROOM

	for r in range(top_row, bottom_row + 1):
		for c in range(left_col, right_col + 1):
			var ch := FLOOR
			if r == top_row or r == bottom_row:
				ch = HORWALL
			elif c == left_col or c == right_col:
				ch = VERTWALL
			dungeon[r][c] = ch

	rooms[rn]["top_row"] = top_row
	rooms[rn]["bottom_row"] = bottom_row
	rooms[rn]["left_col"] = left_col
	rooms[rn]["right_col"] = right_col

func _connect_rooms(room1: int, room2: int) -> bool:
	if not _room_has_any(room1, R_ROOM | R_MAZE):
		return false
	if not _room_has_any(room2, R_ROOM | R_MAZE):
		return false

	var dir: int
	var rev: int

	if _same_row(room1, room2):
		if rooms[room1]["left_col"] > rooms[room2]["right_col"]:
			dir = LEFT
			rev = RIGHT
		else:
			dir = RIGHT
			rev = LEFT
	elif _same_col(room1, room2):
		if rooms[room1]["top_row"] > rooms[room2]["bottom_row"]:
			dir = UPWARD
			rev = DOWN
		else:
			dir = DOWN
			rev = UPWARD
	else:
		return false

	var rc1 := _put_door(room1, dir)
	var rc2 := _put_door(room2, rev)

	var row1: int = rc1[0]
	var col1: int = rc1[1]
	var row2: int = rc2[0]
	var col2: int = rc2[1]

	while true:
		_draw_simple_passage(row1, col1, row2, col2, dir)
		if not _rand_percent(4):
			break

	var idx1 := int(dir / 2)
	var idx2 := int(((dir + 4) % 8) / 2)

	rooms[room1]["doors"][idx1]["oth_room"] = room2
	rooms[room1]["doors"][idx1]["oth_row"] = row2
	rooms[room1]["doors"][idx1]["oth_col"] = col2

	rooms[room2]["doors"][idx2]["oth_room"] = room1
	rooms[room2]["doors"][idx2]["oth_row"] = row1
	rooms[room2]["doors"][idx2]["oth_col"] = col1

	return true

func _put_door(room_index: int, dir: int) -> Array[int]:
	var rm: Dictionary = rooms[room_index]
	var row: int = 0
	var col: int = 0
	var wall_width: int = 0 if (int(rm["is_room"]) & R_MAZE) != 0 else 1

	if dir == UPWARD or dir == DOWN:
		row = rm["top_row"] if dir == UPWARD else rm["bottom_row"]
		while true:
			col = _get_rand(rm["left_col"] + wall_width, rm["right_col"] - wall_width)
			if (int(dungeon[row][col]) & (HORWALL | TUNNEL)) != 0:
				break
	else:
		col = rm["left_col"] if dir == LEFT else rm["right_col"]
		while true:
			row = _get_rand(rm["top_row"] + wall_width, rm["bottom_row"] - wall_width)
			if (int(dungeon[row][col]) & (VERTWALL | TUNNEL)) != 0:
				break

	if (int(rm["is_room"]) & R_ROOM) != 0:
		dungeon[row][col] = DOOR

	if cur_level > 2 and _rand_percent(HIDE_PERCENT):
		dungeon[row][col] = int(dungeon[row][col]) | HIDDEN

	var di := int(dir / 2)
	rm["doors"][di]["door_row"] = row
	rm["doors"][di]["door_col"] = col
	rooms[room_index] = rm

	return [row, col]

func _draw_simple_passage(row1_in: int, col1_in: int, row2_in: int, col2_in: int, dir: int) -> void:
	var row1 := row1_in
	var col1 := col1_in
	var row2 := row2_in
	var col2 := col2_in

	if dir == LEFT or dir == RIGHT:
		if col1 > col2:
			var tr := row1
			var tc := col1
			row1 = row2
			col1 = col2
			row2 = tr
			col2 = tc

		var middle := _get_rand(col1 + 1, col2 - 1)
		for c in range(col1 + 1, middle):
			dungeon[row1][c] = TUNNEL

		var r := row1
		while r != row2:
			dungeon[r][middle] = TUNNEL
			r += -1 if row1 > row2 else 1

		for c in range(middle, col2):
			dungeon[row2][c] = TUNNEL
	else:
		if row1 > row2:
			var tr := row1
			var tc := col1
			row1 = row2
			col1 = col2
			row2 = tr
			col2 = tc

		var middle := _get_rand(row1 + 1, row2 - 1)
		for rr in range(row1 + 1, middle):
			dungeon[rr][col1] = TUNNEL

		var c2 := col1
		while c2 != col2:
			dungeon[middle][c2] = TUNNEL
			c2 += -1 if col1 > col2 else 1

		for rr in range(middle, row2):
			dungeon[rr][col2] = TUNNEL

	if _rand_percent(HIDE_PERCENT):
		_hide_boxed_passage_original(row1, col1, row2, col2, 1)

func _put_player(nr: int) -> void:
	var rn := nr
	var row := 0
	var col := 0

	var misses := 0
	while misses < 2 and rn == nr:
		var rc := _gr_row_col(FLOOR | TUNNEL | OBJECT | STAIRS)
		row = rc[0]
		col = rc[1]
		rn = _get_room_number(row, col)
		misses += 1

	rogue_row = row
	rogue_col = col
	_set_cur_room_from_player_position()
	if cur_room != PASSAGE:
		_light_up_room(cur_room)
		_wake_room(cur_room, true, rogue_row, rogue_col)
	else:
		_light_passage(rogue_row, rogue_col)
	_snap_view_to_player()
	_debug_scroll("put_player")

func _gr_row_col(mask: int) -> Array[int]:
	while true:
		var r := _get_rand(MIN_ROW, ROGUE_LINES - 2)
		var c := _get_rand(0, ROGUE_COLUMNS - 1)
		var rn := _get_room_number(r, c)
		var cell: int = int(dungeon[r][c])

		if rn == NO_ROOM:
			continue
		if (cell & mask) == 0:
			continue
		if (cell & (~mask)) != 0:
			continue
		if not _room_has_any(rn, R_ROOM | R_MAZE):
			continue
		if r == rogue_row and c == rogue_col:
			continue

		return [r, c]

	# Defensive fallback for static analysis.
	return [MIN_ROW, 0]

func _get_room_number(row: int, col: int) -> int:
	for i in range(MAXROOMS):
		if row >= rooms[i]["top_row"] and row <= rooms[i]["bottom_row"] and col >= rooms[i]["left_col"] and col <= rooms[i]["right_col"]:
			return i
	return NO_ROOM

func _is_all_connected() -> bool:
	var visited: Array[bool] = []
	visited.resize(MAXROOMS)
	visited.fill(false)

	var start := 0
	for i in range(MAXROOMS):
		if _room_has_any(i, R_ROOM | R_MAZE):
			start = i

	_visit_rooms(start, visited)

	for i in range(MAXROOMS):
		if _room_has_any(i, R_ROOM | R_MAZE) and not visited[i]:
			return false

	return true

func _visit_rooms(rn: int, visited: Array[bool]) -> void:
	visited[rn] = true

	for i in range(4):
		var oth_rn: int = rooms[rn]["doors"][i]["oth_room"]
		if oth_rn >= 0 and not visited[oth_rn]:
			_visit_rooms(oth_rn, visited)

func _mix_random_rooms() -> void:
	for i in range(MAXROOMS):
		var j := _get_rand(i, MAXROOMS - 1)
		var t := random_rooms[i]
		random_rooms[i] = random_rooms[j]
		random_rooms[j] = t

func _same_row(room1: int, room2: int) -> bool:
	return int(room1 / 3) == int(room2 / 3)

func _same_col(room1: int, room2: int) -> bool:
	return int(room1 % 3) == int(room2 % 3)

func _room_has_flag(idx: int, mask: int) -> bool:
	return (int(rooms[idx]["is_room"]) & mask) == mask

func _room_has_any(idx: int, mask: int) -> bool:
	return (int(rooms[idx]["is_room"]) & mask) != 0

func _render_play_area() -> void:
	_apply_play_fonts_for_phase()
	var viewport_chars := _get_viewport_chars()
	var map_rows: int = max(1, viewport_chars.y)
	_keep_player_visible(viewport_chars.x, map_rows)
	_debug_scroll("render_start")
	tomb_overlay_text.visible = false
	tomb_overlay_text.text = ""
	var line_left_pad_chars: int = _play_line_left_pad_chars()
	var left_pad: String = " ".repeat(line_left_pad_chars)
	var message_width_px: float = _label_available_width_px(message_line_label, line_left_pad_chars)
	var fitted_message: String = _fit_line_px(_get_message_line_text(), message_width_px, message_line_label)
	if fitted_message.length() < _last_message_line_len:
		fitted_message += " ".repeat(_last_message_line_len - fitted_message.length())
	_last_message_line_len = fitted_message.length()
	message_line_label.text = left_pad + fitted_message
	status_line_label.text = left_pad + _get_status_line()
	_apply_status_line_hunger_color()

	var lines: PackedStringArray = []
	var start_row := view_top_row
	var start_col := view_left_col

	if game_over and post_game_phase == "ranking":
		_hide_minimap()
		for row_text in _build_ranking_rows(viewport_chars.x, map_rows):
			lines.append(row_text)
		play_text.text = "\n".join(lines)
		_debug_scroll("render_done")
		return

	if game_over and post_game_phase == "tomb":
		_hide_minimap()
		for row_text in _build_death_tomb_rows(viewport_chars.x, map_rows):
			lines.append(row_text)
		play_text.text = "\n".join(lines)
		var overlay_lines: PackedStringArray = []
		for row_text in _build_death_tomb_overlay_rows(viewport_chars.x, map_rows):
			overlay_lines.append(row_text)
		tomb_overlay_text.text = "\n".join(overlay_lines)
		tomb_overlay_text.visible = true
		_debug_scroll("render_done")
		return

	for vr in range(map_rows):
		var r := start_row + vr
		var row_chars := ""
		for vc in range(viewport_chars.x):
			var c := start_col + vc
			if r < 0 or r >= ROGUE_LINES or c < 0 or c >= ROGUE_COLUMNS:
				row_chars += " "
				continue

			var is_visible: bool = bool(map_visible[r][c])
			var is_revealed: bool = bool(map_revealed[r][c])
			var has_detected_monster: bool = detect_monster and not blind and (int(dungeon[r][c]) & MONSTER) != 0
			if not is_revealed and not has_detected_monster and not (r == rogue_row and c == rogue_col):
				row_chars += " "
				continue

			var ch := _get_dungeon_char(r, c, is_visible)
			if r == rogue_row and c == rogue_col:
				ch = "@"
			row_chars += _apply_char_color(ch)
		lines.append(row_chars)

	play_text.text = "\n".join(lines)
	_update_minimap()
	_debug_scroll("render_done")

func _hide_minimap() -> void:
	if minimap_frame == null:
		return
	minimap_frame.visible = false
	minimap_frame.custom_minimum_size = Vector2.ZERO
	if minimap_top_row != null:
		minimap_top_row.visible = false
	if minimap_marker_border != null:
		minimap_marker_border.visible = false

func _update_minimap() -> void:
	if minimap_frame == null or minimap_texture_rect == null or play_area == null:
		return
	if game_over and (post_game_phase == "tomb" or post_game_phase == "ranking"):
		_hide_minimap()
		return

	var line_height: float = _play_line_height_px()
	var required_height: float = float(ROGUE_LINES) * line_height
	var spare_height: float = play_area.size.y - required_height
	if spare_height < (MINIMAP_MIN_SIZE_PX + MINIMAP_PADDING_PX * 2.0):
		_hide_minimap()
		return

	var available_h: float = spare_height - MINIMAP_PADDING_PX * 2.0
	var available_w: float = play_area.size.x - MINIMAP_PADDING_PX * 2.0
	if available_h < MINIMAP_MIN_SIZE_PX or available_w < MINIMAP_MIN_SIZE_PX:
		_hide_minimap()
		return

	var aspect: float = float(ROGUE_COLUMNS) / float(ROGUE_LINES)
	var target_h: float = min(available_h, MINIMAP_MAX_HEIGHT_PX)
	var target_w: float = min(available_w, target_h * aspect)

	if target_w < MINIMAP_MIN_SIZE_PX:
		target_w = MINIMAP_MIN_SIZE_PX
		target_h = target_w / aspect

	if target_h > available_h or target_w > available_w:
		_hide_minimap()
		return

	minimap_frame.custom_minimum_size = Vector2(0.0, target_h + MINIMAP_PADDING_PX * 2.0)
	minimap_texture_rect.custom_minimum_size = Vector2(target_w, target_h)
	minimap_frame.visible = true
	if minimap_top_row != null:
		minimap_top_row.visible = true
	_update_minimap_texture()
	_update_minimap_player_marker()

func _play_line_height_px() -> float:
	var font: Font = play_text.get_theme_font("normal_font")
	var font_size: int = play_text.get_theme_font_size("normal_font_size")
	if font == null:
		return 16.0
	var line_height: float = font.get_height(font_size)
	if line_height <= 0.0:
		return 16.0
	return line_height

func _update_minimap_texture() -> void:
	var image: Image = Image.create(ROGUE_COLUMNS, ROGUE_LINES, false, Image.FORMAT_RGBA8)
	image.fill(Color(0.0, 0.0, 0.0, 0.0))

	for row in range(ROGUE_LINES):
		for col in range(ROGUE_COLUMNS):
			var is_player: bool = row == rogue_row and col == rogue_col
			var is_visible: bool = bool(map_visible[row][col])
			var is_revealed: bool = bool(map_revealed[row][col])
			var has_detected_monster: bool = detect_monster and not blind and (int(dungeon[row][col]) & MONSTER) != 0

			if not is_player and not is_revealed and not has_detected_monster:
				continue

			var glyph: String = _get_dungeon_char(row, col, is_visible)

			var color: Color = _minimap_color_for_glyph(glyph)
			if glyph != "%" and not is_player and not is_visible and not has_detected_monster:
				color = color.darkened(MINIMAP_DIM_FACTOR)

			image.set_pixel(col, row, color)

	_minimap_texture.set_image(image)
	minimap_texture_rect.texture = _minimap_texture

func _update_minimap_player_marker() -> void:
	if minimap_marker_border == null or minimap_marker_core == null or minimap_overlay == null:
		return
	if rogue_row < 0 or rogue_row >= ROGUE_LINES or rogue_col < 0 or rogue_col >= ROGUE_COLUMNS:
		minimap_marker_border.visible = false
		return

	var draw_rect: Rect2 = _get_minimap_texture_draw_rect()
	if draw_rect.size.x <= 0.0 or draw_rect.size.y <= 0.0:
		minimap_marker_border.visible = false
		return

	var cell_w: float = draw_rect.size.x / float(ROGUE_COLUMNS)
	var cell_h: float = draw_rect.size.y / float(ROGUE_LINES)
	if cell_w <= 0.0 or cell_h <= 0.0:
		minimap_marker_border.visible = false
		return

	var marker_size: float = clamp(min(cell_w, cell_h) * 1.2, 5.0, 12.0)
	var marker_center_in_texture: Vector2 = draw_rect.position + Vector2((float(rogue_col) + 0.5) * cell_w, (float(rogue_row) + 0.5) * cell_h)
	var marker_center_global: Vector2 = minimap_texture_rect.global_position + marker_center_in_texture
	var marker_center_local: Vector2 = minimap_overlay.get_global_transform_with_canvas().affine_inverse() * marker_center_global
	minimap_marker_border.position = marker_center_local - Vector2(marker_size * 0.5, marker_size * 0.5)
	minimap_marker_border.size = Vector2(marker_size, marker_size)
	minimap_marker_border.visible = true

func _get_minimap_texture_draw_rect() -> Rect2:
	if minimap_texture_rect == null:
		return Rect2()

	var control_size: Vector2 = minimap_texture_rect.size
	if control_size.x <= 0.0 or control_size.y <= 0.0:
		return Rect2()

	var tex: Texture2D = minimap_texture_rect.texture
	if tex == null:
		return Rect2(Vector2.ZERO, control_size)

	var tex_size: Vector2 = tex.get_size()
	if tex_size.x <= 0.0 or tex_size.y <= 0.0:
		return Rect2(Vector2.ZERO, control_size)

	var scale_factor: float = min(control_size.x / tex_size.x, control_size.y / tex_size.y)
	var draw_size: Vector2 = tex_size * scale_factor
	var draw_offset: Vector2 = (control_size - draw_size) * 0.5
	return Rect2(draw_offset, draw_size)

func _minimap_color_for_glyph(glyph: String) -> Color:
	if glyph == "@":
		return Color(0.12, 0.72, 0.24, 1.0)

	# Minimap uses color buckets so pixel blocks still distinguish key terrain types.
	match glyph:
		"-", "|":
			return Color.from_string(_theme_color_at(0), Color(0.4, 0.78, 0.9, 1.0))
		"+":
			return Color(0.36, 0.68, 0.98, 1.0)
		"#":
			return Color.from_string(_theme_color_at(1), Color(0.44, 0.66, 1.0, 1.0))
		"%":
			return Color.from_string(_theme_color_at(3), Color(0.98, 0.82, 0.3, 1.0))

	var group: int = _char_color_group(glyph)
	if group < 0:
		return Color(0.86, 0.86, 0.86, 1.0)

	var color_text: String = _theme_color_at(group)
	return Color.from_string(color_text, Color(0.86, 0.86, 0.86, 1.0))

func _theme_color_at(index: int) -> String:
	if index < 0 or index >= COLOR_THEME.length():
		return "#f2f2f2"
	var key: String = COLOR_THEME.substr(index, 1).to_lower()
	return str(COLOR_HEX.get(key, "#f2f2f2"))

func _char_color_group(ch: String) -> int:
	if ch.is_empty():
		return -1

	if "-|#+".find(ch) != -1:
		return 0
	if ch == ".":
		return 1
	if ch.length() == 1 and ch[0] >= "A" and ch[0] <= "Z":
		return 2
	if "%!?/=)]^*:,".find(ch) != -1:
		return 3
	if ch == "@":
		return 4

	return -1

func _apply_char_color(ch: String) -> String:
	var group: int = _char_color_group(ch)
	if group < 0:
		return ch
	return "[color=%s]%s[/color]" % [_theme_color_at(group), ch]

func _roll_damage(spec: String) -> int:
	var total: int = 0
	for part in spec.split("/"):
		var section: String = part.strip_edges()
		if section.is_empty():
			continue
		var dice_parts: PackedStringArray = section.split("d")
		if dice_parts.size() != 2:
			continue
		var n: int = max(0, int(dice_parts[0]))
		var d: int = max(1, int(dice_parts[1]))
		for _i in range(n):
			total += _get_rand(1, d)
	return total

func _damage_for_strength() -> int:
	var strength: int = _effective_strength_current()
	if strength <= 6:
		return strength - 5
	if strength <= 14:
		return 1
	if strength <= 17:
		return 3
	if strength <= 18:
		return 4
	if strength <= 20:
		return 5
	if strength <= 21:
		return 6
	if strength <= 30:
		return 7
	return 8

func _get_hit_chance() -> int:
	if equipped_weapon_index >= 0 and equipped_weapon_index < inventory_items.size():
		var weapon_item: Dictionary = inventory_items[equipped_weapon_index]
		if str(weapon_item.get("kind", "")) == "weapon":
			return _hit_chance_for_weapon_item(weapon_item)
	return 40 + (3 * 1) + ((2 * _effective_exp_with_rings()) - ring_count)

func _get_weapon_damage() -> int:
	var base_damage: int = -1
	if equipped_weapon_index >= 0 and equipped_weapon_index < inventory_items.size():
		var weapon_item: Dictionary = inventory_items[equipped_weapon_index]
		if str(weapon_item.get("kind", "")) == "weapon":
			return _weapon_damage_from_item(weapon_item)
	return base_damage + _damage_for_strength() + int(((_effective_exp_with_rings() - ring_count) + 1) / 2)

func _monster_name_from_info(info: Dictionary) -> String:
	if _monster_name_should_be_hidden(info):
		return _msg(63, "something")
	var ch: String = str(info.get("m_char", "M"))
	if ch.length() == 1 and ch[0] >= "A" and ch[0] <= "Z":
		var idx: int = 307 + (ch.unicode_at(0) - "A".unicode_at(0))
		var resolved: String = _msg(idx, ch)
		if resolved.strip_edges().is_empty() or resolved == ch:
			return _monster_fallback_name_by_letter(ch)
		return resolved
	return ch

func _release_hold_if_needed() -> void:
	if not player_held:
		return

	for key_var in monster_data.keys():
		var key: String = str(key_var)
		var info: Dictionary = monster_data[key]
		if (int(info.get("flags", 0)) & M_HOLDS) == 0:
			continue
		var pos: Vector2i = _key_to_pos(key)
		if abs(pos.x - rogue_row) <= 1 and abs(pos.y - rogue_col) <= 1:
			return

	player_held = false

func _apply_freeze_special(monster_key: String, monster_name: String) -> void:
	if invincible_debug_enabled:
		return

	if _rand_percent(12):
		return

	var freeze_percent: int = 99
	var effective_str: int = _effective_strength_current()
	freeze_percent -= (effective_str + int(effective_str / 2))
	freeze_percent -= (_effective_exp_with_rings() * 4)
	freeze_percent -= (armor_class * 5)
	freeze_percent -= int(hp_max / 3)

	if freeze_percent <= 10:
		return

	if monster_data.has(monster_key):
		var freezing_info: Dictionary = monster_data[monster_key]
		freezing_info["flags"] = int(freezing_info.get("flags", 0)) | M_FREEZING_ROGUE
		monster_data[monster_key] = freezing_info

	_queue_message(_uif("message.freeze.by_monster", "", [monster_name]))
	var frozen_turns: int = _get_rand(4, 8)
	for _i in range(frozen_turns):
		if game_over:
			break
		if not _is_haste_skipping_monsters():
			_monster_turn()
			_release_hold_if_needed()

	if not game_over and _rand_percent(freeze_percent):
		for _j in range(50):
			if game_over:
				break
			if not _is_haste_skipping_monsters():
				_monster_turn()
				_release_hold_if_needed()
		if not game_over:
			death_kind = "hypothermia"
			death_monster_name = ""
			_end_game(false, _ui("death.hypothermia", ""))

	if monster_data.has(monster_key):
		var thawed_info: Dictionary = monster_data[monster_key]
		thawed_info["flags"] = int(thawed_info.get("flags", 0)) & ~M_FREEZING_ROGUE
		monster_data[monster_key] = thawed_info

	if not game_over:
		_queue_message(_msg(MSG_CAN_MOVE_AGAIN, "You can move again"))

func _apply_sting_special(monster_name: String) -> void:
	if ring_sustain_strength:
		return
	if str_current <= 3:
		return

	var sting_chance: int = 35 + (6 * (6 - armor_class))
	if _effective_exp_with_rings() > 8:
		sting_chance -= (6 * (_effective_exp_with_rings() - 8))

	if _rand_percent(sting_chance):
		str_current -= 1
		var msg: String = _msg(MSG_STING, "The %s has weakened you")
		if msg.find("%s") != -1:
			msg = msg % monster_name
		_queue_message(msg)

func _apply_drop_level_special() -> void:
	if _rand_percent(80) or exp_level <= 5:
		return

	exp_points = max(0, _exp_threshold(exp_level - 2) - _get_rand(9, 29))
	exp_level = max(1, exp_level - 2)
	var hp_loss: int = _hp_raise()
	hp_current = max(1, hp_current - hp_loss)
	hp_max = max(1, hp_max - hp_loss)
	_add_exp(1, false)

func _apply_drain_life_special() -> void:
	if _rand_percent(60) or hp_max <= 30 or hp_current < 10:
		return

	var n: int = _get_rand(1, 3)
	if n != 2 or not ring_sustain_strength:
		_queue_message(_msg(MSG_DRAIN, "You feel your life drain away"))
	if n != 2:
		hp_max = max(1, hp_max - 1)
		hp_current = max(1, hp_current - 1)
	if n != 1 and str_current > 3:
		if not ring_sustain_strength:
			str_current -= 1
			if _coin_toss() and str_max > 3:
				str_max -= 1

func _apply_steal_gold_special(monster_key: String) -> void:
	if player_gold <= 0 or _rand_percent(10):
		return

	var amount: int = _get_rand(cur_level * 10, cur_level * 30)
	amount = min(amount, player_gold)
	player_gold -= amount
	_queue_message(_msg(MSG_STEAL_GOLD, "Your purse feels lighter"))
	_remove_monster(monster_key)

func _apply_steal_item_special(monster_key: String) -> void:
	if _rand_percent(15):
		return
	if inventory_items.is_empty():
		_remove_monster(monster_key)
		return

	var candidates: Array[int] = []
	for i in range(inventory_items.size()):
		if i == equipped_weapon_index or i == equipped_armor_index or i == equipped_ring_left_index or i == equipped_ring_right_index:
			continue
		candidates.append(i)

	if candidates.is_empty():
		_remove_monster(monster_key)
		return

	var idx: int = candidates[_get_rand(0, candidates.size() - 1)]
	_remove_inventory_item_at(idx)
	_queue_message(_msg(MSG_STEAL_ITEM, "Something was stolen from your pack"))
	_remove_monster(monster_key)

func _remove_monster(monster_key: String) -> void:
	if not monster_data.has(monster_key):
		return
	var pos: Vector2i = _key_to_pos(monster_key)
	dungeon[pos.x][pos.y] = int(dungeon[pos.x][pos.y]) & ~MONSTER
	monster_data.erase(monster_key)
	monster_glyphs.erase(monster_key)
	_release_hold_if_needed()

func _win_game() -> void:
	if game_over:
		return

	game_over = true
	game_won = true
	death_kind = ""
	death_monster_name = ""
	death_monster_char = ""
	post_game_phase = "win_message"
	_set_message(_msg(MSG_WIN_1, "Congratulations, you have made it to the light of day!"))
	_queue_message(_msg(MSG_WIN_2, "You have joined the elite ranks of those who escaped."))
	_queue_message(_msg(MSG_WIN_3, "You journey home with your treasure."))
	_queue_message(_msg(MSG_WIN_4, "You are admitted to the Fighters' Guild."))
	_queue_message(_msg(MSG_WIN_TITLE, "a total winner"))
	_sell_inventory_on_win_original()
	_record_score_once(_msg(MSG_WIN_TITLE, "a total winner"))
	_clear_autosave_state()

func _end_game(won: bool, reason: String) -> void:
	if game_over:
		return
	if invincible_debug_enabled and not won:
		hp_current = max(1, hp_current)
		if death_kind == "starvation":
			moves_left = max(1, moves_left)
			if hunger_text.is_empty():
				hunger_text = _msg(MSG_FAINT, "Faint")
		_queue_message(_ui("message.invincible.prevented_death", ""))
		death_kind = ""
		death_monster_name = ""
		death_monster_char = ""
		death_reason = ""
		return

	if not won:
		if death_kind != "quit":
			player_gold = int((player_gold * 9) / 10)
		if death_kind.is_empty():
			death_kind = "generic"
			death_monster_name = ""
			death_monster_char = ""

	game_over = true
	game_won = won
	death_reason = reason
	post_game_phase = "death_message" if not won else "win_message"
	_set_message(reason)
	_record_score_once(reason)
	_clear_autosave_state()

func _record_score_once(cause_text: String) -> void:
	if score_recorded:
		return
	score_recorded = true
	leaderboard_highlight_rank = -1

	var scores: Array = _load_scores()
	var entry_id: String = "%d:%d" % [Time.get_ticks_usec(), scores.size()]
	var entry: Dictionary = {
		"_id": entry_id,
		"name": _score_player_name(),
		"gold": player_gold,
		"level": cur_level,
		"exp_level": exp_level,
		"exp_points": exp_points,
		"won": game_won,
		"amulet": has_amulet,
		"kind": death_kind,
		"monster": death_monster_name,
		"monster_char": death_monster_char,
		"cause": cause_text,
		"time": Time.get_datetime_string_from_system(),
	}
	scores.append(entry)

	scores.sort_custom(func(a: Dictionary, b: Dictionary) -> bool:
		var ag: int = int(a.get("gold", 0))
		var bg: int = int(b.get("gold", 0))
		if ag != bg:
			return ag > bg
		return false
	)

	if scores.size() > 10:
		scores = scores.slice(0, 10)

	for i in range(min(10, scores.size())):
		if str(scores[i].get("_id", "")) == entry_id:
			leaderboard_highlight_rank = i
			break

	leaderboard_cache = scores.duplicate(true)
	_save_scores(scores)

func _scores_path() -> String:
	return "user://rogue_scores.json"

func _safe_score_value(values: PackedInt32Array, which_kind: int) -> int:
	if which_kind < 0 or which_kind >= values.size():
		return 10
	return int(values[which_kind])

func _score_item_value_original(item: Dictionary) -> int:
	var kind: String = str(item.get("kind", KIND_ITEM))
	var which_kind: int = int(item.get("which_kind", -1))
	var quantity: int = max(1, int(item.get("quantity", 1)))
	var val: int = 10

	match kind:
		KIND_WEAPON:
			val = _safe_score_value(SCORE_WEAPON_VALUES, which_kind)
			if which_kind == WEAPON_KIND_ARROW or which_kind == WEAPON_KIND_DAGGER or which_kind == WEAPON_KIND_SHURIKEN or which_kind == WEAPON_KIND_DART:
				val *= quantity
			val += int(item.get("d_enchant", 0)) * 85
			val += int(item.get("hit_enchant", 0)) * 85
		KIND_ARMOR:
			val = _safe_score_value(SCORE_ARMOR_VALUES, which_kind)
			val += int(item.get("d_enchant", 0)) * 75
			if bool(item.get("is_protected", false)):
				val += 200
		KIND_WAND:
			val = _safe_score_value(SCORE_WAND_VALUES, which_kind)
			val *= (int(item.get("class", 0)) + 1)
		KIND_SCROLL:
			val = _safe_score_value(SCORE_SCROLL_VALUES, which_kind) * quantity
		KIND_POTION:
			val = _safe_score_value(SCORE_POTION_VALUES, which_kind) * quantity
		KIND_RING:
			val = _safe_score_value(SCORE_RING_VALUES, which_kind)
			val *= (int(item.get("class", 0)) + 1)
		KIND_AMULET:
			val = 5000
		_:
			val = 10

	if val <= 0:
		val = 10
	return val

func _sell_inventory_on_win_original() -> void:
	for item in inventory_items:
		if str(item.get("kind", KIND_ITEM)) == KIND_FOOD:
			continue
		player_gold += _score_item_value_original(item)
	if player_gold > MAX_GOLD:
		player_gold = MAX_GOLD

func _load_scores() -> Array:
	var path: String = _scores_path()
	if not FileAccess.file_exists(path):
		return []

	var text: String = FileAccess.get_file_as_string(path)
	if text.is_empty():
		return []

	var parsed: Variant = JSON.parse_string(text)
	if parsed is Array:
		var arr: Array = parsed
		return arr
	return []

func _save_scores(scores: Array) -> void:
	var f: FileAccess = FileAccess.open(_scores_path(), FileAccess.WRITE)
	if f == null:
		return
	f.store_string(JSON.stringify(scores))
	f.close()

func _build_ranking_rows(width: int, map_rows: int) -> PackedStringArray:
	if leaderboard_cache.is_empty():
		leaderboard_cache = _load_scores()

	var rows: PackedStringArray = []
	for _i in range(map_rows):
		rows.append(_fit_line("", width))

	var title: String = _msg(187, "Top  Ten  Scores")
	var columns: String = _msg(188, "Rank   Score   Name")
	var score_lines: Array[String] = []
	for i in range(min(10, leaderboard_cache.size())):
		var e: Dictionary = leaderboard_cache[i]
		score_lines.append(_build_score_line(i + 1, e))

	var table_width: int = columns.length()
	for line in score_lines:
		table_width = max(table_width, line.length())
	var table_left: int = max(0, int((width - table_width) / 2))
	var table_prefix: String = " ".repeat(table_left)

	if map_rows > 2:
		rows[0] = _center_line(title, width)
		rows[2] = _fit_line(table_prefix + columns, width)

	var line_row: int = 4
	for i in range(score_lines.size()):
		if line_row >= map_rows:
			break
		var score_line: String = _fit_line(table_prefix + score_lines[i], width)
		rows[line_row] = _reverse_highlight_line(score_line) if i == leaderboard_highlight_rank else score_line
		line_row += 1

	if map_rows > 0:
		rows[map_rows - 1] = _fit_line(_ui("message.ranking.new_game_prompt", ""), width)

	return rows

func _reverse_highlight_line(text: String) -> String:
	return "[bgcolor=#f2f2f2][color=#101010]%s[/color][/bgcolor]" % text

func _score_monster_name(entry: Dictionary) -> String:
	var ch: String = str(entry.get("monster_char", ""))
	if ch.length() == 1 and ch[0] >= "A" and ch[0] <= "Z":
		var idx: int = 307 + (ch.unicode_at(0) - "A".unicode_at(0))
		var resolved: String = _msg(idx, ch)
		if resolved.strip_edges().is_empty() or resolved == ch:
			return _monster_fallback_name_by_letter(ch)
		return resolved
	return str(entry.get("monster", "monster"))

func _format_score_result(entry: Dictionary) -> String:
	if bool(entry.get("won", false)):
		return _msg(MSG_WIN_TITLE, "a total winner")

	var kind: String = str(entry.get("kind", "generic"))
	var level_num: int = int(entry.get("level", 1))
	var cause: String = ""

	match kind:
		"hypothermia":
			cause = _msg(192, "died of hypothermia")
		"poison_dart":
			cause = _msg(194, "killed by a dart")
		"quit":
			cause = _msg(195, "quit")
		"monster":
			var mname: String = _score_monster_name(entry)
			if _is_japanese_locale():
				cause = "%s%s" % [mname, _msg(197, "と戦いて死す")]
			else:
				cause = _msg(197, "killed by ")
				if _starts_with_vowel(mname):
					cause += "an "
				else:
					cause += "a "
				cause += mname
		_:
			cause = str(entry.get("cause", _ui("death.default", "")))

	if _is_japanese_locale():
		var level_text_ja: String = "%s%d%s" % [_msg(190, "地下"), level_num, _msg(191, "階にて")]
		if bool(entry.get("amulet", false)):
			return "%s%s%s" % [_msg(MSG_WITH_AMULET, "魔除けを手に、"), level_text_ja, cause]
		return "%s%s" % [level_text_ja, cause]

	var level_text: String = _msg(190, " on level %d ")
	if level_text.find("%d") != -1:
		level_text = level_text % level_num
	else:
		level_text = " on level %d " % level_num

	if bool(entry.get("amulet", false)):
		return "%s %s%s" % [cause, level_text, _msg(MSG_WITH_AMULET, "with Amulet")]
	return "%s%s" % [cause, level_text]

func _build_score_line(rank_1based: int, entry: Dictionary) -> String:
	var name: String = str(entry.get("name", _score_player_name()))
	var result: String = _format_score_result(entry)
	var line: String = " %2d   %6d   %s: %s" % [
		rank_1based,
		int(entry.get("gold", 0)),
		name,
		result,
	]
	return line

func _score_player_name() -> String:
	return _player_name_label()

func _starts_with_vowel(text: String) -> bool:
	if text.is_empty():
		return false
	var first: String = text.substr(0, 1).to_lower()
	return "aeiou".find(first) != -1

func _build_death_tomb_rows(width: int, map_rows: int) -> PackedStringArray:
	var rows: PackedStringArray = []
	for _i in range(map_rows):
		rows.append(_fit_line("", width))

	var tomb: PackedStringArray = [
		"----------",
		"/          \\",
		"/            \\",
		"/              \\",
		"/                \\",
		"/                  \\",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		" *|     *  *  *      | *",
		" ________)/\\\\_//(\\/(/\\)/\\//\\/|_)_______",
	]

	var top: int = max(0, int((map_rows - tomb.size()) / 2))
	for i in range(tomb.size()):
		var row: int = top + i
		if row >= 0 and row < rows.size():
			rows[row] = _shift_plain_line(_center_line(tomb[i], width), width, TOMB_OUTLINE_COL_SHIFT)

	for i in range(rows.size()):
		rows[i] = _colorize_tomb_line(rows[i])

	return rows

func _build_death_tomb_overlay_rows(width: int, map_rows: int) -> PackedStringArray:
	var rows: PackedStringArray = []
	for _i in range(map_rows):
		rows.append(_fit_line("", width))

	var tomb: PackedStringArray = [
		"----------",
		"/          \\",
		"/            \\",
		"/              \\",
		"/                \\",
		"/                  \\",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		"|                  |",
		" *|     *  *  *      | *",
		" ________)/\\\\_//(\\/(/\\)/\\//\\/|_)_______",
	]

	var base_rows: PackedStringArray = []
	for _i in range(map_rows):
		base_rows.append(_fit_line("", width))

	var top: int = max(0, int((map_rows - tomb.size()) / 2))
	for i in range(tomb.size()):
		var row: int = top + i
		if row >= 0 and row < base_rows.size():
			base_rows[row] = _shift_plain_line(_center_line(tomb[i], width), width, TOMB_OUTLINE_COL_SHIFT)

	var death_lines: PackedStringArray = _death_reason_lines()
	var au_text: String = ("＄%d" if _is_japanese_locale() else "$%d") % player_gold

	var rest_line_1: String = _ui("death.tomb.rest_line_1", "")
	var rest_line_2: String = _ui("death.tomb.rest_line_2", "")
	var center_rows: Array = [
		{"offset": 3, "text": rest_line_1},
		{"offset": 4, "text": rest_line_2},
		{"offset": 6, "text": _player_name_label()},
		{"offset": 7, "text": au_text},
		{"offset": 9, "text": death_lines[0]},
		{"offset": 10, "text": death_lines[1]},
	]

	for entry in center_rows:
		var rr: int = top + int(entry["offset"]) + TOMB_OVERLAY_ROW_SHIFT
		if rr < 0 or rr >= rows.size() or rr >= base_rows.size():
			continue
		var centered_text: String = _escape_bbcode_text(str(entry["text"]))
		rows[rr] = "[center][color=#f2f2f2]%s[/color][/center]" % centered_text

	return rows

func _death_reason_lines() -> PackedStringArray:
	if death_kind == "monster":
		if _is_japanese_locale():
			return PackedStringArray([death_monster_name, _msg(197, "と戦いて死す")])
		var line1: String = _msg(MSG_KILLED_BY_A, "killed by a")
		if not _is_japanese_locale() and not death_monster_name.is_empty():
			var first: String = death_monster_name.substr(0, 1).to_lower()
			if "aeiou".find(first) != -1:
				line1 += "n"
		return PackedStringArray([line1, death_monster_name])

	if death_kind == "hypothermia":
		if _is_japanese_locale():
			return PackedStringArray([_msg(168, "寒さにより"), _msg(172, "死す")])
		return PackedStringArray([_msg(172, "hypothermia"), _msg(168, "Died of")])

	if death_kind == "poison_dart":
		if _is_japanese_locale():
			return PackedStringArray([_msg(170, "毒矢により"), _msg(174, "死す")])
		return PackedStringArray([_msg(174, "dart"), _msg(170, "Killed by a")])

	return PackedStringArray([death_reason, ""])

func _overlay_center_text(base: String, text: String) -> String:
	if text.is_empty() or base.is_empty():
		return base

	var first_non_space: int = -1
	var last_non_space: int = -1
	for i in range(base.length()):
		if base.substr(i, 1) != " ":
			if first_non_space < 0:
				first_non_space = i
			last_non_space = i

	if first_non_space < 0 or last_non_space <= first_non_space:
		return base

	var best_start: int = -1
	var best_len: int = 0
	var run_start: int = -1
	var run_len: int = 0

	for i in range(first_non_space, last_non_space + 1):
		var ch: String = base.substr(i, 1)
		if ch == " ":
			if run_start < 0:
				run_start = i
			run_len += 1
		else:
			if run_start >= 0 and run_len > best_len:
				best_start = run_start
				best_len = run_len
			run_start = -1
			run_len = 0

	if run_start >= 0 and run_len > best_len:
		best_start = run_start
		best_len = run_len

	if best_start < 0 or best_len <= 0:
		return base

	var clipped_text: String = text
	if clipped_text.length() > best_len:
		clipped_text = clipped_text.substr(0, best_len)

	var start: int = best_start + int((best_len - clipped_text.length()) / 2) + TOMB_OVERLAY_COL_SHIFT
	start = clamp(start, best_start, best_start + max(0, best_len - clipped_text.length()))
	var end_start: int = start + clipped_text.length()
	var prefix: String = base.substr(0, start)
	var suffix: String = ""
	if end_start < base.length():
		suffix = base.substr(end_start)
	return prefix + clipped_text + suffix

func _build_tomb_overlay_row(base: String, text: String) -> String:
	if text.is_empty() or base.is_empty():
		return _fit_line("", base.length())

	var overlaid: String = _overlay_center_text(base, text)
	var out: String = ""
	for i in range(base.length()):
		var base_ch: String = base.substr(i, 1)
		var over_ch: String = overlaid.substr(i, 1)
		if over_ch != base_ch and over_ch != " ":
			out += over_ch
		else:
			out += " "
	return out

func _colorize_tomb_line(text: String) -> String:
	if text.is_empty():
		return ""

	const TOMBSTONE_WHITE: String = "#f2f2f2"
	const TOMBSTONE_YELLOW: String = "#ffd24d"

	var out: String = ""
	for i in range(text.length()):
		var ch: String = text.substr(i, 1)
		if ch == " ":
			out += ch
		else:
			var color_hex: String = TOMBSTONE_YELLOW if ch == "*" else TOMBSTONE_WHITE
			out += "[color=%s]%s[/color]" % [color_hex, ch]
	return out

func _colorize_overlay_text_line(text: String) -> String:
	if text.is_empty():
		return ""

	const TOMBSTONE_WHITE: String = "#f2f2f2"
	var out: String = ""
	for i in range(text.length()):
		var ch: String = text.substr(i, 1)
		if ch == " ":
			out += ch
		else:
			out += "[color=%s]%s[/color]" % [TOMBSTONE_WHITE, ch]
	return out

func _center_line(text: String, width: int) -> String:
	if width <= 0:
		return ""
	var trimmed: String = text
	if trimmed.length() > width:
		return trimmed.substr(0, width)
	var left: int = int((width - trimmed.length()) / 2)
	return (" ".repeat(max(0, left)) + trimmed).rpad(width, " ")

func _shift_plain_line(text: String, width: int, shift: int) -> String:
	if width <= 0 or shift == 0:
		return text
	if shift > 0:
		return (" ".repeat(shift) + text).substr(0, width)
	var cut: int = min(-shift, text.length())
	return text.substr(cut).rpad(width, " ")

func _fit_line(text: String, width: int) -> String:
	if width <= 0:
		return ""

	var out: String = text
	if out.length() > width:
		out = out.substr(0, width)
	elif out.length() < width:
		out += " ".repeat(width - out.length())
	return out

func _fit_line_px(text: String, width_px: float, label: Label) -> String:
	if width_px <= 0.0:
		return ""
	if label == null:
		return text
	var font: Font = label.get_theme_font("font")
	var font_size: int = label.get_theme_font_size("font_size")
	if font == null:
		return text

	var out: String = text
	while not out.is_empty() and font.get_string_size(out, HORIZONTAL_ALIGNMENT_LEFT, -1, font_size).x > width_px:
		out = out.substr(0, out.length() - 1)
	return out

func _label_available_width_px(label: Label, line_left_pad_chars: int) -> float:
	if label == null:
		return 4096.0
	var font: Font = label.get_theme_font("font")
	var font_size: int = label.get_theme_font_size("font_size")
	var width_px: float = label.size.x
	if font != null and width_px > 0.0 and line_left_pad_chars > 0:
		width_px -= font.get_string_size(" ", HORIZONTAL_ALIGNMENT_LEFT, -1, font_size).x * float(line_left_pad_chars)
	return max(8.0, width_px)

func _escape_bbcode_text(text: String) -> String:
	return text.replace("[", "[lb]").replace("]", "[rb]")

func _status_label(index: int, fallback: String) -> String:
	# Preserve localized trailing spaces to keep Rogue-like status spacing.
	return _msg(index, fallback)

func _primary_status_line_text(include_hunger: bool = true) -> String:
	var level_label: String = _status_label(MSG_LEVEL, "Level:")
	var gold_label: String = _status_label(MSG_GOLD, "Gold:")
	var hp_label: String = _status_label(MSG_HP, "Hp:")
	var str_label: String = _status_label(MSG_STR, "Str:")
	var arm_label: String = _status_label(MSG_ARM, "Arm:")
	var exp_label: String = _status_label(MSG_EXP, "Exp:")
	var hunger_suffix: String = ""
	if include_hunger and not hunger_text.is_empty():
		hunger_suffix = " " + hunger_text

	var gold_text: String = str(player_gold)
	var exp_points_text: String = str(exp_points)
	return "%s%-2d %s%-6s %s%-3d(%-3d) %s%-2d(%-2d) %s%-2d %s%-2d/%-7s%s" % [
		level_label,
		cur_level,
		gold_label,
		gold_text,
		hp_label,
		hp_current,
		hp_max,
		str_label,
		_effective_strength_current(),
		_effective_strength_max(),
		arm_label,
		armor_class,
		exp_label,
		exp_level,
		exp_points_text,
		hunger_suffix,
	]

func _format_compact_number(value: int) -> String:
	var abs_value: int = abs(value)
	if abs_value >= 1000000:
		return "%dm" % int(value / 1000000)
	if abs_value >= 1000:
		return "%dk" % int(value / 1000)
	return str(value)

func _get_status_line() -> String:
	if _is_mobile_runtime():
		return _primary_status_line_text()

	var level_label: String = _status_label(MSG_LEVEL, "Level:")
	var gold_label: String = _status_label(MSG_GOLD, "Gold:")
	var hp_label: String = _status_label(MSG_HP, "Hp:")
	var str_label: String = _status_label(MSG_STR, "Str:")
	var arm_label: String = _status_label(MSG_ARM, "Arm:")
	var exp_label: String = _status_label(MSG_EXP, "Exp:")
	var hunger_suffix: String = ""
	if not hunger_text.is_empty():
		hunger_suffix = " " + hunger_text

	var gold_text: String = str(player_gold)
	var exp_points_text: String = str(exp_points)
	var candidates: Array[String] = []
	candidates.append(_primary_status_line_text())

	exp_points_text = _format_compact_number(exp_points)
	candidates.append("%s%d %s%s %s%d(%d) %s%d(%d) %s%d %s%d/%s%s" % [
		level_label,
		cur_level,
		gold_label,
		gold_text,
		hp_label,
		hp_current,
		hp_max,
		str_label,
		_effective_strength_current(),
		_effective_strength_max(),
		arm_label,
		armor_class,
		exp_label,
		exp_level,
		exp_points_text,
		hunger_suffix,
	])

	gold_text = _format_compact_number(player_gold)
	candidates.append("%s%d %s%s %s%d(%d) %s%d(%d) %s%d %s%d/%s%s" % [
		level_label,
		cur_level,
		gold_label,
		gold_text,
		hp_label,
		hp_current,
		hp_max,
		str_label,
		_effective_strength_current(),
		_effective_strength_max(),
		arm_label,
		armor_class,
		exp_label,
		exp_level,
		exp_points_text,
		hunger_suffix,
	])

	candidates.append("%s%d(%d) %s%d(%d) %s%d/%s%s" % [
		hp_label,
		hp_current,
		hp_max,
		str_label,
		_effective_strength_current(),
		_effective_strength_max(),
		exp_label,
		exp_level,
		exp_points_text,
		hunger_suffix,
	])

	for candidate in candidates:
		if _status_line_fits_width(candidate):
			return candidate

	if not hunger_suffix.is_empty() and _status_line_fits_width(hunger_suffix.strip_edges()):
		return hunger_suffix.strip_edges()

	return candidates[candidates.size() - 1]

func _status_line_fits_width(text: String) -> bool:
	var width_px: float = _status_available_width_px()
	var font: Font = null
	var font_size: int = 14
	if status_line_label != null:
		font = status_line_label.get_theme_font("font")
		font_size = status_line_label.get_theme_font_size("font_size")
	if font == null:
		return true
	return font.get_string_size(text, HORIZONTAL_ALIGNMENT_LEFT, -1, font_size).x <= width_px

func _status_available_width_px() -> float:
	if status_line_label == null:
		return 4096.0
	var font: Font = status_line_label.get_theme_font("font")
	var font_size: int = status_line_label.get_theme_font_size("font_size")
	var width_px: float = status_line_label.size.x
	var line_left_pad_chars: int = _play_line_left_pad_chars()
	if font != null and width_px > 0.0 and line_left_pad_chars > 0:
		width_px -= font.get_string_size(" ", HORIZONTAL_ALIGNMENT_LEFT, -1, font_size).x * float(line_left_pad_chars)
	return max(8.0, width_px)

func _play_line_left_pad_chars() -> int:
	return PLAY_LINE_LEFT_PAD_CHARS_MOBILE if OS.has_feature("mobile") else PLAY_LINE_LEFT_PAD_CHARS_DESKTOP

func _get_viewport_chars() -> Vector2i:
	var font: Font = play_text.get_theme_font("normal_font")
	var font_size: int = play_text.get_theme_font_size("normal_font_size")

	if font == null:
		return Vector2i(ROGUE_COLUMNS, ROGUE_LINES)

	var char_width: float = font.get_string_size("W", HORIZONTAL_ALIGNMENT_LEFT, -1, font_size).x
	var line_height: float = font.get_height(font_size)

	if char_width <= 0.0:
		char_width = 8.0
	if line_height <= 0.0:
		line_height = 16.0

	var cols: int = int(clamp(int(floor(play_text.size.x / char_width)), 1, ROGUE_COLUMNS))
	var rows: int = int(clamp(int(floor(play_text.size.y / line_height)), 1, ROGUE_LINES))
	return Vector2i(cols, rows)

func _center_view_on_player(cols: int, rows: int) -> void:
	var max_top: int = max(0, ROGUE_LINES - rows)
	var max_left: int = max(0, ROGUE_COLUMNS - cols)

	view_top_row = clamp(rogue_row - int(rows / 2), 0, max_top)
	view_left_col = clamp(rogue_col - int(cols / 2), 0, max_left)

func _keep_player_visible(cols: int, rows: int) -> void:
	var max_top: int = max(0, ROGUE_LINES - rows)
	var max_left: int = max(0, ROGUE_COLUMNS - cols)

	view_top_row = clamp(view_top_row, 0, max_top)
	view_left_col = clamp(view_left_col, 0, max_left)

	# Scroll starts when player exits this inner rectangle.
	var margin_x: int = max(1, int(floor(cols * 0.25)))
	var margin_y: int = max(1, int(floor(rows * 0.25)))

	if cols <= 4:
		margin_x = 0
	if rows <= 4:
		margin_y = 0

	var zone_left: int = view_left_col + margin_x
	var zone_right: int = view_left_col + cols - 1 - margin_x
	var zone_top: int = view_top_row + margin_y
	var zone_bottom: int = view_top_row + rows - 1 - margin_y

	if zone_left > zone_right:
		zone_left = view_left_col
		zone_right = view_left_col + cols - 1
	if zone_top > zone_bottom:
		zone_top = view_top_row
		zone_bottom = view_top_row + rows - 1

	if rogue_col < zone_left:
		view_left_col -= (zone_left - rogue_col)
	elif rogue_col > zone_right:
		view_left_col += (rogue_col - zone_right)

	if rogue_row < zone_top:
		view_top_row -= (zone_top - rogue_row)
	elif rogue_row > zone_bottom:
		view_top_row += (rogue_row - zone_bottom)

	view_top_row = clamp(view_top_row, 0, max_top)
	view_left_col = clamp(view_left_col, 0, max_left)

	# Hard fallback: always keep player visible.
	if rogue_row < view_top_row:
		view_top_row = rogue_row
	elif rogue_row >= view_top_row + rows:
		view_top_row = rogue_row - rows + 1

	if rogue_col < view_left_col:
		view_left_col = rogue_col
	elif rogue_col >= view_left_col + cols:
		view_left_col = rogue_col - cols + 1

	view_top_row = clamp(view_top_row, 0, max_top)
	view_left_col = clamp(view_left_col, 0, max_left)

func _snap_view_to_player() -> void:
	var viewport_chars := _get_viewport_chars()
	_center_view_on_player(viewport_chars.x, viewport_chars.y)

func _debug_scroll(tag: String) -> void:
	if not debug_logs_enabled:
		return

	var vp := _get_viewport_chars()
	var left := view_left_col
	var top := view_top_row
	var right := left + vp.x - 1
	var bottom := top + vp.y - 1
	var visible := rogue_col >= left and rogue_col <= right and rogue_row >= top and rogue_row <= bottom

	_debug_emit("[SCROLL_DBG] tag=%s player=%s view=%s bounds=%s visible=%s play_size=%s" % [
		tag,
		str(Vector2i(rogue_col, rogue_row)),
		str(Rect2i(left, top, vp.x, vp.y)),
		str(Vector2i(right, bottom)),
		str(visible),
		str(play_text.size)
	])

func _debug_emit(message: String) -> void:
	if not debug_logs_enabled:
		return

	print(message)

	var path := "user://scroll_debug.log"
	var mode := FileAccess.READ_WRITE if FileAccess.file_exists(path) else FileAccess.WRITE_READ
	var f := FileAccess.open(path, mode)
	if f != null:
		f.seek_end()
		f.store_line(message)
		f.close()
	elif not _debug_file_error_reported:
		_debug_file_error_reported = true
		var fail_msg := "[DEBUG_FILE_OPEN_FAILED] path=%s" % _debug_log_path
		print(fail_msg)

func _can_see_invisible() -> bool:
	return potion_see_invisible or ring_see_invisible

func _get_dungeon_char(row: int, col: int, is_visible: bool = true) -> String:
	var mask: int = dungeon[row][col]
	var key: String = _pos_key(row, col)
	var hallucinating: bool = hallucination_turns > 0 and not blind

	if (mask & MONSTER) != 0 and (is_visible or (detect_monster and not blind)):
		if monster_data.has(key):
			var info: Dictionary = monster_data[key]
			var flags: int = int(info.get("flags", 0))
			if (flags & M_INVISIBLE) != 0 and not _can_see_invisible() and not detect_monster:
				pass
			else:
				if hallucinating:
					return String.chr(_get_rand("A".unicode_at(0), "Z".unicode_at(0)))
				return str(monster_glyphs.get(key, "M"))
		else:
			if hallucinating:
				return String.chr(_get_rand("A".unicode_at(0), "Z".unicode_at(0)))
			return str(monster_glyphs.get(key, "M"))
	if is_visible and (mask & OBJECT) != 0:
		if hallucinating:
			return HALLUCINATION_OBJECT_CHARS[_get_rand(0, HALLUCINATION_OBJECT_CHARS.size() - 1)]
		return str(object_glyphs.get(key, "*"))
	if not is_visible and spotted_traps.has(key):
		return "^"
	if is_visible and (mask & TRAP) != 0 and (mask & HIDDEN) == 0:
		return "^"

	if (mask & (TUNNEL | STAIRS)) and not (mask & HIDDEN):
		return "%" if (mask & STAIRS) else "#"
	if mask & HORWALL:
		return "-"
	if mask & VERTWALL:
		return "|"
	if mask & FLOOR:
		return "."
	if mask & DOOR:
		if mask & HIDDEN:
			if (col > 0 and (int(dungeon[row][col - 1]) & HORWALL)) or (col < (ROGUE_COLUMNS - 1) and (int(dungeon[row][col + 1]) & HORWALL)):
				return "-"
			return "|"
		return "+"
	return " "

func _get_rand(x: int, y: int) -> int:
	if x > y:
		var t := x
		x = y
		y = t
	return _rng.randi_range(x, y)

func _rand_percent(percentage: int) -> bool:
	return _get_rand(1, 100) <= percentage

func _coin_toss() -> bool:
	return _get_rand(0, 1) == 1
