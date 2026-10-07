package com.globalfun.adventuretime.free;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class Actor extends Animator {
    private static final int ARROW_TICKS_STUCK = 12;
    private static final int BICLOPS_MIN_JUMP = 10;
    private static final int BICLOPS_SWIPE_HEIGHT = 16;
    private static final int BICLOPS_SWIPE_OX = 40;
    private static final int BICLOPS_SWIPE_OY = 10;
    private static final int BICLOPS_SWIPE_WIDTH = 16;
    private static final int BICLOPS_WAIT_IDLE = 8;
    private static final int BICLOPS_WAIT_READY = 20;
    private static final int BLADE_STOP_TICKS = 8;
    private static final int BOMB_FUSE = 24;
    private static final int BOMB_HEIGHT = 36;
    private static final int BOMB_HIT_HERO = 24;
    private static final int BOMB_HIT_MONSTERS = 40;
    private static final int BOMB_PROPAGATE = 4;
    private static final int BOMB_WIDTH = 36;
    private static final int BOSS_TICKS_DEAD = 50;
    private static final int BOSS_TICKS_RECOVER = 12;
    private static final int BOSS_WAIT_DEAD = 20;
    private static final int BOSS_WAIT_START = 12;
    private static final int BURGER_BACK = 8;
    private static final int BURGER_FIRE_INTERVAL = 8;
    private static final int BURGER_FIRE_JUMP = 6;
    private static final int BURGER_FIRE_OY = 20;
    private static final int BURGER_NUM_HOPS = 8;
    private static final int BURGER_SPEED = 5;
    private static final int BURGER_WAIT_CLOSE = 28;
    private static final int BURGER_WAIT_FIRE = 8;
    private static final int BURGER_WAIT_IDLE = 8;
    private static final int COUNT_FIRE_OY = 16;
    private static final int COUNT_RANGE_IN = 100;
    private static final int COUNT_TELEPORT_HEIGHT = 192;
    private static final int COUNT_TELEPORT_WIDTH = 192;
    private static final int COUNT_TELEPORT_X = 72;
    private static final int COUNT_TELEPORT_Y = 72;
    private static final int COUNT_WAIT_FIRE = 4;
    private static final int COUNT_WAIT_MOVING = 8;
    public static final int CTRLS_ACTION = 2;
    public static final int CTRLS_H = 0;
    public static final int CTRLS_V = 1;
    private static final int DAMAGE_BOMB_BOSS = 1;
    private static final int DAMAGE_BOMB_HERO = 2;
    private static final int DAMAGE_HAMMER = 1;
    private static final int DAMAGE_SUPER = 2;
    private static final int DAMAGE_SWORD = 1;
    private static final int DEPTH_DEFAULT = 1;
    private static final int DEPTH_EFFECT = 0;
    private static final int DEPTH_FLOOR = 2;
    public static final int DIR_EAST = 2;
    public static final int DIR_NONE = -1;
    public static final int DIR_NORTH = 0;
    public static final int DIR_SOUTH = 1;
    public static final int DIR_WEST = 3;
    private static final int EYECLOPS_FIRE_INTERVAL = 40;
    private static final int EYECLOPS_FIRE_WAIT = 28;
    private static final int FLAMEGUY_TICKS_BOUNCE = 16;
    private static final int FLAMEGUY_TICKS_TURN = 4;
    private static final int FOUND_WAIT = 16;
    public static final int FX_APPEAR = 0;
    public static final int FX_COLLECT = 3;
    public static final int FX_DESTROY = 1;
    public static final int FX_DESTROY_S = 2;
    public static final int FX_DETONATE = 8;
    public static final int FX_EXPLODE = 7;
    public static final int FX_FLASH = 5;
    public static final int FX_FLASH_SUPER = 4;
    public static final int FX_SPARKLE = 6;
    private static final int HAMMER_AHEAD = 10;
    private static final int HAMMER_WIDTH = 12;
    private static final int HERO_ARROW_OY = 4;
    private static final int HERO_ARROW_START = 8;
    private static final int HERO_MAGIC_OY = 3;
    private static final int HERO_MAGIC_START = 12;
    private static final int HERO_SPINS_DEAD = 4;
    private static final int HERO_TICKS_BOW = 4;
    private static final int HERO_TICKS_DEAD = 24;
    private static final int HERO_TICKS_DIEING = 8;
    private static final int HERO_TICKS_RECOVER = 3;
    private static final int HERO_TICKS_STOP = 40;
    private static final int HERO_TICKS_WAND = 2;
    private static final int ICECUBE_DURATION = 40;
    private static final int ICECUBE_TICKS_TURN = 4;
    private static final int ICECUBE_WAIT_TURN = 8;
    private static final int ICE_KING_BUBBLE = 30;
    private static final int ICE_KING_FIRE_OY = 20;
    private static final int ICE_KING_SPACING = 44;
    private static final int ICE_KING_TICKS_FROZEN = 90;
    private static final int ICE_KING_WAIT_ATTACK = 24;
    private static final int ICE_KING_WAIT_FIRE = 4;
    private static final int JAKE_OFFSET = 12;
    private static final int JAKE_TRAIL = 24;
    public static final boolean KILL_BOSS = false;
    private static final int MAGIC_DURATION = 8;
    private static final int MASK_BLOCK = 512;
    private static final int MASK_ENEMIES = 40;
    private static final int MAX_ACTORS = 40;
    private static final int MONSTER_HIDDEN_INTERVAL = 4;
    private static final int MONSTER_HIDDEN_WAIT = 4;
    private static final int MONSTER_TICKS_RECOVER = 8;
    private static final int NPC_TALK_DISTANCE = 24;
    private static final int NPC_TALK_HEIGHT = 12;
    private static final int NPC_TALK_WIDTH = 12;
    private static final int NPC_TICKS_REFRESH = 20;
    public static final int NUM_ANGLES = 16;
    public static final int NUM_BOSSES = 4;
    private static final int NUM_CONTROLS = 3;
    public static final int NUM_CORNERS = 4;
    public static final int NUM_DIRS = 4;
    public static final int NUM_EFFECTS = 9;
    public static final int NUM_MONSTERS = 8;
    public static final int NUM_NPCS = 7;
    public static final int NUM_TRAPS = 3;
    public static final int NUM_TYPES = 61;
    private static final int OBJECT_GRID = 12;
    public static final int OFFSET_MONSTER = 9;
    public static final int OFFSET_NPC = 2;
    public static final int OFFSET_OBJECT = 24;
    private static final int OPEN_AHEAD = 10;
    private static final int OPEN_WIDTH = 10;
    public static final boolean PAINT_LOCATIONS = false;
    private static final int PAUSE_RETURN = 8;
    private static final int PENGUIN_ATTACK_DIST = 18;
    private static final int PENGUIN_ATTACK_HEIGHT = 6;
    private static final int PENGUIN_ATTACK_RECOVER = 12;
    private static final int PENGUIN_ATTACK_WIDTH = 12;
    private static final int PENGUIN_MOVE_RAND = 4;
    private static final int PENGUIN_MOVE_TICKS = 6;
    private static final int PENGUIN_STOP_TICKS = 16;
    private static final int PRINCESS_STEPS = 60;
    private static final int ROOM_GRID = 48;
    private static final int SIGNATURE_LENGTH = 12;
    public static final int SIG_INDEX_DAMAGE = 7;
    public static final int SIG_INDEX_DEPTH = 3;
    public static final int SIG_INDEX_DROP_GEM = 10;
    public static final int SIG_INDEX_DROP_HEALTH = 11;
    public static final int SIG_INDEX_HEIGHT = 2;
    public static final int SIG_INDEX_HIT_TICKS = 9;
    public static final int SIG_INDEX_HIT_VEL = 8;
    public static final int SIG_INDEX_HP = 6;
    public static final int SIG_INDEX_SHADOW = 4;
    public static final int SIG_INDEX_SPEED = 5;
    public static final int SIG_INDEX_SUPERTYPE = 0;
    public static final int SIG_INDEX_WIDTH = 1;
    private static final int SKELETON_ALIGN = 32;
    private static final int SKELETON_ATTACK_DIST = 14;
    private static final int SKELETON_ATTACK_HEIGHT = 5;
    private static final int SKELETON_ATTACK_RECOVER = 12;
    private static final int SKELETON_ATTACK_WAIT = 5;
    private static final int SKELETON_ATTACK_WIDTH = 10;
    private static final int SKELETON_MOVE_RAND = 8;
    private static final int SKELETON_MOVE_TICKS = 16;
    private static final int SKELETON_RANGE = 120;
    private static final int SKELETON_RUN = 2;
    private static final int SKELETON_STOP_RAND = 10;
    private static final int SKELETON_STOP_TICKS = 15;
    private static final int SLIMECUBE_MOVE_RAND = 16;
    private static final int SLIMECUBE_MOVE_TICKS = 8;
    private static final int SLIMECUBE_RANGE = 120;
    private static final int SLIMECUBE_SPAWN_TICKS = 3;
    private static final int SLIMECUBE_SPAWN_VEL = 4;
    private static final int SPIKES_TICKS_DOWN = 18;
    private static final int SPIKES_TICKS_RAISED = 8;
    public static final int STATE_ANTICLOCKWISE = 8;
    public static final int STATE_ATTACK = 10;
    public static final int STATE_BOUNCE = 52;
    public static final int STATE_BOW = 13;
    public static final int STATE_CELEBRATE = 85;
    public static final int STATE_CLOCKWISE = 7;
    public static final int STATE_DEAD = 83;
    public static final int STATE_DIEING = 82;
    public static final int STATE_DROP = 51;
    public static final int STATE_ENTERING = 30;
    public static final int STATE_EXITING = 31;
    public static final int STATE_FALL = 50;
    public static final int STATE_FOUND = 90;
    public static final int STATE_FROZEN = 84;
    public static final int STATE_HAMMER = 12;
    public static final int STATE_HIT = 80;
    public static final int STATE_IDLE = 0;
    public static final int STATE_MOVING = 4;
    public static final int STATE_READY = 2;
    public static final int STATE_RECOVER = 81;
    public static final int STATE_RETURN = 5;
    public static final int STATE_SPAWNED = 70;
    public static final int STATE_STOPPED = 1;
    public static final int STATE_SWORD = 11;
    public static final int STATE_TALKING = 40;
    public static final int STATE_TELEPORT = 6;
    public static final int STATE_WALKING = 3;
    public static final int STATE_WAND = 14;
    private static final int STEPS_IN = 3;
    public static final int SUPERTYPE_BLOCK = 9;
    public static final int SUPERTYPE_BOSS = 5;
    public static final int SUPERTYPE_FX = 12;
    public static final int SUPERTYPE_HERO = 0;
    public static final int SUPERTYPE_MONSTER = 3;
    public static final int SUPERTYPE_NPC = 1;
    public static final int SUPERTYPE_PICKUP = 6;
    public static final int SUPERTYPE_PRINCESS = 2;
    public static final int SUPERTYPE_PROJECTILE = 10;
    public static final int SUPERTYPE_SPECIAL = 11;
    public static final int SUPERTYPE_SWITCH = 7;
    public static final int SUPERTYPE_TILE = 8;
    public static final int SUPERTYPE_TRAP = 4;
    private static final int SWORD_HEIGHT = 16;
    private static final int SWORD_RANGE = 20;
    private static final int SWORD_WIDTH = 20;
    private static final int TICKS_INVULNERABLE = 24;
    private static final int TICKS_ROOM_CLEAR = 16;
    private static final int TICKS_ROOM_LIT = 8;
    private static final int TILE_GRID = 24;
    public static final int TYPE_ARMOR = 49;
    public static final int TYPE_ARROW = 55;
    public static final int TYPE_BEEMO = 3;
    public static final int TYPE_BICLOPS = 21;
    public static final int TYPE_BLOCK = 24;
    public static final int TYPE_BOMB = 44;
    public static final int TYPE_BOOM = 45;
    public static final int TYPE_BOSS_KEY = 51;
    public static final int TYPE_BOSS_KEY1 = 52;
    public static final int TYPE_BOSS_KEY2 = 53;
    public static final int TYPE_BOSS_KEY3 = 54;
    public static final int TYPE_BOW = 46;
    public static final int TYPE_BURGER_MONSTER = 20;
    public static final int TYPE_BUTLER = 2;
    public static final int TYPE_CHEST = 27;
    public static final int TYPE_EYE_FIRE = 57;
    public static final int TYPE_FINN = 0;
    public static final int TYPE_FIRE_BUBBLE = 59;
    public static final int TYPE_FIRE_COUNT = 22;
    public static final int TYPE_FLAMEGUY = 13;
    public static final int TYPE_GEM = 40;
    public static final int TYPE_GHOST = 11;
    public static final int TYPE_HAMMER = 43;
    public static final int TYPE_HEALTH = 39;
    public static final int TYPE_HEART = 35;
    public static final int TYPE_HEAVY_ROCK = 28;
    public static final int TYPE_ICE_CUBE = 60;
    public static final int TYPE_ICE_KING = 23;
    public static final int TYPE_JAKE = 1;
    public static final int TYPE_KETCHUP = 58;
    public static final int TYPE_KEY = 38;
    public static final int TYPE_LANTERN = 26;
    public static final int TYPE_LARGE_GEM = 37;
    public static final int TYPE_LEVER = 34;
    public static final int TYPE_LSP = 4;
    public static final int TYPE_MAGIC = 56;
    public static final int TYPE_MAP = 41;
    public static final int TYPE_PENGUIN = 14;
    public static final int TYPE_PILLAR_A = 32;
    public static final int TYPE_PILLAR_B = 33;
    public static final int TYPE_POTION = 50;
    public static final int TYPE_PRINCESS_BUBBLEGUM = 8;
    public static final int TYPE_PRINCESS_FIRE = 7;
    public static final int TYPE_PRINCESS_RING = 5;
    public static final int TYPE_PRINCESS_SLIME = 6;
    public static final int TYPE_ROCK = 29;
    public static final int TYPE_SKELETON = 12;
    public static final int TYPE_SLIMECUBE_L = 15;
    public static final int TYPE_SLIMECUBE_S = 16;
    public static final int TYPE_SPIKES = 31;
    public static final int TYPE_SUPER_GEM = 36;
    public static final int TYPE_SUPER_SWORD = 48;
    public static final int TYPE_SWITCH = 30;
    public static final int TYPE_SWORD = 42;
    public static final int TYPE_TRAP_BLADE = 17;
    public static final int TYPE_TRAP_EYECLOPS = 19;
    public static final int TYPE_TRAP_SPIKY = 18;
    public static final int TYPE_UNLIT = 25;
    public static final int TYPE_WAND = 47;
    public static final int TYPE_ZOMBIE1 = 9;
    public static final int TYPE_ZOMBIE2 = 10;
    private static final int ZOMBIE1_MOVE_RAND = 10;
    private static final int ZOMBIE1_MOVE_TICKS = 10;
    private static final int ZOMBIE1_RANGE = 96;
    private static final int ZOMBIE1_STOP_RAND = 10;
    private static final int ZOMBIE1_STOP_TICKS = 15;
    private static final int ZOMBIE1_TARGET = 2;
    private static final int ZOMBIE2_RANGE = 96;
    private static final int ZOMBIE2_STOP_RAND = 10;
    private static final int ZOMBIE2_STOP_TICKS = 10;
    public static Actor bomb;
    public static Actor boss;
    public static int bossAttack;
    public static int bossCounter;
    public static int[] bossDirs;
    public static boolean bossInvisible;
    public static boolean bossKilled;
    public static int bossLocation;
    public static int bossShadowOy;
    public static int bossStartX;
    public static int bossStartY;
    private static Engine engine;
    public static Actor hero;
    public static boolean heroCanHarm;
    public static boolean heroCelebrate;
    public static boolean heroDead;
    public static boolean heroEntered;
    public static boolean heroExited;
    public static int heroInvulnerable;
    public static boolean heroLocked;
    public static int heroPrevDir;
    public static int heroPrevX;
    public static int heroPrevY;
    public static boolean heroTalking;
    public static boolean heroWalked;
    public static boolean hiddenMonsters;
    private static Image imgBossShadow;
    public static boolean isBossFight;
    public static Actor lever;
    public static boolean noMonsters;
    public static Actor npc;
    public static int npcWait;
    public static int numActors;
    public static int numMonsters;
    public static int numSlimes;
    public static int numUnlit;
    private static int paused;
    public static Actor princess;
    private static Room room;
    public static int roomCleared;
    public static int roomLit;
    public static byte[][] scripts;
    private static int slowdown;
    public static int speaker;
    private static Sprite[] sprBoss;
    private static Sprite sprCommon;
    private static Sprite sprPrincess;
    private static Actor stack;
    public static int startMonsters;
    private static int wait;
    private int angle;
    public int anim;
    private int command;
    private int damage;
    private int delay;
    private int depth;
    private int detonate;
    private int dir;
    private Actor fired;
    private Actor fx;
    public int height;
    private int hidden;
    private int hp;
    public int jump;
    private Actor next;
    public int px;
    public int py;
    private boolean raised;
    private boolean remove;
    private byte[] script;
    private int shadow;
    public int speed;
    private Sprite[] sprite;
    private int spriteIndex;
    private int state;
    private int steps;
    private int stuck;
    public int superType;
    private int ticks;
    private int tileX;
    private int tileY;
    private int turn;
    public int type;
    private boolean used;
    public int vx;
    public int vy;
    public int width;
    public int x;
    public int y;
    public static final int[] DIR_X = {0, 0, 1, -1};
    public static final int[] DIR_Y = {-1, 1, 0, 0};
    public static final int[] ADIR_X = {0, 0, 1, 1};
    public static final int[] ADIR_Y = {1, 1, 0, 0};
    private static final int[] DIR_CLOCK = {2, 3, 1, 0};
    private static final int[] DIR_ANTI = {3, 2, 0, 1};
    private static final int[] DIR_OPP = {1, 0, 3, 2};
    private static final int[] DIAGONAL_X = {-1, 1, 1, -1};
    private static final int[] DIAGONAL_Y = {-1, 1, -1, 1};
    private static final int[] DIAGONAL_H = {3, 2, 2, 3};
    private static final int[] DIAGONAL_V = {0, 1, 0, 1};
    private static final int[] DIR_BOUNCE_H = {2, 3, 0, 1};
    private static final int[] DIR_BOUNCE_V = {3, 2, 1, 0};
    public static final int[] ANGLE_X = {0, 98, 181, 237, 256, 237, 181, 98, 0, -98, -181, -237, -256, -237, -181, -98};
    public static final int[] ANGLE_Y = {-256, -237, -181, -98, 0, 98, 181, 237, 256, 237, 181, 98, 0, -98, -181, -237};
    public static final int[] CORNER_X = {-1, 1, 1, -1};
    public static final int[] CORNER_Y = {-1, -1, 1, 1};
    private static Actor[] actors = new Actor[40];
    private static int[] controls = new int[3];
    private static Sprite[][] sprites = new Sprite[61][];
    private static Sprite[] sprEffects = new Sprite[9];
    private static final int[] HERO_JUMP_CELEBRATE = {0, 6, 8, 9, 9, 8, 6, 0};
    private static final int[] STEPS_BACK = {24, 0, 2, 2};
    private static final int[] SPIKY_ANIMS = {1, 2, 3, 4};
    private static final int[] BURGER_FIRE_COUNT = {0, 3, 3, 3, 3, 3};
    private static final int[] BICLOPS_SPEED = {0, 14, 13, 12, 11, 10};
    private static final int[] COUNT_WAIT_ATTACK = {0, 18, 20, 22, 24, 28};
    private static final int[] ICE_KING_X = {80, 168, 256};
    private static final int[] ARROW_WALL_OFFSET = {8, 16, 16, 16};
    private static final int[] ARROW_HIT_OFFSET = {8, 0, 10, 10};
    private static final int[] ARROW_BOSS_OFFSET = {20, -10, 16, 16};

    private void init() {
        this.sprite = null;
        this.state = 0;
        this.dir = 1;
        this.angle = 0;
        this.steps = 0;
        this.ticks = 0;
        this.tileX = -1;
        this.tileY = -1;
        this.jump = 0;
        this.shadow = -1;
        this.vx = 0;
        this.vy = 0;
        this.command = -1;
        this.hidden = 0;
        this.detonate = 0;
        this.stuck = 0;
        this.delay = 0;
        this.raised = false;
        this.used = false;
        this.remove = false;
        this.fired = null;
        this.fx = null;
    }

    public void init(int type) {
        init(type, null);
    }

    public void init(int type, Sprite[] s) {
        init();
        this.script = scripts[type];
        this.superType = this.script[0];
        this.type = type;
        if (s != null) {
            this.sprite = s;
        } else {
            Resources resources = Main.midlet.res;
            if (type < Resources.GFX_NUM_TYPES) {
                this.sprite = sprites[type];
            } else if (this.superType == 5) {
                this.sprite = sprBoss;
            }
        }
        this.width = this.script[1] >> 1;
        this.height = this.script[2] >> 1;
        this.depth = this.script[3];
        this.shadow = this.script[4];
        this.speed = this.script[5];
        this.hp = this.script[6];
        this.damage = this.script[7];
        if (type == 0) {
            hero = this;
        } else if (type == 34) {
            lever = this;
        } else if (this.superType == 2) {
            princess = this;
        } else if (this.superType == 5) {
            boss = this;
            isBossFight = true;
            this.ticks = 12;
        }
        setAnimation(0);
    }

    private void initEffect(int type) {
        init();
        this.superType = 12;
        this.type = -1;
        this.depth = 0;
        this.sprite = sprEffects;
        this.spriteIndex = type;
        reset(this.sprite[this.spriteIndex].getRawFrameCount());
        setLoops(1);
    }

    public void setCommand(int index) {
        this.command = index;
    }

    public void add() {
        if (this.type == 25) {
            this.command = 25;
            numUnlit++;
        }
        if (this.command >= 0) {
            boolean used = engine.checkFlag(this.command);
            if (used) {
                used();
            }
        }
        if ((this.superType == 8 || this.superType == 9) && this.type != 31) {
            room.place(this.tileX, this.tileY);
        }
        if (this.type == 32 || this.type == 33) {
            updatePillar();
        }
        if (this.type == 34) {
            updateLever();
        }
        if (this.superType == 4) {
            centerOnGrid();
        }
        if (this.type == 18) {
            this.state = this.dir == 0 ? 7 : 8;
            boolean blockN = !room.canMoveToTile(this.tileX, this.tileY + (-2));
            boolean blockS = !room.canMoveToTile(this.tileX, this.tileY + 1);
            boolean blockE = !room.canMoveToTile(this.tileX + 1, this.tileY);
            boolean blockW = !room.canMoveToTile(this.tileX + (-2), this.tileY);
            if (blockN) {
                this.dir = this.state == 7 ? 3 : 2;
            }
            if (blockS) {
                this.dir = this.state == 7 ? 2 : 3;
            }
            if (blockE) {
                this.dir = this.state == 7 ? 0 : 1;
            }
            if (blockW) {
                this.dir = this.state == 7 ? 1 : 0;
            }
        }
        if (this.type == 11 || this.type == 4) {
            Resources resources = Main.midlet.res;
            this.jump = Resources.GFX_JUMP_FLOAT[0];
        }
        if (this.type == 19) {
            room.place(this.tileX - 1, this.tileY - 1);
            if (noMonsters) {
                setAnimation(9);
                this.used = true;
            }
            this.ticks = 28;
        }
        if (this.superType == 1 || this.superType == 2) {
            centerOnGrid();
            room.place(this.tileX - 1, this.tileY - 1);
        }
        if (this.superType == 3 || this.superType == 5) {
            if (noMonsters) {
                this.remove = true;
                isBossFight = false;
                return;
            }
            if (hiddenMonsters) {
                this.hidden = (numMonsters * 4) + 4;
            }
            numMonsters++;
            if (this.type == 15) {
                numSlimes++;
            }
        }
    }

    private void addToStack() {
        Actor prev = null;
        Actor next = stack;
        while (true) {
            int dy = 0;
            int dd = 0;
            if (next != null) {
                dy = next.y - this.y;
                dd = next.depth - this.depth;
            }
            if (dd < 0 || (dd == 0 && dy >= 0)) {
                break;
            }
            prev = next;
            next = next.next;
        }
        this.next = next;
        if (prev == null) {
            stack = this;
        } else {
            prev.next = this;
        }
    }

    public Actor addEffect(int type) {
        Actor[] actorArr = actors;
        int i = numActors;
        numActors = i + 1;
        Actor effect = actorArr[i];
        effect.initEffect(type);
        effect.setLocation(this.x, this.y);
        return effect;
    }

    private void addEffect(Actor a, int type) {
        int ex = (this.x + a.x) >> 1;
        int ey = (this.y + a.y) >> 1;
        Actor[] actorArr = actors;
        int i = numActors;
        numActors = i + 1;
        Actor flash = actorArr[i];
        flash.initEffect(type);
        flash.setLocation(ex, ey);
        Resources resources = Main.midlet.res;
        flash.jump = Resources.GFX_JUMP_FX;
    }

    private Actor addEffectToSprite(int type, boolean random) {
        int ox;
        int oy;
        Sprite spr = this.sprite == null ? sprCommon : this.sprite[this.spriteIndex];
        int w = spr.getWidth();
        int h = spr.getHeight();
        int ox2 = -spr.refPixelX;
        int oy2 = -spr.refPixelY;
        if (random) {
            Sprite sprEffect = sprEffects[type];
            ox = ox2 + (sprEffect.getWidth() >> 1) + getRandom(w - sprEffect.getWidth());
            oy = oy2 + (sprEffect.getHeight() >> 1) + getRandom(h - sprEffect.getHeight());
        } else {
            ox = ox2 + (w >> 1);
            oy = oy2 + (h >> 1);
        }
        Resources resources = Main.midlet.res;
        int ox3 = (ox * 48) / Resources.GFX_ROOM_SIZE;
        Resources resources2 = Main.midlet.res;
        int oy3 = (oy * 48) / Resources.GFX_ROOM_SIZE;
        Actor[] actorArr = actors;
        int i = numActors;
        numActors = i + 1;
        Actor effect = actorArr[i];
        effect.initEffect(type);
        effect.setLocation(this.x + ox3, this.y + oy3);
        return effect;
    }

    public void addJake(int enter) {
        int x = this.x - (DIR_X[this.dir] * 24);
        int y = this.y - (DIR_Y[this.dir] * 24);
        if (enter >= 0) {
            x += ADIR_Y[enter] * 12;
            y += ADIR_X[enter] * 12;
        }
        Actor jake = addActor(1);
        jake.setLocation(x, y);
        jake.pushInsideRoom();
        jake.setDirection(this.dir);
    }

    private void updatePosition() {
        int i = this.x;
        Resources resources = Main.midlet.res;
        this.px = (i * Resources.GFX_ROOM_SIZE) / 48;
        int i2 = this.y;
        Resources resources2 = Main.midlet.res;
        this.py = (i2 * Resources.GFX_ROOM_SIZE) / 48;
    }

    public void setLocation(int x, int y) {
        this.x = x;
        this.y = y;
        if (this == hero) {
            heroPrevX = x;
            heroPrevY = y;
        } else if (this == boss) {
            bossStartX = x;
            bossStartY = y;
        }
        updatePosition();
    }

    public void setLocation(Actor a) {
        this.x = a.x;
        this.y = a.y;
        updatePosition();
    }

    public void centerOnGrid() {
        this.tileX = this.x / 12;
        this.tileY = this.y / 12;
        int ox = this.x - (this.tileX * 12);
        int oy = this.y - (this.tileY * 12);
        if (ox >= 6) {
            this.tileX++;
        }
        if (oy >= 6) {
            this.tileY++;
        }
        this.x = this.tileX * 12;
        this.y = this.tileY * 12;
        updatePosition();
    }

    public void translate(int dx, int dy) {
        this.x += dx;
        this.y += dy;
        updatePosition();
    }

    private void move() {
        this.x += this.vx;
        this.y += this.vy;
    }

    private void stop() {
        this.vx = 0;
        this.vy = 0;
    }

    public void twist() {
        int w = this.width;
        this.width = this.height;
        this.height = w;
    }

    public void setDirection(int dir) {
        this.dir = dir;
    }

    private void setVelocity(int dir) {
        this.dir = dir;
        this.vx = DIR_X[dir] * this.speed;
        this.vy = DIR_Y[dir] * this.speed;
    }

    private void setAngleVelocity() {
        this.vx = (ANGLE_X[this.angle] * this.speed) >> 8;
        this.vy = (ANGLE_Y[this.angle] * this.speed) >> 8;
    }

    private void setDirection(int x, int y) {
        int dx = x - this.x;
        int dy = y - this.y;
        int dist = getMagnitude(dx, dy);
        if (dist <= this.speed) {
            this.vx = dx;
            this.vy = dy;
        } else if (dist == 0) {
            this.vx = 0;
            this.vy = 0;
        } else {
            this.vx = (this.speed * dx) / dist;
            this.vy = (this.speed * dy) / dist;
        }
    }

    private void move(int distance) {
        this.x += DIR_X[this.dir] * distance;
        this.y += DIR_Y[this.dir] * distance;
        updatePosition();
    }

    private void move(int dir, int distance) {
        this.x += DIR_X[dir] * distance;
        this.y += DIR_Y[dir] * distance;
        this.steps -= distance;
        if (this.steps < 0) {
            this.steps = 0;
        }
    }

    private void moveSteps() {
        int distance = this.steps;
        if (distance > this.speed) {
            distance = this.speed;
        }
        move(this.dir, distance);
    }

    private boolean slide(boolean checked) {
        int avx = this.vx < 0 ? -this.vx : this.vx;
        int avy = this.vy < 0 ? -this.vy : this.vy;
        int dirH = this.vx < 0 ? 3 : 2;
        int dirV = this.vy < 0 ? 0 : 1;
        if (!checked) {
            move(dirH, avx, false);
            move(dirV, avy, false);
            return true;
        }
        if (avx > avy) {
            if (!move(dirH, avx, false)) {
                this.vx = -this.vx;
                return false;
            }
            if (move(dirV, avy, false)) {
                return true;
            }
            this.vy = -this.vy;
            return false;
        }
        if (!move(dirV, avy, false)) {
            this.vy = -this.vy;
            return false;
        }
        if (move(dirH, avx, false)) {
            return true;
        }
        this.vx = -this.vx;
        return false;
    }

    private boolean bounce() {
        int prevVx = this.vx;
        int prevVy = this.vy;
        boolean bounce = slide(true) ? false : true;
        if (bounce) {
            if (this.vx != prevVx) {
                this.angle = 16 - this.angle;
            }
            if (this.vy != prevVy) {
                this.angle = 8 - this.angle;
            }
            if (this.angle < 0) {
                this.angle += 16;
            }
        }
        return bounce;
    }

    private boolean move(int dir, int distance, boolean canSlide) {
        int bx = this.x + (DIR_X[dir] * this.width);
        int by = this.y + (DIR_Y[dir] * this.height);
        int prevTileX = bx / 12;
        int prevTileY = by / 12;
        int bx2 = bx + (DIR_X[dir] * distance);
        int by2 = by + (DIR_Y[dir] * distance);
        int tx = bx2 / 12;
        int ty = by2 / 12;
        if (bx2 < 0) {
            tx = -1;
        }
        if (by2 < 0) {
            ty = -1;
        }
        boolean testTile = (prevTileX == tx && prevTileY == ty) ? false : true;
        if (!testTile) {
            move(dir, distance);
            return true;
        }
        int distL = canMove(dir, DIR_ANTI[dir], distance);
        int distR = canMove(dir, DIR_CLOCK[dir], distance);
        int dist = distL < distR ? distL : distR;
        if (dist > 0) {
            move(dir, dist);
            return true;
        }
        if (distL > 0) {
            if (canSlide) {
                return move(DIR_ANTI[dir], distance >> 1, false);
            }
        } else if (distR > 0 && canSlide) {
            return move(DIR_CLOCK[dir], distance >> 1, false);
        }
        return false;
    }

    private int canMove(int dir, int borderDir, int distance) {
        int x = this.x + (DIR_X[dir] * (this.width + distance));
        int y = this.y + (DIR_Y[dir] * (this.height + distance));
        int bx = x;
        int by = y;
        if (borderDir >= 0) {
            bx += DIR_X[borderDir] * this.width;
            by += DIR_Y[borderDir] * this.height;
        }
        boolean allowDoor = this.type == 0 && this.state != 80;
        boolean canMove = room.canMoveTo(bx, by, allowDoor, this.superType == 10);
        if (canMove) {
            return distance;
        }
        int dist = pushBackTile(x, y, dir) + distance;
        return dist;
    }

    private boolean canMoveTo(int x, int y, boolean isProjectile) {
        int c = 4;
        do {
            c--;
            if (c < 0) {
                return true;
            }
        } while (room.canMoveTo((CORNER_X[c] * this.width) + x, (CORNER_Y[c] * this.height) + y, false, isProjectile));
        return false;
    }

    public int getDistance(Actor a) {
        return getMagnitude(a.x - this.x, a.y - this.y);
    }

    public int getDirection(Actor a) {
        return getDirection(a.x - this.x, a.y - this.y);
    }

    public int getAngle(Actor a) {
        return getAngle(a.x - this.x, a.y - this.y);
    }

    private boolean collides(Actor a) {
        int w = this.width + a.width;
        int h = this.height + a.height;
        return a.x + w > this.x && a.x < this.x + w && a.y + h > this.y && a.y < this.y + h;
    }

    private boolean collides(int ax, int ay, int aw, int ah) {
        int w = this.width + aw;
        int h = this.height + ah;
        return ax + w > this.x && ax < this.x + w && ay + h > this.y && ay < this.y + h;
    }

    private boolean testCollision(Actor a) {
        int dx = a.x - this.x;
        int w = this.width + a.width;
        if (this.vx > 0) {
            int hitX = dx - w;
            if (hitX > 0) {
                return false;
            }
            int missX = this.vx + dx + w;
            if (missX < 0) {
                return false;
            }
        } else if (this.vx < 0) {
            int hitX2 = dx + w;
            if (hitX2 < 0) {
                return false;
            }
            int missX2 = (this.vx + dx) - w;
            if (missX2 > 0) {
                return false;
            }
        } else if (w + dx < 0 || w - dx < 0) {
            return false;
        }
        int dy = a.y - this.y;
        int h = this.height + a.height;
        if (this.vy > 0) {
            int hitY = dy - h;
            if (hitY > 0) {
                return false;
            }
            int missY = this.vy + dy + h;
            if (missY < 0) {
                return false;
            }
        } else if (this.vy < 0) {
            int hitY2 = dy + h;
            if (hitY2 < 0) {
                return false;
            }
            int missY2 = (this.vy + dy) - h;
            if (missY2 > 0) {
                return false;
            }
        } else if (h + dy < 0 || h - dy < 0) {
            return false;
        }
        return true;
    }

    private Actor getCollision(int mask, int typeExclude) {
        int i = numActors;
        while (true) {
            i--;
            if (i < 0) {
                return null;
            }
            Actor a = actors[i];
            if (!a.remove && a.hidden <= 0 && ((1 << a.superType) & mask) != 0 && (a != boss || !bossInvisible)) {
                if (mask != 40 || a.hp > 0) {
                    if (typeExclude < 0 || a.type != typeExclude) {
                        boolean hit = testCollision(a);
                        if (hit) {
                            return a;
                        }
                    }
                }
            }
        }
    }

    private void nudge(Actor hit) {
        int dirX = DIR_X[this.dir];
        int dirY = DIR_Y[this.dir];
        if (dirX != 0) {
            this.x = hit.x - ((this.width + hit.width) * dirX);
        }
        if (dirY != 0) {
            this.y = hit.y - ((this.height + hit.height) * dirY);
        }
    }

    private void pushBack(Actor a) {
        int ox = this.x - a.x;
        int oy = this.y - a.y;
        int w = this.width + a.width;
        int h = this.height + a.height;
        int dx = 0;
        int dy = 0;
        if (ox > 0 && ox < w) {
            dx = w - ox;
        } else if (ox < 0 && (-ox) < w) {
            dx = -(w + ox);
        }
        if (oy > 0 && oy < h) {
            dy = h - oy;
        } else if (oy < 0 && (-oy) < h) {
            dy = -(h + oy);
        }
        if (dx != 0 && dy != 0) {
            int adx = dx > 0 ? dx : -dx;
            int ady = dy > 0 ? dy : -dy;
            if (adx < ady) {
                this.x += dx;
            } else {
                this.y += dy;
            }
            updatePosition();
        }
    }

    private int pushBackTile(int x, int y, int dir) {
        switch (dir) {
            case 0:
                int tileY = (y / 12) + 1;
                int dist = y - (tileY * 12);
                return dist;
            case 1:
                int tileY2 = y / 12;
                int dist2 = (tileY2 * 12) - (y + 1);
                return dist2;
            case 2:
                int tileX = x / 12;
                int dist3 = (tileX * 12) - (x + 1);
                return dist3;
            case 3:
                int tileX2 = (x / 12) + 1;
                int dist4 = x - (tileX2 * 12);
                return dist4;
            default:
                return 0;
        }
    }

    private void hit(Actor a, int damage) {
        if (this == hero) {
            GameCanvas.main.playSoundSfx(GameCanvas.HEROHITTED);
            heroCanHarm = false;
            heroDead = engine.hurt(damage);
            heroInvulnerable = 24;
            setAnimation(3);
        } else {
            if (this.type == 23 && a.type == 56) {
                GameCanvas.main.playSoundSfx(GameCanvas.ENEMYHITTED);
                if (this.state != 84) {
                    setAnimation(4);
                    this.ticks = 90;
                    this.state = 84;
                    return;
                }
                return;
            }
            if (this.hp <= 0) {
                GameCanvas.main.playSoundSfx(GameCanvas.ENEMYHITTED);
                return;
            }
            GameCanvas.main.playSoundSfx(GameCanvas.ENEMYHITTED);
            this.hp -= damage;
            if (this.hp < 0) {
                this.hp = 0;
            }
            this.jump = 0;
            setAnimation(1);
        }
        int vel = this.script[8];
        if (vel > 0) {
            if (a == null) {
                this.vx = -(DIR_X[this.dir] * vel);
                this.vy = -(DIR_Y[this.dir] * vel);
            } else if (a.superType == 10) {
                int m = getMagnitude(a.vx, a.vy);
                if (m == 0) {
                    this.vx = 0;
                    this.vy = 0;
                } else {
                    this.vx = (a.vx * vel) / m;
                    this.vy = (a.vy * vel) / m;
                }
            } else {
                int dx = this.x - a.x;
                int dy = this.y - a.y;
                int m2 = getMagnitude(dx, dy);
                if (m2 == 0) {
                    this.vx = 0;
                    this.vy = 0;
                } else {
                    this.vx = (dx * vel) / m2;
                    this.vy = (dy * vel) / m2;
                }
            }
            this.ticks = this.script[9];
        }
        if (this.superType == 5 && this.hp == 0 && vel == 0) {
            this.ticks = 20;
        }
        this.state = 80;
    }

    private void smash(Actor a) {
        room.lift(this.tileX, this.tileY);
        setFx(1);
    }

    private boolean use() {
        boolean use = !this.used;
        if (use) {
            switch (this.type) {
                case 27:
                    room.openChest(this, this.command);
                    break;
                case 30:
                    room.pressSwitch(this.command);
                    break;
            }
            used();
        }
        return use;
    }

    public void used() {
        switch (this.type) {
            case 25:
                setAnimation(1);
                numUnlit--;
                break;
            case 26:
            case 28:
            case 29:
            default:
                this.remove = true;
                break;
            case 27:
            case 30:
                setAnimation(1);
                break;
        }
        this.used = true;
    }

    private Animator setAnimation(int id, Animator anim) {
        int ap;
        this.spriteIndex = 0;
        byte[] frames = null;
        int loops = 0;
        int frameRate = 1;
        if (id >= 0) {
            int ap2 = 12;
            int i = id;
            while (true) {
                ap = ap2;
                i--;
                if (i < 0) {
                    break;
                }
                ap2 = ap + this.script[ap];
            }
            if (ap >= this.script.length) {
                return null;
            }
            int ap3 = ap + 1;
            int numFrames = this.script[ap] - 4;
            int ap4 = ap3 + 1;
            this.spriteIndex = this.script[ap3];
            int ap5 = ap4 + 1;
            loops = this.script[ap4];
            int ap6 = ap5 + 1;
            frameRate = this.script[ap5];
            frames = new byte[numFrames];
            int i2 = 0;
            while (i2 < numFrames) {
                frames[i2] = this.script[ap6];
                i2++;
                ap6++;
            }
        }
        if (anim == null) {
            anim = new Animator();
        }
        anim.reset(frames, frameRate);
        anim.setLoops(loops);
        return anim;
    }

    private void setAnimation(int id) {
        setAnimation(id, this);
        this.anim = id;
    }

    private void setFx(int anim) {
        setAnimation(anim);
        this.superType = 12;
        this.type = -1;
    }

    public void paint(Graphics g) {
        boolean flip = false;
        if (this.delay <= 0 && this.hidden <= 0) {
            int px = room.projectX(this.px);
            int py = room.projectY(this.py) - this.jump;
            if (this.sprite == null) {
                if (this.superType == 9) {
                    Dungeon.paintObject(g, px, py, this.frame);
                    return;
                }
                if (this.superType == 2) {
                    sprPrincess.paint(g, px, py, this.frame, false);
                    if (this == npc) {
                        Engine engine2 = engine;
                        Resources resources = Main.midlet.res;
                        engine2.paintBubble(g, px, (Resources.GFX_PRINCESS_BUBBLE_OY + py) - sprPrincess.refPixelY);
                        return;
                    }
                    return;
                }
                sprCommon.paint(g, px, py, this.frame, false);
                return;
            }
            if (this.type == 55) {
                this.sprite[this.spriteIndex].paintTransformed(g, px, py, this.frame, this.dir);
                return;
            }
            if (this.superType == 5) {
                if (bossDirs[this.spriteIndex] == 2 && (this.dir == 0 || this.dir == 3)) {
                    flip = true;
                }
                this.sprite[this.spriteIndex].paint(g, px, py, this.frame, flip);
                return;
            }
            if (this.superType == 10 || this.superType == 12) {
                this.sprite[this.spriteIndex].paint(g, px, py, this.frame, false);
                return;
            }
            Resources resources2 = Main.midlet.res;
            int numDirs = Resources.GFX_SPRITE_NUM_DIRS[this.type][this.spriteIndex];
            int dir = this.dir;
            if (numDirs == 1) {
                dir = 0;
                flip = false;
            } else if (numDirs == 2) {
                numDirs = 1;
                flip = dir == 0 || dir == 3;
                dir = 0;
            } else if (numDirs != 3 || dir != 3) {
                flip = false;
            } else {
                flip = true;
                dir = 2;
            }
            int f = (this.frame * numDirs) + dir;
            Sprite s = this.sprite[this.spriteIndex];
            s.paint(g, px, py, f, flip);
            if (this == npc) {
                engine.paintBubble(g, px, py - s.refPixelY);
            }
        }
    }

    private void paintShadow(Graphics g) {
        if (this.hidden <= 0 || (this.superType == 3 && !hiddenMonsters)) {
            if (this.superType == 5) {
                if (imgBossShadow != null) {
                    int px = room.projectX(this.px);
                    int py = room.projectY(this.py);
                    g.drawImage(imgBossShadow, px, bossShadowOy + py, 3);
                    return;
                }
                return;
            }
            if (this.shadow >= 0) {
                Resources resources = Main.midlet.res;
                int[] shadowOy = Resources.GFX_SHADOW_OY;
                int px2 = room.projectX(this.px);
                int py2 = room.projectY(this.py);
                int oy = this.type < shadowOy.length ? shadowOy[this.type] : 0;
                Dungeon.paintActorShadow(g, px2, py2 + oy, this.shadow);
            }
        }
    }

    private void paintLocation(Graphics g) {
        int px = room.projectX(this.px);
        int py = room.projectY(this.py);
        int i = this.width;
        Resources resources = Main.midlet.res;
        int pw = (i * Resources.GFX_ROOM_SIZE) / 48;
        int i2 = this.height;
        Resources resources2 = Main.midlet.res;
        int ph = (i2 * Resources.GFX_ROOM_SIZE) / 48;
        g.setColor(-65536);
        g.drawRect(px - pw, py - ph, (pw << 1) - 1, (ph << 1) - 1);
        g.fillRect(px - 1, py - 1, 3, 3);
    }

    private void update() {
        if (!this.remove) {
            if (this.hidden <= 0) {
                animate();
            }
            switch (this.superType) {
                case 0:
                    if (this.type == 0) {
                        updateFinn();
                    } else {
                        updateJake();
                    }
                    break;
                case 1:
                case 2:
                    updateNPC();
                    break;
                case 3:
                    updateMonster();
                    break;
                case 4:
                    updateTrap();
                    break;
                case 5:
                    updateBoss();
                    break;
                case 6:
                    updatePickup();
                    break;
                case 7:
                    updateSwitch();
                    break;
                case 8:
                    updateTile();
                    break;
                case 10:
                    if (this.type == 55) {
                        updateArrow();
                    } else if (this.type == 59) {
                        updateBubble();
                    } else {
                        updateProjectile();
                    }
                    break;
                case 11:
                    updateBomb();
                    break;
                case 12:
                    updateFx();
                    break;
            }
            updatePosition();
        }
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0211  */
    /* JADX WARN: Code duplicated, block: B:161:0x030c  */
    /* JADX WARN: Code duplicated, block: B:163:0x0310  */
    /* JADX WARN: Code duplicated, block: B:164:0x031e  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b3  */
    private void updateFinn() {
        if (!heroLocked && !heroTalking) {
            if (heroCelebrate) {
                setAnimation(10);
                this.ticks = 0;
                this.state = 85;
                heroCelebrate = false;
                return;
            }
            int h = controls[0];
            int v = controls[1];
            int ctrlsDir = (v < 0 || (h == heroPrevDir && h >= 0)) ? h : v;
            boolean twoDir = h >= 0 && v >= 0;
            boolean action = controls[2] > 0;
            if (this.steps > 0) {
                ctrlsDir = this.dir;
                action = false;
            }
            if (heroInvulnerable > 0) {
                heroInvulnerable--;
            }
            heroCanHarm = heroInvulnerable <= 0 && !heroDead;
            heroPrevX = this.x;
            heroPrevY = this.y;
            switch (this.state) {
                case 1:
                    if (this.ticks > 0) {
                        int i = this.ticks - 1;
                        this.ticks = i;
                        if (i <= 0) {
                            setAnimation(5);
                        } else if (this.anim == 5 && this.complete) {
                            setAnimation(6);
                            this.state = 0;
                        }
                        break;
                    } else {
                        if (this.anim == 5) {
                            setAnimation(6);
                            this.state = 0;
                        }
                        break;
                    }
                case 0:
                    if (action) {
                        doAction();
                        break;
                    } else {
                        if (ctrlsDir != -1) {
                            this.state = 3;
                        }
                        break;
                    }
                case 3:
                    if (action) {
                        doAction();
                    } else if (ctrlsDir == -1) {
                        setAnimation(0);
                        if (isBossFight) {
                            this.state = 0;
                        } else {
                            this.ticks = 40;
                            this.state = 1;
                        }
                    } else {
                        if (ctrlsDir != this.dir) {
                            this.dir = ctrlsDir;
                            this.state = 3;
                        }
                        int dist = this.speed;
                        if (twoDir) {
                            dist -= 2;
                        }
                        heroWalked = move(this.dir, dist, !twoDir);
                        if (twoDir) {
                            int sideDir = ctrlsDir == h ? v : h;
                            heroWalked = move(sideDir, dist, false) || heroWalked;
                        }
                        if (heroWalked) {
                            if (this.anim != 1) {
                                setAnimation(1);
                            }
                        } else {
                            setAnimation(0);
                            this.state = 0;
                            push();
                        }
                    }
                    break;
                case 11:
                    int i2 = this.frameHit;
                    Resources resources = Main.midlet.res;
                    if (i2 == Resources.FRAME_HIT_SWORD) {
                        doSword();
                    }
                    if (this.complete) {
                        setAnimation(0);
                        this.state = 0;
                    }
                    break;
                case 12:
                    int i3 = this.frameHit;
                    Resources resources2 = Main.midlet.res;
                    if (i3 == Resources.FRAME_HIT_HAMMER) {
                        boolean strikeBoss = boss != null && boss.type == 20 && (boss.state == 2 || boss.state == 10);
                        if (strikeBoss) {
                            boss.hit(this, 1);
                        } else {
                            doHammer();
                            if (this.complete) {
                                setAnimation(0);
                                this.state = 0;
                            }
                        }
                    } else if (this.complete) {
                        setAnimation(0);
                        this.state = 0;
                    }
                    break;
                case 13:
                    if (this.ticks > 0) {
                        int i4 = this.ticks - 1;
                        this.ticks = i4;
                        if (i4 <= 0) {
                            Actor arrow = addActor();
                            arrow.init(55, this.sprite);
                            arrow.setLocation(this);
                            arrow.setVelocity(this.dir);
                            arrow.fired = this;
                            if (this.dir == 2 || this.dir == 3) {
                                arrow.twist();
                                arrow.translate(0, 4);
                            }
                            if (this.dir != 1) {
                                Resources resources3 = Main.midlet.res;
                                arrow.jump = Resources.GFX_JUMP_ARROW;
                            }
                            arrow.move(8);
                        }
                    }
                    if (this.complete) {
                        setAnimation(0);
                        this.state = 0;
                    }
                    break;
                case 14:
                    if (this.ticks > 0) {
                        int i5 = this.ticks - 1;
                        this.ticks = i5;
                        if (i5 <= 0) {
                            Actor magic = addActor();
                            magic.init(56, this.sprite);
                            magic.setLocation(this);
                            magic.setVelocity(this.dir);
                            magic.fired = this;
                            magic.ticks = 8;
                            if (this.dir == 2 || this.dir == 3) {
                                magic.translate(0, 3);
                            }
                            if (this.dir != 1) {
                                Resources resources4 = Main.midlet.res;
                                magic.jump = Resources.GFX_JUMP_MAGIC;
                            }
                            magic.move(12);
                        }
                    }
                    if (this.complete) {
                        setAnimation(0);
                        this.state = 0;
                    }
                    break;
                case 30:
                    this.hidden = 0;
                    moveSteps();
                    if (this.steps <= 0) {
                        setAnimation(0);
                        if (isBossFight) {
                            this.state = 0;
                        } else {
                            this.ticks = 40;
                            this.state = 1;
                        }
                        heroEntered = true;
                        room.enteredRoom();
                    }
                    break;
                case 31:
                    moveSteps();
                    heroWalked = true;
                    if (this.steps <= 0) {
                        room.exit(this.dir, this.x, this.y);
                    }
                    break;
                case 80:
                    boolean slid = slide(true);
                    if (slid) {
                        int i6 = this.ticks - 1;
                        this.ticks = i6;
                        if (i6 <= 0) {
                            if (heroDead) {
                                this.ticks = 8;
                                this.state = 82;
                            } else {
                                this.ticks = 3;
                                this.state = 81;
                            }
                        }
                    } else if (heroDead) {
                        this.ticks = 8;
                        this.state = 82;
                    } else {
                        this.ticks = 3;
                        this.state = 81;
                    }
                    break;
                case STATE_RECOVER /* 81 */:
                    int i7 = this.ticks - 1;
                    this.ticks = i7;
                    if (i7 <= 0) {
                        setAnimation(0);
                        this.state = 0;
                    }
                    break;
                case STATE_DIEING /* 82 */:
                    int i8 = this.ticks - 1;
                    this.ticks = i8;
                    if (i8 <= 0) {
                        this.turn = 4;
                        this.ticks = 24;
                        this.state = 83;
                        engine.heroIsDieing();
                    }
                    break;
                case STATE_DEAD /* 83 */:
                    if (this.anim == 3) {
                        this.dir = DIR_CLOCK[this.dir];
                        int i9 = this.turn - 1;
                        this.turn = i9;
                        if (i9 <= 0 && this.dir == 1) {
                            this.shadow = -1;
                            setAnimation(4);
                        }
                    }
                    int i10 = this.ticks - 1;
                    this.ticks = i10;
                    if (i10 <= 0) {
                        engine.heroIsDead();
                    }
                    break;
                case STATE_CELEBRATE /* 85 */:
                    int[] iArr = HERO_JUMP_CELEBRATE;
                    int i11 = this.ticks;
                    this.ticks = i11 + 1;
                    this.jump = iArr[i11];
                    if (this.complete) {
                        setAnimation(0);
                        this.dir = 1;
                        this.state = 0;
                        engine.switchWeaponIfEmpty();
                    }
                    break;
            }
            heroPrevDir = ctrlsDir;
            room.heroMoved(heroPrevX, heroPrevY, this.x, this.y);
        }
    }

    private void push() {
        int pushX = this.x + (DIR_X[this.dir] * (this.width + 1));
        int pushY = this.y + (DIR_Y[this.dir] * (this.height + 1));
        room.push(pushX, pushY);
    }

    private void doAction() {
        if (npc != null) {
            room.talkToNPC(npc.superType, npc.type);
            this.dir = 0;
            npcWait = 20;
            setTalking(true);
        }
        if (!doItemAction()) {
            int weapon = engine.getCurrentWeapon();
            switch (weapon) {
                case 42:
                case 48:
                    GameCanvas.main.playSoundSfx(GameCanvas.SWORD);
                    setAnimation(2);
                    this.state = 11;
                    break;
                case 44:
                    if (bomb == null) {
                        GameCanvas.main.playSoundSfx(GameCanvas.BOMB);
                        bomb = addActor(45);
                        bomb.setLocation(this.x, this.y + 1);
                        bomb.ticks = 24;
                    }
                    break;
                case 46:
                    GameCanvas.main.playSoundSfx(GameCanvas.BOW);
                    setAnimation(8);
                    this.state = 13;
                    this.ticks = 4;
                    break;
                case 47:
                    GameCanvas.main.playSoundSfx(GameCanvas.WAND);
                    setAnimation(9);
                    this.state = 14;
                    this.ticks = 2;
                    break;
                case 50:
                    GameCanvas.main.playSoundSfx(GameCanvas.POTION);
                    if (engine.usePotion()) {
                        celebrate();
                    }
                    break;
            }
        }
    }

    private boolean doItemAction() {
        boolean actioned = false;
        boolean strikeBoss = boss != null && boss.type == 20 && (boss.state == 2 || boss.state == 10);
        if (strikeBoss) {
            int hammerX = this.x + (DIR_X[this.dir] * 20);
            int hammerY = this.y + (DIR_Y[this.dir] * 20);
            int hammerW = (ADIR_X[this.dir] * 20) + (ADIR_Y[this.dir] * 16);
            int hammerH = (ADIR_Y[this.dir] * 20) + (ADIR_X[this.dir] * 16);
            boolean actioned2 = boss.collides(hammerX, hammerY, hammerW, hammerH);
            if (actioned2) {
                setAnimation(7);
                this.state = 12;
            }
            return actioned2;
        }
        int w = this.width + 12;
        int h = this.height + 12;
        int radius = (ADIR_X[this.dir] * w) + (ADIR_Y[this.dir] * h);
        int i = numActors;
        while (!actioned) {
            i--;
            if (i < 0) {
                return actioned;
            }
            Actor a = actors[i];
            if (a.superType == 8) {
                int dx = a.x - this.x;
                int dy = a.y - this.y;
                int facing = (DIR_X[this.dir] * dx) + (DIR_Y[this.dir] * dy);
                if (facing >= 0) {
                    int distance = facing - radius;
                    int align = (DIR_Y[this.dir] * dx) + (DIR_X[this.dir] * dy);
                    switch (a.type) {
                        case 27:
                            if (this.dir == 0 && distance <= 10 && (-align) <= 10 && align <= 10 && a.use()) {
                                actioned = true;
                                setAnimation(0);
                                this.state = 0;
                            }
                            break;
                        case 29:
                            if (engine.hasItem(2) && distance <= 10 && (-align) <= 12 && align <= 12) {
                                actioned = true;
                                setAnimation(7);
                                this.state = 12;
                            }
                            break;
                    }
                }
            }
        }
        return actioned;
    }

    private void doSword() {
        int x = this.x + (DIR_X[this.dir] * 20);
        int y = this.y + (DIR_Y[this.dir] * 20);
        int w = (ADIR_X[this.dir] * 20) + (ADIR_Y[this.dir] * 16);
        int h = (ADIR_Y[this.dir] * 20) + (ADIR_X[this.dir] * 16);
        int weapon = engine.getCurrentWeapon();
        int damage = weapon == 48 ? 2 : 1;
        int i = numActors;
        while (true) {
            i--;
            if (i >= 0) {
                Actor a = actors[i];
                if (!a.remove && a.hidden <= 0 && (a.superType == 3 || a.type == 34)) {
                    if (a.collides(x, y, w, h)) {
                        if (weapon == 48) {
                            addEffect(a, 4);
                        } else {
                            addEffect(a, 5);
                        }
                        if (a.type == 34) {
                            engine.switchLever();
                        } else {
                            a.hit(this, damage);
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    private void doHammer() {
        int w = this.width + 12;
        int h = this.height + 12;
        int radius = (ADIR_X[this.dir] * w) + (ADIR_Y[this.dir] * h);
        int i = numActors;
        while (true) {
            i--;
            if (i >= 0) {
                Actor a = actors[i];
                if (a.type == 29) {
                    int dx = a.x - this.x;
                    int dy = a.y - this.y;
                    int facing = (DIR_X[this.dir] * dx) + (DIR_Y[this.dir] * dy);
                    if (facing >= 0) {
                        int distance = facing - radius;
                        int align = (DIR_Y[this.dir] * dx) + (DIR_X[this.dir] * dy);
                        if (distance <= 10 && (-align) <= 12 && align <= 12) {
                            a.smash(this);
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    public void enterRoom(int x, int y) {
        setLocation(x, y);
        this.steps = 0;
        this.state = 30;
    }

    public void enterRoom(int dir, int x, int y) {
        int dirX = DIR_X[dir];
        int dirY = DIR_Y[dir];
        int w = dirX * this.width;
        int h = dirY * this.height;
        int ox = dirX * STEPS_BACK[dir];
        int oy = dirY * STEPS_BACK[dir];
        setLocation(x - (w + ox), y - (h + oy));
        this.dir = dir;
        this.steps = ((w << 1) * dirX) + 3 + ((h << 1) * dirY) + STEPS_BACK[dir];
        if (dir == 1) {
            this.steps += 20;
        }
        this.state = 30;
        setAnimation(1);
    }

    public void enterDoor(int dir, int x, int y, boolean atDoor) {
        int dirX = DIR_X[dir];
        int dirY = DIR_Y[dir];
        int w = dirX * this.width;
        int h = dirY * this.height;
        setLocation(x, y);
        this.steps = (dirX * w) + 3 + (dirY * h) + 24;
        if (atDoor) {
            move(dir, this.steps);
            updatePosition();
            heroEntered = true;
        } else {
            this.dir = dir;
            this.state = 30;
            this.hidden++;
            setAnimation(1);
        }
    }

    private void checkForExit() {
        if (!heroExited && heroEntered) {
            if (room.onEntrance(this.x, this.y)) {
                room.exitToDungeon();
                return;
            }
            int exit = isOutsideRoom(this.x, this.y, true);
            if (exit >= 0) {
                this.dir = exit;
                int dx = DIR_X[this.dir] * ((this.width << 1) + STEPS_BACK[DIR_OPP[this.dir]]);
                int dy = DIR_Y[this.dir] * ((this.height << 1) + STEPS_BACK[DIR_OPP[this.dir]]);
                this.steps = (DIR_X[this.dir] * dx) + (DIR_Y[this.dir] * dy);
                if (this.dir == 0) {
                    this.steps += 20;
                }
                this.state = 31;
                setAnimation(1);
                heroExited = true;
                return;
            }
            int exit2 = room.isAtDoor(this.x, this.y, this.width, this.height);
            if (exit2 >= 0) {
                this.hidden++;
                room.exit(exit2, this.x, this.y);
            }
        }
    }

    public int isOutsideRoom(int x, int y, boolean checkExit) {
        int ox;
        int oy;
        int dir = 4;
        do {
            dir--;
            if (dir < 0) {
                return -1;
            }
            ox = DIR_X[dir] * this.width;
            oy = DIR_Y[dir] * this.height;
        } while (!room.isOutside(x + ox, y + oy, checkExit));
        return dir;
    }

    public void updateJake() {
        switch (this.state) {
            case 0:
                if (heroWalked) {
                    setAnimation(1);
                    this.state = 3;
                } else {
                    return;
                }
                break;
            case 1:
            case 2:
            default:
                return;
            case 3:
                break;
        }
        if (!heroWalked) {
            setAnimation(0);
            this.state = 0;
            return;
        }
        int jakeToX = hero.x - (DIR_X[hero.dir] * 24);
        int jakeToY = hero.y - ((DIR_Y[hero.dir] * 24) + 1);
        int heroDx = hero.x - heroPrevX;
        int heroDy = hero.y - heroPrevY;
        int dx = jakeToX - this.x;
        int dy = jakeToY - this.y;
        int adx = dx < 0 ? -dx : dx;
        int ady = dy < 0 ? -dy : dy;
        if (adx > this.speed) {
            dx = dx < 0 ? -this.speed : this.speed;
        }
        if (ady > this.speed) {
            dy = dy < 0 ? -this.speed : this.speed;
        }
        if (hero.dir == 0 || hero.dir == 1) {
            if (dx != 0 && heroDy != 0 && DIR_Y[hero.dir] * dy < 0) {
                dy = 0;
            }
        } else if (dy != 0 && heroDx != 0 && DIR_X[hero.dir] * dx < 0) {
            dx = 0;
        }
        int exit = isOutsideRoom(this.x + dx, this.y + dy, false);
        if (exit >= 0) {
            setAnimation(0);
            this.state = 0;
            return;
        }
        translate(dx, dy);
        int adx2 = dx < 0 ? -dx : dx;
        int ady2 = dy < 0 ? -dy : dy;
        int heroSlide = (DIR_X[hero.dir] * heroDx) + (DIR_Y[hero.dir] * heroDy);
        if (heroSlide == 0) {
            this.dir = hero.dir;
            return;
        }
        if (adx2 > ady2) {
            this.dir = dx > 0 ? 2 : 3;
            return;
        }
        if (ady2 > adx2) {
            this.dir = dy > 0 ? 1 : 0;
        } else if (dx * heroDx > 0 || dy * heroDy > 0) {
            this.dir = hero.dir;
        }
    }

    private void pushInsideRoom() {
        int dir = 4;
        while (true) {
            dir--;
            if (dir >= 0) {
                int x = this.x + (DIR_X[dir] * this.width);
                int y = this.y + (DIR_Y[dir] * this.height);
                if (dir == 0) {
                    y -= 8;
                }
                translate(room.insideX(x), room.insideY(y));
            } else {
                return;
            }
        }
    }

    private void updateNPC() {
        switch (this.state) {
            case 0:
                if (speaker == this.type && this.superType == 1) {
                    setAnimation(1);
                    this.state = 40;
                } else if (this.type == 4) {
                    int i = this.ticks + 1;
                    this.ticks = i;
                    Resources resources = Main.midlet.res;
                    if (i >= Resources.GFX_JUMP_FLOAT.length) {
                        this.ticks = 0;
                    }
                    Resources resources2 = Main.midlet.res;
                    this.jump = Resources.GFX_JUMP_FLOAT[this.ticks];
                }
                break;
            case 30:
                moveSteps();
                hero.dir = 0;
                hero.pushBack(this);
                if (this.steps <= 0) {
                    heroLocked = false;
                    setAnimation(0);
                    this.state = 0;
                    centerOnGrid();
                    room.place(this.tileX - 1, this.tileY - 1);
                    room.talk();
                    npcWait = 20;
                    return;
                }
                return;
            case 40:
                if (speaker != this.type) {
                    setAnimation(0);
                    this.state = 0;
                }
                break;
        }
        if (npcWait <= 0) {
            int talkX = this.x + (DIR_X[this.dir] * 24);
            int talkY = this.y + (DIR_Y[this.dir] * 24);
            boolean inRange = hero.collides(talkX, talkY, 12, 12);
            if (inRange) {
                npc = this;
            }
        }
    }

    public void enterPrincess(int x, int y) {
        setLocation(x, y);
        this.steps = 60;
        this.state = 30;
        setAnimation(1);
        heroLocked = true;
    }

    private void updateMonster() {
        if (!heroLocked && !heroTalking && !heroExited && heroEntered) {
            if (this.hidden > 0) {
                if (hiddenMonsters) {
                    return;
                }
                int i = this.hidden - 1;
                this.hidden = i;
                if (i <= 0) {
                    fall();
                    return;
                }
                return;
            }
            if (this.state == 50) {
                int i2 = this.jump;
                Resources resources = Main.midlet.res;
                this.jump = i2 - Resources.GFX_GRAVITY_FALL;
                if (this.jump <= 0) {
                    this.ticks = 8;
                    this.state = 0;
                    return;
                }
                return;
            }
            if (heroCanHarm && collides(hero)) {
                hero.hit(this, this.damage);
            }
            if (this.state == 80) {
                monsterIsHit();
                return;
            }
            if (this.state == 70) {
                boolean slid = slide(true);
                if (slid) {
                    int i3 = this.ticks - 1;
                    this.ticks = i3;
                    if (i3 > 0) {
                        return;
                    }
                }
                this.state = 0;
                return;
            }
            if (this.hp <= 0) {
                int i4 = this.ticks - 1;
                this.ticks = i4;
                if (i4 <= 0) {
                    numMonsters--;
                    if (this.type == 16) {
                        addEffectToSprite(2, false);
                    } else {
                        addEffectToSprite(1, false);
                    }
                    boolean dropGem = getOccurence(this.script[10]);
                    if (dropGem) {
                        drop(40);
                        return;
                    }
                    boolean dropHealth = getOccurence(this.script[11]);
                    if (dropHealth) {
                        drop(39);
                        return;
                    }
                    if (this.type == 15) {
                        int i5 = 4;
                        while (true) {
                            i5--;
                            if (i5 < 0) {
                                break;
                            }
                            Actor spawned = addActor(16);
                            spawned.setLocation(this);
                            spawned.vx = DIAGONAL_X[i5] * 4;
                            spawned.vy = DIAGONAL_Y[i5] * 4;
                            spawned.ticks = 3;
                            spawned.state = 70;
                        }
                    }
                    this.remove = true;
                    return;
                }
                return;
            }
            switch (this.type) {
                case 9:
                    updateZombie1();
                    break;
                case 10:
                    updateZombie2(true);
                    break;
                case 11:
                    updateGhost();
                    break;
                case 12:
                    updateSkeleton();
                    break;
                case 13:
                    updateFlameGuy();
                    break;
                case 14:
                    updatePenguin();
                    break;
                case 15:
                case 16:
                    updateSlimeCube();
                    break;
            }
        }
    }

    private boolean monsterIsHit() {
        int prevX = this.x;
        int prevY = this.y;
        boolean slid = slide(true);
        if (this.fx != null) {
            this.fx.translate(this.x - prevX, this.y - prevY);
        }
        if (slid) {
            int i = this.ticks - 1;
            this.ticks = i;
            if (i > 0) {
                return true;
            }
        }
        this.ticks = 8;
        this.state = 0;
        if (this.fx != null) {
            this.fx.stuck = this.ticks;
            this.fx = null;
        }
        return false;
    }

    public boolean jump(boolean toHero, int range, int[] jump, boolean check) {
        this.angle = getRandom(16);
        if (toHero && range > 0) {
            int distToHero = hero.getDistance(this);
            if (distToHero > range) {
                toHero = false;
            }
        }
        if (toHero) {
            this.angle = getAngle(hero);
            this.angle = increment((this.angle + getRandom(3)) - 1, 16);
        }
        int ticks = jump.length - 1;
        setAngleVelocity();
        boolean canMove = true;
        if (check) {
            int destX = this.x + (this.vx * ticks);
            int destY = this.y + (this.vy * ticks);
            canMove = canMoveTo(destX, destY, false);
        }
        if (!canMove) {
            return false;
        }
        this.state = 4;
        this.ticks = ticks;
        this.jump = jump[ticks];
        return true;
    }

    public void fall() {
        Resources resources = Main.midlet.res;
        this.jump = Resources.GFX_JUMP_FALL;
        this.state = 50;
    }

    private boolean canHitHero(int distance, int width, int height) {
        if (!heroCanHarm) {
            return false;
        }
        int attackX = this.x + (DIR_X[this.dir] * distance);
        int attackY = this.y + (DIR_Y[this.dir] * distance);
        int attackW = (ADIR_X[this.dir] * width) + (ADIR_Y[this.dir] * height);
        int attackH = (ADIR_Y[this.dir] * width) + (ADIR_X[this.dir] * height);
        return hero.collides(attackX, attackY, attackW, attackH);
    }

    private void updateZombie1() {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    int turn = getRandom(3);
                    this.dir = increment(this.dir + turn, 4);
                    int distToHero = hero.getDistance(this);
                    if (distToHero < 96 && getOccurence(2)) {
                        this.dir = getDirection(hero);
                    }
                    this.ticks = getRandom(10) + 10;
                    this.state = 3;
                    setAnimation(2);
                }
                break;
            case 3:
                boolean moved = move(this.dir, this.speed, false);
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    this.ticks = getRandom(10) + 15;
                    this.state = 0;
                    setAnimation(0);
                } else if (!moved) {
                    this.dir = DIR_OPP[this.dir];
                    this.ticks = 10;
                }
                break;
        }
    }

    private void updateZombie2(boolean tryAttack) {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    Resources resources = Main.midlet.res;
                    if (!jump(true, 96, Resources.GFX_JUMP_ZOMBIE2, true)) {
                        Resources resources2 = Main.midlet.res;
                        if (!jump(false, 96, Resources.GFX_JUMP_ZOMBIE2, true)) {
                        }
                    }
                    setAnimation(2);
                }
                break;
            case 4:
                move();
                Resources resources3 = Main.midlet.res;
                int[] iArr = Resources.GFX_JUMP_ZOMBIE2;
                int i2 = this.ticks - 1;
                this.ticks = i2;
                this.jump = iArr[i2];
                if (this.ticks <= 0) {
                    this.ticks = getRandom(10) + 10;
                    this.state = 0;
                    setAnimation(0);
                }
                break;
        }
    }

    private void updateGhost() {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    this.state = 4;
                    setAnimation(2);
                }
                break;
            case 4:
                int dirH = DIAGONAL_H[this.dir];
                int dirV = DIAGONAL_V[this.dir];
                if (!move(dirV, this.speed, false)) {
                    this.dir = DIR_BOUNCE_V[this.dir];
                } else if (!move(dirH, this.speed, false)) {
                    this.dir = DIR_BOUNCE_H[this.dir];
                }
                break;
        }
    }

    private void updateSkeleton() {
        int heroDx = hero.x - this.x;
        int heroDy = hero.y - this.y;
        int facing = (DIR_X[this.dir] * heroDx) + (DIR_Y[this.dir] * heroDy);
        int align = (DIR_Y[this.dir] * heroDx) + (DIR_X[this.dir] * heroDy);
        int aAlign = align < 0 ? -align : align;
        boolean hitHero = canHitHero(14, 10, 5);
        switch (this.state) {
            case 0:
                if (hitHero) {
                    this.ticks = 5;
                    setAnimation(0);
                    this.state = 10;
                }
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    int turn = getRandom(3);
                    this.dir = increment(this.dir + turn, 4);
                    int distToHero = hero.getDistance(this);
                    if (distToHero < 120) {
                        this.dir = getDirection(hero);
                    }
                    this.ticks = getRandom(8) + 16;
                    this.state = 3;
                    setAnimation(2);
                }
                break;
            case 3:
                if (hitHero) {
                    this.ticks = 5;
                    setAnimation(0);
                    this.state = 10;
                }
                int speed = this.speed;
                if (facing > 0 && facing < 120 && aAlign < 32) {
                    speed += 2;
                    animate();
                }
                boolean moved = move(this.dir, speed, false);
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    this.ticks = getRandom(10) + 15;
                    this.state = 0;
                    setAnimation(0);
                } else if (!moved) {
                    this.dir = DIR_OPP[this.dir];
                    this.ticks = 16;
                }
                break;
            case 10:
                if (this.ticks > 0) {
                    int i3 = this.ticks - 1;
                    this.ticks = i3;
                    if (i3 <= 0) {
                        if (hitHero) {
                            hero.hit(this, this.damage);
                        }
                        setAnimation(3);
                    }
                }
                if (this.ticks <= 0 && this.complete) {
                    this.ticks = 12;
                    setAnimation(0);
                    this.state = 0;
                    break;
                }
                break;
        }
    }

    private void updateFlameGuy() {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    stop();
                    this.angle = getRandom(16);
                    this.state = 4;
                    setAnimation(0);
                }
                break;
            case 4:
                if (this.vx != 0 || this.vy != 0) {
                    boolean bounce = bounce();
                    if (bounce) {
                        this.turn = -this.turn;
                        this.ticks = 16;
                    }
                }
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    if (this.turn > 0) {
                        this.angle++;
                        this.turn--;
                    } else if (this.turn < 0) {
                        this.angle--;
                        this.turn++;
                    }
                    if (this.angle < 0) {
                        this.angle += 16;
                    } else if (this.angle >= 16) {
                        this.angle -= 16;
                    }
                    setAngleVelocity();
                    if (this.turn == 0) {
                        this.turn = getRandom(8) + 4;
                        if (getRandomBoolean()) {
                            this.turn = -this.turn;
                        }
                    }
                    this.ticks = 4;
                }
                break;
        }
    }

    private void updatePenguin() {
        boolean hitHero = canHitHero(18, 12, 6);
        switch (this.state) {
            case 0:
                if (hitHero) {
                    setAnimation(3);
                    this.state = 10;
                }
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    int turn = getRandom(3);
                    this.dir = increment(this.dir + turn, 4);
                    this.ticks = getRandom(4) + 6;
                    this.state = 3;
                    setAnimation(2);
                }
                break;
            case 3:
                boolean moved = move(this.dir, this.speed, false);
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    this.ticks = 16;
                    this.state = 0;
                    setAnimation(0);
                } else if (!moved) {
                    this.dir = DIR_OPP[this.dir];
                    this.ticks = 6;
                }
                break;
            case 10:
                if (hitHero) {
                    int i3 = this.frameHit;
                    Resources resources = Main.midlet.res;
                    if (i3 == Resources.FRAME_HIT_PENGUIN) {
                        hero.hit(this, this.damage);
                    }
                }
                if (this.complete) {
                    this.ticks = 12;
                    setAnimation(0);
                    this.state = 0;
                }
                break;
        }
    }

    private void updateSlimeCube() {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    this.angle = getRandom(16);
                    int distToHero = hero.getDistance(this);
                    if (distToHero < 120) {
                        this.angle = getAngle(hero);
                        this.angle = increment((this.angle + getRandom(3)) - 1, 16);
                    }
                    setAngleVelocity();
                    this.ticks = getRandom(16) + 8;
                    this.state = 4;
                    setAnimation(2);
                }
                break;
            case 4:
                boolean bounce = bounce();
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    this.state = 0;
                    setAnimation(0);
                } else if (bounce) {
                    this.ticks = 16;
                }
                break;
        }
    }

    private void updateTrap() {
        if (!heroLocked && !heroTalking && !heroExited && heroEntered) {
            if (heroCanHarm && collides(hero)) {
                hero.hit(null, this.damage);
            }
            switch (this.type) {
                case 17:
                    updateBlade();
                    break;
                case 18:
                    updateSpiky();
                    break;
                case 19:
                    updateEyeclops();
                    break;
            }
        }
    }

    private void updateBlade() {
        if (this.ticks > 0) {
            this.ticks--;
            return;
        }
        boolean moved = move(this.dir, this.speed, false);
        if (!moved) {
            this.dir = DIR_OPP[this.dir];
            this.ticks = 8;
        }
    }

    private void updateSpiky() {
        if (this.ticks > 0) {
            this.ticks--;
            return;
        }
        move(this.dir, this.speed);
        int tileX = this.x / 12;
        int tileY = this.y / 12;
        int dirX = DIR_X[this.dir];
        int dirY = DIR_Y[this.dir];
        int dirTurn = this.state == 7 ? DIR_CLOCK[this.dir] : DIR_ANTI[this.dir];
        int dirTurnX = DIR_X[dirTurn];
        int dirTurnY = DIR_Y[dirTurn];
        if (dirTurnX < 0) {
            dirTurnX--;
        }
        if (dirTurnY < 0) {
            dirTurnY--;
        }
        boolean canTurn = room.canMoveToTile((tileX + dirTurnX) - dirX, (tileY + dirTurnY) - dirY);
        if (canTurn && this.steps <= 0) {
            this.dir = dirTurn;
            this.steps = 25;
            centerOnGrid();
            return;
        }
        boolean canMove = room.canMoveToTile(tileX + dirX, tileY + dirY);
        if (!canMove) {
            this.dir = this.state == 7 ? DIR_ANTI[this.dir] : DIR_CLOCK[this.dir];
            centerOnGrid();
        } else {
            int anim = SPIKY_ANIMS[this.dir];
            if (this.anim != anim) {
                setAnimation(anim);
            }
        }
    }

    private void updateEyeclops() {
        if (!this.used) {
            if (startMonsters > 0 && roomCleared == 0) {
                setAnimation(8);
                this.used = true;
                return;
            }
            int dx = hero.x - this.x;
            int dy = hero.y - this.y;
            int anim = 0;
            if (dx == 0) {
                anim = dy > 0 ? 0 : 7;
            } else {
                int adx = dx > 0 ? dx : -dx;
                int ady = dy > 0 ? dy : -dy;
                int ratio = (ady << 8) / adx;
                if (dy < 0) {
                    if (ratio > 60) {
                        anim = 7;
                    } else {
                        anim = dx > 0 ? 1 : 2;
                    }
                } else if (ratio < 950) {
                    if (dx < 0) {
                        if (ratio < 60) {
                            anim = 2;
                        } else {
                            anim = ratio < 256 ? 5 : 6;
                        }
                    } else if (ratio < 60) {
                        anim = 1;
                    } else {
                        anim = ratio < 256 ? 3 : 4;
                    }
                }
            }
            setAnimation(anim);
            if (this.ticks > 0) {
                this.ticks--;
                return;
            }
            Actor fire = addActor();
            fire.init(57, this.sprite);
            fire.setLocation(this);
            fire.translate(fire.vx << 1, fire.vy << 1);
            fire.setDirection(hero.x, hero.y);
            Resources resources = Main.midlet.res;
            fire.jump = Resources.GFX_JUMP_EYE_FIRE;
            fire.fired = this;
            this.ticks = 40;
        }
    }

    private void updateBoss() {
        if (!heroLocked && !heroTalking && heroEntered) {
            if (this.state == 83) {
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    this.remove = true;
                    numMonsters--;
                    boss = null;
                    return;
                }
                addEffectToSprite(7, true);
                return;
            }
            if (this.state == 80) {
                GameCanvas.main.playSoundSfx(GameCanvas.ENEMYHITTED);
                if (!monsterIsHit()) {
                    this.ticks = 12;
                    this.state = 81;
                    return;
                }
                return;
            }
            boolean canHarm = (!heroCanHarm || bossInvisible || this.state == 84) ? false : true;
            if (canHarm && collides(hero)) {
                hero.hit(this, this.damage);
            }
            switch (this.type) {
                case 20:
                    updateBurger();
                    break;
                case 21:
                    updateBiclops();
                    break;
                case 22:
                    updateFireCount();
                    break;
                case 23:
                    updateIceKing();
                    break;
            }
        }
    }

    private void bossKilled() {
        bossKilled = true;
        engine.bossKilled();
        setAnimation(2);
        this.ticks = 50;
        this.state = 83;
    }

    private void updateBurger() {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    bossCounter = 8;
                    this.state = 4;
                }
                break;
            case 2:
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    setAnimation(5);
                    this.ticks = 8;
                    this.state = 0;
                }
                break;
            case 4:
                if (this.ticks > 0) {
                    Resources resources = Main.midlet.res;
                    int[] iArr = Resources.GFX_JUMP_BURGER;
                    int i3 = this.ticks - 1;
                    this.ticks = i3;
                    this.jump = iArr[i3];
                    if (this.jump > 0) {
                        slide(false);
                    }
                } else if (bossCounter > 0) {
                    this.speed = 5;
                    Resources resources2 = Main.midlet.res;
                    jump(true, 0, Resources.GFX_JUMP_BURGER, false);
                    setAnimation(3);
                    bossCounter--;
                } else {
                    this.state = 5;
                }
                break;
            case 5:
                boolean atStart = this.x == bossStartX && this.y == bossStartY;
                if (this.ticks > 0) {
                    Resources resources3 = Main.midlet.res;
                    int[] iArr2 = Resources.GFX_JUMP_BURGER;
                    int i4 = this.ticks - 1;
                    this.ticks = i4;
                    this.jump = iArr2[i4];
                    if (this.jump > 0) {
                        setDirection(bossStartX, bossStartY);
                        move();
                    }
                } else if (atStart) {
                    setAnimation(4);
                    bossCounter = BURGER_FIRE_COUNT[this.hp];
                    this.ticks = 8;
                    this.state = 10;
                } else {
                    this.speed = 8;
                    Resources resources4 = Main.midlet.res;
                    this.ticks = Resources.GFX_JUMP_BURGER.length;
                    Resources resources5 = Main.midlet.res;
                    int[] iArr3 = Resources.GFX_JUMP_BURGER;
                    int i5 = this.ticks - 1;
                    this.ticks = i5;
                    this.jump = iArr3[i5];
                    setAnimation(3);
                }
                break;
            case 10:
                int i6 = this.ticks - 1;
                this.ticks = i6;
                if (i6 <= 0) {
                    int i7 = bossCounter - 1;
                    bossCounter = i7;
                    if (i7 >= 0) {
                        Actor fire = addActor();
                        fire.init(58, sprBoss);
                        fire.setLocation(this.x, this.y + 20);
                        fire.setDirection(hero.x, hero.y);
                        fire.jump = 6;
                        fire.fired = this;
                        this.ticks = 8;
                    } else {
                        this.ticks = 28;
                        this.state = 2;
                    }
                }
                break;
            case STATE_RECOVER /* 81 */:
                int i8 = this.ticks - 1;
                this.ticks = i8;
                if (i8 <= 0) {
                    if (this.hp <= 0) {
                        bossKilled();
                    } else {
                        this.state = 0;
                    }
                }
                break;
        }
    }

    private void updateBiclops() {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    int jumpDx = hero.x - this.x;
                    int jumpDy = hero.y - this.y;
                    int jumpDist = getMagnitude(jumpDx, jumpDy);
                    int speed = BICLOPS_SPEED[this.hp];
                    bossCounter = jumpDist / speed;
                    if (bossCounter < 10) {
                        bossCounter = 10;
                    }
                    this.vx = jumpDx / bossCounter;
                    this.vy = jumpDy / bossCounter;
                    bossCounter += 4;
                    this.ticks = 0;
                    setAnimation(3);
                    this.state = 4;
                }
                break;
            case 2:
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    this.state = 0;
                } else {
                    boolean hitLeft = hero.collides(this.x - 40, this.y + 10, 16, 16);
                    if (hitLeft) {
                        this.dir = 3;
                        setAnimation(5);
                        this.state = 10;
                    } else {
                        boolean hitRight = hero.collides(this.x + 40, this.y + 10, 16, 16);
                        if (hitRight) {
                            this.dir = 2;
                            setAnimation(5);
                            this.state = 10;
                        }
                    }
                }
                break;
            case 4:
                this.ticks++;
                int remaining = bossCounter - this.ticks;
                if (remaining < 0) {
                    setAnimation(0);
                    this.state = 2;
                    this.ticks = 20;
                } else {
                    int i3 = this.ticks;
                    Resources resources = Main.midlet.res;
                    if (i3 < Resources.GFX_JUMP_BICLOPS.length) {
                        Resources resources2 = Main.midlet.res;
                        this.jump = Resources.GFX_JUMP_BICLOPS[this.ticks];
                    } else {
                        Resources resources3 = Main.midlet.res;
                        if (remaining < Resources.GFX_JUMP_BICLOPS.length) {
                            Resources resources4 = Main.midlet.res;
                            this.jump = Resources.GFX_JUMP_BICLOPS[remaining];
                            if (this.anim == 3) {
                                setAnimation(4);
                            }
                        }
                    }
                    if (this.jump > 0) {
                        slide(false);
                    }
                }
                break;
            case 10:
                int i4 = this.frameHit;
                Resources resources5 = Main.midlet.res;
                if (i4 == Resources.FRAME_HIT_BICLOPS) {
                    int ox = DIR_X[this.dir] * 40;
                    boolean hit = hero.collides(this.x + ox, this.y + 10, 16, 16);
                    if (hit && heroCanHarm) {
                        hero.hit(this, this.damage);
                    }
                }
                if (this.complete) {
                    setAnimation(0);
                    this.dir = 1;
                    this.state = 0;
                    this.ticks = 8;
                }
                break;
            case STATE_RECOVER /* 81 */:
                int i5 = this.ticks - 1;
                this.ticks = i5;
                if (i5 <= 0) {
                    if (this.hp <= 0) {
                        bossKilled();
                    } else {
                        this.state = 0;
                    }
                }
                break;
        }
    }

    private void updateFireCount() {
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0) {
                    setAnimation(5);
                    this.state = 10;
                    this.ticks = 4;
                }
                break;
            case 4:
                int i2 = this.ticks - 1;
                this.ticks = i2;
                if (i2 <= 0) {
                    int teleportX = getRandom(192) + 72;
                    int teleportY = getRandom(192) + 72;
                    int distToHero = getMagnitude(hero.x - teleportX, hero.y - teleportY);
                    if (distToHero >= 100) {
                        setLocation(teleportX, teleportY);
                        setAnimation(4);
                        this.state = 5;
                    }
                }
                break;
            case 5:
                if (this.complete) {
                    bossInvisible = false;
                    setAnimation(0);
                    this.state = 0;
                    this.ticks = COUNT_WAIT_ATTACK[this.hp];
                }
                break;
            case 6:
                if (this.complete) {
                    this.state = 4;
                    this.ticks = 8;
                }
                break;
            case 10:
                if (this.ticks > 0) {
                    int i3 = this.ticks - 1;
                    this.ticks = i3;
                    if (i3 <= 0) {
                        Actor fire = addActor();
                        fire.init(59, sprBoss);
                        fire.setLocation(this.x, this.y + 16);
                        fire.setAnimation(2);
                        Resources resources = Main.midlet.res;
                        fire.jump = Resources.GFX_JUMP_BUBBLE;
                        fire.fired = this;
                    }
                }
                if (this.complete) {
                    bossInvisible = true;
                    setAnimation(3);
                    this.state = 6;
                }
                break;
            case STATE_RECOVER /* 81 */:
                int i4 = this.ticks - 1;
                this.ticks = i4;
                if (i4 <= 0) {
                    if (this.hp <= 0) {
                        bossKilled();
                    } else {
                        bossInvisible = true;
                        setAnimation(3);
                        this.state = 6;
                    }
                }
                break;
        }
    }

    private void updateIceKing() {
        boolean move = false;
        switch (this.state) {
            case 0:
                int i = this.ticks - 1;
                this.ticks = i;
                if (i <= 0 && this.frame == 0) {
                    setAnimation(3);
                    this.state = 10;
                    this.ticks = 4;
                }
                break;
            case 4:
                setDirection(ICE_KING_X[bossLocation], bossStartY);
                if (this.vx == 0 && this.vy == 0) {
                    this.ticks = 24;
                    this.state = 0;
                } else {
                    slide(false);
                }
                break;
            case 10:
                if (this.ticks > 0) {
                    int i2 = this.ticks - 1;
                    this.ticks = i2;
                    if (i2 <= 0) {
                        Actor fire = addActor();
                        fire.init(60, sprBoss);
                        fire.setLocation(this.x, this.y + 20);
                        fire.setDirection(hero.x, hero.y);
                        fire.vx <<= 1;
                        fire.vy <<= 1;
                        fire.fired = this;
                        fire.turn = 8;
                        fire.ticks = 40;
                    }
                }
                if (heroCanHarm && hero.collides(this.x, this.y, 30, 30)) {
                    hero.hit(this, this.damage);
                }
                if (this.complete) {
                    move = true;
                }
                break;
            case STATE_RECOVER /* 81 */:
                int i3 = this.ticks - 1;
                this.ticks = i3;
                if (i3 <= 0) {
                    if (this.hp <= 0) {
                        bossKilled();
                    } else {
                        setAnimation(3);
                        this.ticks = 4;
                        this.state = 10;
                    }
                }
                break;
            case STATE_FROZEN /* 84 */:
                hero.pushBack(this);
                int i4 = this.ticks - 1;
                this.ticks = i4;
                if (i4 <= 0) {
                    move = true;
                }
                break;
        }
        if (move) {
            int location = -1;
            int i5 = ICE_KING_X.length;
            while (true) {
                i5--;
                if (i5 >= 0) {
                    int dx = this.x - ICE_KING_X[i5];
                    if (dx <= 44 && (-dx) <= 44) {
                        location = i5;
                    }
                } else {
                    if (location == 0 || location == 2) {
                        bossLocation = 1;
                    } else {
                        bossLocation = getOccurence(2) ? 0 : 2;
                    }
                    setAnimation(0);
                    this.state = 4;
                    return;
                }
            }
        }
    }

    private void updatePickup() {
        if (!heroTalking) {
            if (this.state == 50) {
                int i = this.jump;
                Resources resources = Main.midlet.res;
                this.jump = i - Resources.GFX_GRAVITY_FALL;
                if (this.jump <= 0) {
                    Resources resources2 = Main.midlet.res;
                    this.ticks = Resources.GFX_JUMP_BOUNCE.length;
                    this.jump = 0;
                    this.state = 52;
                }
            } else if (this.state == 52) {
                Resources resources3 = Main.midlet.res;
                int[] iArr = Resources.GFX_JUMP_BOUNCE;
                int i2 = this.ticks - 1;
                this.ticks = i2;
                this.jump = iArr[i2];
                if (this.ticks == 0) {
                    this.state = 0;
                }
            } else if (this.state == 51) {
                int i3 = this.jump;
                Resources resources4 = Main.midlet.res;
                this.jump = i3 - Resources.GFX_GRAVITY_DROP;
                if (this.jump <= 0) {
                    Resources resources5 = Main.midlet.res;
                    this.ticks = Resources.GFX_JUMP_BOUNCE.length;
                    this.jump = 0;
                    this.state = 52;
                }
            } else if (this.state == 90) {
                int i4 = this.jump;
                Resources resources6 = Main.midlet.res;
                if (i4 < Resources.GFX_JUMP_PICKUP) {
                    int i5 = this.jump;
                    Resources resources7 = Main.midlet.res;
                    this.jump = i5 - Resources.GFX_GRAVITY_FOUND;
                } else {
                    int i6 = this.ticks - 1;
                    this.ticks = i6;
                    if (i6 <= 0) {
                        if (!room.talk()) {
                            engine.pickup(this.type);
                            heroLocked = false;
                            this.remove = true;
                        } else {
                            return;
                        }
                    }
                }
            }
            if ((this.state == 0 || this.state == 52) && collides(hero)) {
                GameCanvas.main.playSoundSfx(GameCanvas.POTION);
                engine.pickup(this.type);
                if (this.command >= 0) {
                    engine.setFlag(this.command);
                }
                addEffect(hero, 3);
                this.remove = true;
            }
            if (this.fx != null) {
                this.fx.jump = this.jump;
                this.fx.remove = this.remove;
            }
        }
    }

    public void drop(int type) {
        init(type);
        Resources resources = Main.midlet.res;
        this.jump = Resources.GFX_JUMP_DROP;
        this.state = 51;
    }

    public void found() {
        this.shadow = -1;
        Resources resources = Main.midlet.res;
        this.jump = Resources.GFX_JUMP_FOUND;
        this.ticks = 16;
        this.state = 90;
        this.fx = addEffectToSprite(6, false);
        this.fx.setLoops(0);
    }

    private void updateSwitch() {
        if (!this.used && collides(hero)) {
            use();
        }
    }

    private void updateTile() {
        if (this.delay > 0) {
            this.delay--;
            return;
        }
        if (this.detonate > 0) {
            int i = this.detonate - 1;
            this.detonate = i;
            if (i <= 0) {
                room.lift(this.tileX, this.tileY);
                initEffect(8);
                return;
            }
        }
        if (this.type == 31) {
            updateSpikes();
            return;
        }
        if (this.type == 32 || this.type == 33) {
            updatePillar();
        } else if (this.type == 34) {
            updateLever();
        }
    }

    private void updateSpikes() {
        if (heroEntered) {
            if (this.raised && heroCanHarm && collides(hero)) {
                hero.hit(null, this.damage);
            }
            int i = this.ticks - 1;
            this.ticks = i;
            if (i <= 0) {
                if (this.raised) {
                    setAnimation(2);
                    this.ticks = 18;
                } else {
                    setAnimation(1);
                    this.ticks = 8;
                }
                this.raised = this.raised ? false : true;
            }
        }
    }

    private void updatePillar() {
        boolean lever2 = engine.checkLever();
        boolean change = (this.type == 32 && this.raised != lever2) || (this.type == 33 && this.raised == lever2);
        if (change) {
            this.raised = !this.raised;
            if (this.raised) {
                setAnimation(1);
                room.lift(this.tileX, this.tileY);
                this.depth = 2;
            } else {
                setAnimation(0);
                room.place(this.tileX, this.tileY);
                this.depth = 1;
            }
        }
    }

    private void updateLever() {
        boolean lever2 = engine.checkLever();
        boolean change = this.used ^ lever2;
        if (change) {
            this.used = !this.used;
            setAnimation(this.used ? 1 : 0);
        }
    }

    private void updateProjectile() {
        Actor hitBlock;
        boolean hit = false;
        if (this.type == 60 && this.turn > 0) {
            int i = this.turn - 1;
            this.turn = i;
            if (i <= 0) {
                setDirection(hero.x, hero.y);
                this.turn = 4;
            }
        }
        move();
        boolean isEnemy = this.fired != hero;
        if (isEnemy) {
            if (collides(hero)) {
                if (heroCanHarm) {
                    hero.hit(this, this.damage);
                }
                hit = true;
            }
        } else {
            Actor hitEnemy = getCollision(40, -1);
            if (hitEnemy != null) {
                hitEnemy.hit(this, this.damage);
                hit = true;
            }
            if (this.type == 56 && (hitBlock = getCollision(512, -1)) != null && hitBlock.type == 25 && hitBlock.use()) {
                hit = true;
            }
        }
        if (!canMoveTo(this.x, this.y, true)) {
            hit = true;
        }
        if (hit) {
            if (this.type == 57) {
                this.remove = true;
                return;
            } else {
                setFx(1);
                return;
            }
        }
        if (this.ticks > 0) {
            int i2 = this.ticks - 1;
            this.ticks = i2;
            if (i2 <= 0) {
                setAnimation(2);
            }
        }
        if (this.complete) {
            this.remove = true;
        }
    }

    private void updateArrow() {
        if (this.stuck > 0) {
            int i = this.stuck - 1;
            this.stuck = i;
            if (i <= 0) {
                this.remove = true;
                return;
            }
            return;
        }
        boolean hitWall = move(this.dir, this.speed, false) ? false : true;
        boolean hitLever = false;
        boolean hitEnemy = false;
        if (lever != null && testCollision(lever)) {
            engine.switchLever();
            hitLever = true;
        }
        Actor hit = getCollision(40, 16);
        if (hit != null && hit.type != 23) {
            hit.hit(this, this.damage);
            hitEnemy = true;
        }
        if (hitLever) {
            this.remove = true;
            return;
        }
        if (hitEnemy) {
            setLocation(hit);
            nudge(hit);
            if (hit.superType == 5) {
                move(ARROW_BOSS_OFFSET[this.dir]);
            } else {
                move(ARROW_HIT_OFFSET[this.dir]);
            }
            setAnimation(1);
            this.depth = 1;
            this.stuck = 12;
            hit.fx = this;
            return;
        }
        if (hitWall) {
            move(ARROW_WALL_OFFSET[this.dir]);
            setAnimation(1);
            this.depth = 1;
            this.stuck = 12;
        }
    }

    private void updateBubble() {
        if (this.anim == 2 && this.complete) {
            setDirection(hero.x, hero.y);
            setAnimation(0);
        }
        move();
        boolean hit = false;
        if (collides(hero)) {
            if (heroCanHarm) {
                hero.hit(this, this.damage);
            }
            hit = true;
        }
        if (!canMoveTo(this.x, this.y, true)) {
            hit = true;
        }
        if (hit) {
            setFx(1);
        }
    }

    private void updateBomb() {
        int i = this.ticks - 1;
        this.ticks = i;
        if (i <= 0) {
            int i2 = numActors;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    Actor a = actors[i2];
                    if (!a.remove && a.hidden <= 0) {
                        int type = a.type;
                        if (a == hero) {
                            int dist = getDistance(a);
                            if (dist <= 24) {
                                a.hit(this, 2);
                            }
                        } else if (a.superType == 3) {
                            int dist2 = getDistance(a);
                            if (dist2 <= 40) {
                                a.hit(this, this.damage);
                            }
                        } else if (a.superType == 5) {
                            if (a.jump <= 0 && !bossInvisible) {
                                boolean damage = a.type == 21 || (a.type == 23 && a.state == 84);
                                if (damage) {
                                    int dist3 = getDistance(a);
                                    if (dist3 <= 40) {
                                        a.hit(this, 1);
                                    }
                                }
                            }
                        } else if (type == 28 || type == 29) {
                            if (a.collides(this.x, this.y, 36, 36)) {
                                a.detonate = 4;
                            }
                        }
                    }
                } else {
                    initEffect(8);
                    bomb = null;
                    return;
                }
            }
        }
    }

    private void updateFx() {
        if (this.complete) {
            this.remove = true;
        }
    }

    public static void start(Room room2) {
        room = room2;
        hero = null;
        npc = null;
        lever = null;
        boss = null;
        princess = null;
        bomb = null;
        numActors = 0;
        numMonsters = 0;
        numSlimes = 0;
        startMonsters = 0;
        numUnlit = 0;
        isBossFight = false;
        heroInvulnerable = 0;
        heroPrevDir = -1;
        roomCleared = 0;
        roomLit = 0;
        paused = 0;
        wait = 0;
        heroWalked = false;
        heroEntered = false;
        heroExited = false;
        heroTalking = false;
        heroLocked = false;
        heroCelebrate = false;
        heroDead = false;
        heroCanHarm = true;
        bossCounter = 0;
        bossLocation = 0;
        bossAttack = -1;
        bossInvisible = false;
        bossKilled = false;
        noMonsters = false;
        hiddenMonsters = false;
        npcWait = 0;
        speaker = -1;
        int i = 3;
        while (true) {
            i--;
            if (i >= 0) {
                controls[i] = -1;
            } else {
                return;
            }
        }
    }

    public static void initActors(Engine engine2) {
        engine = engine2;
        int i = 40;
        while (true) {
            i--;
            if (i >= 0) {
                actors[i] = new Actor();
            } else {
                return;
            }
        }
    }

    public static Actor addActor() {
        Actor[] actorArr = actors;
        int i = numActors;
        numActors = i + 1;
        return actorArr[i];
    }

    public static Actor addActor(int type) {
        Actor[] actorArr = actors;
        int i = numActors;
        numActors = i + 1;
        Actor a = actorArr[i];
        a.init(type);
        return a;
    }

    public static Actor addObject(int type, int tileX, int tileY) {
        Actor a = addActor(type);
        int x = (tileX * 12) + 12;
        int y = (tileY * 12) + 12;
        a.setLocation(x, y);
        a.tileX = tileX;
        a.tileY = tileY;
        return a;
    }

    public static void addAll() {
        stack = null;
        int i = numActors;
        while (true) {
            i--;
            if (i < 0) {
                break;
            } else {
                actors[i].addToStack();
            }
        }
        while (stack != null) {
            stack.add();
            stack = stack.next;
        }
        numMonsters += numSlimes * 4;
        if (numMonsters > 0) {
            startMonsters = numMonsters;
            roomCleared = 16;
        }
        if (numUnlit > 0) {
            roomLit = 8;
        }
    }

    public static void updateActors() {
        if (paused > 0) {
            paused--;
            return;
        }
        if (wait > 0) {
            wait--;
        }
        hero.update();
        if (!heroLocked && !heroTalking && npcWait > 0) {
            npcWait--;
        }
        npc = null;
        int i = numActors;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            Actor a = actors[i];
            if (a != hero) {
                a.update();
                if (a.remove) {
                    Actor[] actorArr = actors;
                    Actor[] actorArr2 = actors;
                    int i2 = numActors - 1;
                    numActors = i2;
                    actorArr[i] = actorArr2[i2];
                    actors[numActors] = a;
                }
            }
        }
        if (numMonsters == 0 && roomCleared > 0) {
            int i3 = roomCleared - 1;
            roomCleared = i3;
            if (i3 <= 0) {
                room.roomCleared(isBossFight);
            }
        }
        if (numUnlit == 0 && roomLit > 0) {
            int i4 = roomLit - 1;
            roomLit = i4;
            if (i4 <= 0) {
                room.roomLit();
            }
        }
        hero.checkForExit();
        room.focus(hero.px, hero.py, false);
        int i5 = 3;
        while (true) {
            i5--;
            if (i5 < 0) {
                break;
            } else {
                controls[i5] = -1;
            }
        }
        heroWalked = false;
        if (slowdown > 0) {
            paused = slowdown;
        }
    }

    public static void paintReady() {
        stack = null;
        int i = numActors;
        while (true) {
            i--;
            if (i >= 0) {
                Actor a = actors[i];
                if (!a.remove) {
                    a.addToStack();
                }
            } else {
                return;
            }
        }
    }

    public static void paintActors(Graphics g) {
        for (Actor next = stack; next != null; next = next.next) {
            next.paint(g);
        }
    }

    public static void paintSprite(Graphics g, int type, int x, int y) {
        int frame = scripts[type][16];
        Resources resources = Main.midlet.res;
        int x2 = x + (Resources.GFX_OBJECT_SIZE >> 1);
        Resources resources2 = Main.midlet.res;
        sprCommon.paint(g, x2, y + (Resources.GFX_OBJECT_SIZE >> 1), frame);
    }

    public static void paintHero(Graphics g, int x, int y) {
        hero.sprite[hero.spriteIndex].paint(g, x, y, hero.frame);
    }

    public static void paintShadows(Graphics g) {
        for (Actor next = stack; next != null; next = next.next) {
            next.paintShadow(g);
        }
    }

    public static void setControls(int id, int dir) {
        controls[id] = dir;
    }

    public static void backToGame() {
        pause(8);
    }

    public static void pause(int ticks) {
        if (ticks > paused) {
            paused = ticks;
        }
    }

    public static void lock() {
        heroLocked = true;
    }

    public static void celebrate() {
        heroCelebrate = true;
    }

    public static void setTalking(boolean isTalking) {
        heroTalking = isTalking;
    }

    public static void setTalking(int type) {
        speaker = type;
    }

    public static int getTalkingY() {
        Actor talking = hero;
        if (boss != null) {
            talking = boss;
        }
        if (princess != null) {
            talking = princess;
        }
        return room.projectY(talking.py);
    }

    public static Sprite[] loadSprite(int type) {
        Resources resources = Main.midlet.res;
        int num = Resources.GFX_NUM_SPRITES[type];
        if (num == 0) {
            return null;
        }
        Sprite[] sprites2 = new Sprite[num];
        for (int i = 0; i < num; i++) {
            Engine engine2 = engine;
            Resources resources2 = Main.midlet.res;
            int i2 = Resources.GFX_SPRITE_WIDTH[type][i];
            Resources resources3 = Main.midlet.res;
            Sprite s = engine2.pullSprite(i2, Resources.GFX_SPRITE_HEIGHT[type][i]);
            Resources resources4 = Main.midlet.res;
            int i3 = Resources.GFX_SPRITE_OX[type][i];
            Resources resources5 = Main.midlet.res;
            s.setRefPixelPosition(i3, Resources.GFX_SPRITE_OY[type][i]);
            sprites2[i] = s;
        }
        return sprites2;
    }

    public static void loadGfx(int loadState) {
        switch (loadState) {
            case 5:
                sprites[0] = loadSprite(0);
                break;
            case 6:
                int type = 1;
                while (true) {
                    Resources resources = Main.midlet.res;
                    if (type < Resources.GFX_NUM_TYPES) {
                        sprites[type] = loadSprite(type);
                        type++;
                    }
                    break;
                }
                break;
            case 7:
                Engine engine2 = engine;
                Resources resources2 = Main.midlet.res;
                int i = Resources.GFX_OBJECT_SIZE;
                Resources resources3 = Main.midlet.res;
                sprCommon = engine2.pullSprite(i, Resources.GFX_OBJECT_SIZE);
                Sprite sprite = sprCommon;
                Resources resources4 = Main.midlet.res;
                int i2 = Resources.GFX_OBJECT_SIZE >> 1;
                Resources resources5 = Main.midlet.res;
                sprite.setRefPixelPosition(i2, Resources.GFX_OBJECT_SIZE >> 1);
                Engine engine3 = engine;
                Resources resources6 = Main.midlet.res;
                int i3 = Resources.GFX_PRINCESS_WIDTH;
                Resources resources7 = Main.midlet.res;
                sprPrincess = engine3.pullSprite(i3, Resources.GFX_PRINCESS_HEIGHT);
                Sprite sprite2 = sprPrincess;
                Resources resources8 = Main.midlet.res;
                int i4 = Resources.GFX_PRINCESS_OX;
                Resources resources9 = Main.midlet.res;
                sprite2.setRefPixelPosition(i4, Resources.GFX_PRINCESS_OY);
                for (int i5 = 0; i5 < 9; i5++) {
                    Sprite[] spriteArr = sprEffects;
                    Engine engine4 = engine;
                    Resources resources10 = Main.midlet.res;
                    int i6 = Resources.GFX_FX_WIDTH[i5];
                    Resources resources11 = Main.midlet.res;
                    spriteArr[i5] = engine4.pullSprite(i6, Resources.GFX_FX_HEIGHT[i5]);
                    Sprite sprite3 = sprEffects[i5];
                    Resources resources12 = Main.midlet.res;
                    int i7 = Resources.GFX_FX_OX[i5];
                    Resources resources13 = Main.midlet.res;
                    sprite3.setRefPixelPosition(i7, Resources.GFX_FX_OY[i5]);
                }
                try {
                    scripts = engine.pullByteArrays(61);
                } catch (IOException e) {
                    e.printStackTrace();
                    return;
                }
                break;
        }
    }

    public static void loadBossGfx(int dungeon) throws IOException {
        unloadBossGfx();
        Resources resources = Main.midlet.res;
        int numSprites = Resources.GFX_NUM_BOSS_SPRITES[dungeon];
        sprBoss = new Sprite[numSprites];
        for (int i = 0; i < numSprites; i++) {
            Sprite[] spriteArr = sprBoss;
            Engine engine2 = engine;
            Resources resources2 = Main.midlet.res;
            int i2 = Resources.GFX_BOSS_WIDTH[dungeon][i];
            Resources resources3 = Main.midlet.res;
            spriteArr[i] = engine2.pullSprite(i2, Resources.GFX_BOSS_HEIGHT[dungeon][i]);
            Sprite sprite = sprBoss[i];
            Resources resources4 = Main.midlet.res;
            int i3 = Resources.GFX_BOSS_OX[dungeon][i];
            Resources resources5 = Main.midlet.res;
            sprite.setRefPixelPosition(i3, Resources.GFX_BOSS_OY[dungeon][i]);
        }
        Resources resources6 = Main.midlet.res;
        bossDirs = Resources.GFX_BOSS_DIRS[dungeon];
        Resources resources7 = Main.midlet.res;
        if (Resources.GFX_BOSS_SHADOW[dungeon]) {
            imgBossShadow = engine.pullImage();
            Resources resources8 = Main.midlet.res;
            bossShadowOy = Resources.GFX_BOSS_SHADOW_OY[dungeon];
        }
    }

    public static void unloadBossGfx() {
        sprBoss = null;
        imgBossShadow = null;
        GameCanvas.garbageCollect();
    }

    public static int increment(int value, int max) {
        while (value < 0) {
            value += max;
        }
        while (value >= max) {
            value -= max;
        }
        return value;
    }

    private static int getMagnitude(int dx, int dy) {
        if (dx < 0) {
            dx = -dx;
        }
        if (dy < 0) {
            dy = -dy;
        }
        if (dy < dx) {
            int t = dx;
            dx = dy;
            dy = t;
        }
        return ((dx * 5) >> 4) + dy;
    }

    private static int getAngle(int dx, int dy) {
        int ratio;
        int adx = dx > 0 ? dx : -dx;
        int ady = dy > 0 ? dy : -dy;
        if (adx < ady) {
            ratio = (adx << 8) / ady;
        } else {
            ratio = (ady << 8) / adx;
        }
        if (dx > 0) {
            if (dy < 0) {
                if (adx < ady) {
                    if (ratio <= 51) {
                        return 0;
                    }
                    return ratio <= 171 ? 1 : 2;
                }
                if (ratio <= 51) {
                    return 4;
                }
                return ratio <= 171 ? 3 : 2;
            }
            if (adx < ady) {
                if (ratio <= 51) {
                    return 8;
                }
                return ratio <= 171 ? 7 : 6;
            }
            if (ratio <= 51) {
                return 4;
            }
            return ratio <= 171 ? 5 : 6;
        }
        if (dy > 0) {
            if (adx < ady) {
                if (ratio <= 51) {
                    return 8;
                }
                return ratio <= 171 ? 9 : 10;
            }
            if (ratio <= 51) {
                return 12;
            }
            return ratio <= 171 ? 11 : 10;
        }
        if (adx < ady) {
            if (ratio <= 51) {
                return 0;
            }
            return ratio <= 171 ? 15 : 14;
        }
        if (ratio <= 51) {
            return 12;
        }
        return ratio <= 171 ? 13 : 14;
    }

    private static int getDirection(int dx, int dy) {
        int adx = dx > 0 ? dx : -dx;
        int ady = dy > 0 ? dy : -dy;
        if (adx > ady) {
            return dx < 0 ? 3 : 2;
        }
        return dy < 0 ? 0 : 1;
    }

    private static int getRandom(int range) {
        return GameCanvas.getRandom(range);
    }

    private static boolean getOccurence(int range) {
        return range > 0 && (range == 1 || getRandom(range) == 0);
    }

    private static boolean getRandomBoolean() {
        return GameCanvas.getRandomBoolean();
    }
}
