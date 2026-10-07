package com.globalfun.adventuretime.free;

/* JADX INFO: loaded from: classes.dex */
public final class Sprite implements DeviceConfig {
    public static final int[] TRANSFORM = {0, 3, 5, 6, 2};
    private int height;
    private Image image;
    private int numFrames;
    public int refPixelX;
    public int refPixelY;
    private int width;

    public Sprite(Image image, int width, int height) {
        this.image = image;
        this.width = width;
        this.height = height;
        this.numFrames = image.getHeight() / height;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getRawFrameCount() {
        return this.numFrames;
    }

    public void setRefPixelPosition(int x, int y) {
        this.refPixelX = x;
        this.refPixelY = y;
    }

    public void paint(Graphics g, int x, int y, int frame) {
        paint(g, x, y, frame, false);
    }

    public void paint(Graphics g, int x, int y, int frame, int align) {
        if ((align & 8) > 0) {
            x -= this.width;
        } else if ((align & 1) > 0) {
            x -= this.width >> 1;
        }
        if ((align & 32) > 0) {
            y -= this.height;
        } else if ((align & 2) > 0) {
            y -= this.height >> 1;
        }
        paint(g, x, y, frame, false);
    }

    public void paint(Graphics g, int x, int y, int frame, boolean hFlip) {
        int x2;
        if (frame >= 0 && frame < this.numFrames) {
            if (hFlip) {
                x2 = x + (this.refPixelX - this.width);
            } else {
                x2 = x - this.refPixelX;
            }
            int y2 = y - this.refPixelY;
            int transform = 0;
            if (hFlip) {
                transform = 2;
            }
            g.drawRegion(this.image, 0, frame * this.height, this.width, this.height, transform, x2, y2, 20);
        }
    }

    public void paintTransformed(Graphics g, int x, int y, int frame, int dir) {
        g.drawRegion(this.image, 0, frame * this.height, this.width, this.height, TRANSFORM[dir], x - this.refPixelX, y - this.refPixelY, 20);
    }
}
