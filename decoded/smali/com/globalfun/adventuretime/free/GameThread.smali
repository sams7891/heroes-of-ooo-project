.class public Lcom/globalfun/adventuretime/free/GameThread;
.super Ljava/lang/Thread;
.source "GameThread.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static LANGUAGE_SELECTION:Z

.field private static surfaceView:Landroid/view/SurfaceView;


# instance fields
.field public canvas:Landroid/graphics/Canvas;

.field private mainActivity:Lcom/globalfun/adventuretime/free/Main;

.field pointerleft:I

.field pointerright:I

.field private threadStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/globalfun/adventuretime/free/GameThread;->LANGUAGE_SELECTION:Z

    return-void
.end method

.method public constructor <init>(Lcom/globalfun/adventuretime/free/Main;)V
    .locals 2
    .param p1, "mainActivity"    # Lcom/globalfun/adventuretime/free/Main;

    .prologue
    const/4 v1, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameThread;->threadStarted:Z

    .line 158
    iput v1, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerleft:I

    .line 159
    iput v1, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerright:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/GameThread;->recreateView(Lcom/globalfun/adventuretime/free/Main;)V

    .line 26
    return-void
.end method

.method static requestRepaint(Lcom/globalfun/adventuretime/free/GameCanvas;)V
    .locals 4
    .param p0, "screen"    # Lcom/globalfun/adventuretime/free/GameCanvas;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 60
    .local v0, "canvas":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 76
    :try_start_0
    sget v1, Lcom/globalfun/adventuretime/free/Main;->size:I

    int-to-float v1, v1

    sget v2, Lcom/globalfun/adventuretime/free/Main;->size:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v0, :cond_1

    .line 84
    sget-object v1, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 87
    :cond_1
    return-void

    .line 62
    :cond_2
    :try_start_1
    sget-object v1, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 67
    const-wide/16 v2, 0xfa

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    .line 82
    if-eqz v0, :cond_3

    .line 84
    sget-object v2, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 86
    :cond_3
    throw v1
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 141
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 143
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->keyPressed(I)V

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 149
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->keyPressed(I)V

    .line 155
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_2
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->keyReleased(I)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 165
    .local v6, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 166
    .local v7, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 167
    .local v3, "secondt":I
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 168
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 169
    sget v8, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int/2addr v6, v8

    .line 170
    sget v8, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int/2addr v7, v8

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 175
    :pswitch_1
    sget v8, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v8, :cond_2

    .line 177
    sget v8, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    shr-int/lit8 v8, v8, 0x1

    if-ge v6, v8, :cond_1

    .line 179
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aput v6, v8, v11

    .line 180
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aput v7, v8, v10

    .line 181
    iput v3, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerleft:I

    goto :goto_0

    .line 183
    :cond_1
    sget v8, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    shr-int/lit8 v8, v8, 0x1

    if-lt v6, v8, :cond_0

    .line 185
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v6, v8, v11

    .line 186
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v7, v8, v10

    .line 187
    iput v3, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerright:I

    goto :goto_0

    .line 192
    :cond_2
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v6, v8, v11

    .line 193
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v7, v8, v10

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 201
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 203
    move v2, v0

    .line 204
    .local v2, "pointerIndex":I
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sget v9, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int v4, v8, v9

    .line 205
    .local v4, "tempx":I
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sget v9, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int v5, v8, v9

    .line 206
    .local v5, "tempy":I
    sget v8, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    shr-int/lit8 v8, v8, 0x1

    if-le v4, v8, :cond_3

    sget v8, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v8, :cond_3

    .line 201
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_3
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged:[I

    aput v4, v8, v11

    .line 209
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged:[I

    aput v5, v8, v10

    goto :goto_2

    .line 216
    .end local v0    # "i":I
    .end local v1    # "pointerCount":I
    .end local v2    # "pointerIndex":I
    .end local v4    # "tempx":I
    .end local v5    # "tempy":I
    :pswitch_3
    sget v8, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v8, :cond_6

    .line 218
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerleft:I

    if-ne v8, v3, :cond_4

    .line 220
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v6, v8, v11

    .line 221
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v7, v8, v10

    .line 222
    iput v9, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerleft:I

    goto/16 :goto_0

    .line 224
    :cond_4
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerright:I

    if-ne v8, v3, :cond_5

    .line 226
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v6, v8, v11

    .line 227
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v7, v8, v10

    .line 228
    iput v9, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerright:I

    goto/16 :goto_0

    .line 232
    :cond_5
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v6, v8, v11

    .line 233
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v7, v8, v10

    .line 234
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v6, v8, v11

    .line 235
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v7, v8, v10

    goto/16 :goto_0

    .line 240
    :cond_6
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v6, v8, v11

    .line 241
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v7, v8, v10

    goto/16 :goto_0

    .line 247
    :pswitch_4
    sget v8, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v8, :cond_8

    .line 249
    sget v8, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    shr-int/lit8 v8, v8, 0x1

    if-ge v6, v8, :cond_7

    .line 251
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aput v6, v8, v11

    .line 252
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aput v7, v8, v10

    .line 253
    iput v3, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerleft:I

    goto/16 :goto_0

    .line 255
    :cond_7
    sget v8, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    shr-int/lit8 v8, v8, 0x1

    if-lt v6, v8, :cond_0

    .line 257
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v6, v8, v11

    .line 258
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v7, v8, v10

    .line 259
    iput v3, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerright:I

    goto/16 :goto_0

    .line 264
    :cond_8
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v6, v8, v11

    .line 265
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v7, v8, v10

    goto/16 :goto_0

    .line 271
    :pswitch_5
    sget v8, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v8, :cond_b

    .line 273
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerleft:I

    if-ne v8, v3, :cond_9

    .line 275
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v6, v8, v11

    .line 276
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v7, v8, v10

    .line 277
    iput v9, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerleft:I

    goto/16 :goto_0

    .line 279
    :cond_9
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerright:I

    if-ne v8, v3, :cond_a

    .line 281
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aput v6, v8, v11

    .line 282
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aput v7, v8, v10

    .line 283
    iput v9, p0, Lcom/globalfun/adventuretime/free/GameThread;->pointerright:I

    goto/16 :goto_0

    .line 287
    :cond_a
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v6, v8, v11

    .line 288
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v7, v8, v10

    .line 289
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v6, v8, v11

    .line 290
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v7, v8, v10

    goto/16 :goto_0

    .line 295
    :cond_b
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v6, v8, v11

    .line 296
    sget-object v8, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v8, v8, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v7, v8, v10

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method recreateView(Lcom/globalfun/adventuretime/free/Main;)V
    .locals 2
    .param p1, "mainActivity"    # Lcom/globalfun/adventuretime/free/Main;

    .prologue
    const/4 v1, 0x1

    .line 31
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/GameThread;->mainActivity:Lcom/globalfun/adventuretime/free/Main;

    .line 34
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    .line 35
    sget-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    sget-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 37
    sget-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 40
    sget-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 41
    sget-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    sget-object v0, Lcom/globalfun/adventuretime/free/GameThread;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/globalfun/adventuretime/free/Main;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameThread;->runGameLoop()V

    .line 94
    return-void
.end method

.method public runGameLoop()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Engine;->run()V

    .line 132
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 100
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 105
    const-string v0, "surface Created()"

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Main;->logMessage(Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameThread;->threadStarted:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameThread;->threadStarted:Z

    .line 116
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameThread;->start()V

    .line 122
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 126
    const-string v0, "surface Destroyed()"

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Main;->logMessage(Ljava/lang/String;)V

    .line 127
    return-void
.end method
