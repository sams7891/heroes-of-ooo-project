package com.globalfun.adventuretime.free;

import com.flurry.android.Constants;
import com.google.android.gms.games.GamesStatusCodes;

/* JADX INFO: loaded from: classes.dex */
public abstract class UI extends Touch {
    private static final int ARROW_SPACING = 0;
    public static final int[] BOSS_WEAPONS;
    private static final int BOX_HINSET = 3;
    private static final int BOX_VINSET = 3;
    public static final boolean CHEATS = false;
    private static final int COLOR_BEEMO = -10172240;
    private static final int COLOR_BG = -7898247;
    private static final int COLOR_BORDER = -15397092;
    private static final int COLOR_BOX = -460578;
    private static final int COLOR_BOX_BORDER = -14333070;
    private static final int COLOR_BOX_SHADOW = -12175552;
    private static final int COLOR_FLASH = -1;
    private static final int COLOR_LOGOS = -1;
    private static final int COLOR_MAP_EMPTY = -1710664;
    private static final int COLOR_MAP_FLASH = -12347175;
    private static final int COLOR_MAP_ROOM = -7368846;
    private static final int COLOR_MAP_VISITED = -16555867;
    private static final int COLOR_SCROLL = -3421513;
    private static final int COLOR_SLIDER = -16699311;
    private static final int COLOR_TITLE_BORDER = -149210;
    private static final int COLOR_TITLE_EDGE = -14333070;
    private static final int COLOR_TRANSITION = -14671824;
    public static final int COST_HEALER = 5;
    public static final boolean DEBUG = false;
    public static final int DIR_DOWN = 1;
    public static final int DIR_LEFT = 3;
    public static final int DIR_NONE = -1;
    public static final int DIR_RIGHT = 2;
    public static final int DIR_UP = 0;
    public static final int[] DIR_X;
    public static final int[] DIR_Y;
    public static final int[] DUNGEON_BOSS_X;
    public static final int[] DUNGEON_BOSS_Y;
    public static final int[] DUNGEON_ENTRANCE;
    public static final int DUNGEON_FLAG_BOSS = 64;
    public static final int DUNGEON_FLAG_CHEST = 16;
    public static final int DUNGEON_FLAG_DOOR_E = 4;
    public static final int DUNGEON_FLAG_DOOR_N = 1;
    public static final int DUNGEON_FLAG_DOOR_S = 2;
    public static final int DUNGEON_FLAG_DOOR_W = 8;
    public static final int DUNGEON_FLAG_KEY = 32;
    public static final int DUNGEON_HEIGHT = 7;
    public static final int[] DUNGEON_KEYS;
    public static final int DUNGEON_MASK_DIR = 15;
    public static final int DUNGEON_SIZE = 49;
    public static final int[] DUNGEON_START;
    public static final int DUNGEON_WIDTH = 7;
    public static final boolean FAST_LOAD = false;
    private static final int FLASH = 4080;
    public static final int FRAME_RATE = 70;
    public static final int FRAME_TICKS = 14;
    public static final int GEMS_START = 0;
    private static final int GRID_TRANSITION = 36;
    public static final boolean HAS_MAP = false;
    private static final int ICON_ID_BACK = 1;
    private static final int ICON_ID_CANCEL = 2;
    private static final int ICON_ID_DOWN = 5;
    private static final int ICON_ID_OKAY = 0;
    private static final int ICON_ID_PAUSE = 3;
    private static final int ICON_ID_PLAY = 9;
    private static final int ICON_ID_SKIP = 4;
    private static final int ICON_ID_UP = 6;
    private static final int INTRO_HINSET = 8;
    public static final int ITEMS_START = 1;
    public static final int ITEMS_WEAPON = 220;
    public static final int ITEM_ARMOR = 32;
    public static final int ITEM_BOMB = 4;
    public static final int ITEM_BOW = 8;
    public static final int ITEM_HAMMER = 2;
    public static final int ITEM_POTION = 128;
    public static final int ITEM_SUPER_SWORD = 64;
    public static final int ITEM_SWORD = 1;
    public static final int[] ITEM_TYPES;
    public static final int ITEM_WAND = 16;
    public static final int LIFE_START = 6;
    private static final int LOAD_STATE_DOTS = 4;
    public static final int LOGO_FRAME_GLOW = 0;
    public static final int LOGO_FRAME_MASK = 3;
    public static final int LOGO_FRAME_SWORD = 2;
    public static final int LOGO_FRAME_TEXT = 1;
    private static final int LOGO_ID_TITLE = 2;
    private static final int MAP_HEIGHT;
    public static final int MAP_ICON_BOSS = 2;
    public static final int MAP_ICON_CHEST = 0;
    public static final int MAP_ICON_KEY = 1;
    private static final int MAP_WIDTH;
    private static final int MAX_FLASH = 11;
    private static final int MAX_TEXT_FORMAT = 256;
    public static final int[][] MENUS;
    public static final boolean[] MENU_CAN_EXIT;
    public static final boolean[] MENU_HAS_BGM;
    private static final int MENU_HBORDER = 16;
    private static final int MENU_HINSET = 4;
    public static final int MENU_ID_DEBUG = 7;
    public static final int MENU_ID_EXIT = 4;
    public static final int MENU_ID_LANGUAGE = 8;
    public static final int MENU_ID_MAIN = 0;
    public static final int MENU_ID_OPTIONS = 2;
    public static final int MENU_ID_PAUSED = 1;
    public static final int MENU_ID_RESET = 5;
    public static final int MENU_ID_SETTINGS = 3;
    public static final int MENU_ID_SOUND = 6;
    private static final int MENU_LOGO_OY;
    private static final int MENU_LOGO_Y = 36;
    public static final int[] MENU_NOTES;
    private static final int MENU_SPACING = 20;
    private static final int[] MENU_TITLES;
    private static final int MENU_VINSET = 8;
    public static final int MILLISECONDS = 1000;
    private static final int NOTE_SPACING = 24;
    public static final int NUM_DUNGEONS = 5;
    public static final int NUM_ITEMS = 7;
    private static final int NUM_LOAD_DOTS = 3;
    private static final int NUM_LOGOS = 3;
    public static final int NUM_OBJECTS = 2;
    public static final int NUM_ROOMS = 100;
    public static final int NUM_SHOP_ITEMS = 4;
    public static final int OBJECT_KEY = 2;
    public static final int OBJECT_LEVER = 4;
    public static final int OBJECT_MAP = 1;
    public static final int[] OBJECT_TYPES;
    public static final int OVERWORLD = 4;
    public static final int[] OVERWORLD_LOCATIONS;
    public static final int[] OVERWORLD_ROOMS;
    private static final byte[] PORTRAIT_OFFSETS;
    public static final int SCENE_FULL_HEALTH = 150;
    public static final int SCENE_GOSSIP = 130;
    public static final int SCENE_RESCUED = 160;
    public static final int SCENE_SHOP = 120;
    public static final int SCENE_TOO_FEW_GEMS = 151;
    public static final int SCROLL_CENTER_BOTTOM = 1;
    public static final int SCROLL_CENTER_TOP = 0;
    public static final int SCROLL_END_NE = 1;
    public static final int SCROLL_END_NW = 0;
    public static final int SCROLL_END_SE = 3;
    public static final int SCROLL_END_SW = 2;
    private static final int SCROLL_HBORDER = 16;
    private static final int SCROLL_MIN_WIDTH = 240;
    private static final int SHOP_BOX_HEIGHT;
    private static final int SHOP_BOX_HINSET = 2;
    private static final int SHOP_BOX_VINSET = 2;
    private static final int SHOP_BOX_WIDTH;
    public static final int[] SHOP_COSTS;
    private static final int SHOP_NUMLINES = 3;
    public static final int SHOP_POTION = 3;
    public static final int[] SHOP_TYPES;
    private static final int SOFTKEY_BORDER = 6;
    private static final int[] SOFTKEY_ICONS;
    private static final int SPACING = 16;
    public static final int SPEAKER_FINN = 0;
    public static final int SPEAKER_HEALER = 1;
    public static final int SPEAKER_SHOP = 2;
    public static final int SPEAKER_SWITCH = 14;
    private static final int SPEED_CLOSE = 28;
    private static final int SPEED_CURSOR = 1;
    private static final int SPEED_LOGO = 4;
    private static final int SPEED_OPEN = 18;
    private static final int SPEED_SCROLL = 2;
    private static final int SPEED_SKIPPED = 32;
    private static final int SPEED_STATUS = 1;
    private static final int SPEED_SWORD = 50;
    private static final int SPEED_TRANSITION = 4;
    public static final int STATE_DEAD = 4;
    public static final int STATE_GAME = 0;
    public static final int STATE_HEALER = 2;
    public static final int STATE_INTRO = 60;
    public static final int STATE_LOADING = 92;
    public static final int STATE_LOGO = 90;
    public static final int STATE_MENU = 50;
    public static final int STATE_OUTRO = 61;
    public static final int STATE_SHOP = 3;
    public static final int STATE_STATUS = 10;
    public static final int STATE_TALKING = 1;
    public static final int STATE_TEXT = 51;
    public static final int STATE_TITLE = 91;
    private static final int STATUS_BOX_HEIGHT;
    private static final int STATUS_BOX_HINSET = 2;
    private static final int STATUS_BOX_VINSET = 2;
    private static final int STATUS_BOX_WIDTH;
    private static final int STATUS_DIGITS_Y;
    private static final int STATUS_GEM_X = 300;
    private static final int STATUS_HBORDER = 8;
    public static final int STATUS_ICON_DEPLETED = 2;
    public static final int STATUS_ICON_GEM = 3;
    public static final int STATUS_ICON_HALF = 1;
    public static final int STATUS_ICON_HEALTH = 0;
    public static final int STATUS_ICON_KEY = 4;
    private static final int STATUS_KEY_X = 230;
    private static final int STATUS_LIFE_X = 8;
    private static final int STATUS_MAP_HSPACE = 12;
    private static final int STATUS_OY;
    private static final int STATUS_TITLE_VSPACE = 4;
    private static final int STATUS_VBORDER = 3;
    public static final int STOP_ON_LOAD = -1;
    private static final int TALK_BOX_BOTTOM = 2;
    private static final int TALK_BOX_HBORDER = 8;
    private static final int TALK_BOX_TOP = 16;
    public static final int TALK_DATA_LENGTH = 4;
    public static final int TALK_DATA_PORTRAIT = 2;
    public static final int TALK_DATA_SCENE = 0;
    public static final int TALK_DATA_SPEAKER = 1;
    public static final int TALK_DATA_TEXT = 3;
    private static final int TALK_HINSET = 6;
    private static final int TALK_NUM_LINES = 5;
    private static final int TALK_PORTRAIT_OY;
    private static final int TALK_TEXT_OY;
    private static final int TALK_VINSET = 6;
    public static final int TEST_DUNGEON = 2;
    public static final int TEST_ENTER = 0;
    public static final int TEST_ROOM = -1;
    public static final int TEXT_CHEAT_BOSS = 21;
    public static final int TEXT_CHEAT_DUNGEON = 20;
    public static final int TEXT_CHEAT_INVULNERABLE = 22;
    public static final int TEXT_CHEAT_SOUND = 19;
    private static final int TEXT_HBORDER = 2;
    public static final int TEXT_HELP_ABOUT = 0;
    public static final int TEXT_HELP_CREDITS = 1;
    public static final int TEXT_HELP_INSTRUCTIONS = 2;
    private static final int TEXT_HINSET = 4;
    public static final int TEXT_MENU_ABOUT = 6;
    public static final int[] TEXT_MENU_BOOLEAN;
    public static final int TEXT_MENU_CONTINUE = 3;
    public static final int TEXT_MENU_CREDITS = 14;
    public static final int TEXT_MENU_DEBUG = 7;
    public static final int TEXT_MENU_EXIT = 8;
    public static final int TEXT_MENU_HELP = 4;
    public static final int TEXT_MENU_LANGUAGE = 12;
    public static final int TEXT_MENU_MAIN = 10;
    public static final int TEXT_MENU_NO = 1;
    public static final int TEXT_MENU_OPTIONS = 5;
    public static final int TEXT_MENU_PLAY = 2;
    public static final int TEXT_MENU_RESET = 13;
    public static final int TEXT_MENU_RESUME = 9;
    public static final int TEXT_MENU_SETTINGS = 11;
    public static final int TEXT_MENU_SOUND_OFF = 16;
    public static final int TEXT_MENU_SOUND_ON = 15;
    public static final int TEXT_MENU_VIBRATION_OFF = 18;
    public static final int TEXT_MENU_VIBRATION_ON = 17;
    public static final int TEXT_MENU_YES = 0;
    public static final int TEXT_MISC_CONFIRM = 10;
    public static final int TEXT_MISC_COST = 8;
    public static final int TEXT_MISC_DEAD = 22;
    public static final int TEXT_MISC_HEALER = 9;
    public static final int TEXT_MISC_INTRO = 20;
    public static final int TEXT_MISC_ITEMS = 6;
    public static final int TEXT_MISC_LOADING = 5;
    public static final int TEXT_MISC_MAP = 7;
    public static final int TEXT_MISC_OUTRO = 21;
    public static final int TEXT_MISC_PAUSED = 0;
    public static final int TEXT_MISC_PRESS_0 = 2;
    public static final int TEXT_MISC_PRESS_ACTION = 1;
    public static final int TEXT_MISC_ROTATE = 4;
    public static final int[] TEXT_MISC_SHOP_DESCRIP;
    public static final int[] TEXT_MISC_SHOP_ITEMS;
    public static final int TEXT_MISC_SOLD_OUT = 11;
    public static final int TEXT_MISC_TOUCH = 3;
    public static final int TEXT_MSG_EXIT = 30;
    public static final int TEXT_MSG_RESET = 31;
    private static final int TEXT_NUM_LINES = 11;
    public static final int TEXT_TITLE_DEBUG = 29;
    public static final int TEXT_TITLE_EXIT_Q = 27;
    public static final int TEXT_TITLE_OPTIONS = 25;
    public static final int TEXT_TITLE_PAUSED = 24;
    public static final int TEXT_TITLE_RESET_Q = 28;
    public static final int TEXT_TITLE_SELECT = 23;
    public static final int TEXT_TITLE_SETTINGS = 26;
    private static final int TEXT_VINSET = 4;
    private static final int TEXT_X;
    public static final int TICKS_SCROLL_WAIT = 4;
    private static final int TITLE_MSG_BORDER = 8;
    private static final int TITLE_SPACING = 24;
    public static final String VERSION = "1.0.0";
    public static final int[] WEAPONS;
    public static final int[] WEAPONS_TYPES;
    public static byte[] dungeonMap;
    public static byte[] dungeonRooms;
    public static int state;
    private int arrowDx;
    private int arrowUx;
    private int boxHeight;
    private int boxWidth;
    private int boxX;
    private int boxY;
    public boolean complete;
    public int cursor;
    public int delay;
    private byte[] dialogue;
    private int displayHeight;
    private int displayVCenter;
    public int dungeon;
    public int[] dungeonKeys;
    public int[] dungeonObjects;
    private int eventPending;
    private int eventSelect;
    public boolean firstMenu;
    public boolean firstVisit;
    private int flash;
    public CustomFont font;
    public CustomFont fontWhite;
    public int frameRate;
    public int frameTime;
    public boolean gameComplete;
    public int gems;
    public boolean hasCheats;
    private Image imgBgFinn;
    private Image imgBgLeft;
    private Image imgBgRight;
    private Image imgBubble;
    private Image imgHand;
    private Image imgLogo;
    private Image imgOverworld;
    private Image imgRestart;
    private Image imgStatusBracket;
    private Image imgTouchPad;
    public boolean inGame;
    private Image invite;
    public int items;
    private int itemsSpacing;
    private int itemsX;
    private int itemsY;
    public Image lan;
    public int life;
    public int lifeMax;
    public int loadState;
    public boolean loaded;
    public String locale;
    public int locationX;
    public int locationY;
    private int logo;
    private int logoFlash;
    private int logoOy;
    private int logoShow;
    private int mapX;
    private int mapY;
    public boolean menuCanExit;
    private int menuY;
    private String msg;
    private int msgCursor;
    public int note;
    public int numRescued;
    private int objectsSpacing;
    private int objectsX;
    public Main parent;
    public boolean preloaded;
    public int purchased;
    public Room room;
    public int roomDir;
    public int[] roomFlags;
    public int roomId;
    public int roomPosition;
    private int scrollDir;
    private int scrollHeight;
    private int scrollOpen;
    private int scrollWait;
    private int scrollWidth;
    private int scrollX;
    private int scrollY;
    private int scrolling;
    private int shopSpacing;
    private int shopX;
    private int shopY;
    public boolean skipped;
    private int softkeysY;
    private Sprite sprMapIcons;
    private Sprite sprMenuLogo;
    private Sprite sprPortraits;
    private Sprite sprScrollCenter;
    private Sprite sprScrollEnd;
    private Sprite sprScrollSide;
    private Sprite sprSoftkeys;
    private Sprite sprSoftkeysLit;
    private Sprite sprStatusDigits;
    private Sprite sprStatusIcons;
    private Sprite sprTitleBorder;
    private Sprite sprTouchAction;
    private Sprite sprTouchPadLit;
    private Sprite sprTouchSwitch;
    private Sprite sprWeapons;
    private int statusOy;
    private int swordOx;
    private int talkHeight;
    private int talkIndex;
    private int talkPopup;
    private int talkPortrait;
    public int talkScene;
    private int talkSpeaker;
    private int talkWidth;
    public String[] textDialogue;
    public int[] textFormat;
    public String[] textHelp;
    public String[] textLanguages;
    public String[] textLocales;
    public String[] textMenu;
    public String[] textMisc;
    private int textWidth;
    public int title;
    private int touchActionX;
    private int touchActionY;
    private int touchPadX;
    private int touchPadY;
    private int[] touchShop;
    private int touchSkLeft;
    private int touchSkRight;
    private int touchSwitchX;
    private int touchSwitchY;
    private int transNumCols;
    private int transNumRows;
    private int transOx;
    private int transOy;
    private int transition;
    public boolean transitionComplete;
    private int transitionDir;
    private int transitionMax;
    private int transitionMin;
    private int transitionOpen;
    public int viewEnd;
    public int viewHeight;
    public int viewY;
    public int weapon;
    private static final int[] DELAY_LOGOS = {GamesStatusCodes.STATUS_ACHIEVEMENT_UNLOCK_FAILURE, 2000, 0};
    private static final String[] FILENAME_LOGOS = {"/cn.png", "/rsg.png", "/Splash.png"};

