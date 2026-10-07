.class public Lcom/millennialmedia/internal/video/VASTParser$Creative;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creative"
.end annotation


# instance fields
.field public companionAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

.field public sequence:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sequence"    # Ljava/lang/Integer;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->id:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->sequence:Ljava/lang/Integer;

    .line 82
    return-void
.end method
