.class final Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;
.super Landroid/os/Handler;
.source "MraidMediaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;->a:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 91
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;)V

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