    public abstract void actionEvents(int i, int i2);

    public abstract boolean checkFlag(int i, int i2);

    public abstract int getCurrentWeapon();

    public abstract String getMenuItem(int i);

    public abstract boolean hasItem(int i);

    public abstract boolean hasMultiWeapons();

    public abstract boolean hasObject(int i);

    public abstract boolean isPrincessRescued(int i);

    static {
        int i;
        Resources resources = Main.midlet.res;
        MENU_LOGO_OY = Resources.GFX_LOGO_HEIGHT + 36;
        if (Main.midlet.res.HAS_SCROLL) {
            Resources resources2 = Main.midlet.res;
            i = Resources.GFX_SCROLL_SIDE_WIDTH + 16 + 4;
        } else {
            i = 9;
        }
        TEXT_X = i;
        Resources resources3 = Main.midlet.res;
        STATUS_DIGITS_Y = Resources.GFX_STATUS_DIGITS_OY + 3;
        Resources resources4 = Main.midlet.res;
        STATUS_OY = -(Resources.GFX_STATUS_ICON_HEIGHT + 3);
        Resources resources5 = Main.midlet.res;
        STATUS_BOX_WIDTH = Resources.GFX_OBJECT_SIZE + 4;
        Resources resources6 = Main.midlet.res;
        STATUS_BOX_HEIGHT = Resources.GFX_OBJECT_SIZE + 4;
        Resources resources7 = Main.midlet.res;
        MAP_WIDTH = Resources.GFX_MAP_GRID_WIDTH * 7;
        Resources resources8 = Main.midlet.res;
        MAP_HEIGHT = Resources.GFX_MAP_GRID_HEIGHT * 7;
        Resources resources9 = Main.midlet.res;
        TALK_TEXT_OY = (Resources.GFX_PORTRAIT_OVER + 6) - 3;
        Resources resources10 = Main.midlet.res;
        int i2 = Resources.GFX_PORTRAIT_OVER;
        Resources resources11 = Main.midlet.res;
        TALK_PORTRAIT_OY = i2 - Resources.GFX_PORTRAIT_HEIGHT;
        SHOP_BOX_WIDTH = STATUS_BOX_WIDTH;
        SHOP_BOX_HEIGHT = STATUS_BOX_HEIGHT;
        TEXT_MENU_BOOLEAN = new int[]{1, 0};
        TEXT_MISC_SHOP_ITEMS = new int[]{12, 13, 14, 15};
        TEXT_MISC_SHOP_DESCRIP = new int[]{16, 17, 18, 19};
        MENUS = new int[][]{new int[]{2, 4, 5, 6, 7, 8}, new int[]{9, 10}, new int[]{11, 12, 13, 14}, new int[]{16, 18}, new int[]{0, 1}, new int[]{0, 1}, new int[]{15, 16}, new int[]{19, 20, 21, 22}, new int[]{0, 1, 2, 3, 4, 5}};
        MENU_TITLES = new int[]{-1, -1, 25, 26, 27, 28, 23, 29, -1};
        MENU_NOTES = new int[]{-1, -1, -1, -1, 30, 31, -1, -1, -1};
        boolean[] zArr = new boolean[9];
        zArr[2] = true;
        zArr[3] = true;
        zArr[7] = true;
        MENU_CAN_EXIT = zArr;
        MENU_HAS_BGM = new boolean[]{true, false, true, true, false, false, false, false, true};
        OVERWORLD_ROOMS = new int[]{86, 87, 88, 89, 90, 91, 92, 93};
        OVERWORLD_LOCATIONS = new int[]{0, 0, 1, 2, 4, 3, 0, 0};
        DUNGEON_START = new int[]{0, 21, 41, 64, 86};
        DUNGEON_ENTRANCE = new int[]{88, 89, 91, 90};
        DUNGEON_BOSS_X = new int[]{3, 4, 4, 3};
        DUNGEON_BOSS_Y = new int[]{0, 1, 1, 0};
        ITEM_TYPES = new int[]{43, 44, 46, 47, 49, 48, 50};
        WEAPONS = new int[]{1, 64, 4, 8, 16, 128};
        WEAPONS_TYPES = new int[]{42, 48, 44, 46, 47, 50};
        BOSS_WEAPONS = new int[]{2, 4, 8, 20};
        OBJECT_TYPES = new int[]{41, -1};
        DUNGEON_KEYS = new int[]{51, 52, 53, 54};
        SHOP_TYPES = new int[]{35, 49, 48, 50};
        SHOP_COSTS = new int[]{100, STATUS_GEM_X, 500, 10};
        DIR_X = new int[]{0, 0, 1, -1};
        DIR_Y = new int[]{-1, 1, 0, 0};
        SOFTKEY_ICONS = new int[]{0, 0, 0, 2, 1, 3, 4, 9};
        PORTRAIT_OFFSETS = new byte[]{0, 1, -4, -6, -4};
        dungeonMap = new byte[49];
        dungeonRooms = new byte[49];
    }

