package com.globalfun.adventuretime.free;

import com.flurry.android.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class Engine extends UI {
    private static final int[] CHEATS_MAX_SELECT;
    private static final int CHEAT_ID_BOSS = 2;
    private static final int CHEAT_ID_DUNGEON = 1;
    private static final int CHEAT_ID_INVULNERABLE = 3;
    private static final int CHEAT_ID_SOUND = 0;
    public static final int FLAG_CHEST_OPENED = 24;
    public static final int FLAG_CLEARED = 30;
    public static final int FLAG_KEY_TAKEN = 23;
    public static final int FLAG_LANTERNS = 25;
    public static final int FLAG_UNLOCK_E = 27;
    public static final int FLAG_UNLOCK_N = 29;
    public static final int FLAG_UNLOCK_S = 28;
    public static final int FLAG_UNLOCK_W = 26;
    public static final int FLAG_VISITED = 31;
    private static final int TIME_VIBRATE = 100;
    private static final int TIME_VIBRATE_BIG = 300;
    private static final int TRANSITION_ENTER = 0;
    private static final int TRANSITION_EXIT = 1;
    private static final int TRANSITION_GOTO = 2;
    private static final int TRANSITION_OUTRO = 4;
    private static final int TRANSITION_RESTART = 3;
    private static final int VALUE_GEM = 1;
    private static final int VALUE_LARGE_GEM = 25;
    private static final int VALUE_SUPER_GEM = 50;
    static Image touchImage;
    static Image touchJoy;
    private int[] cheatSelection;
    long milli;
    private String moreGamesURL;
    public int[] pointerDragged;
    public int[] pointerPressed;
    public int[] pointerPressedLeft;
    public int[] pointerReleased;
    public int[] pointerReleasedLeft;
    public int[] pointerReleasedRight;
    private boolean rmsFailed;
    private boolean running;
    private int transitionId;
    static int CurrentPointX = -300;
    static int CurrentPointY = -300;
    static int StatingPointX = -300;
    static int StatingPointY = -300;
    static boolean TouchisDown = false;
    static boolean TouchisDown1 = false;
    public static int Lang = -1;

    static {
        Resources resources = Main.midlet.res;
        CHEATS_MAX_SELECT = new int[]{Resources.NUM_SOUNDS, 4, 4, 2};
    }

    public Engine(Main parent) {
        super(parent);
        this.moreGamesURL = null;
        this.rmsFailed = false;
        this.cheatSelection = new int[4];
        this.pointerPressed = new int[2];
        this.pointerDragged = new int[2];
        this.pointerReleased = new int[2];
        this.pointerPressedLeft = new int[]{-150, -150};
        this.pointerReleasedLeft = new int[]{-150, -150};
        this.pointerReleasedRight = new int[]{-150, -150};
        this.milli = -1L;
        touchJoy = Image.createImage("/touchJoy.png");
        touchImage = Image.createImage("/touchImage.png");
        resetGame();
        if (!rmsRead() && !rmsWrite()) {
            this.rmsFailed = true;
        }
        setState(92);
    }

    public void start() {
    }

    public void exit() {
        stopSound();
        this.running = false;
    }

    public void run() {
        this.running = true;
        while (this.running) {
            if (this.milli == -2 && this.pointerReleased[0] == -150 && this.pointerReleasedRight[0] == -150) {
                pointerPressed((this.screenWidth / 2) + 50, 0);
                this.milli = System.currentTimeMillis();
            }
            if (this.milli != -2 && this.milli != -1 && System.currentTimeMillis() - this.milli > 600 && this.pointerReleased[0] == -150 && this.pointerReleasedRight[0] == -150) {
                pointerReleasedRight((this.screenWidth / 2) + 50, 0);
                this.milli = -2L;
            }
            if (this.pointerReleased[0] != -150 || this.pointerReleasedRight[0] != -150) {
                this.milli = -1L;
            }
            if (this.pointerPressed[0] != -150) {
                pointerPressed(this.pointerPressed[0], this.pointerPressed[1]);
                this.pointerPressed[0] = -150;
            } else if (this.pointerDragged[0] != -150) {
                pointerDragged(this.pointerDragged[0], this.pointerDragged[1]);
                this.pointerDragged[0] = -150;
            } else if (this.pointerReleased[0] != -150) {
                pointerReleased(this.pointerReleased[0], this.pointerReleased[1]);
                this.pointerReleased[0] = -150;
            }
            if (this.pointerPressedLeft[0] != -150) {
                LeftPointerPressed(this.pointerPressedLeft[0], this.pointerPressedLeft[1]);
                this.pointerPressedLeft[0] = -150;
            }
            if (this.pointerReleasedRight[0] != -150) {
                pointerReleasedRight(this.pointerReleasedRight[0], this.pointerReleasedRight[1]);
                this.pointerReleasedRight[0] = -150;
            }
            if (this.pointerReleasedLeft[0] != -150) {
                TouchisDown = false;
                releaseKeys();
                this.pointerReleasedLeft[0] = -150;
            }
            paint();
            updateTime();
            if (this.delay > 0) {
                this.delay -= this.frameRate;
            }
            handleEvents();
            if (!this.isHidden && !this.isRotated) {
                handleKeys();
                handleTouch();
                updateUI();
                switch (state) {
                    case 0:
                        if (inTransition()) {
                            break;
                        } else if (this.transitionComplete) {
                            switch (this.transitionId) {
                                case 0:
                                    playBGM();
                                    break;
                                case 1:
                                    enterRoom();
                                    break;
                                case 2:
                                    loadDungeon();
                                    enterRoom();
                                    break;
                                case 3:
                                    openUI(4);
                                    break;
                                case 4:
                                    openUI(61);
                                    break;
                            }
                        } else {
                            this.room.update();
                            break;
                        }
                        break;
                    case 1:
                        this.room.update();
                        if (this.complete) {
                            this.room.talkComplete();
                        }
                        break;
                    case 2:
                        this.room.update();
                        break;
                    case 60:
                        if (this.complete) {
                            newGame(4);
                        }
                        break;
                    case 61:
                        if (this.complete) {
                            this.inGame = false;
                            openMenu(0);
                        }
                        break;
                    case UI.STATE_LOADING /* 92 */:
                        updateLoad();
                        break;
                }
            }
        }
        rmsWrite();
        this.parent.exitApplication();
    }

    private void updateTime() {
        long newTime = System.currentTimeMillis();
        if (this.time == 0) {
            this.frameTime = 70;
        } else {
            this.frameTime = (int) (newTime - this.time);
        }
        int ticksLeft = 70 - (this.frameTime + 0);
        if (ticksLeft > 0) {
            try {
                GameThread.sleep(ticksLeft);
            } catch (Exception e) {
            }
            newTime = System.currentTimeMillis();
            if (this.time > 0) {
                this.frameRate = (int) (newTime - this.time);
            }
        } else {
            this.frameRate = this.frameTime;
        }
        this.time = newTime;
    }

    private void updateLoad() {
        String tmp;
        switch (this.loadState) {
            case 0:
                this.textLocales = pullStrings("/locales.bin");
                this.textLanguages = pullStrings("/langs.bin");
                preloadUI();
                if (this.locale == null && Lang == -1 && (tmp = this.parent.getAppProperty("default-lang")) != null) {
                    int loc = Integer.parseInt(tmp);
                    Lang = loc;
                    this.locale = this.textLocales[loc];
                }
                if (Lang != -1 && this.textLanguages != null) {
                    this.locale = this.textLocales[Lang];
                }
                if (this.locale == null && this.textLanguages != null) {
                    this.locale = this.textLocales[0];
                    if (this.textLanguages.length > 1) {
                        openMenu(8);
                    }
                }
                break;
            case 1:
                loadText();
                break;
            case 2:
                if (!openLogo()) {
                    this.loadState++;
                    return;
                }
                return;
            case 3:
                this.preloaded = true;
                setState(92);
                break;
            case 4:
                loadUI();
                Actor.initActors(this);
                this.room = new Room(this);
                this.room.setViewport(this.screenWidth, this.screenHeight);
                break;
            case 5:
            case 6:
            case 7:
                createStream(Main.midlet.res.FILENAMES_RES[this.loadState - 5]);
                Actor.loadGfx(this.loadState);
                closeStream();
                break;
            case 8:
                this.loaded = true;
                break;
        }
        this.loadState++;
        garbageCollect();
        if (this.loaded) {
            this.firstMenu = true;
            openMenu(0);
        }
    }

    private void resetGame() {
        this.numRescued = 0;
        this.dungeon = -1;
        for (int i = 0; i < 5; i++) {
            this.dungeonKeys[i] = 0;
            this.dungeonObjects[i] = 0;
        }
        for (int i2 = 0; i2 < 100; i2++) {
            this.roomFlags[i2] = 0;
        }
        this.gems = 0;
        this.life = 6;
        this.lifeMax = 6;
        this.items = 1;
        this.purchased = 0;
        this.weapon = 0;
        this.inGame = false;
    }

    private void newGame(int dungeon) {
        this.dungeon = dungeon;
        startDungeon();
        loadDungeon();
        enterRoom();
        openUI(0);
        this.inGame = true;
    }

    private void continueGame() {
        if (this.roomId < 0) {
            startDungeon();
        }
        loadDungeon();
        enterRoom();
        openUI(0);
        this.inGame = true;
    }

    private void resumeGame() {
        openUI(0);
        this.transitionId = 0;
        openTransition(-1, -1);
    }

    private void restartGame() {
        this.life = this.lifeMax;
        startDungeon();
        enterRoom();
        openUI(0);
    }

    private void skipToDungeon(int id) {
        for (int i = 0; i < id; i++) {
            this.items |= BOSS_WEAPONS[id];
        }
        newGame(id);
    }

    private void skipToBoss(int id) {
        this.dungeon = id;
        loadDungeon();
        this.items |= BOSS_WEAPONS[id];
        restartBoss();
        this.inGame = true;
    }

    private void restartBoss() {
        this.life = this.lifeMax;
        this.locationX = DUNGEON_BOSS_X[this.dungeon];
        this.locationY = DUNGEON_BOSS_Y[this.dungeon] + 1;
        this.roomId = -1;
        this.roomDir = 1;
        this.roomPosition = -1;
        loadRoom();
        this.room.enter(this.roomDir, this.roomPosition, true, false);
        this.transitionId = 0;
        openTransition(-1, this.roomDir);
        openUI(0);
    }

    private void loadRoom() {
        int id;
        int x;
        int y;
        boolean match;
        boolean hasId = this.roomId >= 0;
        try {
            createStream("/dungeon" + this.dungeon + ".bin");
            while (true) {
                pullInt();
                id = pullShort();
                x = pullShort();
                y = pullShort();
                if (hasId) {
                    match = this.roomId == id;
                } else {
                    match = x == this.locationX && y == this.locationY;
                }
                if (match) {
                    break;
                }
                skipData(49);
                skipResources(4);
            }
            this.roomId = id;
            this.locationX = x;
            this.locationY = y;
            this.firstVisit = !checkFlag(31);
            setFlag(31);
            this.room.load(this, this.dungeon, this.dungeon == 4);
        } catch (Exception e) {
        }
    }

    private void loadDungeon() {
        if (this.dungeon != 4) {
            try {
                createStream("/dungeon.bin");
                Dungeon.loadDungeon(this, this.dungeon);
                closeStream();
                createStream("/boss" + this.dungeon + ".bin");
                Actor.loadBossGfx(this.dungeon);
                closeStream();
                createStream("/dungeon" + this.dungeon + "_map.bin");
                readFully(dungeonMap);
                closeStream();
                createStream("/dungeon" + this.dungeon + "_ids.bin");
                readFully(dungeonRooms);
                closeStream();
            } catch (Exception e) {
            }
        }
    }

    public void loadOverworld() {
        if (this.dungeon == 4) {
            int location = 0;
            int i = OVERWORLD_ROOMS.length;
            while (true) {
                i--;
                if (i < 0) {
                    break;
                } else if (OVERWORLD_ROOMS[i] == this.roomId) {
                    location = OVERWORLD_LOCATIONS[i];
                    break;
                }
            }
            try {
                Actor.unloadBossGfx();
                createStream("/overworld.bin");
                Dungeon.loadOverworld(this, location);
                closeStream();
            } catch (Exception e) {
            }
        }
    }

    public void startDungeon() {
        this.roomId = DUNGEON_START[this.dungeon];
        this.roomDir = this.dungeon == 4 ? -1 : 0;
        this.roomPosition = -1;
    }

    public void enterRoom() {
        loadRoom();
        loadOverworld();
        this.room.enter(this.roomDir, this.roomPosition, false, this.dungeon == 4);
        if (Actor.isBossFight) {
            stopSound();
        }
        this.transitionId = 0;
        openTransition(-1, this.roomDir);
    }

    public void exitRoom(int dir, int position) {
        this.locationX += DIR_X[dir];
        this.locationY += DIR_Y[dir];
        this.roomId = -1;
        this.roomDir = dir;
        this.roomPosition = position;
        this.transitionId = 1;
        openTransition(1, this.roomDir);
    }

    public void exitOverworld(int id) {
        stopSound();
        this.dungeon = id;
        startDungeon();
        this.transitionId = 2;
        openTransition(1, -1);
    }

    public void exitDungeon() {
        stopSound();
        this.roomId = DUNGEON_ENTRANCE[this.dungeon];
        this.roomDir = -1;
        this.roomPosition = -1;
        this.dungeon = 4;
        this.transitionId = 2;
        openTransition(1, -1);
    }

    public void completeDungeon() {
        stopSound();
        boolean finalDungeon = this.dungeon == 3;
        this.dungeon = 4;
        startDungeon();
        this.transitionId = (!finalDungeon || this.gameComplete) ? 2 : 4;
        if (finalDungeon) {
            this.gameComplete = true;
        }
        openTransition(1, -1);
    }

    public boolean checkFlag(int flag) {
        return (this.roomFlags[this.roomId] & (1 << flag)) != 0;
    }

    @Override // com.globalfun.adventuretime.free.UI
    public boolean checkFlag(int roomId, int flag) {
        return (this.roomFlags[roomId] & (1 << flag)) != 0;
    }

    public void setFlag(int flag) {
        int[] iArr = this.roomFlags;
        int i = this.roomId;
        iArr[i] = iArr[i] | (1 << flag);
    }

    public void setFlag(int roomId, int flag) {
        int[] iArr = this.roomFlags;
        iArr[roomId] = iArr[roomId] | (1 << flag);
    }

    public boolean useKey(int flag) {
        boolean hasKey = this.dungeonKeys[this.dungeon] > 0;
        if (hasKey) {
            setFlag(flag);
            unlock(flag);
            int[] iArr = this.dungeonKeys;
            int i = this.dungeon;
            iArr[i] = iArr[i] - 1;
        }
        return hasKey;
    }

    public void unlock(int flag) {
        setFlag(flag);
        int adjX = this.locationX;
        int adjY = this.locationY;
        switch (flag) {
            case 26:
                flag = 27;
                adjX--;
                break;
            case 27:
                flag = 26;
                adjX++;
                break;
            case 28:
                flag = 29;
                adjY++;
                break;
            case 29:
                flag = 28;
                adjY--;
                break;
        }
        int id = dungeonRooms[(adjY * 7) + adjX] & Constants.UNKNOWN;
        setFlag(id, flag);
    }

    public boolean checkLever() {
        int objects = this.dungeonObjects[this.dungeon];
        return (objects & 4) > 0;
    }

    public void switchLever() {
        boolean on = checkLever();
        int[] iArr = this.dungeonObjects;
        int i = this.dungeon;
        iArr[i] = iArr[i] & (-5);
        if (!on) {
            int[] iArr2 = this.dungeonObjects;
            int i2 = this.dungeon;
            iArr2[i2] = iArr2[i2] | 4;
        }
    }

    @Override // com.globalfun.adventuretime.free.UI
    public boolean hasItem(int item) {
        return (this.items & item) > 0;
    }

    @Override // com.globalfun.adventuretime.free.UI
    public boolean hasObject(int object) {
        return (this.dungeonObjects[this.dungeon] & object) > 0;
    }

    public boolean isFirstVisit() {
        return this.firstVisit;
    }

    public boolean isInBossRoom() {
        return this.dungeon < 4 && this.locationX == DUNGEON_BOSS_X[this.dungeon] && this.locationY == DUNGEON_BOSS_Y[this.dungeon];
    }

    public boolean usePotion() {
        boolean used = this.life < this.lifeMax;
        if (used) {
            this.life = this.lifeMax;
            this.items &= -129;
            this.purchased &= -9;
        }
        return used;
    }

    public void pickup(int type) {
        switch (type) {
            case 35:
                int i = this.lifeMax + 2;
                this.lifeMax = i;
                this.life = i;
                Actor.celebrate();
                break;
            case 36:
                this.gems += 50;
                break;
            case 37:
                this.gems += 25;
                break;
            case 38:
                int[] iArr = this.dungeonKeys;
                int i2 = this.dungeon;
                iArr[i2] = iArr[i2] + 1;
                setFlag(23);
                break;
            case 39:
                int i3 = this.life + 2;
                this.life = i3;
                if (i3 > this.lifeMax) {
                    this.life = this.lifeMax;
                }
                break;
            case 40:
                this.gems++;
                break;
            case 41:
                int[] iArr2 = this.dungeonObjects;
                int i4 = this.dungeon;
                iArr2[i4] = iArr2[i4] | 1;
                break;
            case 43:
                this.items |= 2;
                break;
            case 44:
                this.items |= 4;
                switchToWeapon(4);
                break;
            case 46:
                this.items |= 8;
                switchToWeapon(8);
                break;
            case 47:
                this.items |= 16;
                switchToWeapon(16);
                break;
            case 48:
                this.items |= 64;
                switchToWeapon(64);
                break;
            case 49:
                this.items |= 32;
                break;
            case 50:
                this.items |= 128;
                break;
            case 51:
            case 52:
            case Actor.TYPE_BOSS_KEY2 /* 53 */:
            case Actor.TYPE_BOSS_KEY3 /* 54 */:
                int[] iArr3 = this.dungeonObjects;
                int i5 = this.dungeon;
                iArr3[i5] = iArr3[i5] | 2;
                break;
        }
    }

    public void bossKilled() {
        Resources resources = Main.midlet.res;
        playSfx(Resources.SOUND_SFX_BOSS_DEFEAT);
        vibrate(true);
        this.numRescued = this.dungeon + 1;
    }

    public boolean isDungeonOpen(int id) {
        return id <= this.numRescued;
    }

    @Override // com.globalfun.adventuretime.free.UI
    public boolean isPrincessRescued(int id) {
        return id < this.numRescued;
    }

    public boolean hurt(int damage) {
        boolean invulnerable = this.hasCheats && this.cheatSelection[3] > 0;
        if (invulnerable) {
            return false;
        }
        if (hasItem(32)) {
            damage >>= 1;
        }
        vibrate(false);
        this.life -= damage;
        if (this.life < 0) {
            this.life = 0;
        }
        return this.life <= 0;
    }

    public void heal() {
        this.gems -= 5;
        this.life = this.lifeMax;
        backToGame();
    }

    public void purchase() {
        this.gems -= SHOP_COSTS[this.cursor];
        this.purchased |= 1 << this.cursor;
        pickup(SHOP_TYPES[this.cursor]);
        refreshState();
    }

    public void heroIsDieing() {
        Resources resources = Main.midlet.res;
        playSfx(Resources.SOUND_SFX_KILLED);
    }

    public void heroIsDead() {
        this.transitionId = 3;
        if (!Main.PREMIUM) {
            UtilsAndroid.sendFlurry("PlayerDead");
        }
        openTransition(1, -1);
    }

    public void backToGame() {
        Actor.setTalking(false);
        setState(0);
    }

    public void vibrate(boolean big) {
        int duration = big ? TIME_VIBRATE_BIG : 100;
        vibrate(duration);
    }

    @Override // com.globalfun.adventuretime.free.UI
    public boolean hasMultiWeapons() {
        return (this.items & UI.ITEMS_WEAPON) > 0;
    }

    @Override // com.globalfun.adventuretime.free.UI
    public int getCurrentWeapon() {
        return WEAPONS_TYPES[this.weapon];
    }

    private void switchWeapon() {
        boolean canSwitch = (this.items & UI.ITEMS_WEAPON) > 0 || (this.items & WEAPONS[this.weapon]) == 0;
        if (canSwitch) {
            boolean hasSuperSword = (this.items & 64) > 0;
            while (true) {
                int i = this.weapon + 1;
                this.weapon = i;
                if (i >= WEAPONS.length) {
                    this.weapon = 0;
                }
                int item = WEAPONS[this.weapon];
                if (item != 1 || !hasSuperSword) {
                    if ((this.items & item) > 0) {
                        return;
                    }
                }
            }
        }
    }

    private void switchToWeapon(int item) {
        this.weapon = 0;
        while (WEAPONS[this.weapon] != item) {
            this.weapon++;
        }
    }

    public void switchWeaponIfEmpty() {
        boolean empty = (this.items & WEAPONS[this.weapon]) == 0;
        if (empty) {
            switchWeapon();
        }
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void handleKey(int key) {
        switch (state) {
            case 0:
                if (key == 16384) {
                    Actor.setControls(2, 1);
                }
                if (key == 1) {
                    switchWeapon();
                }
                break;
            case 1:
                if (key == 16384) {
                    talkAdvance();
                }
                break;
            case 3:
                if (key == 4096) {
                    moveCursor(-1);
                } else if (key == 8192) {
                    moveCursor(1);
                }
                break;
            case UI.STATE_TITLE /* 91 */:
                if (key == 16384) {
                    skipTitle();
                }
                break;
        }
    }

    protected void handleKeys() {
        if (state == 0) {
            int ctrlsH = -1;
            int ctrlsV = -1;
            if ((this.keyPressed & 1024) > 0) {
                ctrlsV = 0;
            } else if ((this.keyPressed & 2048) > 0) {
                ctrlsV = 1;
            }
            if ((this.keyPressed & 4096) > 0) {
                ctrlsH = 3;
            } else if ((this.keyPressed & 8192) > 0) {
                ctrlsH = 2;
            }
            if ((this.keyPressed & 2) > 0) {
                ctrlsH = 3;
                ctrlsV = 0;
            }
            if ((this.keyPressed & 8) > 0) {
                ctrlsH = 2;
                ctrlsV = 0;
            }
            if ((this.keyPressed & 128) > 0) {
                ctrlsH = 3;
                ctrlsV = 1;
            }
            if ((this.keyPressed & 512) > 0) {
                ctrlsH = 2;
                ctrlsV = 1;
            }
            Actor.setControls(0, ctrlsH);
            Actor.setControls(1, ctrlsV);
        }
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public boolean hide() {
        if (state == 0) {
            openMenu(1);
        }
        return state < 90;
    }

    @Override // com.globalfun.adventuretime.free.UI
    public void actionEvents(int type, int selection) {
        int prevTitle = this.title;
        switch (type) {
            case 0:
            case 1:
                if (this.menuId == 7) {
                    stopSound();
                }
                break;
            case 2:
                if (selection >= 0 && this.menuId == 7) {
                    int[] iArr = this.cheatSelection;
                    int index = iArr[selection] - 1;
                    iArr[selection] = index;
                    if (index < 0) {
                        this.cheatSelection[selection] = 0;
                    }
                    if (selection == 0) {
                        stopSound();
                    }
                    break;
                }
                break;
            case 3:
                if (selection >= 0 && this.menuId == 7) {
                    int max = CHEATS_MAX_SELECT[selection] - 1;
                    int[] iArr2 = this.cheatSelection;
                    int index2 = iArr2[selection] + 1;
                    iArr2[selection] = index2;
                    if (index2 > max) {
                        this.cheatSelection[selection] = max;
                    }
                    if (selection == 0) {
                        stopSound();
                    }
                    break;
                }
                break;
            case 5:
                exitInput();
                int item = this.menuItems[selection];
                System.out.println("AZA action " + this.menuId);
                switch (this.menuId) {
                    case 0:
                        switch (item) {
                            case 2:
                                openUI(60);
                                break;
                            case 3:
                                if (!Main.PREMIUM) {
                                    UtilsAndroid.sendFlurry("ContinueGame");
                                    Main.displayInterstitial();
                                }
                                continueGame();
                                break;
                            case 4:
                                openHelp(2);
                                break;
                            case 5:
                                openMenu(2);
                                break;
                            case 6:
                                openHelp(0);
                                break;
                            case 7:
                                openMenu(7);
                                break;
                            case 8:
                                openMenu(4);
                                break;
                            case 9:
                                resumeGame();
                                break;
                        }
                        break;
                    case 1:
                        switch (item) {
                            case 9:
                                resumeGame();
                                break;
                            case 10:
                                openMenu(0);
                                break;
                        }
                        break;
                    case 3:
                        switch (item) {
                            case 15:
                                this.sound = 0;
                                this.Sound_on_off = false;
                                stopSound();
                                menuSwap(this.menuCursor, 16);
                                break;
                            case 16:
                                this.sound = 100;
                                this.Sound_on_off = true;
                                menuSwap(this.menuCursor, 15);
                                break;
                            case 17:
                                this.vibrate = false;
                                menuSwap(this.menuCursor, 18);
                                break;
                            case 18:
                                this.vibrate = true;
                                vibrate(false);
                                menuSwap(this.menuCursor, 17);
                                break;
                        }
                        break;
                    case 4:
                        switch (item) {
                            case 0:
                                exit();
                                break;
                            case 1:
                                openMenu(0);
                                break;
                        }
                        break;
                    case 5:
                        switch (item) {
                            case 0:
                                resetGame();
                                openMenu(0);
                                break;
                            case 1:
                                openMenu(2);
                                menuSetCursor(13);
                                break;
                        }
                        break;
                    case 6:
                        switch (item) {
                            case 15:
                                this.sound = 100;
                                break;
                            case 16:
                                this.sound = 0;
                                break;
                        }
                        setState(92);
                        break;
                    case 7:
                        int selection2 = this.cheatSelection[selection];
                        switch (item) {
                            case 19:
                                playSound(selection2, 1);
                                break;
                            case 20:
                                skipToDungeon(selection2);
                                break;
                            case 21:
                                skipToBoss(selection2);
                                break;
                        }
                        this.inputState = 1;
                        break;
                    case 8:
                        this.locale = this.textLocales[selection];
                        Lang = selection;
                        rmsWrite();
                        if (this.loaded) {
                            try {
                                loadText();
                                break;
                            } catch (Exception e) {
                            }
                            openMenu(2);
                        } else {
                            setState(92);
                        }
                        break;
                }
                switch (item) {
                    case 11:
                        openMenu(3);
                        break;
                    case 12:
                        openMenu(8);
                        break;
                    case 13:
                        openMenu(5);
                        break;
                    case 14:
                        openHelp(1);
                        break;
                }
                break;
            case 7:
                if (this.menuId == 3) {
                    openMenu(2);
                } else {
                    openMenu(0);
                }
                menuSetCursor(prevTitle);
                break;
            case 12:
                if (this.textAreaId == 1) {
                    openMenu(2);
                } else {
                    openMenu(0);
                }
                menuSetCursor(prevTitle);
                break;
            case 20:
                this.hasCheats = true;
                openMenu(0);
                break;
            case 30:
                switch (selection) {
                    case 1:
                        if (state == 2) {
                            heal();
                        } else if (state == 3) {
                            purchase();
                        }
                        break;
                    case 2:
                        if (isInBossRoom()) {
                            restartBoss();
                        } else {
                            restartGame();
                        }
                        break;
                    case 3:
                    case 4:
                        backToGame();
                        break;
                    case 5:
                        if (!Main.PREMIUM) {
                            Main.displayInterstitial();
                        }
                        openMenu(1);
                        break;
                    case 6:
                        skip();
                        break;
                    case 7:
                        talkAdvance();
                        break;
                }
                break;
        }
    }

    @Override // com.globalfun.adventuretime.free.UI
    public String getMenuItem(int item) {
        String menuItem;
        if (this.menuId == 8) {
            menuItem = this.textLanguages[this.menuItems[item]];
        } else {
            menuItem = this.textMenu[this.menuItems[item]];
        }
        if (this.menuId == 7) {
            int selection = this.cheatSelection[item];
            String menuItem2 = replace(menuItem, "%n%", selection);
            if (selection < 2) {
                return replace(menuItem2, "%b%", this.textMenu[TEXT_MENU_BOOLEAN[selection]]);
            }
            return menuItem2;
        }
        return menuItem;
    }

    public boolean rmsRead() {
        boolean read = false;
        byte[] data = rmsRead(0);
        if (data == null) {
            return false;
        }
        ByteArrayInputStream bis = new ByteArrayInputStream(data);
        DataInputStream dis = new DataInputStream(bis);
        try {
            this.numRescued = dis.readInt();
            this.dungeon = dis.readInt();
            for (int i = 0; i < 5; i++) {
                this.dungeonKeys[i] = dis.readInt();
                this.dungeonObjects[i] = dis.readInt();
            }
            this.roomId = dis.readInt();
            this.roomDir = dis.readInt();
            this.roomPosition = dis.readInt();
            for (int i2 = 0; i2 < 100; i2++) {
                this.roomFlags[i2] = dis.readInt();
            }
            this.gems = dis.readInt();
            this.life = dis.readInt();
            this.lifeMax = dis.readInt();
            this.items = dis.readInt();
            this.purchased = dis.readInt();
            this.weapon = dis.readInt();
            this.gameComplete = dis.readBoolean();
            this.sound = dis.readInt();
            this.vibrate = dis.readBoolean();
            Lang = dis.readInt();
            this.Sound_on_off = dis.readBoolean();
            read = true;
            return true;
        } catch (Exception e) {
            return read;
        }
    }

    public boolean rmsWrite() {
        if ((this.roomDir == 3 && this.roomPosition == -1) || this.rmsFailed) {
            return false;
        }
        byte[] data = null;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        DataOutputStream dos = new DataOutputStream(bos);
        try {
            dos.writeInt(this.numRescued);
            dos.writeInt(this.dungeon);
            for (int i = 0; i < 5; i++) {
                dos.writeInt(this.dungeonKeys[i]);
                dos.writeInt(this.dungeonObjects[i]);
            }
            dos.writeInt(this.roomId);
            dos.writeInt(this.roomDir);
            dos.writeInt(this.roomPosition);
            for (int i2 = 0; i2 < 100; i2++) {
                dos.writeInt(this.roomFlags[i2]);
            }
            dos.writeInt(this.gems);
            dos.writeInt(this.life);
            dos.writeInt(this.lifeMax);
            dos.writeInt(this.items);
            dos.writeInt(this.purchased);
            dos.writeInt(this.weapon);
            dos.writeBoolean(this.gameComplete);
            dos.writeInt(this.sound);
            dos.writeBoolean(this.vibrate);
            dos.writeInt(Lang);
            dos.writeBoolean(this.Sound_on_off);
            data = bos.toByteArray();
            dos.close();
        } catch (Exception e) {
        }
        return rmsWrite(0, data);
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void playerUpdate(String event) {
    }
}
