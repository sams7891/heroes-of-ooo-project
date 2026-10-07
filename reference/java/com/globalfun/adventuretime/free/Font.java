package com.globalfun.adventuretime.free;

import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class Font {
    public static final int FACE_MONOSPACE = 32;
    public static final int FACE_PROPORTIONAL = 64;
    public static final int FACE_SYSTEM = 0;
    public static final int FONT_INPUT_TEXT = 1;
    public static final int FONT_STATIC_TEXT = 0;
    public static final int SIZE_LARGE = 16;
    public static final int SIZE_MEDIUM = 0;
    public static final int SIZE_SMALL = 8;
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_ITALIC = 2;
    public static final int STYLE_PLAIN = 0;
    public static final int STYLE_UNDERLINED = 4;
    public int color = -16777216;
    public int style = 0;
    private int fontHeight = 12;
    private final Paint mPaint = new Paint();

    public int charWidth(char c) {
        return stringWidth(new StringBuilder().append(c).toString());
    }

    public int stringWidth(String ch) {
        this.mPaint.setTextSize(this.fontHeight);
        Rect bounds = new Rect();
        this.mPaint.getTextBounds(String.valueOf(ch) + " ", 0, ch.length(), bounds);
        return bounds.width();
    }

    public int substringWidth(String ch, int offset, int length) {
        this.mPaint.setTextSize(this.fontHeight);
        Rect bounds = new Rect();
        this.mPaint.getTextBounds(String.valueOf(ch) + " ", offset, offset + length, bounds);
        return bounds.width();
    }

    public int charsWidth(char[] ch, int offset, int length) {
        this.mPaint.setTextSize(this.fontHeight);
        Rect bounds = new Rect();
        this.mPaint.getTextBounds(ch, offset, length, bounds);
        return bounds.width();
    }

    public int getBaselinePosition() {
        return this.fontHeight;
    }

    public int getHeight() {
        return this.fontHeight;
    }

    private void setFontHeight(int height) {
        this.fontHeight = height;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Font getFont(int face, int style, int size, int color) {
        Font f = new Font();
        f.color = color;
        switch (size) {
            case 0:
                f.setFontHeight(0);
                f.style = style;
                return f;
            case 8:
                f.setFontHeight(8);
                f.style = style;
                return f;
            case 16:
                f.setFontHeight(16);
                f.style = style;
                return f;
            default:
                return f;
        }
    }
}
