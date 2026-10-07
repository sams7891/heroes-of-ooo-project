package com.globalfun.adventuretime.free;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class Image {
    public static final byte TRANS_MIRROR = 2;
    public static final byte TRANS_MIRROR_ROT180 = 1;
    public static final byte TRANS_MIRROR_ROT270 = 4;
    public static final byte TRANS_MIRROR_ROT90 = 7;
    public static final byte TRANS_NONE = 0;
    public static final byte TRANS_ROT180 = 3;
    public static final byte TRANS_ROT270 = 6;
    public static final byte TRANS_ROT90 = 5;
    private int TranslateX = 0;
    private int TranslateY = 0;
    private Bitmap bitmap;

    public Image(Bitmap bitmap) {
        this.bitmap = null;
        this.bitmap = bitmap;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public void getRGB(int[] rgbData, int offset, int scanlength, int x, int y, int width, int height) {
        this.bitmap.getPixels(rgbData, offset, scanlength, x, y, width, height);
    }

    public static Image loadImage(Drawable sprite, Bitmap$Config bitmapConfig) {
        return new Image(loadBitmap(sprite, bitmapConfig));
    }

    public static Image loadImage(byte[] imageData, int index, int length) {
        return createImage(imageData, index, length);
    }

    private static Bitmap loadBitmap(Drawable sprite, Bitmap$Config bitmapConfig) {
        int width = sprite.getIntrinsicWidth();
        int height = sprite.getIntrinsicHeight();
        Bitmap bitmap = Bitmap.createBitmap(width, height, bitmapConfig);
        Canvas canvas = new Canvas(bitmap);
        sprite.setBounds(0, 0, width, height);
        sprite.draw(canvas);
        return bitmap;
    }

    public static Image createImage(byte[] data, int index, int length) {
        try {
            Bitmap b = BitmapFactory.decodeByteArray(data, index, length);
            return new Image(b);
        } catch (Exception e) {
            return null;
        }
    }

    public void setRefPixelPosition(int x, int y) {
        this.TranslateX = x;
        this.TranslateY = y;
    }

    public void paint(Graphics g) {
        g.drawImage(this, this.TranslateX, this.TranslateY, 0);
    }

    public static Image createImage(String path) {
        byte[] buffer;
        ByteArrayOutputStream temp;
        InputStream is = null;
        try {
            is = Main.midlet.getResourceAsStream(path);
            while (true) {
                try {
                    int read = is.read(buffer);
                    if (read <= 0) {
                        break;
                    }
                    temp.write(buffer, 0, read);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        buffer = new byte[2024];
        temp = new ByteArrayOutputStream();
        byte[] temp_arr = temp.toByteArray();
        return createImage(temp_arr, 0, temp.size());
    }

    public void setTransform(int rot) {
        float degree = 0.0f;
        Matrix matrix = new Matrix();
        if (rot == 3) {
            degree = 180.0f;
        }
        if (rot == 5) {
            degree = 90.0f;
        }
        if (rot == 6) {
            degree = 270.0f;
        }
        if (rot == 1) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.postTranslate(this.bitmap.getWidth(), 0.0f);
            degree = 180.0f;
        }
        if (rot == 2) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.postTranslate(this.bitmap.getWidth(), 0.0f);
        }
        if (rot == 4) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.postTranslate(this.bitmap.getWidth(), 0.0f);
            degree = 270.0f;
        }
        if (rot == 7) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.postTranslate(this.bitmap.getWidth(), 0.0f);
            degree = 90.0f;
        }
        matrix.postRotate(degree);
        this.bitmap = Bitmap.createBitmap(this.bitmap, 0, 0, this.bitmap.getWidth(), this.bitmap.getHeight(), matrix, true);
    }

    public static Image createImage(int width, int height) {
        return createImage(width, height, false);
    }

    public static Image createImage(int width, int height, boolean supportAlpha) {
        return new Image(Bitmap.createBitmap(width, height, supportAlpha ? Bitmap$Config.ARGB_8888 : Bitmap$Config.RGB_565));
    }

    public static Image createRGBImage(int[] rgb, int width, int height, boolean processAlpha) {
        return new Image(Bitmap.createBitmap(rgb, width, height, Bitmap$Config.RGB_565));
    }

    public int getWidth() {
        return this.bitmap.getWidth();
    }

    public int getHeight() {
        return this.bitmap.getHeight();
    }

    public static Image createImage(Image srcImage, int srcXOffset, int srcYOffset, int width, int height, int transform) {
        return new Image(Bitmap.createBitmap(srcImage.getBitmap(), srcXOffset, srcYOffset, width, height));
    }

    public Graphics getGraphics() {
        if (!this.bitmap.isMutable()) {
            throw new IllegalStateException("Image is immutable");
        }
        return new Graphics(new Canvas(this.bitmap));
    }

    public void convertToBitmapConfig(Bitmap$Config config) {
        if (!this.bitmap.getConfig().equals(config)) {
            Bitmap newBitmap = this.bitmap.copy(config, this.bitmap.isMutable());
            if (newBitmap == null) {
                throw new RuntimeException("Couldnt convert bitmap to config: " + config);
            }
            this.bitmap = newBitmap;
        }
    }
}
