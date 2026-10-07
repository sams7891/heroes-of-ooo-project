package com.globalfun.adventuretime.free;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint$Align;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region$Op;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public class Graphics {
    public static final int BASELINE = 64;
    public static final int BOTTOM = 32;
    public static final int DOTTED = 1;
    private static final boolean FORCE_OPAQUE_COLORS = true;
    public static final int HCENTER = 1;
    public static final int LEFT = 4;
    public static final int RIGHT = 8;
    public static final int SOLID = 0;
    public static final int TOP = 16;
    public static final byte TRANS_MIRROR = 2;
    public static final byte TRANS_MIRROR_ROT180 = 1;
    public static final byte TRANS_MIRROR_ROT270 = 4;
    public static final byte TRANS_MIRROR_ROT90 = 7;
    public static final byte TRANS_NONE = 0;
    public static final byte TRANS_ROT180 = 3;
    public static final byte TRANS_ROT270 = 6;
    public static final byte TRANS_ROT90 = 5;
    public static final int VCENTER = 2;
    private Canvas cc;
    private int TranslateX = 0;
    private int TranslateY = 0;
    PathEffect EFFECT_DOTTED_STROKE = new DashPathEffect(new float[]{2.0f, 4.0f}, 4.0f);
    private final Paint mPaint = new Paint();
    private final Paint mPaintOutline = new Paint();
    private final Matrix matrix = new Matrix();
    private Font font = Font.getFont(0, 1, 0, -1);

    public Graphics(Canvas currentCanvas) {
        this.cc = null;
        this.cc = currentCanvas;
        this.mPaint.setStyle(Paint$Style.FILL);
        this.mPaint.setTextAlign(Paint$Align.CENTER);
        this.mPaintOutline.setStyle(Paint$Style.STROKE);
        this.mPaintOutline.setStrokeWidth(1.0f);
    }

    public void setCanvas(Canvas canvas) {
        this.cc = canvas;
    }

    public int getColor() {
        return this.mPaint.getColor();
    }

    public void setStrokeStyle(int Style) {
        if (Style == 0) {
            this.mPaint.setPathEffect(null);
        } else {
            this.mPaint.setPathEffect(this.EFFECT_DOTTED_STROKE);
        }
    }

    public void drawArc(int x, int y, int width, int height, int startAngle, int arcAngle) {
        this.cc.drawArc(new RectF(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY), startAngle, arcAngle, false, this.mPaintOutline);
    }

    public void drawLine(int x1, int y1, int x2, int y2) {
        this.cc.drawLine(this.TranslateX + x1, this.TranslateY + y1, this.TranslateX + x2, this.TranslateY + y2, this.mPaint);
    }

    public void drawRect(int x, int y, int width, int height) {
        this.cc.drawRect(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY, this.mPaintOutline);
    }

    public void drawRoundRect(int x, int y, int width, int height, int arcWidth, int arcHeight) {
        this.cc.drawRoundRect(new RectF(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY), arcWidth, arcHeight, this.mPaintOutline);
    }

    public void drawString(String str, int x, int y, int anchor) {
        this.mPaint.setColor(getFont().color);
        this.mPaint.setTextSize(this.font.getHeight());
        this.mPaint.setTypeface(Typeface.defaultFromStyle(this.font.style));
        this.mPaint.setAntiAlias(true);
        switch (anchor) {
            case 17:
                this.mPaint.setTextAlign(Paint$Align.CENTER);
                break;
            case 20:
                this.mPaint.setTextAlign(Paint$Align.LEFT);
                break;
        }
        this.cc.drawText(str, this.TranslateX + x, this.TranslateY + y, this.mPaint);
        this.mPaint.setAntiAlias(false);
    }

    public void drawSubstring(String str, int offset, int len, int x, int y, int anchor) {
        this.mPaint.setColor(getFont().color);
        this.mPaint.setTextSize(this.font.getHeight());
        this.mPaint.setTypeface(Typeface.defaultFromStyle(this.font.style));
        this.mPaint.setAntiAlias(true);
        switch (anchor) {
            case 17:
                this.mPaint.setTextAlign(Paint$Align.CENTER);
                break;
            case 20:
                this.mPaint.setTextAlign(Paint$Align.LEFT);
                break;
        }
        this.cc.drawText(str, offset, offset + len, this.TranslateX + x, this.TranslateY + y, this.mPaint);
        this.mPaint.setAntiAlias(false);
    }

    public void fillArc(int x, int y, int width, int height, int startAngle, int arcAngle) {
        this.cc.drawArc(new RectF(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY), startAngle, arcAngle, true, this.mPaint);
    }

    public void fillRect(int x, int y, int width, int height) {
        this.cc.drawRect(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY, this.mPaint);
    }

    public void fillAlphaRect(int x, int y, int width, int height, int argb) {
        int oldColor = this.mPaint.getColor();
        this.mPaint.setColor(argb);
        this.cc.drawRect(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY, this.mPaint);
        this.mPaint.setColor(oldColor);
    }

    public void fillAlphaRoundRect(int x, int y, int width, int height, int arcWidth, int arcHeight, int argb) {
        int oldColor = this.mPaint.getColor();
        this.mPaint.setColor(argb);
        this.cc.drawRoundRect(new RectF(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY), arcWidth, arcHeight, this.mPaint);
        this.mPaint.setColor(oldColor);
    }

    public void fillRoundRect(int x, int y, int width, int height, int arcWidth, int arcHeight) {
        this.cc.drawRoundRect(new RectF(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY), arcWidth, arcHeight, this.mPaint);
    }

    public void setColor(int red, int green, int blue) {
        this.mPaint.setColor(Color.rgb(red, green, blue));
        this.mPaintOutline.setColor(Color.rgb(red, green, blue));
    }

    public void setColor(int RGB) {
        int RGB2 = RGB | (-16777216);
        this.mPaint.setColor(RGB2);
        this.mPaintOutline.setColor(RGB2);
    }

    public void drawImage(Image img, int x, int y, int anchor) {
        if ((anchor & 1) != 0) {
            x -= img.getWidth() / 2;
        }
        if ((anchor & 2) != 0) {
            y -= img.getHeight() / 2;
        }
        if ((anchor & 32) != 0) {
            y -= img.getHeight();
        }
        if ((anchor & 8) != 0) {
            x -= img.getWidth();
        }
        this.cc.drawBitmap(img.getBitmap(), this.TranslateX + x, this.TranslateY + y, this.mPaint);
    }

    public void fillTriangle(int x1, int y1, int x2, int y2, int x3, int y3) {
        Path p = new Path();
        p.moveTo(this.TranslateX + x1, this.TranslateY + y1);
        p.lineTo(this.TranslateX + x2, this.TranslateY + y2);
        p.lineTo(this.TranslateX + x3, this.TranslateY + y3);
        this.cc.drawPath(p, this.mPaint);
    }

    public void setClip(int x, int y, int width, int height) {
        this.cc.clipRect(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY, Region$Op.REPLACE);
        Rect clip = this.cc.getClipBounds();
        if (clip.left != this.TranslateX + x || clip.right != x + width + this.TranslateX || clip.top != this.TranslateY + y || clip.bottom != y + height + this.TranslateY) {
            System.err.println("Clip is not as expected! x,y,w,h: " + x + "," + y + "," + width + "," + height + "  clip rect: " + clip);
        }
    }

    public void clipRect(int x, int y, int width, int height) {
        this.cc.clipRect(this.TranslateX + x, this.TranslateY + y, x + width + this.TranslateX, y + height + this.TranslateY);
    }

    public void translate(int x, int y) {
        this.TranslateX += x;
        this.TranslateY += y;
    }

    public int getTranslateX() {
        return this.TranslateX;
    }

    public int getTranslateY() {
        return this.TranslateY;
    }

    public int getClipX() {
        return this.cc.getClipBounds().left;
    }

    public int getClipY() {
        return this.cc.getClipBounds().top;
    }

    public int getClipWidth() {
        return this.cc.getClipBounds().width();
    }

    public int getClipHeight() {
        return this.cc.getClipBounds().height();
    }

    public void drawRegion(Image src, int x_src, int y_src, int width, int height, int transform, int x_dest, int y_dest, int anchor) {
        int x_dest2 = x_dest + this.TranslateX;
        int y_dest2 = y_dest + this.TranslateY;
        if ((anchor & 1) != 0) {
            x_src -= src.getWidth() / 2;
        } else if ((anchor & 2) != 0) {
            y_src -= src.getHeight() / 2;
        } else if ((anchor & 32) != 0) {
            y_src -= src.getHeight();
        } else if ((anchor & 8) != 0) {
            x_src -= src.getWidth();
        }
        this.cc.save();
        float degree = 0.0f;
        Matrix matrix = new Matrix();
        if (transform == 3) {
            degree = 180.0f;
            matrix.preTranslate(-((x_src * 2) + width), -((y_src * 2) + height));
        }
        if (transform == 5) {
            degree = 90.0f;
            matrix.preTranslate(-(x_src - y_src), -(x_src + height + y_src));
            width = height;
            height = width;
        }
        if (transform == 6) {
            degree = 270.0f;
            matrix.preTranslate(-(x_src + width + y_src), x_src - y_src);
            int temp = width;
            width = height;
            height = temp;
        }
        if (transform == 1) {
            matrix.setScale(1.0f, -1.0f);
            matrix.postTranslate(0.0f, (y_src * 2) + height);
        }
        if (transform == 2) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.postTranslate((x_src * 2) + width, 0.0f);
        }
        if (transform == 4) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.preTranslate(x_src + y_src + width, x_src - y_src);
            degree = 270.0f;
            matrix.postTranslate((x_src * 2) + width, 0.0f);
            int temp2 = width;
            width = height;
            height = temp2;
        }
        if (transform == 7) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.preTranslate(x_src - y_src, -(x_src + y_src + height));
            degree = 90.0f;
            matrix.postTranslate((x_src * 2) + width, 0.0f);
            int temp3 = width;
            width = height;
            height = temp3;
        }
        matrix.postRotate(degree);
        this.cc.clipRect(x_dest2, y_dest2, x_dest2 + width, y_dest2 + height);
        matrix.postTranslate(x_dest2 - x_src, y_dest2 - y_src);
        this.cc.drawBitmap(src.getBitmap(), matrix, this.mPaint);
        this.cc.restore();
    }

    public void drawRGB(int[] rgbData, int offset, int scanlength, int x, int y, int width, int height, boolean processAlpha) {
        this.cc.drawBitmap(rgbData, offset, scanlength, x + this.TranslateX, y + this.TranslateY, width, height, processAlpha, this.mPaint);
    }

    public void drawRGB(int[] rgbData, int offset, int scanlength, int x, int y, int width, int height, boolean processAlpha, float scaleX, float scaleY) {
        int x2 = x + this.TranslateX;
        int y2 = y + this.TranslateY;
        this.cc.save();
        this.cc.scale(scaleX, scaleY);
        this.cc.drawBitmap(rgbData, offset, scanlength, Math.round(x2 / scaleX), Math.round(y2 / scaleY), width, height, processAlpha, this.mPaint);
        this.cc.restore();
    }

    public void setFont(Font font) {
        this.font = font;
    }

    public Font getFont() {
        return this.font;
    }

    public void drawChar(char character, int x, int y, int anchor) {
        this.mPaint.setColor(getFont().color);
        this.mPaint.setTextSize(this.font.getHeight());
        this.mPaint.setTypeface(Typeface.defaultFromStyle(this.font.style));
        this.mPaint.setAntiAlias(true);
        switch (anchor) {
            case 17:
                this.mPaint.setTextAlign(Paint$Align.CENTER);
                break;
            case 20:
                this.mPaint.setTextAlign(Paint$Align.LEFT);
                break;
        }
        this.cc.drawText(new StringBuilder().append(character).toString(), this.TranslateX + x, this.TranslateY + y + this.font.getHeight(), this.mPaint);
        this.mPaint.setAntiAlias(false);
    }

    public void drawChars(char[] data, int offset, int length, int x, int y, int anchor) {
        this.mPaint.setColor(getFont().color);
        this.mPaint.setTextSize(this.font.getHeight());
        this.mPaint.setTypeface(Typeface.defaultFromStyle(this.font.style));
        this.mPaint.setAntiAlias(true);
        switch (anchor) {
            case 17:
                this.mPaint.setTextAlign(Paint$Align.CENTER);
                break;
            case 20:
                this.mPaint.setTextAlign(Paint$Align.LEFT);
                break;
        }
        this.cc.drawText(data, offset, length, this.TranslateX + x, this.TranslateY + y + this.font.getHeight(), this.mPaint);
        this.mPaint.setAntiAlias(false);
    }
}
