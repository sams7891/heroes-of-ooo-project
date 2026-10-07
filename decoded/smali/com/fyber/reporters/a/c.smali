.class final Lcom/fyber/reporters/a/c;
.super Lcom/fyber/reporters/a/d;
.source "AppStartReporter.java"


# instance fields
.field final synthetic a:Lcom/fyber/reporters/a/b;


# direct methods
.method constructor <init>(Lcom/fyber/reporters/a/b;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fyber/reporters/a/c;->a:Lcom/fyber/reporters/a/b;

    invoke-direct {p0}, Lcom/fyber/reporters/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "InstallReporter"

    return-object v0
.end method
