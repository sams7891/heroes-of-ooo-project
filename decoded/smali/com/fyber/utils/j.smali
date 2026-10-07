.class final Lcom/fyber/utils/j;
.super Ljava/lang/Thread;
.source "HostInfo.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/fyber/utils/i;


# direct methods
.method constructor <init>(Lcom/fyber/utils/i;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fyber/utils/j;->b:Lcom/fyber/utils/i;

    iput-object p3, p0, Lcom/fyber/utils/j;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fyber/utils/j;->b:Lcom/fyber/utils/i;

    iget-object v1, p0, Lcom/fyber/utils/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/fyber/utils/i;->a(Lcom/fyber/utils/i;Landroid/content/Context;)V

    .line 109
    return-void
.end method