    public UI(Main parent) {
        super(parent);
        this.hasCheats = false;
        this.logo = -1;
        this.textFormat = new int[256];
        this.dungeonObjects = new int[5];
        this.dungeonKeys = new int[5];
        this.roomFlags = new int[100];
        this.lan = null;
        if (this.invite == null) {
            this.invite = Image.createImage("/share.png");
        }
        this.parent = parent;
    }

    public void updateUI() {
        this.transitionComplete = false;
        if (this.transitionOpen > 0) {
            if (this.transition >= this.transitionMax) {
                this.transitionOpen = 0;
                this.transitionComplete = true;
            }
            this.transition += 4;
            return;
        }
        if (this.transitionOpen < 0) {
            this.transition -= 4;
            if (this.transition <= this.transitionMin) {
                this.transitionOpen = 0;
                this.transitionComplete = true;
                return;
            }
            return;
        }
        if (Main.midlet.res.HAS_SCROLL && this.scrollDir < 0) {
            closeScroll();
        }
        int i = this.flash - 1;
        this.flash = i;
        if (i < 0) {
            this.flash = 11;
        }
        switch (state) {
            case 0:
                if (this.statusOy < 0) {
                    this.statusOy++;
                }
                if (!this.isEnabled) {
                    enable();
                    return;
                }
                return;
            case 1:
                if (!this.complete) {
                    if (this.talkPopup > 0) {
                        this.talkPopup--;
                    }
                    if (this.msg == null) {
                        talkNext();
                        return;
                    }
                    int msgLength = this.msg.length();
                    if (this.msgCursor < msgLength) {
                        this.msgCursor = moveCursor(this.msg, this.msgCursor, 1);
                        if (this.msgCursor >= msgLength) {
                            this.room.setTalking(-1);
                        }
                    }
                    if (!this.isEnabled) {
                        enable();
                        return;
                    }
                    return;
                }
                return;
            case 2:
                this.msgCursor = moveCursor(this.msg, this.msgCursor, 1);
                if (this.msgCursor >= this.msg.length() && !this.isEnabled) {
                    this.room.setTalking(-1);
                    enable();
                    return;
                }
                return;
            case 3:
            case 4:
            case 10:
                if (!this.isEnabled) {
                    enable();
                    return;
                }
                return;
            case 50:
                if (Main.midlet.res.HAS_LOGO_ANIM) {
                    if (this.logoOy < 0) {
                        this.logoOy += 4;
                        return;
                    } else if (this.swordOx < 0) {
                        this.swordOx += 50;
                        return;
                    } else if (this.logoFlash > 0) {
                        this.logoFlash--;
                        return;
                    }
                }
                if (Main.midlet.res.HAS_SCROLL) {
                    if (this.scrollWait > 0) {
                        this.scrollWait--;
                        return;
                    } else {
                        if (this.scrollDir > 0) {
                            openScroll();
                            return;
                        }
                        return;
                    }
                }
                if (!this.isEnabled) {
                    enable();
                    return;
                }
                return;
            case 51:
                if (Main.midlet.res.HAS_SCROLL) {
                    if (this.scrollDir > 0) {
                        openScroll();
                        return;
                    }
                    return;
                } else {
                    if (!this.isEnabled) {
                        enable();
                        return;
                    }
                    return;
                }
            case 60:
            case 61:
                if (!this.complete) {
                    this.scrolling -= this.skipped ? 32 : 2;
                    this.complete = (-this.scrolling) > this.textFormat[1];
                }
                if (!this.isEnabled) {
                    enable();
                    return;
                }
                return;
            case 90:
                if (this.logoShow >= 0) {
                    this.logoShow -= this.frameRate;
                }
                break;
            case STATE_TITLE /* 91 */:
                break;
            default:
                return;
        }
        if (this.logoShow < 0) {
            setState(92);
        }
    }

    public void openTransition(int open, int dir) {
        this.transitionOpen = open;
        this.transitionDir = dir;
        this.transitionMin = 0;
        this.transitionMax = 36;
        int dx = dir < 0 ? 0 : DIR_X[dir];
        int dy = dir >= 0 ? DIR_Y[dir] : 0;
        int range = 0;
        int trail = dx != 0 ? this.transNumCols : this.transNumRows;
        if (dx > 0 || dy > 0) {
            range = 0;
            this.transitionMin = 1 - trail;
            this.transitionMax = trail + 36;
        } else if (dx < 0 || dy < 0) {
            range = 5 - trail;
        }
        if (this.transitionOpen > 0) {
            this.transition = range;
        } else {
            this.transition = 36 - range;
        }
        clearState(state);
    }

    public boolean inTransition() {
        return this.transitionOpen != 0;
    }

    private void openScroll() {
        this.scrollOpen += this.scrollDir;
        if (this.scrollOpen >= this.scrollHeight) {
            this.scrollOpen = this.scrollHeight;
            this.scrollDir = 0;
            enable();
        }
    }

    private void closeScroll() {
        if (this.scrollOpen <= 0) {
            this.scrollDir = 0;
            repeatEvent();
        }
        this.scrollOpen += this.scrollDir;
        if (this.scrollOpen <= 0) {
            this.scrollOpen = 0;
        }
    }

    public void openUI(int state2) {
        System.out.println("openUI(" + state2 + ")");
        setState(state2);
        switch (state2) {
            case 4:
                this.msg = this.textMisc[22];
                formatText(this.fontWhite, this.msg, this.screenWidth - 16, this.textFormat);
                break;
            case 10:
                this.flash = 11;
                break;
            case 50:
            case 51:
                if (Main.midlet.res.HAS_SCROLL) {
                    this.scrollOpen = 0;
                    this.scrollDir = 18;
                }
                break;
            case 60:
                this.msg = this.textMisc[20];
                formatText(this.fontWhite, this.msg, this.screenWidth - 16, this.textFormat);
                this.scrolling = this.displayHeight;
                this.complete = false;
                this.skipped = false;
                break;
            case 61:
                this.msg = this.textMisc[21];
                formatText(this.fontWhite, this.msg, this.screenWidth - 16, this.textFormat);
                this.scrolling = this.displayHeight;
                this.complete = false;
                this.skipped = false;
                break;
        }
    }

    public void enable() {
        setSoftkeys();
        setTouch();
        this.isEnabled = true;
    }

    public void clearState(int state2) {
        state = state2;
        clearSoftkeys();
        clearTouch();
        clearKeyState();
        this.isEnabled = false;
    }

    public void refreshState() {
        clearSoftkeys();
        setSoftkeys();
        clearTouch();
        setTouch();
    }

    public void setState(int state2) {
        System.out.println("setState(" + state2 + ")");
        clearState(state2);
        clearKeyState();
        this.title = -1;
        this.note = -1;
        switch (state2) {
            case 50:
                this.title = MENU_TITLES[this.menuId];
                this.note = MENU_NOTES[this.menuId];
                break;
            case STATE_TITLE /* 91 */:
                this.msg = this.textMisc[3];
                this.flash = 11;
                break;
            case STATE_LOADING /* 92 */:
                if (this.preloaded) {
                    this.msg = this.textMisc[5];
                }
                break;
        }
        setLayout();
        playBGM();
    }

    public void playBGM() {
        int bgm = -1;
        switch (state) {
            case 0:
            case 1:
            case 2:
            case 3:
                if (Actor.isBossFight) {
                    if (!Actor.bossKilled && Actor.heroEntered && state != 1) {
                        Resources resources = Main.midlet.res;
                        bgm = Resources.SOUND_BGM_BOSS;
                    }
                } else if (this.dungeon == 4) {
                    Resources resources2 = Main.midlet.res;
                    bgm = Resources.SOUND_BGM_THEME;
                } else if (!Actor.heroDead) {
                    Resources resources3 = Main.midlet.res;
                    bgm = Resources.SOUND_BGM_DUNGEON[this.dungeon];
                }
                break;
            case 50:
                boolean hasBGM = MENU_HAS_BGM[this.menuId];
                if (hasBGM) {
                    Resources resources4 = Main.midlet.res;
                    bgm = Resources.SOUND_BGM_THEME;
                }
                break;
            case 51:
            case 60:
            case 61:
                Resources resources5 = Main.midlet.res;
                bgm = Resources.SOUND_BGM_THEME;
                break;
        }
        if (bgm >= 0) {
            playSound(bgm, 0);
        }
    }

    private void setSoftkeys() {
        switch (state) {
            case 0:
                addSoftkey(5);
                break;
            case 1:
                if (!this.complete) {
                    addSoftkey(7);
                    addSoftkey(6);
                }
                break;
            case 2:
                addSoftkey(1);
                addSoftkey(3);
                break;
            case 3:
                boolean canBuy = (this.purchased & (1 << this.cursor)) == 0 && this.gems >= SHOP_COSTS[this.cursor];
                if (canBuy) {
                    addSoftkey(1);
                }
                addSoftkey(4);
                break;
            case 4:
                addSoftkey(2);
                break;
            case 10:
            case 50:
                if (this.menuCanExit) {
                    addSoftkey(4);
                }
                break;
            case 51:
                addSoftkey(4);
                break;
            case 60:
            case 61:
                if (!this.skipped) {
                    addSoftkey(6);
                }
                break;
        }
    }

