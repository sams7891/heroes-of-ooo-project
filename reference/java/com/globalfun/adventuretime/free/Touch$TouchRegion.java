package com.globalfun.adventuretime.free;

/* JADX INFO: loaded from: classes.dex */
public class Touch$TouchRegion {
    private static final int BORDER = 16;
    private static final int COLOR_BORDER = -65536;
    private static final int COLOR_PRESSED = -16736256;
    private static final int MIN_SIZE = 32;
    private int hBorder;
    private int hDragged;
    private int hRange;
    public int height;
    private int id;
    private int index;
    private boolean isActive;
    public boolean isPressed;
    private boolean isVolatile;
    private boolean pressed;
    private int pressedOx;
    private int pressedOy;
    private boolean released;
    final /* synthetic */ Touch this$0;
    private int type;
    private int vBorder;
    private int vDragged;
    private int vRange;
    public int width;
    public int x;
    public int y;

    static /* synthetic */ int access$1(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.type;
    }

    static /* synthetic */ int access$3(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.id;
    }

    static /* synthetic */ boolean access$12(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.isActive;
    }

    static /* synthetic */ boolean access$8(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.isVolatile;
    }

    static /* synthetic */ int access$17(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.hDragged;
    }

    static /* synthetic */ int access$18(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.vDragged;
    }

    private Touch$TouchRegion(Touch touch, int index) {
        this.this$0 = touch;
        this.index = index;
    }

    /* synthetic */ Touch$TouchRegion(Touch touch, int i, Touch$TouchRegion touch$TouchRegion) {
        this(touch, i);
    }

    static /* synthetic */ void access$10(Touch$TouchRegion touch$TouchRegion) {
        touch$TouchRegion.reset();
    }

    private void reset() {
        this.type = -1;
        this.id = -1;
        this.isActive = false;
        this.isVolatile = false;
        this.isPressed = false;
        this.pressed = false;
        this.released = false;
    }

    static /* synthetic */ void access$14(Touch$TouchRegion touch$TouchRegion, int i, int i2) {
        touch$TouchRegion.setType(i, i2);
    }

    private void setType(int type, int id) {
        this.type = type;
        this.id = id;
    }

    static /* synthetic */ void access$16(Touch$TouchRegion touch$TouchRegion) {
        touch$TouchRegion.setVolatile();
    }

    private void setVolatile() {
        this.isVolatile = true;
    }

    static /* synthetic */ void access$13(Touch$TouchRegion touch$TouchRegion, int i, int i2, int i3, int i4) {
        touch$TouchRegion.setRegion(i, i2, i3, i4);
    }

    private void setRegion(int x, int y, int width, int height) {
        reset();
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        this.hBorder = 16;
        this.vBorder = 16;
        if (width < 32) {
            this.hBorder += (32 - width) >> 1;
        }
        if (height < 32) {
            this.vBorder += (32 - height) >> 1;
        }
        this.hRange = 0;
        this.vRange = 0;
        this.hDragged = 0;
        this.vDragged = 0;
        this.isActive = true;
    }

    static /* synthetic */ void access$15(Touch$TouchRegion touch$TouchRegion, int i, int i2) {
        touch$TouchRegion.setDrag(i, i2);
    }

    private void setDrag(int hRange, int vRange) {
        this.hRange = hRange;
        this.vRange = vRange;
    }

    static /* synthetic */ int access$9(Touch$TouchRegion touch$TouchRegion, int i, int i2) {
        return touch$TouchRegion.getDistance(i, i2);
    }

