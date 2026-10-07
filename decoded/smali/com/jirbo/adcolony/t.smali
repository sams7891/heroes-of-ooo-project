.class Lcom/jirbo/adcolony/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/t$a;
    }
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/d;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/t$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/t$a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Z

.field f:I

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    .line 11
    iput v1, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 12
    iput-boolean v1, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/t;->g:Ljava/util/HashMap;

    .line 20
    iput-object p1, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    .line 21
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->b()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 191
    return-void
.end method

.method a(DLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 17

    .prologue
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 152
    if-nez p3, :cond_1

    .line 154
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Ad object is released and null in track_video_progress"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    .line 158
    cmpg-double v6, p1, v4

    if-ltz v6, :cond_0

    .line 159
    cmpg-double v6, v4, v8

    if-gez v6, :cond_2

    cmpl-double v6, p1, v8

    if-ltz v6, :cond_2

    .line 161
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "native_first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 164
    :cond_2
    :goto_1
    cmpg-double v6, v4, v10

    if-gez v6, :cond_3

    cmpl-double v6, p1, v10

    if-ltz v6, :cond_3

    .line 166
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "native_midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 169
    :cond_3
    :goto_2
    cmpg-double v6, v4, v12

    if-gez v6, :cond_4

    cmpl-double v6, p1, v12

    if-ltz v6, :cond_4

    .line 171
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "native_third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 174
    :cond_4
    :goto_3
    cmpg-double v4, v4, v14

    if-gez v4, :cond_5

    cmpl-double v4, p1, v14

    if-ltz v4, :cond_5

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->l:Ljava/lang/String;

    const-string v5, "native"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 176
    sget-object v4, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Tracking ad event - complete"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    .line 177
    new-instance v4, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v4}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 178
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/jirbo/adcolony/AdColonyAd;->t:Z

    if-eqz v5, :cond_9

    const-string v5, "ad_slot"

    sget-object v6, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v6, v6, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v6, v6, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 180
    :goto_4
    const-string v5, "replay"

    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 181
    const-string v5, "complete"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v4, v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 182
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/jirbo/adcolony/n$a;->r:Z

    .line 184
    :cond_5
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/jirbo/adcolony/AdColonyAd;->p:D

    goto/16 :goto_0

    .line 162
    :cond_6
    const-string v6, "first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto/16 :goto_1

    .line 167
    :cond_7
    const-string v6, "midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto/16 :goto_2

    .line 172
    :cond_8
    const-string v6, "third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto :goto_3

    .line 179
    :cond_9
    const-string v5, "ad_slot"

    sget-object v6, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v6, v6, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v6, v6, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->k:Lcom/jirbo/adcolony/n$f;

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-object v0, v0, Lcom/jirbo/adcolony/n$f;->h:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->l:Lcom/jirbo/adcolony/n$y;

    .line 53
    if-eqz v0, :cond_1

    .line 55
    iget-object v0, v0, Lcom/jirbo/adcolony/n$y;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 68
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "No such event type:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 89
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v1, v0, Lcom/jirbo/adcolony/u;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/u;->j:I

    .line 80
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 82
    new-instance p2, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {p2}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 83
    const-string v0, "replay"

    iget-boolean v1, p3, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    invoke-virtual {p2, v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 86
    :cond_3
    const-string v0, "s_imp_count"

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget v1, v1, Lcom/jirbo/adcolony/u;->j:I

    invoke-virtual {p2, v0, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 87
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 88
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v0, "skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 77
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->j:Lcom/jirbo/adcolony/n$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/n$a;->r:Z

    goto :goto_1
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    .line 29
    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Ad request for zone "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 32
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$ae;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 36
    iget v2, p2, Lcom/jirbo/adcolony/AdColonyAd;->g:I

    if-nez v2, :cond_2

    const-string v2, "request_denied"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 38
    :goto_1
    const-string v2, "request_denied_reason"

    iget v3, p2, Lcom/jirbo/adcolony/AdColonyAd;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 39
    const-string v2, "request"

    iget-object v3, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$ae;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 40
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Tracking ad request - URL : "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->l:Lcom/jirbo/adcolony/n$ae;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "request_denied"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 94
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 97
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {p3}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 100
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz p4, :cond_3

    const-string v1, "asi"

    iget-object v2, p4, Lcom/jirbo/adcolony/AdColonyAd;->m:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3
    invoke-static {}, Lcom/jirbo/adcolony/aa;->c()D

    move-result-wide v2

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-wide v4, v1, Lcom/jirbo/adcolony/u;->g:D

    sub-double/2addr v2, v4

    .line 104
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    const-wide v4, 0x4122750000000000L    # 604800.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 106
    :cond_4
    const-string v1, "s_time"

    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-wide v2, v2, Lcom/jirbo/adcolony/u;->i:D

    invoke-virtual {p3, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 107
    const-string v1, "sid"

    iget-object v2, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-object v2, v2, Lcom/jirbo/adcolony/u;->k:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "guid"

    invoke-virtual {p3, v1, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "guid_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DUBu6wJ27y6xs7VWmNDw67DD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 112
    iput-object p1, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 113
    iput-object p2, v0, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 114
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "EVENT ---------------------------"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 115
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "EVENT - TYPE = "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 116
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "EVENT - URL  = "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 117
    invoke-virtual {p3}, Lcom/jirbo/adcolony/ADCData$g;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    .line 119
    const-string v1, "reward_v4vc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    const-string v1, "v4vc_name"

    invoke-virtual {p3, v1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    .line 122
    const-string v1, "v4vc_amount"

    invoke-virtual {p3, v1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jirbo/adcolony/t$a;->h:I

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iput-boolean v6, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 128
    sput-boolean v6, Lcom/jirbo/adcolony/a;->z:Z

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 133
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 137
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    new-instance v2, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v2}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 140
    iput-object p1, v2, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 141
    iput-object v0, v2, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 142
    iput-boolean v3, v2, Lcom/jirbo/adcolony/t$a;->l:Z

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_2
    iput-boolean v3, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 147
    sput-boolean v3, Lcom/jirbo/adcolony/a;->z:Z

    goto :goto_0
.end method

.method b()V
    .locals 6

    .prologue
    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->z:Z

    .line 196
    new-instance v0, Lcom/jirbo/adcolony/f;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/k;->c(Lcom/jirbo/adcolony/f;)Lcom/jirbo/adcolony/ADCData$c;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCData$c;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 202
    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCData$c;->b(I)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v2

    .line 203
    new-instance v3, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v3}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 204
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 205
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 206
    const-string v4, "payload"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    .line 207
    const-string v4, "attempts"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/jirbo/adcolony/t$a;->f:I

    .line 208
    const-string v4, "third_party"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/jirbo/adcolony/t$a;->l:Z

    .line 210
    iget-object v4, v3, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "reward_v4vc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    :cond_0
    const-string v4, "v4vc_name"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    .line 213
    const-string v4, "v4vc_amount"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/jirbo/adcolony/t$a;->h:I

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " events"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 219
    return-void
.end method

.method b(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$g;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 62
    return-void
.end method

.method c()V
    .locals 6

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    new-instance v2, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    .line 227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/t$a;

    .line 230
    iget-boolean v3, v0, Lcom/jirbo/adcolony/t$a;->j:Z

    if-nez v3, :cond_3

    .line 232
    iget-object v3, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v3, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v3}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 235
    const-string v4, "type"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v4, "url"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "payload"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    const-string v4, "attempts"

    iget v5, v0, Lcom/jirbo/adcolony/t$a;->f:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 239
    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 241
    const-string v4, "v4vc_name"

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v4, "v4vc_amount"

    iget v5, v0, Lcom/jirbo/adcolony/t$a;->h:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 244
    :cond_1
    iget-boolean v0, v0, Lcom/jirbo/adcolony/t$a;->l:Z

    if-eqz v0, :cond_2

    const-string v0, "third_party"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 245
    :cond_2
    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCData$c;->a(Lcom/jirbo/adcolony/ADCData$i;)Lcom/jirbo/adcolony/ADCData$c;

    .line 227
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Saving tracking_info ("

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " events)"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 251
    new-instance v0, Lcom/jirbo/adcolony/f;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/jirbo/adcolony/k;->a(Lcom/jirbo/adcolony/f;Lcom/jirbo/adcolony/ADCData$c;)V

    .line 252
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/jirbo/adcolony/t;->e:Z

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 259
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->c()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->e()V

    .line 262
    return-void
.end method

.method e()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 266
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    return-void

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/jirbo/adcolony/aa;->c()D

    move-result-wide v2

    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/t$a;

    .line 276
    iget-wide v4, v0, Lcom/jirbo/adcolony/t$a;->e:D

    cmpg-double v4, v4, v2

    if-gez v4, :cond_6

    iget-boolean v4, v0, Lcom/jirbo/adcolony/t$a;->k:Z

    if-nez v4, :cond_6

    .line 278
    iget v4, p0, Lcom/jirbo/adcolony/t;->d:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 279
    iget v4, p0, Lcom/jirbo/adcolony/t;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 280
    iput-boolean v7, v0, Lcom/jirbo/adcolony/t$a;->k:Z

    .line 282
    iget-object v4, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    iget v4, p0, Lcom/jirbo/adcolony/t;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jirbo/adcolony/t;->f:I

    iput v4, v0, Lcom/jirbo/adcolony/t$a;->i:I

    .line 285
    iget-object v4, p0, Lcom/jirbo/adcolony/t;->g:Ljava/util/HashMap;

    iget v5, v0, Lcom/jirbo/adcolony/t$a;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-boolean v6, Lcom/jirbo/adcolony/a;->o:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_3
    new-instance v4, Lcom/jirbo/adcolony/ADCDownload;

    iget-object v5, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v6, v0, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, p0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V

    invoke-virtual {v4, v0}, Lcom/jirbo/adcolony/ADCDownload;->a(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;

    move-result-object v4

    .line 288
    iget-boolean v5, v0, Lcom/jirbo/adcolony/t$a;->l:Z

    if-eqz v5, :cond_4

    iput-boolean v7, v4, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    .line 289
    :cond_4
    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 291
    const-string v5, "application/json"

    iget-object v6, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCDownload;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;

    .line 294
    :cond_5
    sget-object v5, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v6, "Submitting \'"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v5

    iget-object v0, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v5, "\' event."

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 295
    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCDownload;->b()V

    .line 296
    sput-boolean v7, Lcom/jirbo/adcolony/a;->z:Z

    .line 273
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 9
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    const/16 v2, 0x2710

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 303
    sput-boolean v7, Lcom/jirbo/adcolony/a;->z:Z

    .line 304
    iput-boolean v7, p0, Lcom/jirbo/adcolony/t;->e:Z

    .line 305
    iget v0, p0, Lcom/jirbo/adcolony/t;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/t;->d:I

    .line 306
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    check-cast v0, Lcom/jirbo/adcolony/t$a;

    .line 307
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "on_download_finished - event.type = "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v3, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 308
    iput-boolean v4, v0, Lcom/jirbo/adcolony/t$a;->k:Z

    .line 311
    iget-object v1, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v3, "session_start"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 316
    :cond_0
    iget-boolean v3, p1, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 317
    if-eqz v3, :cond_1

    iget-object v1, v0, Lcom/jirbo/adcolony/t$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/k;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_8

    .line 322
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "success"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 323
    if-eqz v3, :cond_1

    .line 325
    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v6, "reward_v4vc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    const-string v5, "v4vc_status"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 329
    const-string v5, "v4vc_callback"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 333
    new-instance v5, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v5}, Lcom/jirbo/adcolony/t$a;-><init>()V

    .line 334
    const-string v6, "v4vc_callback"

    iput-object v6, v5, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    .line 335
    iput-object v1, v5, Lcom/jirbo/adcolony/t$a;->b:Ljava/lang/String;

    .line 336
    iget-object v1, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    iput-object v1, v5, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    .line 337
    iget v1, v0, Lcom/jirbo/adcolony/t$a;->h:I

    iput v1, v5, Lcom/jirbo/adcolony/t$a;->h:I

    .line 338
    iget-object v1, p0, Lcom/jirbo/adcolony/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_1
    :goto_0
    if-eqz v3, :cond_10

    iget-object v1, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 363
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "v4vc_callback response:"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v5, p1, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 364
    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    const-string v5, "vc_success"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_9

    iget-object v1, p0, Lcom/jirbo/adcolony/t;->g:Ljava/util/HashMap;

    iget v5, v0, Lcom/jirbo/adcolony/t$a;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 366
    sget-object v1, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v7, v1, Lcom/jirbo/adcolony/ADCVideo;->o:Z

    .line 367
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "v4vc_callback success"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 368
    iget-object v1, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v5, v0, Lcom/jirbo/adcolony/t$a;->d:Ljava/lang/String;

    iget v6, v0, Lcom/jirbo/adcolony/t$a;->h:I

    invoke-virtual {v1, v7, v5, v6}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    move v1, v3

    .line 383
    :goto_1
    if-eqz v1, :cond_c

    .line 385
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v2, "Event submission SUCCESS for type: "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v2, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 386
    iput-boolean v7, v0, Lcom/jirbo/adcolony/t$a;->j:Z

    .line 411
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/u;->b:Z

    if-nez v0, :cond_4

    .line 413
    invoke-virtual {p0}, Lcom/jirbo/adcolony/t;->c()V

    .line 415
    :cond_4
    return-void

    .line 343
    :cond_5
    sget-object v1, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/jirbo/adcolony/a;->U:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v7, v1, Lcom/jirbo/adcolony/ADCVideo;->o:Z

    .line 344
    :cond_6
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Client-side V4VC success"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0

    .line 350
    :cond_7
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "Client-side V4VC failure"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 357
    goto/16 :goto_0

    .line 370
    :cond_9
    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    const-string v5, "vc_decline"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_a

    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    const-string v5, "vc_noreward"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_b

    .line 372
    :cond_a
    sget-object v1, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v5, "Server-side V4VC failure: "

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v5, p1, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 373
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v5, "v4vc_callback declined"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 374
    iget-object v1, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    const-string v5, ""

    invoke-virtual {v1, v4, v5, v4}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    move v1, v3

    goto :goto_1

    .line 378
    :cond_b
    sget-object v1, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v3, "Server-side V4VC failure: "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v3, p1, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    move v1, v4

    .line 379
    goto :goto_1

    .line 390
    :cond_c
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Event submission FAILED for type: "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v3, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    const-string v3, " on try "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget v3, v0, Lcom/jirbo/adcolony/t$a;->f:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(I)Lcom/jirbo/adcolony/l;

    .line 391
    iget v1, v0, Lcom/jirbo/adcolony/t$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/t$a;->f:I

    .line 393
    iget v1, v0, Lcom/jirbo/adcolony/t$a;->f:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_d

    .line 395
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v2, "Discarding event after 24 attempts to report."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 396
    iput-boolean v7, v0, Lcom/jirbo/adcolony/t$a;->j:Z

    .line 398
    iget-object v0, v0, Lcom/jirbo/adcolony/t$a;->a:Ljava/lang/String;

    const-string v1, "v4vc_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/t;->a:Lcom/jirbo/adcolony/d;

    const-string v1, ""

    invoke-virtual {v0, v4, v1, v4}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    goto/16 :goto_2

    .line 402
    :cond_d
    const/16 v1, 0x14

    .line 403
    iget v3, v0, Lcom/jirbo/adcolony/t$a;->g:I

    if-lez v3, :cond_e

    iget v1, v0, Lcom/jirbo/adcolony/t$a;->g:I

    mul-int/lit8 v1, v1, 0x3

    .line 404
    :cond_e
    if-le v1, v2, :cond_f

    move v1, v2

    .line 405
    :cond_f
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Retrying in "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v2

    const-string v3, " seconds (attempt "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget v3, v0, Lcom/jirbo/adcolony/t$a;->f:I

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 406
    iput v1, v0, Lcom/jirbo/adcolony/t$a;->g:I

    .line 407
    invoke-static {}, Lcom/jirbo/adcolony/aa;->c()D

    move-result-wide v2

    int-to-double v4, v1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/jirbo/adcolony/t$a;->e:D

    goto/16 :goto_2

    :cond_10
    move v1, v3

    goto/16 :goto_1
.end method
