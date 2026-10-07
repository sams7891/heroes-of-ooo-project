.class public Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source "InlineWebAdapter.java"


# instance fields
.field adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

.field webController:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    .line 24
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-void
.end method


# virtual methods
.method public display(Landroid/widget/RelativeLayout;II)V
    .locals 2
    .param p1, "containerLayout"    # Landroid/widget/RelativeLayout;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I

    .prologue
    .line 107
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1, p1, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 111
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterListener"    # Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    .prologue
    .line 99
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    .line 100
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    iget-object v5, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    .line 101
    return-void
.end method