    private int getDistance(int px, int py) {
        if (!this.isActive) {
            return -1;
        }
        int dx = 0;
        int dy = 0;
        if (px < this.x) {
            dx = this.x - px;
            if (dx > this.hBorder) {
                dx = -1;
            }
        } else if (px >= this.x + this.width && (dx = (px + 1) - (this.x + this.width)) > this.hBorder) {
            dx = -1;
        }
        if (dx < 0) {
            return -1;
        }
        if (py < this.y) {
            dy = this.y - py;
            if (dy > this.vBorder) {
                dy = -1;
            }
        } else if (py >= this.y + this.height && (dy = (py + 1) - (this.y + this.height)) > this.vBorder) {
            dy = -1;
        }
        if (dy < 0) {
            return -1;
        }
        if (dx <= dy) {
            int dx2 = dy;
            return dx2;
        }
        return dx;
    }

    static /* synthetic */ void access$5(Touch$TouchRegion touch$TouchRegion, int i, int i2, boolean z) {
        touch$TouchRegion.pressed(i, i2, z);
    }

    private void pressed(int px, int py, boolean dragging) {
        if (!dragging) {
            this.pressed = true;
        }
        this.released = false;
        this.isPressed = getDistance(px, py) >= 0;
        if (this.isPressed) {
            this.pressedOx = px - this.x;
            this.pressedOy = py - this.y;
            Touch.access$0(this.this$0, this.index);
        } else if (Touch.access$1(this.this$0) == this.index) {
            Touch.access$0(this.this$0, -1);
        }
    }

    static /* synthetic */ void access$7(Touch$TouchRegion touch$TouchRegion, int i, int i2) {
        touch$TouchRegion.dragged(i, i2);
    }

    private void dragged(int px, int py) {
        if (this.isActive && this.isPressed) {
            if (this.hRange != 0) {
                int dx = px - (this.x + this.pressedOx);
                this.hDragged += dx;
                if (this.hRange > 0) {
                    if (this.hDragged < 0) {
                        dx -= this.hDragged;
                        this.hDragged = 0;
                    } else if (this.hDragged > this.hRange) {
                        dx -= this.hDragged - this.hRange;
                        this.hDragged = this.hRange;
                    }
                }
                this.x += dx;
            }
            if (this.vRange != 0) {
                int dy = py - (this.y + this.pressedOy);
                this.vDragged -= dy;
                if (this.vRange > 0) {
                    if (this.vDragged < 0) {
                        dy -= this.vDragged;
                        this.vDragged = 0;
                    } else if (this.vDragged > this.vRange) {
                        dy -= this.vDragged - this.vRange;
                        this.vDragged = this.vRange;
                    }
                }
                this.y += dy;
            }
            if (this.hRange == 0 && this.vRange == 0) {
                pressed(px, py, true);
            }
            if (this.type == 2) {
                this.released = this.isPressed ? false : true;
            }
        }
    }

    static /* synthetic */ void access$6(Touch$TouchRegion touch$TouchRegion, boolean z) {
        touch$TouchRegion.released(z);
    }

    private void released(boolean soft) {
        if (this.isActive && this.isPressed) {
            if (Touch.access$1(this.this$0) == this.index) {
                Touch.access$0(this.this$0, -1);
            }
            this.released = this.type == 2 || !soft;
            this.isPressed = false;
        }
    }

    static /* synthetic */ boolean access$4(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.isPressed();
    }

    private boolean isPressed() {
        boolean isPressed = this.pressed;
        if (isPressed) {
            this.pressed = false;
        }
        return isPressed;
    }

    static /* synthetic */ boolean access$2(Touch$TouchRegion touch$TouchRegion) {
        return touch$TouchRegion.isReleased();
    }

    private boolean isReleased() {
        boolean isReleased = this.released;
        if (isReleased) {
            this.released = false;
        }
        return isReleased;
    }

    static /* synthetic */ void access$11(Touch$TouchRegion touch$TouchRegion, Graphics graphics) {
        touch$TouchRegion.paint(graphics);
    }

    private void paint(Graphics g) {
        if (this.isActive) {
            if (this.isPressed) {
                g.setColor(-16736256);
            } else {
                g.setColor(-65536);
            }
            g.drawRect(this.x, this.y, this.width - 1, this.height - 1);
        }
    }
}
