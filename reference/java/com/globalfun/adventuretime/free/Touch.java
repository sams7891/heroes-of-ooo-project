package com.globalfun.adventuretime.free;

/* JADX INFO: loaded from: classes.dex */
public abstract class Touch extends GameCanvas {
    private static final int MAX_REGIONS = 32;
    public static final int PI = 3217;
    public static final int PI_34 = 2412;
    public static final int PI_DEGREES = 180;
    public static final int PI_DEGREES_DOUBLE = 360;
    public static final int PI_DEGREES_HALF = 90;
    public static final int PI_DOUBLE = 6434;
    public static final int PI_Q = 804;
    public static int PRECISION = 10;
    private static final int[] SINE = {0, 36, 71, 107, 143, 178, 213, 248, 282, 316, 350, 384, 416, 449, 481, 512, 543, 573, 602, 630, 658, 685, 711, 737, 761, Room.OBJECTS_AREA, 807, 828, 849, 868, 887, 904, 920, 935, 949, 962, 974, 984, 994, 1002, 1008, 1014, 1018, 1022, 1023, 1024};
    private static final int SINE_COUNT = 45;
    public static final int TOUCH_TYPE_KEY = 2;
    public static final int TOUCH_TYPE_MENU = 1;
    public static final int TOUCH_TYPE_SOFTKEY = 0;
    public static final int TOUCH_TYPE_USER = -1;
    public static final int TOUCH_VIBRATE = 100;
    int[] fixedpos;
    private int globalPressed;
    int oldpos;
    private int pointerX;
    private int pointerY;
    int radius;
    private Touch$TouchRegion[] touchRegions;

    static /* synthetic */ void access$0(Touch touch, int i) {
        touch.globalPressed = i;
    }

    static /* synthetic */ int access$1(Touch touch) {
        return touch.globalPressed;
    }