    private void setLayout() {
        int noteWidth;
        int itemWidth;
        int division = (this.viewHeight >> 1) + (this.viewHeight >> 3);
        switch (state) {
            case 1:
                int height = this.msg == null ? 0 : this.textFormat[1];
                if (height < this.talkHeight) {
                    height = this.talkHeight;
                }
                this.boxWidth = this.screenWidth - 16;
                Resources resources = Main.midlet.res;
                this.boxHeight = ((Resources.GFX_PORTRAIT_OVER + height) + 12) - 3;
                this.boxX = 8;
                this.boxY = this.displayHeight - (this.boxHeight + 2);
                int talkingY = Actor.getTalkingY();
                if (talkingY >= division) {
                    Resources resources2 = Main.midlet.res;
                    int i = Resources.GFX_PORTRAIT_HEIGHT + 16;
                    Resources resources3 = Main.midlet.res;
                    this.boxY = i - Resources.GFX_PORTRAIT_OVER;
                }
                break;
            case 2:
                this.boxWidth = this.screenWidth - 16;
                int i2 = this.talkHeight;
                Resources resources4 = Main.midlet.res;
                this.boxHeight = ((i2 + Resources.GFX_PORTRAIT_OVER) + 12) - 3;
                this.boxX = 8;
                this.boxY = this.displayHeight - (this.boxHeight + 2);
                int talkingY2 = Actor.getTalkingY();
                if (talkingY2 >= division) {
                    Resources resources5 = Main.midlet.res;
                    int i3 = Resources.GFX_PORTRAIT_HEIGHT + 16;
                    Resources resources6 = Main.midlet.res;
                    this.boxY = i3 - Resources.GFX_PORTRAIT_OVER;
                }
                break;
            case 3:
                this.boxWidth = this.screenWidth - 16;
                this.boxHeight = TALK_TEXT_OY + SHOP_BOX_HEIGHT + this.font.getLinesHeight(3) + this.font.lineSpacing + 48 + 6;
                this.boxX = 8;
                this.boxY = this.displayHeight - (this.boxHeight + 2);
                int talkingY3 = Actor.getTalkingY();
                if (talkingY3 >= division) {
                    Resources resources7 = Main.midlet.res;
                    int i4 = Resources.GFX_PORTRAIT_HEIGHT + 16;
                    Resources resources8 = Main.midlet.res;
                    this.boxY = i4 - Resources.GFX_PORTRAIT_OVER;
                }
                this.shopSpacing = (this.boxWidth - ((SHOP_BOX_WIDTH * 4) + 6)) / 5;
                this.shopX = this.boxX + 3 + this.shopSpacing;
                this.shopY = this.boxY + TALK_TEXT_OY + 16;
                break;
            case 10:
                int menuHeight = (this.menuSize * this.font.lineSpacing) + ((this.menuSize - 1) * 20);
                int i5 = this.font.lineSpacing;
                Resources resources9 = Main.midlet.res;
                this.menuY = i5 - ((Resources.GFX_HAND_OY + menuHeight) + this.imgHand.getHeight());
                int i6 = this.screenHeight;
                Resources resources10 = Main.midlet.res;
                this.menuY = i6 - Resources.GFX_STATUS_ICON_HEIGHT;
                int titleHeight = this.font.lineSpacing + 4;
                int i7 = this.menuY;
                Resources resources11 = Main.midlet.res;
                int vSpace = i7 - ((((Resources.GFX_STATUS_ICON_HEIGHT + 3) + MAP_HEIGHT) + STATUS_BOX_HEIGHT) + (titleHeight << 1));
                int vSpacing = vSpace / 3;
                int itemsHSpace = this.screenWidth - (STATUS_BOX_WIDTH * 7);
                this.itemsSpacing = itemsHSpace / 8;
                this.itemsX = (itemsHSpace - (this.itemsSpacing * 6)) >> 1;
                Resources resources12 = Main.midlet.res;
                this.itemsY = Resources.GFX_STATUS_ICON_HEIGHT + 3 + vSpacing;
                this.mapY = this.itemsY + STATUS_BOX_HEIGHT + vSpacing + titleHeight;
                int i8 = this.screenHeight;
                Resources resources13 = Main.midlet.res;
                this.menuY = (i8 - Resources.GFX_STATUS_ICON_HEIGHT) / 2;
                this.mapX = 15;
                int objectsVSpace = MAP_HEIGHT - (STATUS_BOX_HEIGHT * 2);
                this.objectsX = this.mapX + MAP_WIDTH + 12;
                this.objectsSpacing = objectsVSpace / 3;
                this.boxX = 0;
                this.boxY = 0;
                this.boxWidth = this.screenWidth;
                this.boxHeight = this.screenHeight;
                break;
            case 50:
                int menuWidth = 0;
                int i9 = this.menuSize;
                while (true) {
                    i9--;
                    if (i9 >= 0) {
                        if (this.menuId == 8) {
                            itemWidth = this.font.stringWidth(this.textLanguages[this.menuItems[i9]]);
                        } else {
                            itemWidth = this.font.stringWidth(this.textMenu[this.menuItems[i9]]);
                        }
                        if (itemWidth > menuWidth) {
                            menuWidth = itemWidth;
                        }
                    } else {
                        int menuHeight2 = (this.menuSize * this.font.lineSpacing) + ((this.menuSize - 1) * 20);
                        if (Main.midlet.res.HAS_SCROLL) {
                            Resources resources14 = Main.midlet.res;
                            this.scrollWidth = menuWidth + 8 + (Resources.GFX_SCROLL_SIDE_WIDTH << 1);
                            this.scrollWidth |= 1;
                            if (this.scrollWidth < SCROLL_MIN_WIDTH) {
                                this.scrollWidth = SCROLL_MIN_WIDTH;
                            }
                            int i10 = this.scrollWidth;
                            Resources resources15 = Main.midlet.res;
                            noteWidth = i10 - ((Resources.GFX_SCROLL_SIDE_WIDTH << 1) + 8);
                        } else {
                            this.boxWidth = menuWidth + 6 + 8;
                            this.boxWidth |= 1;
                            int minWidth = this.screenWidth - 32;
                            if (this.boxWidth < minWidth) {
                                this.boxWidth = minWidth;
                            }
                            noteWidth = this.boxWidth - 6;
                        }
                        if (this.title >= 0) {
                            Resources resources16 = Main.midlet.res;
                            menuHeight2 += Resources.GFX_TITLE_BORDER_HEIGHT + 24;
                        }
                        if (this.note >= 0) {
                            formatText(this.font, this.textMenu[this.note], noteWidth, this.textFormat);
                            menuHeight2 += this.textFormat[1] + 24;
                        }
                        if (Main.midlet.res.HAS_SPLIT_BG) {
                            this.menuY = ((MENU_LOGO_OY + this.screenHeight) - (this.imgBgFinn.getHeight() + menuHeight2)) >> 1;
                        } else if (Main.midlet.res.HAS_MENU_BG) {
                            this.menuY = (this.screenHeight / 2) - (menuHeight2 / 2);
                        } else {
                            this.menuY = ((MENU_LOGO_OY + this.displayHeight) - menuHeight2) >> 1;
                        }
                        if (Main.midlet.res.HAS_SCROLL) {
                            this.scrollHeight = menuHeight2 + 16;
                            this.scrollX = this.screenHCenter - (this.scrollWidth >> 1);
                            this.scrollY = this.menuY - 8;
                        } else {
                            this.boxHeight = menuHeight2 + 6 + 16;
                            this.boxX = this.screenHCenter - (this.boxWidth >> 1);
                            this.boxY = this.menuY - 11;
                        }
                        break;
                    }
                }
                break;
            case 51:
                if (Main.midlet.res.HAS_SCROLL) {
                    this.scrollWidth = this.screenWidth - 32;
                    this.scrollHeight = this.textAreaHeight + 8;
                    this.scrollX = this.screenHCenter - (this.scrollWidth >> 1);
                    if (Main.midlet.res.HAS_SPLIT_BG) {
                        this.scrollY = ((MENU_LOGO_OY + this.screenHeight) - (this.imgBgFinn.getHeight() + this.scrollHeight)) >> 1;
                    } else {
                        int i11 = this.displayVCenter;
                        Resources resources17 = Main.midlet.res;
                        this.scrollY = i11 + (((Resources.GFX_LOGO_HEIGHT + 36) - this.scrollHeight) >> 1);
                    }
                } else {
                    this.boxWidth = this.screenWidth - 4;
                    this.boxHeight = this.textAreaHeight + 6 + 8;
                    this.boxX = this.screenHCenter - (this.boxWidth >> 1);
                    int i12 = this.displayVCenter;
                    Resources resources18 = Main.midlet.res;
                    this.boxY = i12 + (((Resources.GFX_LOGO_HEIGHT + 36) - this.boxHeight) >> 1);
                }
                break;
        }
    }

    private void paintGmg(Graphics g) {
        if (Main.gmgIcon != null) {
            g.drawImage(Main.gmgIcon, 10, this.screenHeight / 2, 6);
        }
    }

    private void setTouch() {
        int i;
        switch (state) {
            case 0:
                this.touchActionX = (this.screenWidth - this.sprTouchAction.getWidth()) - 6;
                this.touchActionY = ((this.softkeysY - this.sprTouchAction.getWidth()) + 6) - 20;
                this.touchSwitchY = this.softkeysY;
                int i2 = this.screenWidth;
                Resources resources = Main.midlet.res;
                this.touchSwitchX = (i2 - ((Resources.GFX_SOFTKEY_HEIGHT + 6) * 2)) - 20;
                int touchFire = touchInitialise((this.screenWidth / 2) + 10, 0, this.screenWidth / 2, this.touchSwitchY);
                touchSetSystem(touchFire, 2, -5);
                int i3 = this.touchSwitchX;
                int i4 = this.touchSwitchY;
                Resources resources2 = Main.midlet.res;
                int i5 = Resources.GFX_SOFTKEY_WIDTH;
                Resources resources3 = Main.midlet.res;
                int touchZero = touchInitialise(i3, i4, i5, Resources.GFX_SOFTKEY_HEIGHT);
                touchSetSystem(touchZero, 2, 7);
                break;
            case 3:
                this.touchShop = new int[4];
                int x = this.shopX;
                for (int i6 = 0; i6 < 4; i6++) {
                    this.touchShop[i6] = touchInitialise(x, this.shopY, SHOP_BOX_WIDTH, SHOP_BOX_HEIGHT);
                    x += SHOP_BOX_WIDTH + this.shopSpacing;
                }
                break;
            case 10:
            case 50:
                if (state == 50 && !Main.PREMIUM) {
                    int ti = touchInitialise((this.screenWidth - 15) - this.invite.getWidth(), this.screenVCenter - (this.invite.getHeight() / 2), this.invite.getWidth(), this.invite.getHeight());
                    touchSetSystem(ti, 2, -999);
                    if (Main.gmgIcon != null) {
                        int tm = touchInitialise(10, (this.screenHeight / 2) - (Main.gmgIcon.getHeight() / 2), Main.gmgIcon.getWidth(), Main.gmgIcon.getHeight());
                        touchSetSystem(tm, 2, -99);
                    }
                }
                int y = this.menuY;
                if (this.title >= 0) {
                    Resources resources4 = Main.midlet.res;
                    y += Resources.GFX_TITLE_BORDER_HEIGHT + 24;
                }
                for (int i7 = 0; i7 < this.menuSize; i7++) {
                    String item = getMenuItem(i7);
                    int itemWidth = this.font.stringWidth(item);
                    if (state != 10 || (state == 10 && this.dungeon >= 4)) {
                        i = this.screenHCenter;
                    } else {
                        i = this.screenHCenter + (this.screenHCenter / 2);
                    }
                    int itemX = i - (itemWidth >> 1);
                    int touchIndex = touchInitialise(itemX, y, itemWidth, this.font.lineSpacing);
                    touchSetSystem(touchIndex, 1, i7);
                    touchSetVolatile(touchIndex);
                    y += this.font.lineSpacing + 20;
                }
                break;
            case 51:
                int i8 = this.arrowUx;
                int i9 = this.softkeysY;
                Resources resources5 = Main.midlet.res;
                int i10 = Resources.GFX_SOFTKEY_WIDTH;
                Resources resources6 = Main.midlet.res;
                int touchUp = touchInitialise(i8, i9, i10, Resources.GFX_SOFTKEY_HEIGHT);
                touchSetSystem(touchUp, 2, 9);
                int i11 = this.arrowDx;
                int i12 = this.softkeysY;
                Resources resources7 = Main.midlet.res;
                int i13 = Resources.GFX_SOFTKEY_WIDTH;
                Resources resources8 = Main.midlet.res;
                int touchDown = touchInitialise(i11, i12, i13, Resources.GFX_SOFTKEY_HEIGHT);
                touchSetSystem(touchDown, 2, 15);
                break;
            case STATE_TITLE /* 91 */:
                int touchFire2 = touchInitialise(0, 0, this.screenWidth, this.screenHeight);
                touchSetSystem(touchFire2, 2, -5);
                break;
        }
        int skLeft = getCurrentSoftKey(0);
        int skRight = getCurrentSoftKey(1);
        if (skLeft >= 0) {
            int i14 = this.softkeysY;
            Resources resources9 = Main.midlet.res;
            int i15 = Resources.GFX_SOFTKEY_WIDTH;
            Resources resources10 = Main.midlet.res;
            this.touchSkLeft = touchInitialise(6, i14, i15, Resources.GFX_SOFTKEY_HEIGHT);
            touchSetSystem(this.touchSkLeft, 0, skLeft);
        }
        if (skRight >= 0) {
            int i16 = this.screenWidth;
            Resources resources11 = Main.midlet.res;
            int softkeyX = i16 - (Resources.GFX_SOFTKEY_WIDTH + 6);
            int i17 = this.softkeysY;
            Resources resources12 = Main.midlet.res;
            int i18 = Resources.GFX_SOFTKEY_WIDTH;
            Resources resources13 = Main.midlet.res;
            this.touchSkRight = touchInitialise(softkeyX, i17, i18, Resources.GFX_SOFTKEY_HEIGHT);
            touchSetSystem(this.touchSkRight, 0, skRight);
        }
    }

    public Image createLocalisedImage(String filename) {
        return Image.createImage(filename);
    }

    public boolean openLogo() {
        this.imgLogo = null;
        this.lan = null;
        garbageCollect();
        int i = this.logo + 1;
        this.logo = i;
        boolean logosDone = i >= 3;
        if (!logosDone) {
            String logoName = FILENAME_LOGOS[this.logo];
            if (this.logo == 2) {
                this.imgLogo = createLocalisedImage(logoName);
            } else {
                this.imgLogo = Image.createImage(logoName);
            }
            this.logoShow = DELAY_LOGOS[this.logo];
            if (this.logo == 2) {
                if (!Main.PREMIUM) {
                    Main.displayInterstitial();
                }
                setState(91);
                enable();
            } else {
                setState(90);
            }
        }
        return !logosDone;
    }

