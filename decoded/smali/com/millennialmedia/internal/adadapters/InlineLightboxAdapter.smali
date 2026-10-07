.class public Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source "InlineLightboxAdapter.java"


# instance fields
.field private inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field private lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field private lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    .line 19
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;)Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    return-object v0
.end method


# virtual methods
.method public display(Landroid/widget/RelativeLayout;II)V
    .locals 2
    .param p1, "containerLayout"    # Landroid/widget/RelativeLayout;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I

    .prologue
    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-virtual {v1, p1, v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->attach(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterListener"    # Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    .prologue
    .line 81
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    .line 82
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->adContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;->lightboxController:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .line 83
    return-void
.end method
