.class public Lcom/inmobi/rendering/InMobiAdActivity;
.super Landroid/app/Activity;
.source "InMobiAdActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/InMobiAdActivity$c;,
        Lcom/inmobi/rendering/InMobiAdActivity$a;,
        Lcom/inmobi/rendering/InMobiAdActivity$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/Integer;

.field public static d:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/lang/Integer;

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/inmobi/rendering/RenderView;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/inmobi/rendering/RenderView;


# instance fields
.field private i:Lcom/inmobi/rendering/RenderView;

.field private j:Lcom/inmobi/rendering/RenderView;

.field private k:Lcom/inmobi/rendering/CustomView;

.field private l:Lcom/inmobi/rendering/CustomView;

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const-class v0, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Stack;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 435
    return-void
.end method

.method public static a(Landroid/content/Intent;Lcom/inmobi/rendering/InMobiAdActivity$a;)I
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    .line 101
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static a(Lcom/inmobi/rendering/InMobiAdActivity$c;)I
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    .line 121
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/inmobi/rendering/RenderView;)I
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 211
    .line 212
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 215
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    const v3, 0xfffd

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 222
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 223
    const v3, 0x108009a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 224
    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 225
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 226
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    const/high16 v3, 0x41c80000    # 25.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 234
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 236
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$1;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$1;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 256
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$2;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$2;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->BACK:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 275
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$3;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$3;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 299
    new-instance v0, Lcom/inmobi/rendering/InMobiAdActivity$4;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/InMobiAdActivity$4;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v0}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/inmobi/rendering/InMobiAdActivity$c;)V
    .locals 4

    .prologue
    .line 107
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p1}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/InMobiAdActivity$c;)I

    move-result v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v0, "permissions"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/rendering/InMobiAdActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 196
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    const/4 v2, 0x2

    const v3, 0xfffd

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 204
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Landroid/view/ViewGroup;)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->setContentView(Landroid/view/View;)V

    .line 208
    return-void
.end method

.method public static b(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 96
    sput-object p0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 97
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/high16 v6, 0x42480000    # 50.0f

    const/4 v7, -0x1

    .line 319
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 320
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v3

    .line 323
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 325
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v5, v6, v3

    float-to-int v5, v5

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 330
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 331
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    sget-object v6, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v5, p0, v3, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    .line 333
    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    const v6, 0xfffc

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 334
    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    new-instance v6, Lcom/inmobi/rendering/InMobiAdActivity$5;

    invoke-direct {v6, p0}, Lcom/inmobi/rendering/InMobiAdActivity$5;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    sget-object v6, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v5, p0, v3, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    .line 344
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    const v5, 0xfffb

    invoke-virtual {v3, v5}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 345
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    new-instance v5, Lcom/inmobi/rendering/InMobiAdActivity$6;

    invoke-direct {v5, p0}, Lcom/inmobi/rendering/InMobiAdActivity$6;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v5}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v3, 0xfffe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 355
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 359
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Z)V

    .line 363
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Z)V

    .line 364
    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 413
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$a;

    .line 387
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-interface {v0, p2, p3}, Lcom/inmobi/rendering/InMobiAdActivity$a;->a(ILandroid/content/Intent;)V

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 391
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 392
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 417
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 418
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->i()V

    .line 419
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 424
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->k()V

    goto :goto_0

    .line 425
    :cond_2
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 426
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    .line 427
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->l()V

    .line 193
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/16 v3, 0x66

    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    .line 131
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/inmobi/rendering/RenderView;

    new-instance v2, Lcom/inmobi/rendering/RenderingProperties;

    sget-object v3, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    invoke-direct {v2, v3}, Lcom/inmobi/rendering/RenderingProperties;-><init>(Lcom/inmobi/rendering/RenderingProperties$PlacementType;)V

    invoke-direct {v1, p0, v2}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderingProperties;)V

    iput-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    .line 135
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1, v4}, Lcom/inmobi/rendering/RenderView;->setIsInAppBrowser(Z)V

    .line 136
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$b;

    move-result-object v2

    sget-object v3, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v3}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$e;

    move-result-object v3

    sget-object v4, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$c;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$b;Lcom/inmobi/ads/b$e;Lcom/inmobi/ads/b$c;)V

    .line 137
    invoke-direct {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->b()V

    .line 138
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$b;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 140
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivity(Landroid/app/Activity;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    if-ne v0, v3, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_RENDERVIEW_INDEX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 144
    if-eq v0, v2, :cond_0

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/InMobiAdActivity;->requestWindowFeature(I)Z

    .line 148
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 152
    :cond_2
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    .line 153
    invoke-direct {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->c()V

    .line 154
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivity(Landroid/app/Activity;)V

    .line 155
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/rendering/InMobiAdActivity$b;->a()V

    goto :goto_0

    .line 159
    :cond_3
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 161
    if-ne v1, v2, :cond_4

    .line 162
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    const-string v2, "Invalid Request Code Supplied for ACTIVITY_TYPE_FOR_RESULT"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_4
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/InMobiAdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 167
    :cond_5
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 169
    if-ne v0, v2, :cond_6

    .line 170
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    const-string v2, "Invalid Request Code Supplied for ACTIVITY_TYPE_PERMISSIONS_DIALOG"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 179
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->b()V

    .line 180
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 369
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Z

    if-eqz v0, :cond_0

    .line 370
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 371
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$b;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 372
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->destroy()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/rendering/InMobiAdActivity$b;->b()V

    .line 378
    :cond_2
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 402
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->c()V

    .line 403
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$c;

    .line 404
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0, p1, p2, p3}, Lcom/inmobi/rendering/InMobiAdActivity$c;->a(I[Ljava/lang/String;[I)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 409
    return-void
.end method