    public void skipTitle() {
        this.logoShow--;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0095 A[PHI: r2
      0x0095: PHI (r2v1 'index' int) = 
      (r2v0 'index' int)
      (r2v0 'index' int)
      (r2v0 'index' int)
      (r2v0 'index' int)
      (r2v0 'index' int)
      (r2v2 'index' int)
      (r2v0 'index' int)
      (r2v0 'index' int)
      (r2v3 'index' int)
      (r2v0 'index' int)
      (r2v4 'index' int)
      (r2v5 'index' int)
     binds: [B:32:0x0090, B:33:0x0092, B:56:0x00c8, B:53:0x00c2, B:48:0x00b6, B:49:0x00b8, B:43:0x00ab, B:45:0x00af, B:46:0x00b1, B:40:0x00a6, B:41:0x00a8, B:38:0x00a1] A[DONT_GENERATE, DONT_INLINE]] */
    public void openMenu(int id) {
        int size;
        System.out.println("openMenu(" + id + ")");
        if (!Main.midlet.res.HAS_ILLUSTRATIONS && id == 1 && this.dungeon == 4) {
            id = 0;
        }
        this.menuCanExit = MENU_CAN_EXIT[id];
        int[] menu = MENUS[id];
        int length = menu.length;
        int[] items = new int[length];
        int i = 0;
        int size2 = 0;
        while (i < length) {
            int index = menu[i];
            if (id != 8) {
                switch (index) {
                    case 2:
                        if (this.inGame) {
                            index = 9;
                        } else if (this.dungeon >= 0) {
                            index = 3;
                        }
                        size = size2 + 1;
                        items[size2] = index;
                        break;
                    case 7:
                        if (!this.hasCheats) {
                            size = size2;
                        } else {
                            size = size2 + 1;
                            items[size2] = index;
                        }
                        break;
                    case 12:
                        if (this.textLanguages == null) {
                            size = size2;
                        } else if (this.textLanguages.length > 1) {
                            size = size2 + 1;
                            items[size2] = index;
                        } else {
                            size = size2;
                        }
                        break;
                    case 16:
                        if (id != 6 && this.sound > 0) {
                            index = 15;
                        }
                        size = size2 + 1;
                        items[size2] = index;
                        break;
                    case 18:
                        if (this.vibrate) {
                            index = 17;
                        }
                        size = size2 + 1;
                        items[size2] = index;
                        break;
                    default:
                        size = size2 + 1;
                        items[size2] = index;
                        break;
                }
            } else {
                size = size2 + 1;
                items[size2] = index;
            }
            i++;
            size2 = size;
        }
        menuCall(id, items, size2);
        if (this.firstMenu) {
            if (Main.midlet.res.HAS_LOGO_ANIM) {
                Resources resources = Main.midlet.res;
                int i2 = Resources.GFX_LOGO_WIDTH >> 1;
                int i3 = this.screenHCenter;
                Resources resources2 = Main.midlet.res;
                int swordOffset = i2 - (i3 + Resources.GFX_LOGO_WIDTH);
                while ((-this.logoOy) < MENU_LOGO_OY) {
                    this.logoOy -= 4;
                }
                while (this.swordOx > swordOffset) {
                    this.swordOx -= 50;
                }
                this.logoFlash = 1;
            }
            if (Main.midlet.res.HAS_SCROLL) {
                this.scrollWait = 4;
            }
            this.firstMenu = false;
        }
        boolean hasBGM = MENU_HAS_BGM[this.menuId];
        if (!hasBGM) {
            stopSound();
        }
        openUI(id == 1 ? 10 : 50);
    }

    public void openHelp(int id) {
        if (!Main.PREMIUM) {
            UtilsAndroid.sendFlurry("HelpVisited");
        }
        textAreaCall(id, this.font, this.textHelp[id], this.textFormat, this.textWidth, 11);
        openUI(51);
    }

    public void openHealer() {
        if (this.life == this.lifeMax) {
            openTalk(SCENE_FULL_HEALTH);
            return;
        }
        if (this.gems < 5) {
            openTalk(SCENE_TOO_FEW_GEMS);
            return;
        }
        this.msg = this.textMisc[9];
        this.msgCursor = 0;
        this.room.setTalking(1);
        formatText(this.font, this.msg, this.talkWidth, this.textFormat);
        setState(2);
    }

    public void openShop() {
        this.cursor = 0;
        moveCursor(0);
        setState(3);
    }

    public void moveCursor(int dir) {
        int newCursor = this.cursor + dir;
        if (newCursor >= 0 && newCursor < 4) {
            this.cursor = newCursor;
            this.msg = this.textMisc[TEXT_MISC_SHOP_DESCRIP[this.cursor]];
            formatText(this.font, this.msg, this.talkWidth, this.textFormat);
            if (dir != 0) {
                refreshState();
            }
        }
    }

    public void openTalk(int dialog) {
        if (dialog == 120 || dialog == 130 || dialog == 160) {
            dialog += this.numRescued;
        }
        this.talkScene = dialog;
        this.talkIndex = 0;
        this.talkSpeaker = -1;
        this.talkPortrait = -1;
        this.complete = false;
        this.skipped = false;
        this.msg = null;
        openUI(1);
    }

    private void talkNext() {
        this.complete = true;
        int prevIndex = this.talkIndex;
        while (this.talkIndex < this.dialogue.length) {
            int scene = this.dialogue[this.talkIndex + 0] & Constants.UNKNOWN;
            if (scene == this.talkScene) {
                this.complete = false;
                break;
            } else if (prevIndex > 0) {
                break;
            } else {
                this.talkIndex += 4;
            }
        }
        if (this.complete) {
            skip();
            return;
        }
        this.msgCursor = 0;
        int i = this.dialogue[this.talkIndex + 1];
        byte portrait = this.dialogue[this.talkIndex + 2];
        if (i == 14) {
            i = this.room.talkSpeaker;
        }
        boolean newSpeaker = this.talkSpeaker != i;
        int line = this.dialogue[this.talkIndex + 3] & Constants.UNKNOWN;
        this.msg = this.textDialogue[line];
        formatText(this.font, this.msg, this.talkWidth, this.textFormat);
        setLayout();
        this.talkSpeaker = i;
        this.talkPortrait = i + portrait;
        this.room.setTalking(this.talkSpeaker);
        if (newSpeaker) {
            this.talkPopup = PORTRAIT_OFFSETS.length;
        }
        this.talkIndex += 4;
    }

    public void talkAdvance() {
        if (this.msg != null) {
            boolean hurried = this.msgCursor < this.msg.length();
            this.msgCursor = this.msg.length();
            if (hurried) {
                this.room.setTalking(-1);
            } else {
                talkNext();
            }
        }
    }

    public void skip() {
        if (state == 1) {
            this.room.setTalking(-1);
            this.complete = true;
        }
        this.skipped = true;
        refreshState();
    }

    public int moveCursor(String msg, int cursor, int speed) {
        if (msg != null && cursor < msg.length()) {
            while (true) {
                cursor++;
                if (cursor >= msg.length() || (msg.charAt(cursor) != ' ' && (speed = speed - 1) <= 0)) {
                    break;
                }
            }
        }
        return cursor;
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void paintCanvas(Graphics g) {
        int msgY;
        int msgY2;
        boolean flash = ((1 << this.flash) & FLASH) != 0;
        switch (state) {
            case 0:
                paintGame(g);
                paintStatus(g, this.statusOy);
                paintTransition(g);
                paintControls(g);
                break;
            case 1:
                paintGame(g);
                paintHearts(g, 0);
                paintGems(g, 0);
                paintBox(g);
                if (this.talkPortrait >= 0 && this.talkPopup < PORTRAIT_OFFSETS.length) {
                    int portraitY = this.boxY + TALK_PORTRAIT_OY + PORTRAIT_OFFSETS[this.talkPopup];
                    this.sprPortraits.paint(g, this.boxX + 6, portraitY, this.talkPortrait);
                }
                if (this.msg != null) {
                    renderText(g, this.font, this.msg, this.textFormat, this.msgCursor, this.boxX + 6, this.boxY + TALK_TEXT_OY, 4, false);
                }
                break;
            case 2:
                paintGame(g);
                paintHearts(g, 0);
                paintGems(g, 0);
                paintBox(g);
                this.sprPortraits.paint(g, this.boxX + 6, this.boxY + TALK_PORTRAIT_OY, 1);
                renderText(g, this.font, this.msg, this.textFormat, this.msgCursor, this.boxX + 6, this.boxY + TALK_TEXT_OY, 4, false);
                if (this.msgCursor == this.msg.length()) {
                    String sCost = replace(this.textMisc[8], "%cost%", 5);
                    int costX = (this.boxX + this.boxWidth) - 6;
                    int costY = (this.boxY + this.boxHeight) - (this.font.lineSpacing + 6);
                    this.font.drawString(g, sCost, costX, costY, 24);
                }
                break;
            case 3:
                paintGame(g);
                paintGems(g, 0);
                paintBox(g);
                this.sprPortraits.paint(g, this.boxX + 6, this.boxY + TALK_PORTRAIT_OY, 2);
                int x = this.shopX;
                for (int i = 0; i < 4; i++) {
                    g.setColor(COLOR_MAP_EMPTY);
                    g.fillRect(x, this.shopY, SHOP_BOX_WIDTH, SHOP_BOX_HEIGHT);
                    boolean onsale = (this.purchased & (1 << i)) == 0;
                    if (onsale) {
                        Actor.paintSprite(g, SHOP_TYPES[i], x + 2, this.shopY + 2);
                    }
                    if (i == this.cursor) {
                        g.setColor(-16777216);
                        g.drawRect(x - 2, this.shopY - 2, SHOP_BOX_WIDTH + 3, SHOP_BOX_HEIGHT + 3);
                    }
                    x += SHOP_BOX_WIDTH + this.shopSpacing;
                }
                int descripY = this.shopY + SHOP_BOX_HEIGHT + 16;
                int infoY = (this.boxY + this.boxHeight) - (this.font.lineSpacing + 6);
                boolean canBuy = (this.purchased & (1 << this.cursor)) == 0;
                if (!canBuy) {
                    this.font.drawString(g, this.textMisc[11], this.screenHCenter, (descripY + infoY) >> 1, 3);
                } else {
                    renderText(g, this.font, this.msg, this.textFormat, -1, this.screenHCenter, descripY, 1, false);
                    int itemX = this.boxX + 6;
                    int costX2 = (this.boxX + this.boxWidth) - 6;
                    String sCost2 = replace(this.textMisc[8], "%cost%", SHOP_COSTS[this.cursor]);
                    this.font.drawString(g, this.textMisc[TEXT_MISC_SHOP_ITEMS[this.cursor]], itemX, infoY, 20);
                    this.font.drawString(g, sCost2, costX2, infoY, 24);
                }
                break;
            case 4:
                g.setColor(COLOR_TRANSITION);
                g.fillRect(0, 0, this.screenWidth, this.screenHeight);
                if (Main.midlet.res.HAS_ILLUSTRATIONS) {
                    int imgHeight = this.imgRestart.getHeight();
                    int imgY = this.displayVCenter - (((imgHeight + 16) + this.textFormat[1]) >> 1);
                    g.drawImage(this.imgRestart, this.screenHCenter, imgY, 17);
                    msgY = imgY + imgHeight + 16;
                } else {
                    msgY = this.displayVCenter - (this.textFormat[1] >> 1);
                }
                renderText(g, this.fontWhite, this.msg, this.textFormat, -1, this.screenHCenter, msgY, 1, false);
                break;
            case 10:
                paintStatusScreen(g, flash);
                paintStatus(g, 3);
                if (this.dungeon >= 4) {
                    paintMenu(g);
                } else {
                    paintMenu(g, true);
                }
                break;
            case 50:
                if (this.menuId == 8) {
                    paintBackground(g, false, true);
                } else {
                    paintBackground(g, true, true);
                }
                if (this.logoFlash <= 0 && this.scrollWait <= 0) {
                    paintScroll(g, 0);
                    if (!Main.midlet.res.HAS_SCROLL || this.scrollOpen == this.scrollHeight) {
                        paintMenu(g);
                        paintGmg(g);
                    }
                }
                break;
            case 51:
                paintBackground(g, true, false);
                paintScroll(g, textGetScrollY());
                paintText(g);
                break;
            case 60:
            case 61:
                g.setColor(COLOR_TRANSITION);
                g.fillRect(0, 0, this.screenWidth, this.screenHeight);
                g.setClip(0, 0, this.screenWidth, this.displayHeight);
                renderText(g, this.fontWhite, this.msg, this.textFormat, -1, this.screenHCenter, this.scrolling, 1, true);
                clearClip(g);
                break;
            case 90:
            case STATE_TITLE /* 91 */:
                boolean inTitle = state == 91;
                g.setColor(inTitle ? -16737091 : -1);
                g.fillRect(0, 0, this.screenWidth, this.screenHeight);
                if (this.logo == 2) {
                    if (this.imgLogo.getWidth() < this.screenWidth) {
                        g.drawImage(this.imgLogo, this.screenHCenter, this.screenVCenter, 3);
                    } else {
                        g.drawImage(this.imgLogo, 0, 0, 0);
                    }
                    if (this.lan != null) {
                        g.drawImage(this.lan, (this.screenWidth / 2) - (this.lan.getWidth() / 2), (this.screenHeight - 25) - this.lan.getHeight(), 0);
                    }
                } else {
                    g.drawImage(this.imgLogo, this.screenHCenter, this.screenVCenter, 3);
                }
                if (state == 91 && flash) {
                    int msgY3 = this.screenHeight - (this.font.lineSpacing + 8);
                    g.setColor(COLOR_BOX);
                    g.fillRect(0, msgY3 - 1, this.screenWidth, this.font.lineSpacing);
                    this.font.drawString(g, this.msg, this.screenHCenter, msgY3, 17);
                }
                break;
            case STATE_LOADING /* 92 */:
                if (this.preloaded) {
                    paintBackground(g, false, true);
                    if (Main.midlet.res.HAS_SPLIT_BG) {
                        msgY2 = ((MENU_LOGO_OY + this.screenHeight) - (this.imgBgFinn.getHeight() - this.font.cellHeight)) >> 1;
                    } else if (Main.midlet.res.HAS_MENU_BG) {
                        int i2 = MENU_LOGO_OY;
                        Resources resources = Main.midlet.res;
                        msgY2 = ((i2 + Resources.GFX_BG_FINN_OY) - this.font.cellHeight) >> 1;
                    } else {
                        msgY2 = (this.displayHeight - this.font.cellHeight) >> 1;
                    }
                    int msgWidth = this.font.stringWidth(this.msg);
                    int numDots = ((this.loadState - 4) % 3) + 1;
                    String loadMsg = this.msg.substring(0, (this.msg.length() + numDots) - 3);
                    g.setColor(COLOR_BOX);
                    g.fillRect(0, msgY2 - 1, this.screenWidth, this.font.lineSpacing);
                    this.font.drawString(g, loadMsg, this.screenHCenter - (msgWidth >> 1), msgY2, 20);
                }
                break;
        }
        paintSoftkeys(g);
    }

    private void paintControls(Graphics g) {
        int skLeft = getCurrentSoftKey(0);
        int skRight = getCurrentSoftKey(1);
        if (skLeft >= 0 || skRight >= 0) {
            if (Engine.TouchisDown) {
                g.drawImage(Engine.touchImage, Engine.StatingPointX - (Engine.touchImage.getWidth() >> 1), Engine.StatingPointY - (Engine.touchImage.getHeight() >> 1), 0);
                g.drawImage(Engine.touchJoy, Engine.CurrentPointX - (Engine.touchJoy.getWidth() >> 1), Engine.CurrentPointY - (Engine.touchJoy.getHeight() >> 1), 0);
            }
            if (this.touchActionY != 0) {
                this.sprTouchAction.paint(g, this.touchActionX, this.touchActionY, isKeyPressed(16384) ? 1 : 0);
                this.sprTouchSwitch.paint(g, this.touchSwitchX, this.touchSwitchY, isKeyPressed(1) ? 1 : 0);
            }
        }
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void paintHidden(Graphics g) {
        clearClip(g);
        g.setColor(COLOR_BOX);
        g.fillRect(0, 0, this.screenWidth, this.screenHeight);
        if (this.textMisc != null) {
            this.font.drawString(g, this.textMisc[0], this.screenHCenter, this.screenVCenter - this.font.lineSpacing, 17);
            this.font.drawString(g, this.textMisc[3], this.screenHCenter, this.screenVCenter, 17);
        }
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void paintRotated(Graphics g) {
        g.setClip(0, 0, this.screenHeight, this.screenWidth);
        g.setColor(COLOR_BOX);
        g.fillRect(0, 0, this.screenHeight, this.screenWidth);
        if (this.textMisc != null) {
            this.font.drawString(g, this.textMisc[4], this.screenVCenter, this.screenHCenter, 3);
        }
    }

    private void paintSoftkeys(Graphics g) {
        int skLeft = getCurrentSoftKey(0);
        int skRight = getCurrentSoftKey(1);
        if (skLeft >= 0) {
            Sprite spr = this.sprSoftkeys;
            if (isTouchPressed(this.touchSkLeft)) {
                spr = this.sprSoftkeysLit;
            }
            spr.paint(g, 6, this.softkeysY, SOFTKEY_ICONS[skLeft], 20);
        }
        if (skRight >= 0) {
            Sprite spr2 = this.sprSoftkeys;
            if (isTouchPressed(this.touchSkRight)) {
                spr2 = this.sprSoftkeysLit;
            }
            spr2.paint(g, this.screenWidth - 6, this.softkeysY, SOFTKEY_ICONS[skRight], 24);
        }
    }

    private void paintBackground(Graphics g, boolean withLogo, boolean withFinn) {
        if (Main.midlet.res.HAS_LOGO_ANIM) {
            boolean flash = this.logoFlash > 0 && this.logoOy == 0 && this.swordOx == 0;
            if (flash) {
                g.setColor(-1);
                g.fillRect(0, 0, this.screenWidth, this.screenHeight);
                return;
            }
        }
        g.setColor(-8803877);
        g.fillRect(0, 0, this.screenWidth, this.screenHeight);
        if (Main.midlet.res.HAS_MENU_BG) {
            g.drawImage(this.imgBgLeft, 0, 0, 20);
            g.drawImage(this.imgBgRight, this.screenWidth, 0, 24);
            g.drawImage(this.imgBgFinn, this.screenWidth / 2, this.screenHeight, 33);
        }
        if (withLogo) {
            int i = this.screenHCenter;
            Resources resources = Main.midlet.res;
            int logoX = i - (Resources.GFX_LOGO_WIDTH >> 1);
            if (Main.midlet.res.HAS_LOGO_ANIM && this.logoFlash > 0) {
                this.sprMenuLogo.paint(g, logoX, this.logoOy + 36, 1);
                this.sprMenuLogo.paint(g, this.swordOx + logoX, 36, 2);
                if (this.logoOy == 0) {
                    this.sprMenuLogo.paint(g, logoX, 36, 3);
                    return;
                }
                return;
            }
            this.sprMenuLogo.paint(g, logoX, 36, 0);
        }
    }

    private void paintTransition(Graphics g) {
        if (this.transitionOpen != 0) {
            g.setColor(COLOR_TRANSITION);
            int dx = this.transitionDir < 0 ? 0 : DIR_X[this.transitionDir];
            int dy = this.transitionDir < 0 ? 0 : DIR_Y[this.transitionDir];
            int dx2 = dx * this.transitionOpen;
            int dy2 = dy * this.transitionOpen;
            int size = this.transition;
            for (int y = this.transOy; y < this.viewEnd; y += 36) {
                int cy = y + 18;
                if (dx2 != 0) {
                    size = this.transition;
                }
                for (int x = this.transOx; x < this.screenWidth; x += 36) {
                    int s = size;
                    if (s > 36) {
                        s = 36;
                    }
                    if (s > 0) {
                        int tx = (x + 18) - (s >> 1);
                        int ty = cy - (s >> 1);
                        g.fillRect(tx, ty, s, s);
                    }
                    size -= dx2;
                }
                size -= dy2;
            }
        }
    }

    private void paintScroll(Graphics g, int scrollOy) {
        if (Main.midlet.res.HAS_SCROLL) {
            int clipOy = (this.scrollHeight - this.scrollOpen) >> 1;
            g.setClip(this.scrollX, this.scrollY + clipOy, this.scrollWidth, this.scrollOpen);
            g.setColor(COLOR_SCROLL);
            int i = this.scrollX;
            Resources resources = Main.midlet.res;
            int i2 = i + Resources.GFX_SCROLL_SIDE_WIDTH;
            int i3 = this.scrollY;
            int i4 = this.scrollWidth;
            Resources resources2 = Main.midlet.res;
            g.fillRect(i2, i3, i4 - (Resources.GFX_SCROLL_SIDE_WIDTH << 1), this.scrollHeight);
            for (int y = -scrollOy; y < this.scrollHeight; y += Resources.GFX_SCROLL_SIDE_HEIGHT) {
                Resources resources3 = Main.midlet.res;
                if (Resources.GFX_SCROLL_SIDE_HEIGHT + y >= 0) {
                    this.sprScrollSide.paint(g, this.scrollX, this.scrollY + y, 0);
                    Sprite sprite = this.sprScrollSide;
                    int i5 = this.scrollX + this.scrollWidth;
                    Resources resources4 = Main.midlet.res;
                    sprite.paint(g, i5 - Resources.GFX_SCROLL_SIDE_WIDTH, this.scrollY + y, 1);
                }
                Resources resources5 = Main.midlet.res;
            }
            clearClip(g);
            int i6 = this.scrollX;
            Resources resources6 = Main.midlet.res;
            int endX0 = i6 - Resources.GFX_SCROLL_END_OVER;
            int i7 = this.scrollX + this.scrollWidth;
            Resources resources7 = Main.midlet.res;
            int i8 = i7 - Resources.GFX_SCROLL_END_WIDTH;
            Resources resources8 = Main.midlet.res;
            int endX1 = i8 + Resources.GFX_SCROLL_END_OVER;
            int i9 = this.scrollY + clipOy;
            Resources resources9 = Main.midlet.res;
            int endY0 = i9 - Resources.GFX_SCROLL_END_HEIGHT;
            int endY1 = this.scrollY + clipOy + this.scrollOpen;
            this.sprScrollEnd.paint(g, endX0, endY0, 0);
            this.sprScrollEnd.paint(g, endX1, endY0, 1);
            this.sprScrollEnd.paint(g, endX0, endY1, 2);
            this.sprScrollEnd.paint(g, endX1, endY1, 3);
            Resources resources10 = Main.midlet.res;
            int endX2 = endX0 + Resources.GFX_SCROLL_END_WIDTH;
            Resources resources11 = Main.midlet.res;
            g.setClip(endX2, endY0, endX1 - endX2, Resources.GFX_SCROLL_END_HEIGHT + endY1);
            for (int x = endX2; x < endX1; x += Resources.GFX_SCROLL_CENTER_WIDTH) {
                this.sprScrollCenter.paint(g, x, endY0, 0);
                this.sprScrollCenter.paint(g, x, endY1, 1);
                Resources resources12 = Main.midlet.res;
            }
            clearClip(g);
            return;
        }
        paintBox(g);
    }

    private void paintTitle(Graphics g, String title, int y) {
        int titleWidth = this.font.stringWidth(title);
        int titleX = this.screenHCenter - (titleWidth >> 1);
        Resources resources = Main.midlet.res;
        int titleY = y + Resources.GFX_TITLE_BORDER_OY;
        Resources resources2 = Main.midlet.res;
        int i = Resources.GFX_TITLE_BORDER_WIDTH + titleX;
        Resources resources3 = Main.midlet.res;
        int borderX0 = i - Resources.GFX_TITLE_BORDER_OX;
        Resources resources4 = Main.midlet.res;
        int i2 = titleX + titleWidth + Resources.GFX_TITLE_BORDER_OX;
        Resources resources5 = Main.midlet.res;
        int borderX1 = i2 - Resources.GFX_TITLE_BORDER_WIDTH;
        Resources resources6 = Main.midlet.res;
        int i3 = Resources.GFX_TITLE_BORDER_HEIGHT + y;
        Resources resources7 = Main.midlet.res;
        int borderY1 = i3 - Resources.GFX_TITLE_BORDER_SIZE;
        this.font.drawString(g, title, titleX, titleY, 20);
        Sprite sprite = this.sprTitleBorder;
        Resources resources8 = Main.midlet.res;
        sprite.paint(g, borderX0 - Resources.GFX_TITLE_BORDER_WIDTH, y, 0);
        this.sprTitleBorder.paint(g, borderX1, y, 1);
        g.setColor(-14333070);
        Resources resources9 = Main.midlet.res;
        g.fillRect(borderX0, y, borderX1 - borderX0, Resources.GFX_TITLE_BORDER_SIZE);
        Resources resources10 = Main.midlet.res;
        g.fillRect(borderX0, borderY1, borderX1 - borderX0, Resources.GFX_TITLE_BORDER_SIZE);
        g.setColor(COLOR_TITLE_BORDER);
        Resources resources11 = Main.midlet.res;
        g.fillRect(borderX0, y + 1, borderX1 - borderX0, Resources.GFX_TITLE_BORDER_SIZE - 2);
        Resources resources12 = Main.midlet.res;
        g.fillRect(borderX0, borderY1 + 1, borderX1 - borderX0, Resources.GFX_TITLE_BORDER_SIZE - 2);
    }

    private void paintMenu(Graphics g) {
        paintMenu(g, false);
    }

    private void paintMenu(Graphics g, boolean Right) {
        int x;
        if (state == 50 && !Main.PREMIUM) {
            g.drawImage(this.invite, (this.screenWidth - 15) - this.invite.getWidth(), this.screenVCenter - (this.invite.getHeight() / 2), 20);
        }
        int handX = 0;
        int handY = 0;
        int y = this.menuY;
        if (this.title >= 0) {
            paintTitle(g, this.textMenu[this.title], y);
            Resources resources = Main.midlet.res;
            y += Resources.GFX_TITLE_BORDER_HEIGHT + 24;
        }
        for (int i = 0; i < this.menuSize; i++) {
            String item = getMenuItem(i);
            if (Right) {
                x = (this.screenHCenter + (this.screenHCenter / 2)) - (this.font.stringWidth(item) >> 1);
            } else {
                x = this.screenHCenter - (this.font.stringWidth(item) >> 1);
            }
            this.font.drawString(g, item, x, y, 20);
            if (i == this.menuCursor) {
                Resources resources2 = Main.midlet.res;
                handX = x + Resources.GFX_HAND_OX;
                Resources resources3 = Main.midlet.res;
                handY = y + Resources.GFX_HAND_OY;
            }
            y += this.font.lineSpacing + 20;
        }
        if (this.note >= 0) {
            renderText(g, this.font, this.textMenu[this.note], this.textFormat, -1, this.screenHCenter, y + 4, 1, false);
        }
        if (this.menuCursor >= 0) {
            g.drawImage(this.imgHand, handX, handY, 20);
            if (Main.midlet.res.HAS_CURSOR_ARM) {
                Resources resources4 = Main.midlet.res;
                int armY = handY + Resources.GFX_ARM_OY;
                int i2 = 0;
                int ay = armY;
                while (true) {
                    Resources resources5 = Main.midlet.res;
                    if (i2 < Resources.GFX_ARM_STRIPES.length) {
                        Resources resources6 = Main.midlet.res;
                        int h = Resources.GFX_ARM_STRIPES[i2];
                        Resources resources7 = Main.midlet.res;
                        g.setColor(Resources.COLORS_ARM[i2]);
                        g.fillRect(0, ay, handX, h);
                        ay += h;
                        i2++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private void paintText(Graphics g) {
        if (!Main.midlet.res.HAS_SCROLL || this.scrollOpen == this.scrollHeight) {
            if (Main.midlet.res.HAS_SCROLL) {
                textAreaPaint(g, TEXT_X, this.scrollY + 4, 1);
            } else {
                textAreaPaint(g, TEXT_X, this.boxY + 3 + 4, 1);
            }
            clearClip(g);
            Sprite sprU = this.sprSoftkeys;
            Sprite sprD = this.sprSoftkeys;
            if (isKeyPressed(1024)) {
                sprU = this.sprSoftkeysLit;
            }
            if (isKeyPressed(2048)) {
                sprD = this.sprSoftkeysLit;
            }
            sprU.paint(g, this.arrowUx, this.softkeysY, 6);
            sprD.paint(g, this.arrowDx, this.softkeysY, 5);
        }
    }

    private void paintGame(Graphics g) {
        g.translate(0, this.viewY);
        this.room.paint(g);
        g.translate(0, -this.viewY);
        g.setColor(COLOR_BORDER);
        g.fillRect(0, 0, this.screenWidth, this.viewY);
        g.fillRect(0, this.viewY + this.viewHeight, this.screenWidth, this.screenHeight - (this.viewY + this.viewHeight));
        int viewX = (this.screenWidth - Room.PIXEL_WIDTH) >> 1;
        if (viewX > 0) {
            g.fillRect(0, this.viewY, viewX, this.viewHeight);
            g.fillRect(this.screenWidth - viewX, this.viewY, viewX, this.viewHeight);
        }
    }

    public void paintBubble(Graphics g, int x, int y) {
        g.drawImage(this.imgBubble, x, y, 33);
    }

    private void paintStatus(Graphics g, int oy) {
        paintHearts(g, oy);
        paintGems(g, oy);
        if (this.dungeon < 4) {
            this.sprStatusIcons.paint(g, STATUS_KEY_X, oy + 3, 4);
            int[] keys = {this.dungeonKeys[this.dungeon]};
            Resources resources = Main.midlet.res;
            paintDigits(g, keys, 230 - Resources.GFX_STATUS_ICON_SPACING, STATUS_DIGITS_Y + oy);
        }
        if (oy == 0 && hasMultiWeapons() && (this.items & WEAPONS[this.weapon]) > 0) {
            Actor.paintSprite(g, WEAPONS_TYPES[this.weapon], this.screenWidth - (Main.HIGH ? 50 : 27), this.sprStatusIcons.getHeight() + 5);
        }
    }

    private void paintHearts(Graphics g, int oy) {
        int f;
        int i = 0;
        int x = 8;
        while (i < this.lifeMax) {
            if (i + 1 < this.life) {
                f = 0;
            } else {
                f = i < this.life ? 1 : 2;
            }
            this.sprStatusIcons.paint(g, x, oy + 3, f);
            Resources resources = Main.midlet.res;
            int i2 = Resources.GFX_STATUS_ICON_WIDTH;
            Resources resources2 = Main.midlet.res;
            x += i2 + Resources.GFX_STATUS_ICON_SPACING;
            i += 2;
        }
    }

    private void paintGems(Graphics g, int oy) {
        int x = (this.screenWidth - this.sprStatusIcons.getWidth()) - 8;
        this.sprStatusIcons.paint(g, x, oy + 3, 3);
        int[] gems = getDigits(this.gems, 3);
        Resources resources = Main.midlet.res;
        paintDigits(g, gems, x - Resources.GFX_STATUS_ICON_SPACING, STATUS_DIGITS_Y + oy);
    }

    private void paintDigits(Graphics g, int[] digits, int x, int y) {
        int i = digits.length;
        while (true) {
            i--;
            if (i >= 0) {
                int n = digits[i];
                Resources resources = Main.midlet.res;
                int w = Resources.GFX_STATUS_DIGIT_WIDTHS[n];
                x += 1 - w;
                this.sprStatusDigits.paint(g, x, y, n);
            } else {
                return;
            }
        }
    }

    private void paintStatusScreen(Graphics g, boolean flash) {
        int type;
        paintBox(g);
        int titleHeight = this.font.lineSpacing + 4;
        g.setColor(COLOR_MAP_EMPTY);
        this.font.drawString(g, this.textMisc[6], this.screenHCenter, this.itemsY, 17);
        int x = this.itemsX;
        int y = this.itemsY + titleHeight;
        for (int i = 0; i < 7; i++) {
            g.fillRect(x, y, STATUS_BOX_WIDTH, STATUS_BOX_HEIGHT);
            boolean hasItem = hasItem(1 << (i + 1));
            if (hasItem && (type = ITEM_TYPES[i]) >= 0) {
                Actor.paintSprite(g, type, x + 2, y + 2);
            }
            x += STATUS_BOX_WIDTH + this.itemsSpacing;
        }
        if (this.dungeon >= 4) {
            if (Main.midlet.res.HAS_ILLUSTRATIONS) {
                int i2 = (((this.itemsY + titleHeight) + STATUS_BOX_WIDTH) + this.menuY) >> 1;
                return;
            }
            return;
        }
        int x2 = this.objectsX;
        int y2 = this.mapY + titleHeight + this.objectsSpacing;
        for (int i3 = 0; i3 < 2; i3++) {
            g.fillRect(x2, y2, STATUS_BOX_WIDTH, STATUS_BOX_HEIGHT);
            boolean hasObject = hasObject(1 << i3);
            if (hasObject) {
                int type2 = OBJECT_TYPES[i3];
                if (type2 < 0) {
                    type2 = DUNGEON_KEYS[this.dungeon];
                }
                Actor.paintSprite(g, type2, x2 + 2, y2 + 2);
            }
            y2 += STATUS_BOX_HEIGHT + this.objectsSpacing;
        }
        boolean hasMap = hasObject(1);
        this.font.drawString(g, this.textMisc[7], (MAP_WIDTH / 2) + 15, this.mapY, 17);
        int col = 0;
        int x3 = this.mapX;
        int y3 = this.mapY + titleHeight;
        for (int r = 0; r < 49; r++) {
            byte room = dungeonMap[r];
            int color = COLOR_MAP_EMPTY;
            boolean keyTaken = false;
            boolean chestOpened = false;
            if (room >= 0) {
                int id = dungeonRooms[r] & Constants.UNKNOWN;
                boolean hasVisited = checkFlag(id, 31);
                chestOpened = checkFlag(id, 24);
                keyTaken = checkFlag(id, 23);
                boolean isCurrent = id == this.roomId;
                if (id == this.roomId && flash) {
                    color = COLOR_MAP_FLASH;
                } else if (isCurrent || (hasVisited && hasMap)) {
                    color = COLOR_MAP_VISITED;
                } else if (hasMap) {
                    color = COLOR_MAP_ROOM;
                }
            }
            g.setColor(color);
            Resources resources = Main.midlet.res;
            int i4 = Resources.GFX_MAP_ROOM_INSET + x3;
            Resources resources2 = Main.midlet.res;
            int i5 = Resources.GFX_MAP_ROOM_INSET + y3;
            Resources resources3 = Main.midlet.res;
            int i6 = Resources.GFX_MAP_ROOM_WIDTH;
            Resources resources4 = Main.midlet.res;
            g.fillRect(i4, i5, i6, Resources.GFX_MAP_ROOM_HEIGHT);
            if (room >= 0 && hasMap) {
                if ((room & 1) > 0) {
                    Resources resources5 = Main.midlet.res;
                    int i7 = Resources.GFX_MAP_DOOR_OX + x3;
                    Resources resources6 = Main.midlet.res;
                    int i8 = Resources.GFX_MAP_DOOR_WIDTH;
                    Resources resources7 = Main.midlet.res;
                    g.fillRect(i7, y3, i8, Resources.GFX_MAP_ROOM_INSET);
                }
                if ((room & 2) > 0) {
                    Resources resources8 = Main.midlet.res;
                    int i9 = Resources.GFX_MAP_DOOR_OX + x3;
                    Resources resources9 = Main.midlet.res;
                    int i10 = Resources.GFX_MAP_ROOM_INSET + y3;
                    Resources resources10 = Main.midlet.res;
                    int i11 = i10 + Resources.GFX_MAP_ROOM_HEIGHT;
                    Resources resources11 = Main.midlet.res;
                    int i12 = Resources.GFX_MAP_DOOR_WIDTH;
                    Resources resources12 = Main.midlet.res;
                    g.fillRect(i9, i11, i12, Resources.GFX_MAP_ROOM_INSET);
                }
                if ((room & 8) > 0) {
                    Resources resources13 = Main.midlet.res;
                    int i13 = Resources.GFX_MAP_DOOR_OY + y3;
                    Resources resources14 = Main.midlet.res;
                    int i14 = Resources.GFX_MAP_ROOM_INSET;
                    Resources resources15 = Main.midlet.res;
                    g.fillRect(x3, i13, i14, Resources.GFX_MAP_DOOR_WIDTH);
                }
                if ((room & 4) > 0) {
                    Resources resources16 = Main.midlet.res;
                    int i15 = Resources.GFX_MAP_ROOM_INSET + x3;
                    Resources resources17 = Main.midlet.res;
                    int i16 = i15 + Resources.GFX_MAP_ROOM_WIDTH;
                    Resources resources18 = Main.midlet.res;
                    int i17 = Resources.GFX_MAP_DOOR_OY + y3;
                    Resources resources19 = Main.midlet.res;
                    int i18 = Resources.GFX_MAP_ROOM_INSET;
                    Resources resources20 = Main.midlet.res;
                    g.fillRect(i16, i17, i18, Resources.GFX_MAP_DOOR_WIDTH);
                }
                Resources resources21 = Main.midlet.res;
                int iconX = x3 + (Resources.GFX_MAP_GRID_WIDTH >> 1);
                Resources resources22 = Main.midlet.res;
                int iconY = y3 + (Resources.GFX_MAP_GRID_HEIGHT >> 1);
                if ((room & 16) > 0 && !chestOpened) {
                    this.sprMapIcons.paint(g, iconX, iconY, 0, 3);
                } else if ((room & 32) > 0 && !keyTaken) {
                    this.sprMapIcons.paint(g, iconX, iconY, 1, 3);
                } else if ((room & 64) > 0 && !isPrincessRescued(this.dungeon)) {
                    this.sprMapIcons.paint(g, iconX, iconY, 2, 3);
                }
            }
            Resources resources23 = Main.midlet.res;
            x3 += Resources.GFX_MAP_GRID_WIDTH;
            col++;
            if (col >= 7) {
                col = 0;
                x3 = this.mapX;
                Resources resources24 = Main.midlet.res;
                y3 += Resources.GFX_MAP_GRID_HEIGHT;
            }
        }
    }

    private void paintBox(Graphics g) {
        g.setColor(COLOR_BOX);
        g.fillRect(this.boxX, this.boxY, this.boxWidth, this.boxHeight);
        g.setColor(COLOR_BOX_SHADOW);
        g.drawRect(this.boxX, this.boxY, this.boxWidth - 1, this.boxHeight - 1);
        g.setColor(-14333070);
        g.drawRect(this.boxX + 2, this.boxY + 2, this.boxWidth - 5, this.boxHeight - 5);
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void inputEvent(int type, int selection) {
        boolean closeOnSelect = true;
        if (Main.midlet.res.HAS_SCROLL) {
            if (type != 5 || state == 10 || this.menuId == 3 || (this.menuId == 7 && selection != 1)) {
                closeOnSelect = false;
            }
            if (closeOnSelect || type == 7 || type == 12) {
                exitInput();
                clearState(state);
                clearKeyState();
                this.eventPending = type;
                this.eventSelect = selection;
                this.scrollDir = -28;
                return;
            }
        }
        actionEvents(type, selection);
    }

    public void repeatEvent() {
        actionEvents(this.eventPending, this.eventSelect);
    }

    public void handleTouch() {
        switch (state) {
            case 3:
                if (this.touchShop != null) {
                    for (int i = 0; i < 4; i++) {
                        if (isTouchPressed(this.touchShop[i]) && i != this.cursor) {
                            moveCursor(i - this.cursor);
                        }
                    }
                }
                break;
        }
    }

    public void preloadUI() {
        this.font = new CustomFont(Main.midlet.res.FILENAME_FONT);
        this.fontWhite = new CustomFont(Main.midlet.res.FILENAME_FONT_W);
        createStream("/preload.bin");
        if (Main.midlet.res.HAS_MENU_BG) {
            pullImage();
            this.imgBgLeft = Image.createImage("/leftc.png");
            this.imgBgRight = Image.createImage("/rightc.png");
            this.imgBgFinn = Image.createImage("/bottom.png");
            pullImage();
        }
        Resources resources = Main.midlet.res;
        int i = Resources.GFX_TITLE_BORDER_WIDTH;
        Resources resources2 = Main.midlet.res;
        this.sprTitleBorder = pullSprite(i, Resources.GFX_TITLE_BORDER_HEIGHT);
        if (Main.midlet.res.HAS_SCROLL) {
            Resources resources3 = Main.midlet.res;
            int i2 = Resources.GFX_SCROLL_END_WIDTH;
            Resources resources4 = Main.midlet.res;
            this.sprScrollEnd = pullSprite(i2, Resources.GFX_SCROLL_END_HEIGHT);
            Resources resources5 = Main.midlet.res;
            int i3 = Resources.GFX_SCROLL_CENTER_WIDTH;
            Resources resources6 = Main.midlet.res;
            this.sprScrollCenter = pullSprite(i3, Resources.GFX_SCROLL_CENTER_HEIGHT);
            Resources resources7 = Main.midlet.res;
            int i4 = Resources.GFX_SCROLL_SIDE_WIDTH;
            Resources resources8 = Main.midlet.res;
            this.sprScrollSide = pullSprite(i4, Resources.GFX_SCROLL_SIDE_HEIGHT);
        }
        this.imgHand = pullImage();
        Resources resources9 = Main.midlet.res;
        int i5 = Resources.GFX_SOFTKEY_WIDTH;
        Resources resources10 = Main.midlet.res;
        this.sprSoftkeys = pullSprite(i5, Resources.GFX_SOFTKEY_HEIGHT);
        Resources resources11 = Main.midlet.res;
        int i6 = Resources.GFX_SOFTKEY_WIDTH;
        Resources resources12 = Main.midlet.res;
        this.sprSoftkeysLit = pullSprite(i6, Resources.GFX_SOFTKEY_HEIGHT);
        closeStream();
        setScreenSize();
        int i7 = this.screenHeight;
        Resources resources13 = Main.midlet.res;
        this.softkeysY = i7 - (Resources.GFX_SOFTKEY_HEIGHT + 6);
        int i8 = this.screenHCenter;
        Resources resources14 = Main.midlet.res;
        this.arrowUx = i8 - (Resources.GFX_SOFTKEY_WIDTH + 0);
        this.arrowDx = this.screenHCenter + 0;
        this.displayHeight = this.softkeysY - 1;
        this.displayVCenter = this.displayHeight >> 1;
        this.viewHeight = Room.VIEW_HEIGHT;
        this.viewY = this.screenHeight - this.viewHeight;
        Resources resources15 = Main.midlet.res;
        int statusBorder = Resources.GFX_STATUS_ICON_HEIGHT + 6;
        this.viewY = statusBorder;
        this.viewHeight = Room.PIXEL_HEIGHT;
        this.viewEnd = this.viewY + this.viewHeight;
        this.textWidth = this.screenWidth - (TEXT_X << 1);
        this.talkWidth = this.screenWidth - 28;
        this.talkHeight = this.font.getLinesHeight(5);
        this.viewEnd += this.viewY >> 1;
        for (int w = 0; w < this.screenWidth; w += 36) {
            this.transNumCols++;
        }
        for (int h = 0; h < this.viewEnd; h += 36) {
            this.transNumRows++;
        }
        this.transOx = (this.screenWidth - (this.transNumCols * 36)) >> 1;
        this.transOy = (this.viewEnd - (this.transNumRows * 36)) >> 1;
    }

    public void loadUI() {
        createStream("/ui.bin");
        Resources resources = Main.midlet.res;
        int i = Resources.GFX_LOGO_WIDTH;
        Resources resources2 = Main.midlet.res;
        this.sprMenuLogo = pullSprite(i, Resources.GFX_LOGO_HEIGHT);
        Resources resources3 = Main.midlet.res;
        int i2 = Resources.GFX_STATUS_ICON_WIDTH;
        Resources resources4 = Main.midlet.res;
        this.sprStatusIcons = pullSprite(i2, Resources.GFX_STATUS_ICON_HEIGHT);
        Resources resources5 = Main.midlet.res;
        int i3 = Resources.GFX_STATUS_DIGIT_WIDTH;
        Resources resources6 = Main.midlet.res;
        this.sprStatusDigits = pullSprite(i3, Resources.GFX_STATUS_DIGIT_HEIGHT);
        this.imgStatusBracket = pullImage();
        Resources resources7 = Main.midlet.res;
        int i4 = Resources.GFX_OBJECT_SIZE;
        Resources resources8 = Main.midlet.res;
        this.sprWeapons = pullSprite(i4, Resources.GFX_OBJECT_SIZE);
        Resources resources9 = Main.midlet.res;
        int i5 = Resources.GFX_MAP_ICON_WIDTH;
        Resources resources10 = Main.midlet.res;
        this.sprMapIcons = pullSprite(i5, Resources.GFX_MAP_ICON_HEIGHT);
        Resources resources11 = Main.midlet.res;
        int i6 = Resources.GFX_PORTRAIT_WIDTH;
        Resources resources12 = Main.midlet.res;
        this.sprPortraits = pullSprite(i6, Resources.GFX_PORTRAIT_HEIGHT);
        this.imgBubble = pullImage();
        if (Main.midlet.res.HAS_ILLUSTRATIONS) {
            this.imgOverworld = pullImage();
            this.imgRestart = pullImage();
        }
        this.dialogue = pullByteArray();
        Image action = Image.createImage("/action.png");
        Image omni = Image.createImage("/switch.png");
        this.sprTouchAction = new Sprite(action, action.getWidth(), action.getWidth());
        Resources resources13 = Main.midlet.res;
        int i7 = Resources.GFX_SOFTKEY_WIDTH;
        Resources resources14 = Main.midlet.res;
        this.sprTouchSwitch = new Sprite(omni, i7, Resources.GFX_SOFTKEY_WIDTH);
        closeStream();
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public String[] pullStrings(String filename) {
        if (filename != "/locales.bin" && filename != "/langs.bin" && this.locale != null) {
            filename = "/" + this.locale + "_" + filename.substring(1);
        }
        return super.pullStrings(filename);
    }

    public void loadText() {
        garbageCollect();
        this.textMenu = pullStrings("/menu.bin");
        this.textMisc = pullStrings("/misc.bin");
        this.textHelp = pullStrings("/help.bin");
        this.textDialogue = pullStrings("/dialogue.bin");
        String vNumber = VERSION;
        if (VERSION == 0) {
            vNumber = this.parent.getAppProperty("MIDlet-Version");
        }
        if (this.textHelp != null) {
            this.textHelp[0] = replace(this.textHelp[0], "%version%", vNumber);
        }
    }
}
