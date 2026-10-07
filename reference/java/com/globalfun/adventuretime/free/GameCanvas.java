package com.globalfun.adventuretime.free;

import android.content.Intent;
import android.graphics.Canvas;
import android.media.MediaPlayer;
import android.net.Uri;
import com.immersion.hapticmediasdk.HapticContentSDK;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public abstract class GameCanvas implements DeviceConfig {
    public static final boolean BROWSER_EXIT = false;
    public static final boolean CHECK_NEGATIVE_KEYS = false;
    public static final int COLOR_BLACK = -16777216;
    public static final int COLOR_BLUE = -16776992;
    public static final int COLOR_CYAN = -13575976;
    public static final int COLOR_GRAY1 = -15724528;
    public static final int COLOR_GRAY2 = -14671840;
    public static final int COLOR_GRAY4 = -12566464;
    public static final int COLOR_GREEN = -16736256;
    public static final int COLOR_MAGENTA = -2096928;
    public static final int COLOR_ORANGE = 16740352;
    public static final int COLOR_RED = -65536;
    public static final int COLOR_WHITE = -1;
    public static final int COLOR_YELLOW = -256;
    public static final boolean DISPLAY_DOUBLE_BUFFER = false;
    public static final boolean DISPLAY_FULLSCREEN = true;
    private static final String FORMAT_COMMAND_BREAK = "brk";
    public static final int GBC = 33;
    public static final int GBL = 36;
    public static final int GBR = 40;
    public static final int GCC = 3;
    public static final int GCL = 6;
    public static final int GCR = 10;
    public static final int GTC = 17;
    public static final int GTL = 20;
    public static final int GTR = 24;
    public static final boolean HIDES_IN_SHOW = false;
    public static final int HK_0 = 7;
    public static final int HK_1 = 8;
    public static final int HK_2 = 9;
    public static final int HK_3 = 10;
    public static final int HK_4 = 11;
    public static final int HK_5 = 12;
    public static final int HK_6 = 13;
    public static final int HK_7 = 14;
    public static final int HK_8 = 15;
    public static final int HK_9 = 16;
    public static final int HK_DOWN = 15;
    public static final int HK_FIRE = -5;
    public static final int HK_LEFT = 11;
    public static final int HK_MENUL = -6;
    public static final int HK_MENUR = -7;
    public static final int HK_NONE = 0;
    public static final int HK_RIGHT = 13;
    public static final int HK_UP = 9;
    public static final int INPUT_STATE_GAME = 0;
    public static final int INPUT_STATE_MENU = 1;
    public static final int INPUT_STATE_TEXT = 2;
    public static final int KEYS_DPAD = 15360;
    public static final int KEYS_NUMPAD = 990;
    public static final int KEY_EVENT_SEQUENCE = 20;
    public static final int KEY_EVENT_SOFT = 30;
    public static final int KEY_SCROLL_DOWN = 2048;
    public static final int KEY_SCROLL_LEFT = 4096;
    public static final int KEY_SCROLL_RIGHT = 8192;
    public static final int KEY_SCROLL_UP = 1024;
    public static final int KEY_SELECT = 16384;
    public static final int K_0 = 1;
    public static final int K_1 = 2;
    public static final int K_2 = 4;
    public static final int K_3 = 8;
    public static final int K_4 = 16;
    public static final int K_5 = 32;
    public static final int K_6 = 64;
    public static final int K_7 = 128;
    public static final int K_8 = 256;
    public static final int K_9 = 512;
    public static final int K_DOWN = 2048;
    public static final int K_FIRE = 16384;
    public static final int K_LEFT = 4096;
    public static final int K_MENUL = 32768;
    public static final int K_MENUR = 65536;
    public static final int K_NONE = 0;
    public static final int K_RIGHT = 8192;
    public static final int K_UP = 1024;
    public static final int LOCATION_CANCEL = 1;
    public static final int LOCATION_CONFIRM = 0;
    public static final int MAX_SOFTKEYS = 2;
    public static final int MENU_EVENT_CANCEL = 7;
    public static final int MENU_EVENT_CONFIRM = 6;
    public static final int MENU_EVENT_SCROLL_DOWN = 1;
    public static final int MENU_EVENT_SCROLL_LEFT = 2;
    public static final int MENU_EVENT_SCROLL_RIGHT = 3;
    public static final int MENU_EVENT_SCROLL_UP = 0;
    public static final int MENU_EVENT_SELECT = 5;
    public static final int MENU_EVENT_TOUCHED = 4;
    public static final boolean MENU_LOOP = true;
    public static final int NUM_DIR_KEYS = 8;
    public static final int NUM_KEYS = 17;
    public static final int NUM_KEY_SEQUENCES = 1;
    public static final int NUM_SOFTKEYS = 8;
    private static final String RECORDSTORE_NAME = "RS";
    public static final boolean REVERSES_SOFTKEYS = false;
    public static final boolean RMS_REQUIRES_FRESH_STORE = false;
    public static final boolean RMS_USES_MULTIPLE_STORES = false;
    public static final boolean SHOULD_GC = true;
    public static final int SOFTKEY_ID_BACK = 4;
    public static final int SOFTKEY_ID_CANCEL = 3;
    public static final int SOFTKEY_ID_CONFIRM = 1;
    public static final int SOFTKEY_ID_CONTINUE = 2;
    public static final int SOFTKEY_ID_MENU = 5;
    public static final int SOFTKEY_ID_NEXT = 7;
    public static final int SOFTKEY_ID_SELECT = 0;
    public static final int SOFTKEY_ID_SKIP = 6;
    public static final int SOFTKEY_MASK_CANCEL = 56;
    public static final int SOFTKEY_MASK_CONFIRM = 2;
    public static final int SOFTKEY_MASK_SELECT = 5;
    public static final boolean SOUND_AVOID_PRELOAD = false;
    public static final boolean SOUND_DEALLOCATES = false;
    public static final boolean SOUND_HANDLES_EVENTS = false;
    public static final boolean SOUND_HAS_MEDIATIME = false;
    public static final boolean SOUND_INTERRUPT_REPLAY = false;
    public static final int SOUND_INTERVAL = 1;
    public static final boolean SOUND_PREFETCH_ON_LOAD = true;
    public static final boolean SOUND_REALIZE_ON_LOAD = true;
    public static final boolean SOUND_RELOADS = false;
    public static final boolean SOUND_SINGLE_PLAYER = false;
    public static final boolean SOUND_STOPS_DEAD = false;
    public static final boolean STREAM_IS_FLAWED = false;
    public static final int TEXT_EVENT_CANCEL = 12;
    public static final int TEXT_EVENT_SCROLL_DOWN = 11;
    public static final int TEXT_EVENT_SCROLL_UP = 10;
    public static final int TEXT_SCROLL_DELAY = 3;
    public static final int TEXT_SCROLL_DOWN = 1;
    public static final int TEXT_SCROLL_SPEED = 6;
    public static final int TEXT_SCROLL_TYPE = 1;
    public static final int TEXT_SCROLL_TYPE_LINE = 0;
    public static final int TEXT_SCROLL_TYPE_PIXEL = 1;
    public static final int TEXT_SCROLL_UP = -1;
    public static final boolean VIBRATION_IS_ACTIVE = true;
    static GameCanvas main;
    public static Main midlet;
    private static Random random;
    private static MediaPlayer[] soundsSfx;
    private Canvas canvas;
    MediaPlayer currentPlayer;
    public int currentPlayerLoops;
    private Graphics gDb;
    private Graphics graphics;
    public boolean hide;
    private Image imgDb;
    public int inputState;
    public boolean isEnabled;
    public boolean isHidden;
    public boolean isRotated;
    public int keyPressed;
    public int keyQueue;
    public int menuCursor;
    public int menuId;
    public int[] menuItems;
    public int menuSize;
    public int screenHCenter;
    public int screenHeight;
    public int screenVCenter;
    public int screenWidth;
    public boolean show;
    private boolean soundInterrupted;
    private int soundInterval;
    public String soundType;
    private DataInputStream stream;
    private String textArea;
    private CustomFont textAreaFont;
    private int[] textAreaFormat;
    public int textAreaHeight;
    public int textAreaId;
    public int textAreaWidth;
    public int textHeight;
    private int textScrollOffset;
    private int textScrollTimer;
    private int textViewY;
    public long time;
    public static int trueScreenWidth = 0;
    public static int trueScreenHeight = 0;
    private static final int[] SOFTKEY_LOCATIONS = {0, 0, 0, 1, 1, 1, 1, 0};
    public static final int[] HARD_KEYS = {7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 9, 15, 11, 13, -5, -6, -7};
    public static final int[] HARD_KEY_DIGITS = {9, 15, 11, 13, 8, 10, 14, 16};
    public static final int[] HARD_KEY_DPAD = {9, 15, 11, 13, -5};
    public static final int[] KEYS = {1, 2, 1028, 8, 4112, 16416, 8256, 128, 2304, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536};
    public static final int[] DIRS_DPAD = {1024, 2048, 4096, 8192, 5120, 9216, 6144, 10240};
    public static final int[] DIRS_NUMPAD = {4, 256, 16, 64, 2, 8, 128, 512};
    public static final int[][] KEY_SEQUENCES = {new int[]{2, 512, 128, 512}};
    private static final int[] SOFTKEY_CODES = {32768, 65536};
    public static int[] soundDataSfx = {R$raw.sfx_hit, R$raw.sfx_sweepmelee, R$raw.sfx_bigexplode, R$raw.sfx_orgofire, R$raw.sfx_goodie_diamond, R$raw.sfx_goodie_extra_life, R$raw.sfx_hitted};
    public static int HEROHITTED = 0;
    public static int SWORD = 1;
    public static int BOMB = 2;
    public static int BOW = 3;
    public static int WAND = 4;
    public static int POTION = 5;
    public static int ENEMYHITTED = 6;
    private int[] keySeqIndex = new int[1];
    public int softKeyPressed = -1;
    private int[] softkeys = {-1, -1};
    private boolean[] softkeysEnabled = {true, true};
    public int currentPlayerId = -1;
    public int soundIsPlaying = -1;
    public int lastSound = -1;
    public int sound = 100;
    public boolean vibrate = true;
    public boolean Sound_on_off = true;

    public abstract void clearTouchState();

    public abstract void handleKey(int i);

    public abstract boolean hide();

    public abstract void inputEvent(int i, int i2);

    public abstract void paintCanvas(Graphics graphics);

    public abstract void paintHidden(Graphics graphics);

    public abstract void paintRotated(Graphics graphics);

    public abstract void playerUpdate(String str);

    public abstract void touchEvents();

    public int getWidth() {
        return trueScreenWidth;
    }

    public int getHeight() {
        return trueScreenHeight;
    }

    public GameCanvas(Main parent) {
        midlet = parent;
        main = this;
        loadSound();
    }

    public void setScreenSize() {
        int w = getWidth();
        int h = getHeight();
        this.screenWidth = w;
        this.screenHeight = h;
        this.screenHCenter = this.screenWidth >> 1;
        this.screenVCenter = this.screenHeight >> 1;
    }

    public void clearClip(Graphics g) {
        g.setClip(0, 0, this.screenWidth, this.screenHeight);
    }

    protected void sizeChanged(int w, int h) {
    }

    public void paint(Graphics g) {
        if (this.isRotated) {
            paintRotated(g);
        } else if (this.isHidden) {
            paintHidden(g);
        } else {
            paintCanvas(g);
        }
    }

    public void paint() {
        GameThread.requestRepaint(this);
        GameThread.yield();
    }

    public void exitInput() {
        this.inputState = 0;
    }

    protected void onDraw(Canvas c) {
        this.canvas = c;
        if (this.graphics == null) {
            this.graphics = new Graphics(this.canvas);
        } else {
            this.graphics.setCanvas(this.canvas);
        }
        paint(this.graphics);
    }

    public void renderText(Graphics g, CustomFont font, String text, int[] format, int cursor, int x, int y, int hAlign, boolean clip) {
        int minY = 0;
        int maxY = 0;
        if (clip) {
            minY = g.getClipY();
            maxY = minY + g.getClipHeight();
        }
        if (cursor < 0) {
            cursor = text.length();
        }
        int c = cursor;
        int i = 2;
        while (c > 0 && i < format.length) {
            int i2 = i + 1;
            int tw = format[i];
            int i3 = i2 + 1;
            int ty = y + format[i2];
            if (tw >= 0) {
                int i4 = i3 + 1;
                int offset = format[i3];
                i = i4 + 1;
                int len = format[i4];
                if (len > c) {
                    len = c;
                }
                if (clip) {
                    int by = ty + font.cellHeight;
                    if (by < minY) {
                        continue;
                    } else if (ty >= maxY) {
                        return;
                    }
                }
                int tx = hAlign == 1 ? x - (tw >> 1) : x;
                font.drawSubstring(g, text, offset, len, tx, ty, 20);
                c -= len;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0019 A[SYNTHETIC] */
    public int[] formatText(CustomFont font, String text, int maxWidth, int[] format) {
        char[] chars = text.toCharArray();
        boolean newline = false;
        boolean eos = false;
        boolean reset = false;
        int lineIndex = 0;
        int nlIndex = 0;
        int wordIndex = 0;
        int charIndex = 0;
        int lineWidth = 0;
        int length = 0;
        int width = 0;
        int height = 0;
        int y = 0;
        int index = 0;
        int formatLength = 2;
        while (true) {
            if (newline) {
                newline = false;
                boolean longWord = wordIndex <= lineIndex;
                if (longWord) {
                    wordIndex = index - 1;
                    nlIndex = index;
                }
                int formatLength2 = formatLength + 1;
                format[formatLength] = lineWidth;
                int formatLength3 = formatLength2 + 1;
                format[formatLength2] = y;
                int formatLength4 = formatLength3 + 1;
                format[formatLength3] = lineIndex;
                formatLength = formatLength4 + 1;
                format[formatLength4] = (wordIndex + 1) - lineIndex;
                lineIndex = nlIndex;
                if (lineWidth > width) {
                    width = lineWidth;
                }
                height = y + font.cellHeight;
                y += font.lineSpacing;
                reset = true;
            } else {
                if (reset) {
                    reset = false;
                    index = lineIndex;
                    length = 0;
                    lineWidth = 0;
                }
                if (!eos) {
                    char c = chars[index];
                    if (lineIndex != index) {
                        length += font.charSpacing;
                    }
                    if (c == '<') {
                        if (lineIndex < index) {
                            newline = true;
                            nlIndex = index;
                            wordIndex = charIndex;
                            lineWidth = length;
                        } else {
                            String cmd = new String(chars, index + 1, 3);
                            if (cmd.equals(FORMAT_COMMAND_BREAK)) {
                                y += font.lineSpacing;
                            }
                            while (chars[index] != '>') {
                                index++;
                            }
                            lineIndex = index + 1;
                            index++;
                            if (index >= chars.length) {
                                newline = true;
                                eos = true;
                                wordIndex = charIndex;
                                lineWidth = length;
                            }
                        }
                    } else {
                        if (c == ' ') {
                            if (wordIndex != charIndex) {
                                wordIndex = charIndex;
                                lineWidth = length - font.charSpacing;
                            }
                            if (lineIndex == index) {
                                lineIndex++;
                                wordIndex = lineIndex;
                            } else {
                                length += font.wordSpacing;
                            }
                        } else {
                            charIndex = index;
                            int cWidth = font.charWidth(c);
                            length += cWidth;
                            if (maxWidth > 0 && length > maxWidth) {
                                newline = true;
                                nlIndex = wordIndex + 1;
                                if (wordIndex <= lineIndex) {
                                    lineWidth = length - cWidth;
                                }
                            }
                        }
                        index++;
                        if (index >= chars.length) {
                            newline = true;
                            eos = true;
                            wordIndex = charIndex;
                            lineWidth = length;
                        }
                    }
                } else {
                    format[0] = width;
                    format[1] = height;
                    format[formatLength] = -1;
                    return format;
                }
            }
        }
    }

    public void menuCall(int id, int[] items, int size) {
        this.menuId = id;
        this.menuItems = items;
        this.menuSize = size;
        this.menuCursor = -1;
        this.inputState = 1;
    }

    public void menuSetCursor(int item) {
    }

    public void menuSwap(int index, int item) {
        this.menuItems[index] = item;
        this.inputState = 1;
    }

    public void textAreaCall(int id, CustomFont font, String text, int[] format, int width, int numLines) {
        this.textAreaId = id;
        this.textAreaFont = font;
        this.textArea = text;
        this.textAreaFormat = formatText(font, text, width, format);
        this.textAreaWidth = width;
        this.textAreaHeight = font.getLinesHeight(numLines);
        if (format[1] < this.textAreaHeight) {
            this.textAreaHeight = format[1];
        }
        this.textViewY = 0;
        this.textHeight = format[1];
        this.textScrollOffset = 0;
        this.inputState = 2;
    }

    public void textAreaPaint(Graphics g, int x, int y, int hAlign) {
        g.setClip(x, y, this.textAreaWidth, this.textAreaHeight);
        switch (hAlign) {
            case 1:
                x += this.textAreaWidth >> 1;
                break;
            case 8:
                x += this.textAreaWidth;
                break;
        }
        renderText(g, this.textAreaFont, this.textArea, this.textAreaFormat, -1, x, (this.textScrollOffset + y) - this.textViewY, hAlign, true);
    }

    public boolean textCanScroll(int dir) {
        if (dir < 0) {
            return this.textViewY > 0;
        }
        return this.textViewY + this.textAreaHeight < this.textHeight;
    }

    public void textSetScroll(int pos, int range) {
        this.textViewY = (((this.textHeight - this.textAreaHeight) * pos) / range) + this.textScrollOffset;
    }

    public int textGetScrollY() {
        return this.textViewY - this.textScrollOffset;
    }

    public void hideNotify() {
        if (hide()) {
            stopSound();
            this.soundInterrupted = this.soundIsPlaying >= 0;
            clearKeyState();
            clearTouchState();
            this.isHidden = true;
        }
    }

    public void show() {
        playSound();
        this.isHidden = false;
    }

    public void handleEvents() {
        if (!this.isHidden && !this.isRotated) {
            if (this.soundInterval > 0) {
                this.soundInterval--;
            }
            if (this.textScrollTimer >= 0) {
                this.textScrollTimer--;
            }
            touchEvents();
            int eventType = -1;
            int eventSelection = -1;
            for (int key = 1; key > 0; key <<= 1) {
                if ((this.keyQueue & key) != 0) {
                    if ((key & 1024) > 0 && this.inputState == 1) {
                        this.menuCursor--;
                        eventType = 0;
                        if (this.menuCursor < 0) {
                            this.menuCursor = this.menuSize - 1;
                        }
                    }
                    if ((key & 2048) > 0 && this.inputState == 1) {
                        this.menuCursor++;
                        eventType = 1;
                        if (this.menuCursor >= this.menuSize) {
                            this.menuCursor = 0;
                        }
                    }
                    if ((key & 4096) > 0 && this.inputState == 1) {
                        eventType = 2;
                        eventSelection = this.menuCursor;
                    }
                    if ((key & 8192) > 0 && this.inputState == 1) {
                        eventType = 3;
                        eventSelection = this.menuCursor;
                    }
                    if ((key & 16384) > 0) {
                        this.softKeyPressed = this.softkeys[0];
                    }
                    if ((SOFTKEY_CODES[0] & key) > 0) {
                        this.softKeyPressed = getCurrentSoftKey(0);
                    }
                    if ((SOFTKEY_CODES[1] & key) > 0) {
                        this.softKeyPressed = getCurrentSoftKey(1);
                    }
                    int i = 1;
                    while (this.keyQueue != 0 && (i = i - 1) >= 0) {
                        int[] seq = KEY_SEQUENCES[i];
                        int index = this.keySeqIndex[i];
                        if ((seq[index] & key) > 0) {
                            if (index + 1 == seq.length) {
                                eventType = 20;
                                eventSelection = i;
                                this.keySeqIndex[i] = 0;
                            } else {
                                int[] iArr = this.keySeqIndex;
                                iArr[i] = iArr[i] + 1;
                            }
                        } else {
                            this.keySeqIndex[i] = 0;
                        }
                    }
                    handleKey(key);
                    this.keyQueue &= key ^ (-1);
                }
            }
            if (this.softKeyPressed >= 0) {
                int loc = SOFTKEY_LOCATIONS[this.softKeyPressed];
                if (!this.softkeysEnabled[loc]) {
                    this.softKeyPressed = -1;
                }
            }
            if (this.softKeyPressed >= 0) {
                int softKeyMask = 1 << this.softKeyPressed;
                if (this.inputState == 1) {
                    if ((softKeyMask & 5) > 0) {
                        eventType = 5;
                        eventSelection = this.menuCursor;
                    } else if ((softKeyMask & 2) > 0) {
                        eventType = 6;
                    } else if ((softKeyMask & 56) > 0) {
                        eventType = 7;
                    }
                } else if (this.inputState == 2) {
                    if ((softKeyMask & 56) > 0) {
                        eventType = 12;
                    }
                } else {
                    eventType = 30;
                    eventSelection = this.softKeyPressed;
                }
                this.keyQueue = 0;
                this.softKeyPressed = -1;
            }
            for (int key2 = 1; key2 > 0; key2 <<= 1) {
                if ((this.keyPressed & key2) != 0 && this.inputState == 2) {
                    if ((key2 & 1024) > 0 && this.textScrollTimer <= 0 && textCanScroll(-1) && this.textScrollOffset >= -6) {
                        this.textViewY -= this.textAreaFont.lineSpacing;
                        this.textScrollOffset -= this.textAreaFont.lineSpacing;
                    }
                    if ((key2 & 2048) > 0 && this.textScrollTimer <= 0 && textCanScroll(1) && this.textScrollOffset <= 6) {
                        this.textViewY += this.textAreaFont.lineSpacing;
                        this.textScrollOffset += this.textAreaFont.lineSpacing;
                    }
                }
            }
            if (this.textScrollOffset > 0) {
                this.textScrollOffset -= 6;
                if (this.textScrollOffset < 0) {
                    this.textScrollOffset = 0;
                }
                eventType = 11;
            }
            if (this.textScrollOffset < 0) {
                this.textScrollOffset += 6;
                if (this.textScrollOffset > 0) {
                    this.textScrollOffset = 0;
                }
                eventType = 10;
            }
            if (eventType >= 0) {
                inputEvent(eventType, eventSelection);
            }
        }
    }

    public void keyPressed(int keyCode) {
        if (keyCode == -99) {
            Main.midlet.azaGmg.onClick();
            HashMap<String, String> m = new HashMap<>();
            m.put("Url", Main.midlet.azaGmg.getUrl());
            UtilsAndroid.sendFlurryParams("NewGMG", m);
        }
        if (keyCode == -999) {
            UtilsAndroid.ShareGeneric(Main.midlet.getResources().getString(R$string.share));
        }
        if (keyCode == -9999) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("market://details?id=com.globalfun.adventuretime"));
            Main.midlet.startActivity(intent);
        }
        int keyBits = translateKey(keyCode);
        if (this.isHidden) {
            if (keyBits == 1) {
                show();
            }
        } else if (!this.isRotated && this.isEnabled) {
            this.keyPressed |= keyBits;
            this.keyQueue |= keyBits;
        }
    }

    public void keyReleased(int keyCode) {
        int keyBits = translateKey(keyCode);
        this.keyPressed &= keyBits ^ (-1);
    }

    private int translateKey(int keyCode) {
        if (keyCode == -5) {
            keyCode = 12;
        }
        if (keyCode == -6) {
            return 32768;
        }
        if (keyCode == -7) {
            return 65536;
        }
        switch (keyCode) {
            case 7:
                return 1;
            case 8:
                return 2;
            case 9:
                return 1028;
            case 10:
                return 8;
            case 11:
                return 4112;
            case 12:
                return 16416;
            case 13:
                return 8256;
            case 14:
                return 128;
            case 15:
                return 2304;
            case 16:
                return 512;
            default:
                switch (keyCode) {
                    case -203:
                    case -22:
                    case HK_MENUR /* -7 */:
                    case HapticContentSDK.MALFORMED_URL /* -4 */:
                    case 22:
                    case 57346:
                        return 65536;
                    case -202:
                    case -21:
                    case HK_MENUL /* -6 */:
                    case -1:
                    case 21:
                    case 57345:
                        return 32768;
                    default:
                        return 0;
                }
        }
    }

    public int getDirectional() {
        int dir = 8;
        do {
            dir--;
            if (dir < 0) {
                return -1;
            }
            if ((this.keyPressed & KEYS_DPAD) == DIRS_DPAD[dir]) {
                break;
            }
        } while ((this.keyPressed & KEYS_NUMPAD) != DIRS_NUMPAD[dir]);
        return dir;
    }

    public boolean hasKeyQueued() {
        return this.keyQueue != 0;
    }

    public boolean hasKeyPressed(int key) {
        return (this.keyQueue & key) > 0;
    }

    public boolean isKeyPressed(int key) {
        return (this.keyPressed & key) > 0;
    }

    public void releaseKeys() {
        this.keyPressed = 0;
    }

    public void clearKeyQueue() {
        this.keyQueue = 0;
        this.softKeyPressed = -1;
    }

    public void clearKeyState() {
        this.keyQueue = 0;
        this.keyPressed = 0;
        this.softKeyPressed = -1;
    }

    public void clearSoftkeys() {
        this.softkeys[0] = -1;
        this.softkeys[1] = -1;
        this.softkeysEnabled[0] = true;
        this.softkeysEnabled[1] = true;
    }

    public void addSoftkey(int softKey) {
        int loc = SOFTKEY_LOCATIONS[softKey];
        this.softkeys[loc] = softKey;
    }

    public void removeSoftkey(int softKey) {
        int loc = SOFTKEY_LOCATIONS[softKey];
        if (this.softkeys[loc] == softKey) {
            this.softkeys[loc] = -1;
        }
    }

    public void enableSoftkey(int softKey) {
        int loc = SOFTKEY_LOCATIONS[softKey];
        if (this.softkeys[loc] == softKey) {
            this.softkeysEnabled[loc] = true;
        }
    }

    public void disableSoftkey(int softKey) {
        int loc = SOFTKEY_LOCATIONS[softKey];
        if (this.softkeys[loc] == softKey) {
            this.softkeysEnabled[loc] = false;
        }
    }

    public int getCurrentSoftKey(int location) {
        return this.softkeys[location];
    }

    public boolean isSoftkeyEnabled(int softKey) {
        int loc = SOFTKEY_LOCATIONS[softKey];
        return this.softkeysEnabled[loc];
    }

    public boolean hasSoftkeys() {
        return this.softkeys[0] >= 0 || this.softkeys[1] >= 0;
    }

    public void playSoundSfx(int tune) {
        if (this.Sound_on_off) {
            soundsSfx[tune].seekTo(0);
            soundsSfx[tune].start();
        }
    }

    public void playSfx(int tune) {
        playSound(tune, 1);
    }

    public void loadSound() {
        soundsSfx = new MediaPlayer[soundDataSfx.length];
        for (int i = 0; i < soundDataSfx.length; i++) {
            soundsSfx[i] = MediaPlayer.create(Main.midlet, soundDataSfx[i]);
        }
    }

    public void playSound(int tune, int loop) {
        if (this.Sound_on_off && this.soundIsPlaying != tune) {
            this.soundIsPlaying = tune;
            this.lastSound = tune;
            if (tune >= 0) {
                if (this.currentPlayer != null && this.currentPlayer.isPlaying()) {
                    stopSound();
                }
                this.currentPlayer = MediaPlayer.create(Main.midlet, Main.midlet.res.SOUND_BGM_RAW[tune]);
                if (loop == 0) {
                    this.currentPlayer.setLooping(true);
                }
                this.currentPlayer.start();
                this.currentPlayer.setVolume(500.0f, 500.0f);
            }
        }
    }

    public void stopSound() {
        if (this.currentPlayer != null) {
            this.currentPlayer.stop();
            this.currentPlayer = null;
            this.soundIsPlaying = -1;
        }
    }

    public void playSound() {
        if (this.lastSound != this.soundIsPlaying) {
            if (this.currentPlayer != null && this.currentPlayer.isPlaying()) {
                this.currentPlayer.stop();
                this.currentPlayer = null;
            }
            if (this.lastSound != -1) {
                this.currentPlayer = MediaPlayer.create(Main.midlet, Main.midlet.res.SOUND_BGM_RAW[this.lastSound]);
                this.soundIsPlaying = this.lastSound;
                this.currentPlayer.start();
            }
        }
    }

    public void vibrate(int duration) {
        if (this.vibrate) {
            try {
                midlet.vibrate(duration);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    public void stopVibrate() {
        vibrate(0);
    }

    public DataInputStream createStream(String fileName) {
        InputStream is = null;
        try {
            is = Main.midlet.getResourceAsStream(fileName);
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (is != null) {
            this.stream = new DataInputStream(is);
        }
        return this.stream;
    }

    public void closeStream() {
        if (this.stream != null) {
            try {
                this.stream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        this.stream = null;
        garbageCollect();
    }

    public boolean hasStream() {
        return this.stream != null;
    }

    public void skipResources(int skips) throws IOException {
        int i = skips;
        while (true) {
            i--;
            if (i >= 0) {
                pullByteArray();
            } else {
                return;
            }
        }
    }

    public void skipData(int length) throws IOException {
        byte[] skip = new byte[length];
        readFully(skip);
    }

    public byte[] pullResource(String name) throws IOException {
        createStream(name);
        int size = this.stream.available();
        byte[] data = new byte[size];
        readFully(data);
        return data;
    }

    public int pull() throws IOException {
        return this.stream.read();
    }

    public int pullShort() throws IOException {
        return this.stream.readShort();
    }

    public int pullInt() throws IOException {
        return this.stream.readInt();
    }

    public Image pullImage() {
        byte[] data = pullByteArray();
        int len = data.length;
        return Image.createImage(data, 0, len);
    }

    public short[] pullImageData() throws IOException {
        int imgSize = this.stream.readInt();
        short[] data = new short[imgSize];
        for (int i = 0; i < imgSize; i++) {
            data[i] = this.stream.readShort();
        }
        return data;
    }

    public Sprite pullSprite(int width, int height) {
        Image imgTemp = pullImage();
        return new Sprite(imgTemp, width, height);
    }

    public String[] pullStrings(String filename) {
        String[] strings = null;
        try {
            createStream(filename);
            if (this.stream != null) {
                int numStrings = this.stream.readInt();
                strings = new String[numStrings];
                for (int i = 0; i < numStrings; i++) {
                    strings[i] = this.stream.readUTF();
                }
            }
            closeStream();
        } catch (Exception e) {
        }
        return strings;
    }

    public int[] pullIntArray() throws IOException {
        int size = this.stream.readInt();
        int[] data = new int[size];
        for (int i = 0; i < size; i++) {
            data[i] = this.stream.readInt();
        }
        return data;
    }

    public short[] pullShortArray() throws IOException {
        int size = this.stream.readInt() >> 1;
        short[] data = new short[size];
        for (int i = 0; i < size; i++) {
            data[i] = this.stream.readShort();
        }
        return data;
    }

    public byte[] pullByteArray() {
        int size = 0;
        try {
            size = this.stream.readInt();
        } catch (IOException e) {
            e.printStackTrace();
        }
        byte[] data = new byte[size];
        readFully(data);
        return data;
    }

    public byte[][] pullByteArrays(int length) throws IOException {
        this.stream.readInt();
        byte[][] arrs = new byte[length][];
        for (int i = 0; i < length; i++) {
            int len = this.stream.readUnsignedByte();
            byte[] arr = new byte[len];
            if (len > 0) {
                readFully(arr);
            }
            arrs[i] = arr;
        }
        return arrs;
    }

    public void readFully(byte[] data, int off, int len) {
        try {
            this.stream.read(data, off, len);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void readFully(byte[] data) {
        try {
            this.stream.read(data);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String replace(String s, String[] replace, int[] with) {
        int i = replace.length;
        while (true) {
            i--;
            if (i >= 0) {
                s = replace(s, replace[i], with[i]);
            } else {
                return s;
            }
        }
    }

    public static String replace(String s, String replace, int with) {
        return replace(s, replace, Integer.toString(with));
    }

    public static String replace(String source, String replace, String with) {
        while (true) {
            int index = source.indexOf(replace);
            if (index >= 0) {
                StringBuffer replaced = new StringBuffer();
                replaced.append(source.substring(0, index));
                replaced.append(with);
                replaced.append(source.substring(replace.length() + index));
                source = replaced.toString();
            } else {
                return source;
            }
        }
    }

    public byte[] rmsRead(int record) {
        byte[] data = null;
        RecordStore store = null;
        try {
            store = RecordStore.openRecordStore(RECORDSTORE_NAME, true);
            if (store.getNumRecords() > record) {
                data = store.getRecord(0);
            }
        } catch (Exception e) {
        }
        if (store != null) {
            try {
                store.closeRecordStore();
            } catch (Exception e2) {
            }
        }
        garbageCollect();
        return data;
    }

    public boolean rmsWrite(int record, byte[] data) {
        boolean written = false;
        RecordStore store = null;
        try {
            store = RecordStore.openRecordStore(RECORDSTORE_NAME, true);
            if (store.getNumRecords() > record) {
                store.setRecord(0, data, 0, data.length);
                written = true;
            }
            if (!written) {
                store.addRecord(data, 0, data.length);
                written = true;
            }
        } catch (Exception e) {
        }
        if (store != null) {
            try {
                store.closeRecordStore();
            } catch (Exception e2) {
            }
        }
        garbageCollect();
        return written;
    }

    public static int getRandom(int range) {
        if (range == 0) {
            return 0;
        }
        if (random == null) {
            random = new Random(System.currentTimeMillis());
        }
        int r = range < 0 ? -range : range;
        int rand = random.nextInt();
        if (rand < 0) {
            rand = -rand;
        }
        int value = rand % r;
        return range < 0 ? -value : value;
    }

    public static boolean getRandomBoolean() {
        return getRandom(2) == 0;
    }

    public static boolean getOccurence(int range) {
        return range > 0 && (range == 1 || getRandom(range) == 0);
    }

    public static int getRandomFrequency(int[] frequencies) {
        int total = 0;
        int i = frequencies.length;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            total += frequencies[i];
        }
        int r = getRandom(total);
        int s = 0;
        while (true) {
            int v = frequencies[s];
            if (r >= v) {
                r -= v;
                s++;
            } else {
                return s;
            }
        }
    }

    public static void randomShuffle(int[] set) {
        randomShuffle(set, 0, set.length);
    }

    public static void randomShuffle(int[] set, int offset, int length) {
        int i = length << 1;
        while (true) {
            i--;
            if (i >= 0) {
                int i1 = getRandom(length);
                int i2 = getRandom(length);
                if (i1 != i2) {
                    int t = set[offset + i1];
                    set[offset + i1] = set[offset + i2];
                    set[offset + i2] = t;
                }
            } else {
                return;
            }
        }
    }

    public int getHiScorePosition(int[] scores, int score) {
        int pos = 0;
        while (pos < scores.length && score < scores[pos]) {
            pos++;
        }
        if (pos == scores.length) {
            return -1;
        }
        return pos;
    }

    public int insertHiScore(int[] scores, String[] names, int score, String name) {
        int pos = getHiScorePosition(scores, score);
        if (pos >= 0) {
            int i = scores.length;
            while (true) {
                i--;
                if (i <= pos) {
                    break;
                }
                scores[i] = scores[i - 1];
                names[i] = names[i - 1];
            }
            scores[pos] = score;
            names[pos] = name;
        }
        return pos;
    }

    public static void garbageCollect() {
        System.gc();
    }

    public static int[] getDigits(int value, int numDigits) {
        int max = 1;
        int n = numDigits;
        while (true) {
            n--;
            if (n <= 0) {
                break;
            }
            max *= 10;
        }
        int[] digits = new int[numDigits];
        int d = max;
        int n2 = 0;
        int i = 0;
        while (d > 0) {
            if (value >= d) {
                n2++;
                value -= d;
            } else {
                digits[i] = n2;
                d /= 10;
                n2 = 0;
                i++;
            }
        }
        return digits;
    }
}
