package com.globalfun.adventuretime.free;

import android.graphics.Canvas;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder$Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View$OnKeyListener;
import android.view.View$OnTouchListener;

/* JADX INFO: loaded from: classes.dex */
public class GameThread extends Thread implements SurfaceHolder$Callback, View$OnKeyListener, View$OnTouchListener {
    public Canvas canvas;
    private Main mainActivity;
    private static SurfaceView surfaceView = null;
    public static boolean LANGUAGE_SELECTION = true;
    private boolean threadStarted = false;
    int pointerleft = -1;
    int pointerright = -1;

    public GameThread(Main mainActivity) {
        recreateView(mainActivity);
    }

    void recreateView(Main mainActivity) {
        this.mainActivity = mainActivity;
        surfaceView = new SurfaceView(mainActivity);
        surfaceView.getHolder().addCallback(this);
        surfaceView.setFocusable(true);
        surfaceView.setFocusableInTouchMode(true);
        surfaceView.setOnKeyListener(this);
        surfaceView.setOnTouchListener(this);
        mainActivity.setContentView(surfaceView);
    }

    static void requestRepaint(GameCanvas screen) {
        Canvas canvas = null;
        while (canvas == null) {
            try {
                canvas = surfaceView.getHolder().lockCanvas();
                if (canvas == null) {
                    try {
                        Thread.sleep(250L);
                    } catch (InterruptedException e) {
                    }
                }
            } catch (Throwable th) {
                if (canvas != null) {
                    surfaceView.getHolder().unlockCanvasAndPost(canvas);
                }
                throw th;
            }
        }
        canvas.scale(Main.size, Main.size);
        screen.onDraw(canvas);
        if (canvas != null) {
            surfaceView.getHolder().unlockCanvasAndPost(canvas);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        runGameLoop();
    }

    @Override // android.view.SurfaceHolder$Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
    }

    @Override // android.view.SurfaceHolder$Callback
    public void surfaceCreated(SurfaceHolder holder) {
        Main.logMessage("surface Created()");
        if (!this.threadStarted) {
            this.threadStarted = true;
            start();
        }
    }

    @Override // android.view.SurfaceHolder$Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        Main.logMessage("surface Destroyed()");
    }

    public void runGameLoop() {
        Main.engine.run();
    }

    @Override // android.view.View$OnKeyListener
    public boolean onKey(View arg0, int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            if (event.getAction() == 0) {
                Main.engine.keyPressed(-7);
            }
            return true;
        }
        if (event.getAction() == 0) {
            Main.engine.keyPressed(event.getKeyCode());
        } else {
            Main.engine.keyReleased(event.getKeyCode());
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        Math.round(event.getX());
        Math.round(event.getY());
        int secondt = event.getActionIndex();
        int x = Math.round(event.getX(secondt));
        int y = Math.round(event.getY(secondt));
        int x2 = x / Main.size;
        int y2 = y / Main.size;
        switch (event.getActionMasked()) {
            case 0:
                if (Engine.state == 0) {
                    if (x2 < (GameCanvas.trueScreenWidth >> 1)) {
                        Main.engine.pointerPressedLeft[0] = x2;
                        Main.engine.pointerPressedLeft[1] = y2;
                        this.pointerleft = secondt;
                    } else if (x2 >= (GameCanvas.trueScreenWidth >> 1)) {
                        Main.engine.pointerPressed[0] = x2;
                        Main.engine.pointerPressed[1] = y2;
                        this.pointerright = secondt;
                    }
                } else {
                    Main.engine.pointerPressed[0] = x2;
                    Main.engine.pointerPressed[1] = y2;
                }
                return true;
            case 1:
                if (Engine.state == 0) {
                    if (this.pointerleft == secondt) {
                        Main.engine.pointerReleasedLeft[0] = x2;
                        Main.engine.pointerReleasedLeft[1] = y2;
                        this.pointerleft = -1;
                    } else if (this.pointerright == secondt) {
                        Main.engine.pointerReleased[0] = x2;
                        Main.engine.pointerReleased[1] = y2;
                        this.pointerright = -1;
                    } else {
                        Main.engine.pointerReleasedLeft[0] = x2;
                        Main.engine.pointerReleasedLeft[1] = y2;
                        Main.engine.pointerReleased[0] = x2;
                        Main.engine.pointerReleased[1] = y2;
                    }
                } else {
                    Main.engine.pointerReleased[0] = x2;
                    Main.engine.pointerReleased[1] = y2;
                }
                return true;
            case 2:
                int pointerCount = event.getPointerCount();
                for (int i = 0; i < pointerCount; i++) {
                    int pointerIndex = i;
                    int tempx = Math.round(event.getX(pointerIndex)) / Main.size;
                    int tempy = Math.round(event.getY(pointerIndex)) / Main.size;
                    if (tempx <= (GameCanvas.trueScreenWidth >> 1) || Engine.state != 0) {
                        Main.engine.pointerDragged[0] = tempx;
                        Main.engine.pointerDragged[1] = tempy;
                    }
                }
                return true;
            case 3:
            case 4:
            default:
                return true;
            case 5:
                if (Engine.state == 0) {
                    if (x2 < (GameCanvas.trueScreenWidth >> 1)) {
                        Main.engine.pointerPressedLeft[0] = x2;
                        Main.engine.pointerPressedLeft[1] = y2;
                        this.pointerleft = secondt;
                    } else if (x2 >= (GameCanvas.trueScreenWidth >> 1)) {
                        Main.engine.pointerPressed[0] = x2;
                        Main.engine.pointerPressed[1] = y2;
                        this.pointerright = secondt;
                    }
                } else {
                    Main.engine.pointerPressed[0] = x2;
                    Main.engine.pointerPressed[1] = y2;
                }
                return true;
            case 6:
                if (Engine.state == 0) {
                    if (this.pointerleft == secondt) {
                        Main.engine.pointerReleasedLeft[0] = x2;
                        Main.engine.pointerReleasedLeft[1] = y2;
                        this.pointerleft = -1;
                    } else if (this.pointerright == secondt) {
                        Main.engine.pointerReleasedRight[0] = x2;
                        Main.engine.pointerReleasedRight[1] = y2;
                        this.pointerright = -1;
                    } else {
                        Main.engine.pointerReleasedLeft[0] = x2;
                        Main.engine.pointerReleasedLeft[1] = y2;
                        Main.engine.pointerReleased[0] = x2;
                        Main.engine.pointerReleased[1] = y2;
                    }
                } else {
                    Main.engine.pointerReleased[0] = x2;
                    Main.engine.pointerReleased[1] = y2;
                }
                return true;
        }
    }
}
