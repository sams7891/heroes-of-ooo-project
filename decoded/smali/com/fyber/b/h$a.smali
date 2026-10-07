.class final Lcom/fyber/b/h$a;
.super Ljava/lang/Thread;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    const-string v0, "FyberExecutorThread"

    invoke-virtual {p0, v0}, Lcom/fyber/b/h$a;->setName(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 40
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 41
    return-void
.end method
