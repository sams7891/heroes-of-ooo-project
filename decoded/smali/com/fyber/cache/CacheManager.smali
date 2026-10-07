.class public Lcom/fyber/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static a:Lcom/fyber/cache/CacheManager;


# instance fields
.field private b:Lcom/fyber/cache/internal/f;

.field private c:Lcom/fyber/cache/internal/a;

.field private d:Lcom/fyber/cache/internal/e;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/fyber/cache/CacheManager;

    invoke-direct {v0}, Lcom/fyber/cache/CacheManager;-><init>()V

    sput-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->e:Z

    .line 41
    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->f:Z

    .line 42
    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    .line 45
    sget-object v0, Lcom/fyber/cache/internal/f;->a:Lcom/fyber/cache/internal/f;

    iput-object v0, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    .line 46
    sget-object v0, Lcom/fyber/cache/internal/e;->a:Lcom/fyber/cache/internal/e;

    iput-object v0, p0, Lcom/fyber/cache/CacheManager;->d:Lcom/fyber/cache/internal/e;

    .line 47
    return-void
.end method

.method public static a()Lcom/fyber/cache/CacheManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/cache/CacheManager;Lcom/fyber/cache/internal/e;)Lcom/fyber/cache/internal/e;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fyber/cache/CacheManager;->d:Lcom/fyber/cache/internal/e;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/cache/CacheManager;)Lcom/fyber/cache/internal/f;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/cache/CacheManager;Lcom/fyber/cache/internal/f;)Lcom/fyber/cache/internal/f;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->e:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    const-string v1, "FybCacheManager"

    const-string v2, "The download service is running, let\'s cancel current downloads"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v2, "action.to.perform"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->e:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const-string v2, "action.to.perform"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    :cond_0
    return-void
.end method

.method public static pauseDownloads(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/cache/CacheManager;->f:Z

    .line 162
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    invoke-direct {v0, p0}, Lcom/fyber/cache/CacheManager;->c(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public static resumeDownloads(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fyber/cache/CacheManager;->f:Z

    .line 152
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    invoke-direct {v0, p0}, Lcom/fyber/cache/CacheManager;->d(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public static startPrecaching(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcom/fyber/cache/CacheManager;->resumeDownloads(Landroid/content/Context;)V

    .line 142
    sget-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    invoke-virtual {v0}, Lcom/fyber/mediation/d;->a()V

    .line 143
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 118
    const-string v0, "FybCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting URI for URL - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    sget-object v0, Lcom/fyber/cache/CacheManager;->a:Lcom/fyber/cache/CacheManager;

    .line 1090
    iget-object v0, v0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    .line 119
    invoke-virtual {v0, p1}, Lcom/fyber/cache/internal/f;->a(Ljava/lang/String;)Lcom/fyber/cache/internal/c;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    :cond_0
    :goto_0
    const-string v1, "FybCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URI = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v0

    .line 1175
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    .line 1176
    invoke-direct {p0, p2}, Lcom/fyber/cache/CacheManager;->c(Landroid/content/Context;)V

    .line 126
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fyber/cache/a;

    invoke-direct {v2, p0, v0}, Lcom/fyber/cache/a;-><init>(Lcom/fyber/cache/CacheManager;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public final a(Lcom/fyber/cache/internal/a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fyber/cache/CacheManager;->c:Lcom/fyber/cache/internal/a;

    .line 105
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/fyber/cache/CacheManager;->e:Z

    .line 112
    return-void
.end method

.method public final b()Lcom/fyber/cache/internal/a;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->c:Lcom/fyber/cache/internal/a;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    .line 184
    invoke-direct {p0, p1}, Lcom/fyber/cache/CacheManager;->d(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public final c()Lcom/fyber/cache/internal/f;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->b:Lcom/fyber/cache/internal/f;

    return-object v0
.end method

.method public final d()Lcom/fyber/cache/internal/e;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fyber/cache/CacheManager;->d:Lcom/fyber/cache/internal/e;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/cache/CacheManager;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
