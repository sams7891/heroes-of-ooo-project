.class Lcom/inmobi/rendering/a$a;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private final d:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    .line 482
    iput-object p1, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    .line 483
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/a$a;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/a$a;)I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/inmobi/rendering/a$a;->a:I

    return v0
.end method

.method static synthetic c(Lcom/inmobi/rendering/a$a;)I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/inmobi/rendering/a$a;->b:I

    return v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/a$a;->a:I

    .line 488
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/a$a;->b:I

    .line 490
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 498
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