    public Touch(Main parent) {
        super(parent);
        this.pointerX = -1;
        this.pointerY = -1;
        this.oldpos = 0;
        this.radius = -1;
        this.fixedpos = new int[2];
        this.touchRegions = new Touch$TouchRegion[32];
        int i = 32;
        while (true) {
            i--;
            if (i >= 0) {
                this.touchRegions[i] = new Touch$TouchRegion(this, i, null);
            } else {
                return;
            }
        }
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void touchEvents() {
        int prevCursor = this.menuCursor;
        int i = 32;
        while (true) {
            i--;
            if (i < 0) {
                break;
            }
            Touch$TouchRegion region = this.touchRegions[i];
            if (Touch$TouchRegion.access$1(region) == 0) {
                if (Touch$TouchRegion.access$2(region)) {
                    this.softKeyPressed = Touch$TouchRegion.access$3(region);
                }
            } else if (Touch$TouchRegion.access$1(region) == 1) {
                if (Touch$TouchRegion.access$2(region)) {
                    prevCursor = Touch$TouchRegion.access$3(region);
                    this.menuCursor = prevCursor;
                    inputEvent(5, this.menuCursor);
                } else if (region.isPressed) {
                    this.menuCursor = Touch$TouchRegion.access$3(region);
                } else if (prevCursor == Touch$TouchRegion.access$3(region)) {
                    this.menuCursor = -1;
                }
            } else if (Touch$TouchRegion.access$1(region) == 2) {
                if (Touch$TouchRegion.access$4(region)) {
                    super.keyPressed(Touch$TouchRegion.access$3(region));
                } else if (Touch$TouchRegion.access$2(region)) {
                    super.keyReleased(Touch$TouchRegion.access$3(region));
                }
            }
        }
        if (this.menuCursor != prevCursor) {
            inputEvent(4, this.menuCursor);
        }
    }

    public int[] intersect(int x, int y, int r, int a) {
        this.fixedpos[0] = cos(a) * r;
        this.fixedpos[1] = sin(a) * r;
        return this.fixedpos;
    }

    public static final int sin(int angle) {
        int angle2;
        if (angle < 0) {
            angle2 = 360 - ((-angle) % PI_DEGREES_DOUBLE);
        } else {
            angle2 = angle % PI_DEGREES_DOUBLE;
        }
        int ang = (angle2 % 90) >> 1;
        if (angle2 < 90) {
            return SINE[ang];
        }
        if (angle2 < 180) {
            return SINE[45 - ang];
        }
        if (angle2 < 270) {
            return -SINE[ang];
        }
        return -SINE[45 - ang];
    }

    public static final int cos(int angle) {
        return sin(angle + 90);
    }

    public static final int atan(int x, int y) {
        int angle;
        int abs_y = y;
        if (x == 0 && y == 0) {
            return 0;
        }
        if (y < 0) {
            abs_y = -y;
        }
        if (x >= 0) {
            int p1 = x - abs_y;
            int p2 = x + abs_y;
            int r = (p1 << PRECISION) / p2;
            angle = 804 - ((r * PI_Q) >> PRECISION);
        } else {
            int p3 = x + abs_y;
            int p4 = abs_y - x;
            int r2 = (p3 << PRECISION) / p4;
            angle = 2412 - ((r2 * PI_Q) >> PRECISION);
        }
        return y < 0 ? (3217 - angle) + PI : angle;
    }

    public int sqrt(int a) {
        int[] g = new int[10];
        int L = 0;
        while (a > 0) {
            g[L] = a % 100;
            a /= 100;
            L++;
        }
        int r = 0;
        int x = 0;
        for (int j = L - 1; j >= 0; j--) {
            int r2 = (r * 100) + g[j];
            int y = 0;
            int dp1 = 1;
            while (dp1 < 10) {
                int yn = dp1 * ((x * 20) + dp1);
                if (yn > r2) {
                    break;
                }
                y = yn;
                dp1++;
            }
            x = ((x * 10) + dp1) - 1;
            r = r2 - y;
        }
        return x;
    }

    public int approx_distance(int dx, int dy) {
        int min;
        int max;
        if (dx < 0) {
            dx = -dx;
        }
        if (dy < 0) {
            dy = -dy;
        }
        if (dx < dy) {
            min = dx;
            max = dy;
        } else {
            min = dy;
            max = dx;
        }
        int approx = (max * 1007) + (min * 441);
        if (max < (min << 4)) {
            approx -= max * 40;
        }
        return (approx + 512) >> 10;
    }

    public void pointerPressed(int x, int y) {
        this.pointerX = x;
        this.pointerY = y;
        if (Engine.state == 0) {
            if (x - 30 < (GameCanvas.trueScreenWidth >> 1)) {
                Engine.TouchisDown = true;
                Engine.StatingPointX = x;
                Engine.StatingPointY = y;
                return;
            }
            Main.engine.milli = System.currentTimeMillis();
        }
        if (this.isHidden) {
            show();
            return;
        }
        int press = getRegion(x, y, false);
        if (press >= 0) {
            Touch$TouchRegion.access$5(this.touchRegions[press], x, y, false);
        }
    }

    public void pointerReleasedRight(int x, int y) {
        this.pointerX = -1;
        this.pointerY = -1;
        int i = 32;
        while (true) {
            i--;
            if (i >= 0) {
                Touch$TouchRegion.access$6(this.touchRegions[i], false);
            } else {
                return;
            }
        }
    }

    public void pointerReleased(int x, int y) {
        this.pointerX = -1;
        this.pointerY = -1;
        if (Engine.TouchisDown) {
            releaseKeys();
        }
        Engine.TouchisDown = false;
        Engine.CurrentPointX = -300;
        Engine.StatingPointX = -300;
        Engine.StatingPointY = -300;
        Engine.CurrentPointY = -300;
        int i = 32;
        while (true) {
            i--;
            if (i >= 0) {
                Touch$TouchRegion.access$6(this.touchRegions[i], false);
            } else {
                return;
            }
        }
    }

    public void LeftPointerPressed(int x, int y) {
        Engine.TouchisDown = true;
        Engine.StatingPointX = x;
        Engine.StatingPointY = y;
        Engine.CurrentPointX = x;
        Engine.CurrentPointY = y;
    }

    public void pointerDragged(int x, int y) {
        int press;
        if (Engine.TouchisDown && x < this.screenWidth / 2) {
            if (this.radius == -1) {
                this.radius = (Engine.touchImage.getWidth() >> 1) - (Engine.touchJoy.getWidth() >> 1);
            }
            Engine.CurrentPointX = x;
            Engine.CurrentPointY = y;
            if (Math.abs(Math.max(Engine.StatingPointX, x) - Math.min(Engine.StatingPointX, x)) < 10 && Math.abs(Math.max(Engine.StatingPointY, y) - Math.min(Engine.StatingPointY, y)) < 10) {
                releaseKeys();
                return;
            }
            int y2 = GameCanvas.trueScreenHeight - y;
            int y1 = GameCanvas.trueScreenHeight - Engine.StatingPointY;
            int x2 = x - Engine.StatingPointX;
            int y3 = y2 - y1;
            int a = (((atan(x2, y3) * PI_DEGREES) / 314) * 100) >> 10;
            if (approx_distance(x2, y3) > this.radius) {
                this.fixedpos = intersect(x2, y3, this.radius, a);
                Engine.CurrentPointX = (this.fixedpos[0] >> 10) + Engine.StatingPointX;
                Engine.CurrentPointY = Engine.StatingPointY - (this.fixedpos[1] >> 10);
            }
            releaseKeys();
            if ((a >= 0 && a < 30) || a > 330) {
                keyPressed(13);
                return;
            }
            if (a >= 30 && a < 60) {
                keyPressed(10);
                return;
            }
            if (a >= 60 && a < 120) {
                keyPressed(9);
                return;
            }
            if (a >= 120 && a < 150) {
                keyPressed(8);
                return;
            }
            if (a >= 150 && a < 210) {
                keyPressed(11);
                return;
            }
            if (a >= 210 && a < 240) {
                keyPressed(14);
                return;
            }
            if (a >= 240 && a < 300) {
                keyPressed(15);
                return;
            } else {
                if (a >= 300 && a < 330) {
                    keyPressed(16);
                    return;
                }
                return;
            }
        }
        this.pointerX = x;
        this.pointerY = y;
        int i = 32;
        while (true) {
            i--;
            if (i < 0) {
                break;
            } else {
                Touch$TouchRegion.access$7(this.touchRegions[i], x, y);
            }
        }
        boolean pressVolatile = this.globalPressed < 0 || Touch$TouchRegion.access$8(this.touchRegions[this.globalPressed]);
        if (pressVolatile && (press = getRegion(x, y, true)) >= 0) {
            if (this.globalPressed >= 0) {
                if (press != this.globalPressed) {
                    Touch$TouchRegion.access$6(this.touchRegions[this.globalPressed], true);
                    return;
                }
                return;
            }
            Touch$TouchRegion.access$5(this.touchRegions[press], x, y, false);
        }
    }

    private int getRegion(int x, int y, boolean onlyVolatile) {
        int index = -1;
        int border = 0;
        int i = 32;
        while (true) {
            i--;
            if (i >= 0) {
                Touch$TouchRegion region = this.touchRegions[i];
                if (!onlyVolatile || Touch$TouchRegion.access$8(region)) {
                    int dist = Touch$TouchRegion.access$9(region, x, y);
                    if (dist >= 0 && (index < 0 || dist < border)) {
                        index = i;
                        border = dist;
                    }
                }
            } else {
                return index;
            }
        }
    }

    public void clearTouch() {
        int i = 32;
        while (true) {
            i--;
            if (i >= 0) {
                Touch$TouchRegion.access$10(this.touchRegions[i]);
            } else {
                this.globalPressed = -1;
                return;
            }
        }
    }

    @Override // com.globalfun.adventuretime.free.GameCanvas
    public void clearTouchState() {
        int i = 32;
        while (true) {
            i--;
            if (i >= 0) {
                Touch$TouchRegion.access$6(this.touchRegions[i], true);
            } else {
                this.globalPressed = -1;
                return;
            }
        }
    }

    public void touchPressPointer() {
        pointerDragged(this.pointerX, this.pointerY);
    }

    public void paintTouch(Graphics g) {
        clearClip(g);
        int i = 32;
        while (true) {
            i--;
            if (i >= 0) {
                Touch$TouchRegion.access$11(this.touchRegions[i], g);
            } else {
                return;
            }
        }
    }

    private int getEmptyTouch() {
        for (int i = 0; i < 32; i++) {
            if (!Touch$TouchRegion.access$12(this.touchRegions[i])) {
                int index = i;
                return index;
            }
        }
        return -1;
    }

    public int touchInitialise(int x, int y, int width, int height) {
        int index = getEmptyTouch();
        if (index >= 0) {
            Touch$TouchRegion.access$13(this.touchRegions[index], x, y, width, height);
        }
        return index;
    }

    public void touchSetSystem(int index, int type, int id) {
        Touch$TouchRegion.access$14(this.touchRegions[index], type, id);
    }

    public void touchSetDrag(int index, int hRange, int vRange) {
        Touch$TouchRegion.access$15(this.touchRegions[index], hRange, vRange);
    }

    public void touchSetVolatile(int index) {
        Touch$TouchRegion.access$16(this.touchRegions[index]);
    }

    public Touch$TouchRegion getTouch(int index) {
        return this.touchRegions[index];
    }

    public int touchHDragged(int index) {
        return Touch$TouchRegion.access$17(this.touchRegions[index]);
    }

    public int touchVDragged(int index) {
        return Touch$TouchRegion.access$18(this.touchRegions[index]);
    }

    public boolean isTouchPressed(int index) {
        return this.touchRegions[index].isPressed;
    }

    public boolean isTouchReleased(int index) {
        return Touch$TouchRegion.access$2(this.touchRegions[index]);
    }
}
