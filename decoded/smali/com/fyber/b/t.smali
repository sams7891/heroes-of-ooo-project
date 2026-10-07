.class final Lcom/fyber/b/t;
.super Lcom/fyber/utils/c;
.source "VirtualCurrencyNetworkOperation.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fyber/b/r;


# direct methods
.method constructor <init>(Lcom/fyber/b/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/fyber/b/t;->b:Lcom/fyber/b/r;

    iput-object p2, p0, Lcom/fyber/b/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/fyber/b/t;->b:Lcom/fyber/b/r;

    invoke-static {v0}, Lcom/fyber/b/r;->b(Lcom/fyber/b/r;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/t;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    return-void
.end method
