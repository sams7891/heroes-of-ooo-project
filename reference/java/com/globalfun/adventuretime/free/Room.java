package com.globalfun.adventuretime.free;

import com.flurry.android.Constants;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class Room {
    private static final int ACTION_APPEAR = 1;
    private static final int ACTION_FALL = 2;
    private static final int ACTION_NULL = 0;
    private static final int[] ADIR_X;
    private static final int[] ADIR_Y;
    private static final int[] COLOR_BG;
    private static final byte[] COMMANDS_OBJECT;
    private static final byte[] COMMANDS_TRIGGERED;
    private static final int COMMAND_ACTION = 3;
    private static final int COMMAND_FLAG = 4;
    private static final int COMMAND_LENGTH = 5;
    private static final byte[] COMMAND_OBJECT;
    private static final int COMMAND_TX = 1;
    private static final int COMMAND_TY = 2;
    private static final int COMMAND_TYPE = 0;
    private static final int COM_TYPE_BOMB = 14;
    private static final int COM_TYPE_BOSS_KEY = 13;
    private static final int COM_TYPE_BOW = 15;
    private static final int COM_TYPE_CHEST = 7;
    private static final int COM_TYPE_DOORS = 0;
    private static final int COM_TYPE_ENTRANCE = 18;
    private static final int COM_TYPE_FLOOR = 20;
    private static final int COM_TYPE_GEM = 8;
    private static final int COM_TYPE_HAMMER = 12;
    private static final int COM_TYPE_HEART = 10;
    private static final int COM_TYPE_KEY = 9;
    private static final int COM_TYPE_MAP = 11;
    private static final int COM_TYPE_MONSTER = 6;
    private static final int COM_TYPE_START = 19;
    private static final int COM_TYPE_SUPER_GEM = 17;
    private static final int COM_TYPE_SWITCH = 2;
    private static final int COM_TYPE_TALK = 1;
    private static final int COM_TYPE_TILE = 5;
    private static final int COM_TYPE_TRIGGER_H = 3;
    private static final int COM_TYPE_TRIGGER_V = 4;
    private static final int COM_TYPE_WAND = 16;
    private static final int DIR_EAST = 2;
    private static final int DIR_NONE = -1;
    private static final int DIR_NORTH = 0;
    private static final int DIR_SOUTH = 1;
    static final int DIR_WEST = 3;
    private static final int[] DIR_X;
    private static final int[] DIR_Y;
    private static final byte[] DOORS;
    private static final byte[] DOORS_CLOSED;
    private static final byte[] DOORS_LOCKED;
    private static final byte DOOR_BOSS = 20;
    private static final byte DOOR_EAST = 17;
    private static final byte DOOR_ENTRANCE = 19;
    private static final byte DOOR_GATE = 29;
    public static final int DOOR_MAX = 36;
    public static final int DOOR_MIN = 12;
    private static final byte DOOR_NORTH = 15;
    private static final byte DOOR_SOUTH = 16;
    private static final byte DOOR_WEST = 18;
    public static final int DOOR_WIDTH = 24;
    private static final int[] DUNGEON_KEYS;
    public static final int EXIT_NORTH = 20;
    private static final int[] FLAGS_UNLOCK;
    private static final int FLAG_CLEARED = 62;
    private static final int HEIGHT = 7;
    public static final int INSIDE_NORTH = 8;
    private static final int LEDGE_EAST = 2;
    private static final int LEDGE_NORTH = 1;
    private static final int LEDGE_WEST = 4;
    public static final int LOGIC_HEIGHT = 336;
    public static final int LOGIC_WIDTH = 336;
    public static final int MONSTER_GRID = 6;
    private static final int MONSTER_OX = 16;
    private static final int MONSTER_OY = 40;
    private static final int NUM_DIRS = 4;
    public static final int NUM_MONSTERS = 8;
    public static final int NUM_NPCS = 3;
    private static final int NUM_ROOM_SWAPS = 10;
    private static final int NUM_TALK_SLOTS = 7;
    public static final int NUM_TRAPS = 3;
    public static final int OBJECTS_AREA = 784;
    private static final int OBJECT_COLS = 28;
    public static final int OBJECT_GRID = 12;
    private static final int OBJECT_ROWS = 28;
    private static final int OVERWORLD_COMPLETE = 21;
    private static final int OVERWORLD_LOCKED = 20;
    public static final int PIXEL_HEIGHT;
    public static final int PIXEL_WIDTH;
    private static final byte[] PRINCESSES;
    private static final int ROOM_ABYSS = 2;
    public static final int ROOM_AREA = 49;
    public static final int ROOM_GRID = 48;
    private static final int[] ROOM_SWAP_X;
    private static final int[] ROOM_SWAP_Y;
    private static final int SHADOW_N = 1;
    private static final int SHADOW_NW = 4;
    private static final int SHADOW_W = 2;
    public static final int TALK_BOSS = 5;
    public static final int TALK_ENTER = 0;
    public static final int TALK_GOSSIP = 3;
    public static final int TALK_HEALER = 1;
    public static final int TALK_PRINCESS = 6;
    public static final int TALK_SAVED = 4;
    public static final int TALK_SHOP = 2;
    private static final byte[] TALK_TYPES;
    public static final int TILES_AREA = 196;
    private static final int TILE_ABYSS = 0;
    private static final int TILE_COLS = 14;
    public static final int TILE_GRID = 24;
    private static final int TILE_ROWS = 14;
    public static final int VIEW_HEIGHT;
    public static final int VIEW_WIDTH;
    private static final int WIDTH = 7;
    private byte[] commands;
    private boolean doorsClosed;
    private int doorsClosedDir;
    private int dungeon;
    private Engine engine;
    private int entranceId;
    private int entranceX;
    private int entranceY;
    private int focusHeight;
    private int focusWidth;
    private int focusX;
    private int focusY;
    private boolean isOverworld;
    private int talkAction;
    private int talkPending;
    public int talkSpeaker;
    private int tempFlags;
    private int triggerFlag;
    private int triggerH;
    private int triggerV;
    private int viewHeight;
    private int viewMaxX;
    private int viewMaxY;
    private int viewMinX;
    private int viewMinY;
    private int viewWidth;
    private int viewX;
    private int viewY;
    private byte[] mapRoom = new byte[49];
    private byte[] mapTiles = new byte[TILES_AREA];
    private byte[] mapShadows = new byte[TILES_AREA];
    private byte[] mapAbyss = new byte[TILES_AREA];
    private byte[] mapObjects = new byte[OBJECTS_AREA];
    private int[] talkSlots = new int[7];

    static {
        Resources resources = Main.midlet.res;
        PIXEL_WIDTH = Resources.GFX_ROOM_SIZE * 7;
        Resources resources2 = Main.midlet.res;
        PIXEL_HEIGHT = Resources.GFX_ROOM_SIZE * 7;
        int i = PIXEL_WIDTH;
        Resources resources3 = Main.midlet.res;
        VIEW_WIDTH = i - (Resources.GFX_ROOM_BORDER << 1);
        int i2 = PIXEL_HEIGHT;
        Resources resources4 = Main.midlet.res;
        VIEW_HEIGHT = i2 - (Resources.GFX_ROOM_BORDER << 1);
        DIR_X = Actor.DIR_X;
        DIR_Y = Actor.DIR_Y;
        ADIR_X = Actor.ADIR_X;
        ADIR_Y = Actor.ADIR_Y;
        ROOM_SWAP_X = new int[]{0, 1, -1, 0, 1, 2, -1, 0, 1, 2, 0, 1};
        ROOM_SWAP_Y = new int[]{-1, -1, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2};
        DOORS = new byte[]{DOOR_NORTH, DOOR_SOUTH, DOOR_EAST, DOOR_WEST, DOOR_ENTRANCE};
        DOORS_LOCKED = new byte[]{21, 22, 23, 24};
        DOORS_CLOSED = new byte[]{25, 26, 27, 28};
        FLAGS_UNLOCK = new int[]{29, 28, 27, 26};
        COMMANDS_TRIGGERED = new byte[]{0, 5, 7, 9, 8, DOOR_BOSS};
        COMMANDS_OBJECT = new byte[]{7, 8, DOOR_EAST, 9, 10, 11, 12, 13, 14, DOOR_NORTH, DOOR_SOUTH};
        COMMAND_OBJECT = new byte[]{27, 37, 36, 38, 35, 41, 43, 51, 44, 46, 47};
        DUNGEON_KEYS = UI.DUNGEON_KEYS;
        TALK_TYPES = new byte[]{0, 3, 2, 4, 5, 6, 7, 8};
        PRINCESSES = new byte[]{5, 6, 7, 8};
        COLOR_BG = new int[]{-11127737, -13879238, -14606819, -12502709, -16777216};
    }

    public Room(Engine engine) {
        this.engine = engine;
    }

    public void load(GameCanvas parent, int dungeon, boolean isOverworld) throws IOException {
        int type;
        this.dungeon = dungeon;
        this.isOverworld = isOverworld;
        int i = TILES_AREA;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            this.mapShadows[i] = 0;
            this.mapAbyss[i] = -1;
        }
        int i2 = OBJECTS_AREA;
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            } else {
                this.mapObjects[i2] = -1;
            }
        }
        Actor.start(this);
        this.tempFlags = 0;
        this.entranceId = -1;
        this.triggerH = -1;
        this.triggerV = -1;
        this.doorsClosed = false;
        this.doorsClosedDir = 0;
        int i3 = 7;
        while (true) {
            i3--;
            if (i3 < 0) {
                break;
            } else {
                this.talkSlots[i3] = -1;
            }
        }
        this.talkPending = -1;
        this.talkAction = -1;
        parent.readFully(this.mapRoom);
        parent.pullInt();
        parent.readFully(this.mapTiles);
        this.commands = parent.pullByteArray();
        processCommands(true);
        int datalen = parent.pullInt();
        for (int i4 = 0; i4 < datalen; i4 += 3) {
            int type2 = parent.pull();
            int tx = parent.pull();
            int ty = parent.pull();
            int x = (tx * 6) + 16;
            int y = (ty * 6) + 40;
            int dir = 1;
            if (type2 < 7) {
                type = type2 + 2;
            } else {
                int type3 = type2 - 7;
                dir = type3 % 4;
                type = (type3 / 4) + 9;
            }
            int princess = getIndex(type, PRINCESSES);
            if (princess < 0 || this.engine.isPrincessRescued(princess)) {
                Actor monster = Actor.addActor(type);
                monster.setLocation(x, y);
                monster.setDirection(dir);
            }
        }
        parent.pullInt();
        int num = parent.pull();
        for (int id = 0; id < num; id++) {
            int tx2 = parent.pull();
            int ty2 = parent.pull();
            Actor object = Actor.addObject(parent.pull() + 24, tx2, ty2);
            int com2 = getCommand(tx2, ty2, -1);
            if (com2 >= 0) {
                object.setCommand(com2);
            }
        }
        parent.closeStream();
        if (!isOverworld) {
            if (Main.midlet.res.HAS_DETAILED_ABYSS) {
                for (int ty3 = 0; ty3 < 14; ty3++) {
                    for (int tx3 = 0; tx3 < 14; tx3++) {
                        setAbyss(tx3, ty3);
                    }
                }
            }
            if (Main.midlet.res.HAS_ROOM_SHADOWS) {
                for (int ry = 0; ry < 7; ry++) {
                    for (int rx = 0; rx < 7; rx++) {
                        setShadow(rx, ry);
                    }
                }
            }
        }
        int roomX0 = PIXEL_WIDTH;
        int roomY0 = PIXEL_HEIGHT;
        int roomX1 = 0;
        int roomY1 = 0;
        int row = 0;
        int col = 0;
        for (int i5 = 0; i5 < 49; i5++) {
            int room = this.mapRoom[i5];
            Resources resources = Main.midlet.res;
            int x2 = col * Resources.GFX_ROOM_SIZE;
            Resources resources2 = Main.midlet.res;
            int y2 = row * Resources.GFX_ROOM_SIZE;
            if (room == 0 || isOverworld) {
                if (x2 < roomX0) {
                    roomX0 = x2;
                }
                if (y2 < roomY0) {
                    roomY0 = y2;
                }
                Resources resources3 = Main.midlet.res;
                if (Resources.GFX_ROOM_SIZE + x2 > roomX1) {
                    Resources resources4 = Main.midlet.res;
                    roomX1 = x2 + Resources.GFX_ROOM_SIZE;
                }
                Resources resources5 = Main.midlet.res;
                if (Resources.GFX_ROOM_SIZE + y2 > roomY1) {
                    Resources resources6 = Main.midlet.res;
                    roomY1 = y2 + Resources.GFX_ROOM_SIZE;
                }
            } else if (room > 0) {
                Resources resources7 = Main.midlet.res;
                if (Resources.GFX_ROOM_BORDER + x2 < roomX0) {
                    Resources resources8 = Main.midlet.res;
                    roomX0 = x2 + Resources.GFX_ROOM_BORDER;
                }
                Resources resources9 = Main.midlet.res;
                if (Resources.GFX_ROOM_BORDER + y2 < roomY0) {
                    Resources resources10 = Main.midlet.res;
                    roomY0 = y2 + Resources.GFX_ROOM_BORDER;
                }
                Resources resources11 = Main.midlet.res;
                int i6 = Resources.GFX_ROOM_SIZE + x2;
                Resources resources12 = Main.midlet.res;
                if (i6 - Resources.GFX_ROOM_BORDER > roomX1) {
                    Resources resources13 = Main.midlet.res;
                    int i7 = Resources.GFX_ROOM_SIZE + x2;
                    Resources resources14 = Main.midlet.res;
                    roomX1 = i7 - Resources.GFX_ROOM_BORDER;
                }
                Resources resources15 = Main.midlet.res;
                int i8 = Resources.GFX_ROOM_SIZE + y2;
                Resources resources16 = Main.midlet.res;
                if (i8 - Resources.GFX_ROOM_BORDER > roomY1) {
                    Resources resources17 = Main.midlet.res;
                    int i9 = Resources.GFX_ROOM_SIZE + y2;
                    Resources resources18 = Main.midlet.res;
                    roomY1 = i9 - Resources.GFX_ROOM_BORDER;
                }
            }
            if (room == 20) {
                boolean unlocked = this.engine.checkFlag(29);
                if (unlocked) {
                    this.mapRoom[i5] = DOOR_NORTH;
                }
            } else if (room == 29) {
                boolean unlocked2 = this.engine.checkFlag(30);
                if (unlocked2) {
                    this.mapRoom[i5] = DOOR_NORTH;
                }
            }
            int locked = getIndex(room, DOORS_LOCKED);
            if (locked >= 0) {
                boolean unlocked3 = this.engine.checkFlag(FLAGS_UNLOCK[locked]);
                if (unlocked3) {
                    this.mapRoom[i5] = DOORS[locked];
                }
            }
            col++;
            if (col >= 7) {
                col = 0;
                row++;
            }
        }
        this.viewMinX = roomX0;
        this.viewMinY = roomY0;
        this.viewMaxX = roomX1 - this.viewWidth;
        this.viewMaxY = roomY1 - this.viewHeight;
        if (this.viewMaxX < this.viewMinX) {
            this.viewMaxX = (this.viewMaxX + this.viewMinX) >> 1;
            this.viewMinX = this.viewMaxX;
        }
        if (this.viewMaxY < this.viewMinY) {
            this.viewMaxY = (this.viewMaxY + this.viewMinY) >> 1;
            this.viewMinY = this.viewMaxY;
        }
        Actor.addAll();
    }

    private boolean isAbyss(int tileX, int tileY) {
        if (tileX < 0 || tileX >= 14 || tileY < 0 || tileY >= 14) {
            return false;
        }
        int tileIndex = tileX + (tileY * 14);
        if (this.mapTiles[tileIndex] == 0) {
            return true;
        }
        int roomX = tileX >> 1;
        int roomY = tileY >> 1;
        int roomIndex = roomX + (roomY * 7);
        return this.mapRoom[roomIndex] == 2;
    }

    private void setAbyss(int tileX, int tileY) {
        if (tileX >= 0 && tileX < 14 && tileY >= 0 && tileY < 14) {
            int tileIndex = tileX + (tileY * 14);
            if (!isAbyss(tileX, tileY)) {
                this.mapAbyss[tileIndex] = -1;
                return;
            }
            int abyss = 0;
            if (tileY > 0 && !isAbyss(tileX, tileY - 1)) {
                abyss = 0 | 1;
            }
            if (tileX > 0 && !isAbyss(tileX - 1, tileY)) {
                abyss |= 4;
            }
            if (tileX + 1 < 14 && !isAbyss(tileX + 1, tileY)) {
                abyss |= 2;
            }
            this.mapAbyss[tileIndex] = (byte) abyss;
        }
    }

    private void setShadow(int roomX, int roomY) {
        int nw = 0;
        int roomIndex = roomX + (roomY * 7);
        if (this.mapRoom[roomIndex] == 0) {
            int tileIndex = (roomX << 1) + ((roomY * 7) << 2);
            int n = roomY <= 0 ? 0 : this.mapRoom[roomIndex - 7];
            if (n > 2) {
                byte[] bArr = this.mapShadows;
                bArr[tileIndex] = (byte) (bArr[tileIndex] | 1);
                byte[] bArr2 = this.mapShadows;
                int i = tileIndex + 1;
                bArr2[i] = (byte) (bArr2[i] | 5);
                if (roomX == 0) {
                    byte[] bArr3 = this.mapShadows;
                    bArr3[tileIndex] = (byte) (bArr3[tileIndex] | 4);
                }
            }
            int w = roomX <= 0 ? 0 : this.mapRoom[roomIndex - 1];
            if (w > 2) {
                byte[] bArr4 = this.mapShadows;
                bArr4[tileIndex] = (byte) (bArr4[tileIndex] | 2);
                byte[] bArr5 = this.mapShadows;
                int i2 = tileIndex + 14;
                bArr5[i2] = (byte) (bArr5[i2] | 6);
            }
            if (roomX > 0 && roomY > 0) {
                nw = this.mapRoom[roomIndex - 8];
            }
            if (nw > 2) {
                byte[] bArr6 = this.mapShadows;
                bArr6[tileIndex] = (byte) (bArr6[tileIndex] | 4);
            }
        }
    }

    public void enter(int dir, int position, boolean atDoor, boolean isOverworld) {
        int x;
        int y;
        Actor finn = Actor.addActor(0);
        if (dir == -1) {
            int x2 = this.entranceX * 24;
            int y2 = this.entranceY * 24;
            if (this.entranceId < 0) {
                x = x2 + 12;
                y = y2 + 12;
            } else {
                x = x2 + 24;
                y = y2 + 72;
            }
            finn.enterRoom(x, y);
        } else {
            if (position < 0) {
                position = 24;
                int index = 0;
                int step = 0;
                switch (dir) {
                    case 0:
                        index = 42;
                        step = 1;
                        break;
                    case 1:
                        index = 0;
                        step = 1;
                        break;
                    case 2:
                        index = 0;
                        step = 7;
                        break;
                    case 3:
                        index = 6;
                        step = 7;
                        break;
                }
                int i = index;
                while (true) {
                    byte room = this.mapRoom[i];
                    if (dir == 1 && room == 20) {
                        byte[] bArr = this.mapRoom;
                        room = DOOR_NORTH;
                        bArr[i] = DOOR_NORTH;
                    }
                    if (!isType(room, DOORS)) {
                        i += step;
                        position += 48;
                    }
                }
            }
            int x3 = position;
            int y3 = position;
            switch (dir) {
                case 0:
                    y3 = 335;
                    break;
                case 1:
                    y3 = 0;
                    break;
                case 2:
                    x3 = 0;
                    break;
                case 3:
                    x3 = 335;
                    break;
            }
            int roomX = x3 / 48;
            int roomY = y3 / 48;
            int roomIndex = roomX + (roomY * 7);
            boolean isDoor = isType(this.mapRoom[roomIndex], DOORS);
            if (isDoor) {
                finn.enterDoor(dir, (roomX * 48) + 24, (roomY * 48) + 24, atDoor);
            } else {
                finn.enterRoom(dir, x3, y3);
            }
        }
        focus(finn.px, finn.py, true);
        if (isOverworld) {
            if (dir == -1) {
                dir = 1;
            }
            finn.addJake(dir);
        }
    }

    public void exit(int dir, int x, int y) {
        boolean complete = dir == 0 && this.engine.isInBossRoom();
        if (complete) {
            this.engine.completeDungeon();
        } else if (dir < 4) {
            int position = (ADIR_X[dir] * y) + (ADIR_Y[dir] * x);
            this.engine.exitRoom(dir, position);
        } else {
            this.engine.exitDungeon();
        }
    }

    public void exitToDungeon() {
        this.engine.exitOverworld(this.entranceId);
    }

    public void place(int tx, int ty) {
        int ti = tx + (ty * 28);
        this.mapObjects[ti] = 0;
        this.mapObjects[ti + 1] = 0;
        this.mapObjects[ti + 28] = 0;
        this.mapObjects[ti + 28 + 1] = 0;
    }

    public void lift(int tx, int ty) {
        int ti = tx + (ty * 28);
        this.mapObjects[ti] = -1;
        this.mapObjects[ti + 1] = -1;
        this.mapObjects[ti + 28] = -1;
        this.mapObjects[ti + 28 + 1] = -1;
    }

    public void update() {
        Actor.updateActors();
    }

    public boolean isOutside(int x, int y, boolean checkExit) {
        return x < 0 || y < 0 || (checkExit && y < 20) || x >= 336 || y >= 336;
    }

    public int insideX(int x) {
        if (x < 0) {
            int dx = -x;
            return dx;
        }
        if (x < 336) {
            return 0;
        }
        int dx2 = 336 - (x + 1);
        return dx2;
    }

    public int insideY(int y) {
        if (y < 0) {
            int dy = -y;
            return dy;
        }
        if (y < 336) {
            return 0;
        }
        int dy2 = 336 - (y + 1);
        return dy2;
    }

    public int isAtDoor(int x, int y, int width, int height) {
        int roomX = x / 48;
        int roomY = y / 48;
        int roomIndex = roomX + (roomY * 7);
        int room = this.mapRoom[roomIndex];
        int doorDir = getIndex(room, DOORS);
        if (doorDir >= 0) {
            int ox = x - (roomX * 48);
            int oy = y - (roomY * 48);
            if (ox < width || ox + width >= 48 || oy < height || oy + height >= 48) {
                return -1;
            }
            return doorDir;
        }
        return doorDir;
    }

    public boolean canMoveToTile(int objX, int objY) {
        if (objX < 0 || objX >= 28 || objY < 0 || objY >= 28) {
            return false;
        }
        int objIndex = objX + (objY * 28);
        int obj = this.mapObjects[objIndex];
        if (obj >= 0) {
            return false;
        }
        int tileX = objX >> 1;
        int tileY = objY >> 1;
        int tileIndex = tileX + (tileY * 14);
        int tile = this.mapTiles[tileIndex];
        if (tile == 0 && !this.isOverworld) {
            return false;
        }
        int roomX = tileX >> 1;
        int roomY = tileY >> 1;
        int roomIndex = roomX + (roomY * 7);
        int room = this.mapRoom[roomIndex];
        return room < 2;
    }

    public boolean canMoveTo(int x, int y, boolean allowDoor, boolean isProjectile) {
        int offset;
        if (!isOutside(x, y, true)) {
            int objX = x / 12;
            int objY = y / 12;
            if (!isProjectile) {
                int objIndex = objX + (objY * 28);
                int obj = this.mapObjects[objIndex];
                if (obj >= 0) {
                    return false;
                }
            }
            int tileX = objX >> 1;
            int tileY = objY >> 1;
            if (!isProjectile && !this.isOverworld) {
                int tileIndex = tileX + (tileY * 14);
                int tile = this.mapTiles[tileIndex];
                if (tile == 0) {
                    return false;
                }
            }
            int roomX = tileX >> 1;
            int roomY = tileY >> 1;
            int roomIndex = roomX + (roomY * 7);
            int room = this.mapRoom[roomIndex];
            if (this.isOverworld) {
                if (room > 3 && room != 21) {
                    return false;
                }
            } else {
                if (room == 2) {
                    return isProjectile;
                }
                if (room > 2) {
                    boolean isDoor = isType(room, DOORS);
                    if (isDoor && allowDoor) {
                        if (room == 15 || room == 16 || room == 19) {
                            offset = x - (roomX * 48);
                        } else {
                            offset = y - (roomY * 48);
                        }
                        if (offset >= 12 && offset <= 36) {
                            return true;
                        }
                    }
                    return false;
                }
            }
            return true;
        }
        return allowDoor;
    }

    public void push(int pushX, int pushY) {
        int roomX = pushX / 48;
        int roomY = pushY / 48;
        int roomIndex = roomX + (roomY * 7);
        int room = this.mapRoom[roomIndex];
        int locked = getIndex(room, DOORS_LOCKED);
        if (locked >= 0 && this.engine.useKey(FLAGS_UNLOCK[locked])) {
            this.mapRoom[roomIndex] = DOORS[locked];
        }
        if (room == 20 && this.engine.hasObject(2)) {
            this.mapRoom[roomIndex] = DOOR_NORTH;
            this.engine.unlock(29);
        }
    }

    public int getIndex(int type, byte[] types) {
        int index = types.length;
        do {
            index--;
            if (index < 0) {
                break;
            }
        } while (type != types[index]);
        return index;
    }

    public boolean isType(int type, byte[] types) {
        return getIndex(type, types) >= 0;
    }

    public void enteredRoom() {
        if (this.doorsClosed) {
            closeAllDoors();
        }
        if (!talk()) {
            this.engine.playBGM();
        }
    }

    public void heroMoved(int prevX, int prevY, int x, int y) {
        int ox;
        int dx = x - prevX;
        int dy = y - prevY;
        if (dx != 0 || dy != 0) {
            if (dx != 0 && this.triggerV >= 0 && (((ox = x - this.triggerV) >= 0 && ox - dx < 0) || (ox <= 0 && ox - dx > 0))) {
                if (this.triggerFlag <= 31) {
                    this.engine.setFlag(this.triggerFlag);
                } else {
                    setTempFlag(this.triggerFlag);
                }
                processCommands(false);
                this.triggerV = -1;
            }
            if (dy != 0 && this.triggerH >= 0) {
                int oy = y - this.triggerH;
                if ((oy >= 0 && oy - dy < 0) || (oy <= 0 && oy - dy > 0)) {
                    if (this.triggerFlag <= 31) {
                        this.engine.setFlag(this.triggerFlag);
                    } else {
                        setTempFlag(this.triggerFlag);
                    }
                    processCommands(false);
                    this.triggerH = -1;
                }
            }
        }
    }

    public boolean onEntrance(int x, int y) {
        if (this.entranceId < 0) {
            return false;
        }
        int dx = ((this.entranceX * 24) + 24) - x;
        int dy = ((this.entranceY * 24) + 24) - y;
        int adx = dx < 0 ? -dx : dx;
        int ady = dy < 0 ? -dy : dy;
        return adx < 24 && ady < 24;
    }

    public boolean talk() {
        boolean hasTalk = this.talkPending >= 0;
        if (hasTalk) {
            Actor.setTalking(true);
            this.engine.openTalk(this.talkPending);
            this.talkPending = -1;
        }
        return hasTalk;
    }

    public void talkToNPC(int superType, int type) {
        this.talkSpeaker = getIndex(type, TALK_TYPES);
        this.talkAction = superType == 2 ? 6 : this.talkSpeaker;
        this.engine.openTalk(this.talkSlots[this.talkAction]);
    }

    public void setTalking(int portrait) {
        if (portrait >= 0 && portrait < TALK_TYPES.length) {
            Actor.setTalking(TALK_TYPES[portrait]);
        } else {
            Actor.setTalking(-1);
        }
    }

    public void talkComplete() {
        switch (this.talkAction) {
            case 1:
                this.engine.openHealer();
                break;
            case 2:
                this.engine.openShop();
                break;
            case 5:
                openGate();
                Actor princess = Actor.addActor(PRINCESSES[this.dungeon]);
                princess.enterPrincess(168, 48);
                this.talkAction = 4;
                this.talkPending = this.talkSlots[4];
            case 3:
            case 4:
            default:
                this.engine.backToGame();
                break;
        }
        this.talkAction = -1;
    }

    public void roomCleared(boolean isBossFight) {
        this.engine.setFlag(30);
        setTempFlag(FLAG_CLEARED);
        if (isBossFight) {
            this.talkAction = 5;
            this.engine.openTalk(this.talkSlots[5]);
            this.doorsClosed = false;
            return;
        }
        processCommands(false);
    }

    public void roomLit() {
        this.engine.setFlag(25);
        processCommands(false);
    }

    public void openChest(Actor chest, int command) {
        int i;
        int comIndex = command * 5;
        byte type = this.commands[comIndex + 0];
        byte talk = this.commands[comIndex + 4];
        if (type == 13) {
            i = DUNGEON_KEYS[this.dungeon];
        } else {
            i = COMMAND_OBJECT[getIndex(type, COMMANDS_OBJECT)];
        }
        Actor pickup = Actor.addActor(i);
        pickup.setLocation(chest);
        pickup.found();
        this.engine.setFlag(command);
        this.engine.setFlag(24);
        if (talk > 0) {
            this.talkPending = talk;
        }
        Actor.lock();
    }

    public void pressSwitch(int command) {
        int comIndex = command * 5;
        int flag = this.commands[comIndex + 4];
        if (flag <= 31) {
            this.engine.setFlag(command);
            this.engine.setFlag(flag);
        } else {
            setTempFlag(flag);
        }
        processCommands(false);
    }

    private boolean checkFlag(int flag) {
        if (flag <= 31) {
            return this.engine.checkFlag(flag);
        }
        return (this.tempFlags & (1 << (flag + (-32)))) != 0;
    }

    private void setTempFlag(int flag) {
        this.tempFlags |= 1 << (flag - 32);
    }

    public int getCommand(int tx, int ty, int exclude) {
        int c = 0;
        for (int i = 0; i < this.commands.length; i += 5) {
            int cx = this.commands[i + 1];
            int cy = this.commands[i + 2];
            if (cx != tx || cy != ty || c == exclude) {
                c++;
            } else {
                int command = c;
                return command;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x0014 A[DONT_GENERATE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x010c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x014a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0089  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00af  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:62:0x0117 A[LOOP:1: B:59:0x0108->B:62:0x0117, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x0129 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x012b  */
    /* JADX WARN: Code duplicated, block: B:66:0x013c  */
    /* JADX WARN: Code duplicated, block: B:68:0x0144  */
    /* JADX WARN: Code duplicated, block: B:73:0x0152  */
    /* JADX WARN: Code duplicated, block: B:75:0x0166 A[LOOP:2: B:69:0x0146->B:75:0x0166, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:76:0x0178 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x017a  */
    /* JADX WARN: Code duplicated, block: B:79:0x017f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0181 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x0183  */
    /* JADX WARN: Code duplicated, block: B:82:0x0191 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0193  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b7  */
    public void processCommands(boolean loading) {
        int tx;
        int ty;
        int roomIndex;
        boolean z;
        int s;
        int d;
        boolean z2;
        int com2 = 0;
        for (int i = 0; i < this.commands.length; i += 5) {
            int type = this.commands[i + 0];
            if (type >= 0) {
                int action = this.commands[i + 3];
                int flag = this.commands[i + 4] & Constants.UNKNOWN;
                if (type == 1) {
                    if (loading) {
                        this.talkSlots[action] = flag;
                        if (action == 0 && this.engine.isFirstVisit()) {
                            this.talkPending = flag;
                        }
                    }
                } else {
                    boolean flagged = checkFlag(flag);
                    if (flagged) {
                        boolean hasAction = action != 0;
                        boolean isTriggered = isType(type, COMMANDS_TRIGGERED);
                        int isObject = getIndex(type, COMMANDS_OBJECT);
                        if (isTriggered && loading && flag == 30 && (isObject < 0 || hasAction)) {
                            Actor.noMonsters = true;
                        }
                        if (isObject >= 0 && hasAction) {
                            processObject(com2, action, i, COMMAND_OBJECT[isObject], loading);
                        } else {
                            tx = this.commands[i + 1] >> 1;
                            ty = this.commands[i + 2] >> 1;
                            switch (type) {
                                case 0:
                                    if (flagged) {
                                        openAllDoors();
                                    }
                                    if (flagged) {
                                        z2 = false;
                                    } else {
                                        z2 = true;
                                    }
                                    this.doorsClosed = z2;
                                    this.doorsClosedDir = action;
                                    if (!loading) {
                                    }
                                    break;
                                case 3:
                                    if (loading) {
                                        this.triggerH = (ty * 24) + 12;
                                        this.triggerFlag = flag;
                                    }
                                    break;
                                case 4:
                                    if (loading) {
                                        this.triggerV = (tx * 24) + 12;
                                        this.triggerFlag = flag;
                                    }
                                    break;
                                case 5:
                                    if (flagged) {
                                        int tileIndex = tx + (ty * 14);
                                        this.mapTiles[tileIndex] = -1;
                                        if (!loading) {
                                            setAbyss(tx, ty);
                                            d = 4;
                                            while (true) {
                                                d--;
                                                if (d < 0) {
                                                    setAbyss(DIR_X[d] + tx, DIR_Y[d] + ty);
                                                }
                                            }
                                        }
                                        this.commands[i + 0] = -1;
                                    }
                                    break;
                                case 6:
                                    if (flagged) {
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    Actor.hiddenMonsters = z;
                                    break;
                                case 18:
                                    if (loading) {
                                        roomIndex = (tx >> 1) + ((ty >> 1) * 7);
                                        if (this.engine.isPrincessRescued(action)) {
                                            this.mapRoom[roomIndex] = 21;
                                        }
                                        if (!this.engine.isDungeonOpen(action)) {
                                            this.mapRoom[roomIndex] = DOOR_BOSS;
                                        }
                                        this.entranceX = tx;
                                        this.entranceY = ty;
                                        this.entranceId = action;
                                    }
                                    break;
                                case 19:
                                    if (loading) {
                                        this.entranceX = tx;
                                        this.entranceY = ty;
                                    }
                                    break;
                                case 20:
                                    if (flagged) {
                                        this.mapRoom[(tx >> 1) + ((ty >> 1) * 7)] = 0;
                                        if (!loading) {
                                            if (Main.midlet.res.HAS_DETAILED_ABYSS) {
                                                s = 10;
                                                while (true) {
                                                    s--;
                                                    if (s < 0) {
                                                        setAbyss(ROOM_SWAP_X[s] + tx, ROOM_SWAP_Y[s] + ty);
                                                    }
                                                }
                                            }
                                            if (Main.midlet.res.HAS_ROOM_SHADOWS) {
                                                setShadow(tx >> 1, ty >> 1);
                                            }
                                        }
                                        this.commands[i + 0] = -1;
                                    }
                                    break;
                            }
                        }
                    } else {
                        tx = this.commands[i + 1] >> 1;
                        ty = this.commands[i + 2] >> 1;
                        switch (type) {
                            case 0:
                                if (flagged && this.doorsClosed) {
                                    openAllDoors();
                                }
                                if (flagged) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                this.doorsClosed = z2;
                                this.doorsClosedDir = action;
                                if (!loading && !flagged && flag == 25) {
                                    closeAllDoors();
                                }
                                break;
                            case 3:
                                if (loading) {
                                    this.triggerH = (ty * 24) + 12;
                                    this.triggerFlag = flag;
                                }
                                break;
                            case 4:
                                if (loading) {
                                    this.triggerV = (tx * 24) + 12;
                                    this.triggerFlag = flag;
                                }
                                break;
                            case 5:
                                if (flagged) {
                                    int tileIndex2 = tx + (ty * 14);
                                    this.mapTiles[tileIndex2] = -1;
                                    if (!loading && Main.midlet.res.HAS_DETAILED_ABYSS) {
                                        setAbyss(tx, ty);
                                        d = 4;
                                        while (true) {
                                            d--;
                                            if (d < 0) {
                                                setAbyss(DIR_X[d] + tx, DIR_Y[d] + ty);
                                            }
                                        }
                                    }
                                    this.commands[i + 0] = -1;
                                }
                                break;
                            case 6:
                                if (flagged) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                Actor.hiddenMonsters = z;
                                break;
                            case 18:
                                if (loading) {
                                    roomIndex = (tx >> 1) + ((ty >> 1) * 7);
                                    if (this.engine.isPrincessRescued(action)) {
                                        this.mapRoom[roomIndex] = 21;
                                    }
                                    if (!this.engine.isDungeonOpen(action)) {
                                        this.mapRoom[roomIndex] = DOOR_BOSS;
                                    }
                                    this.entranceX = tx;
                                    this.entranceY = ty;
                                    this.entranceId = action;
                                }
                                break;
                            case 19:
                                if (loading) {
                                    this.entranceX = tx;
                                    this.entranceY = ty;
                                }
                                break;
                            case 20:
                                if (flagged) {
                                    this.mapRoom[(tx >> 1) + ((ty >> 1) * 7)] = 0;
                                    if (!loading) {
                                        if (Main.midlet.res.HAS_DETAILED_ABYSS) {
                                            s = 10;
                                            while (true) {
                                                s--;
                                                if (s < 0) {
                                                    setAbyss(ROOM_SWAP_X[s] + tx, ROOM_SWAP_Y[s] + ty);
                                                }
                                            }
                                        }
                                        if (Main.midlet.res.HAS_ROOM_SHADOWS) {
                                            setShadow(tx >> 1, ty >> 1);
                                        }
                                    }
                                    this.commands[i + 0] = -1;
                                }
                                break;
                        }
                    }
                }
            }
            com2++;
        }
    }

    private void processObject(int com2, int action, int index, int type, boolean loading) {
        int tx = this.commands[index + 1];
        int ty = this.commands[index + 2];
        if (type == 27) {
            com2 = getCommand(tx, ty, com2);
        }
        Actor object = Actor.addObject(type, tx, ty);
        object.setCommand(com2);
        this.commands[index + 0] = -1;
        if (!loading) {
            switch (action) {
                case 1:
                    object.addEffect(0);
                    break;
                case 2:
                    object.fall();
                    break;
            }
            object.add();
        }
    }

    private void openAllDoors() {
        int i = 49;
        while (true) {
            i--;
            if (i >= 0) {
                int closed = getIndex(this.mapRoom[i], DOORS_CLOSED);
                if (closed >= 0) {
                    this.mapRoom[i] = DOORS[closed];
                }
            } else {
                return;
            }
        }
    }

    private void openGate() {
        int i = 49;
        while (true) {
            i--;
            if (i >= 0) {
                if (this.mapRoom[i] == 29) {
                    this.mapRoom[i] = DOOR_NORTH;
                }
            } else {
                return;
            }
        }
    }

    private void closeAllDoors() {
        int i = 49;
        while (true) {
            i--;
            if (i >= 0) {
                int door = getIndex(this.mapRoom[i], DOORS);
                if (this.doorsClosedDir <= 0 || ((1 << door) & this.doorsClosedDir) != 0) {
                    if (door >= 0 && door < DOORS_CLOSED.length) {
                        this.mapRoom[i] = DOORS_CLOSED[door];
                    }
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x013d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0145  */
    /* JADX WARN: Code duplicated, block: B:65:0x0149  */
    /* JADX WARN: Code duplicated, block: B:66:0x014e  */
    /* JADX WARN: Code duplicated, block: B:68:0x0156  */
    /* JADX WARN: Code duplicated, block: B:69:0x015d  */
    /* JADX WARN: Code duplicated, block: B:70:0x0162  */
    public void paint(Graphics g) {
        int tile;
        int shadow;
        g.setColor(COLOR_BG[this.dungeon]);
        int i = this.viewX;
        Resources resources = Main.midlet.res;
        int tx = i / Resources.GFX_ROOM_SIZE;
        int i2 = this.viewY;
        Resources resources2 = Main.midlet.res;
        int ty = i2 / Resources.GFX_ROOM_SIZE;
        if (this.viewX < 0) {
            tx--;
        }
        if (this.viewY < 0) {
            ty--;
        }
        Resources resources3 = Main.midlet.res;
        int ox = (Resources.GFX_ROOM_SIZE * tx) - this.viewX;
        Resources resources4 = Main.midlet.res;
        int oy = (Resources.GFX_ROOM_SIZE * ty) - this.viewY;
        int x = ox;
        int y = oy;
        int otx = 0;
        int oty = 0;
        int ti = tx + (ty * 7);
        while (true) {
            if (x >= this.viewWidth) {
                Resources resources5 = Main.midlet.res;
                y += Resources.GFX_ROOM_SIZE;
                if (y >= this.viewHeight) {
                    break;
                }
                x = ox;
                otx = 0;
                oty++;
                ti += 7;
            }
            int tile2 = -1;
            if (tx + otx >= 0 && ty + oty >= 0 && tx + otx < 7 && ty + oty < 7) {
                tile2 = this.mapRoom[ti + otx];
            }
            if (!Main.midlet.res.HAS_DETAILED_ABYSS || tile2 != 2 || this.isOverworld) {
                if (tile2 < 0) {
                    Resources resources6 = Main.midlet.res;
                    int i3 = Resources.GFX_ROOM_SIZE;
                    Resources resources7 = Main.midlet.res;
                    g.fillRect(x, y, i3, Resources.GFX_ROOM_SIZE);
                } else {
                    Dungeon.paintRoom(g, x, y, tile2, this.isOverworld);
                }
            }
            otx++;
            Resources resources8 = Main.midlet.res;
            x += Resources.GFX_ROOM_SIZE;
        }
        int i4 = this.viewX;
        Resources resources9 = Main.midlet.res;
        int tx2 = i4 / Resources.GFX_OBJECT_SIZE;
        int i5 = this.viewY;
        Resources resources10 = Main.midlet.res;
        int ty2 = i5 / Resources.GFX_OBJECT_SIZE;
        if (this.viewX < 0) {
            tx2--;
        }
        if (this.viewY < 0) {
            ty2--;
        }
        Resources resources11 = Main.midlet.res;
        int ox2 = (Resources.GFX_OBJECT_SIZE * tx2) - this.viewX;
        Resources resources12 = Main.midlet.res;
        int oy2 = (Resources.GFX_OBJECT_SIZE * ty2) - this.viewY;
        int x2 = ox2;
        int y2 = oy2;
        int otx2 = 0;
        int oty2 = 0;
        int ti2 = tx2 + (ty2 * 14);
        while (true) {
            if (x2 >= this.viewWidth) {
                Resources resources13 = Main.midlet.res;
                y2 += Resources.GFX_OBJECT_SIZE;
                if (y2 < this.viewHeight) {
                    x2 = ox2;
                    otx2 = 0;
                    oty2++;
                    ti2 += 14;
                } else {
                    Actor.paintReady();
                    Actor.paintShadows(g);
                    Actor.paintActors(g);
                    return;
                }
            }
            if (tx2 + otx2 >= 0 && ty2 + oty2 >= 0 && tx2 + otx2 < 14 && ty2 + oty2 < 14) {
                if (Main.midlet.res.HAS_DETAILED_ABYSS) {
                    int abyss = this.mapAbyss[ti2 + otx2];
                    if (abyss >= 0) {
                        Dungeon.paintAbyss(g, x2, y2, this.mapAbyss[ti2 + otx2]);
                    } else {
                        tile = this.mapTiles[ti2 + otx2];
                        if (tile >= 0) {
                            if (this.isOverworld) {
                                Dungeon.paintTile(g, x2, y2, tile, true);
                            } else if (Main.midlet.res.HAS_DETAILED_ABYSS) {
                                Dungeon.paintTile(g, x2, y2, tile - 1, false);
                            } else {
                                Dungeon.paintTile(g, x2, y2, tile, false);
                            }
                        } else if (!Main.midlet.res.HAS_ROOM_SHADOWS && (shadow = this.mapShadows[ti2 + otx2]) > 0) {
                            Dungeon.paintShadow(g, x2, y2, shadow);
                        }
                    }
                } else {
                    tile = this.mapTiles[ti2 + otx2];
                    if (tile >= 0) {
                        if (this.isOverworld) {
                            Dungeon.paintTile(g, x2, y2, tile, true);
                        } else if (Main.midlet.res.HAS_DETAILED_ABYSS) {
                            Dungeon.paintTile(g, x2, y2, tile - 1, false);
                        } else {
                            Dungeon.paintTile(g, x2, y2, tile, false);
                        }
                    } else if (!Main.midlet.res.HAS_ROOM_SHADOWS) {
                    }
                }
            }
            otx2++;
            Resources resources14 = Main.midlet.res;
            x2 += Resources.GFX_OBJECT_SIZE;
        }
    }

    public void setViewport(int width, int height) {
        this.viewWidth = width;
        this.viewHeight = height;
        this.focusX = width >> 1;
        this.focusY = height >> 1;
        this.focusWidth = width >> 3;
        this.focusHeight = height >> 3;
    }

    public int projectX(int px) {
        return px - this.viewX;
    }

    public int projectY(int py) {
        return py - this.viewY;
    }

    public void focus(int px, int py, boolean quick) {
        if (quick) {
            this.viewX = px - this.focusX;
            this.viewY = py - this.focusY;
        } else {
            int cx = this.viewX + this.focusX;
            int cy = this.viewY + this.focusY;
            int camDx = getDifference(cx, px, this.focusWidth);
            int camDy = getDifference(cy, py, this.focusHeight);
            this.viewX += camDx;
            this.viewY += camDy;
        }
        if (this.viewX < this.viewMinX) {
            this.viewX = this.viewMinX;
        } else if (this.viewX > this.viewMaxX) {
            this.viewX = this.viewMaxX;
        }
        if (this.viewY < this.viewMinY) {
            this.viewY = this.viewMinY;
        } else if (this.viewY > this.viewMaxY) {
            this.viewY = this.viewMaxY;
        }
    }

    private int getDifference(int centre, int focus, int length) {
        int d = focus - centre;
        int length2 = length >> 1;
        if ((-d) >= length2) {
            return d + length2;
        }
        if (d >= length2) {
            return d - length2;
        }
        return 0;
    }
}
