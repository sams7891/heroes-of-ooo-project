.class public Lcom/globalfun/adventuretime/free/Touch$TouchRegion;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/globalfun/adventuretime/free/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchRegion"
.end annotation


# static fields
.field private static final BORDER:I = 0x10

.field private static final COLOR_BORDER:I = -0x10000

.field private static final COLOR_PRESSED:I = -0xff6000

.field private static final MIN_SIZE:I = 0x20


# instance fields
.field private hBorder:I

.field private hDragged:I

.field private hRange:I

.field public height:I

.field private id:I

.field private index:I

.field private isActive:Z

.field public isPressed:Z

.field private isVolatile:Z

.field private pressed:Z

.field private pressedOx:I

.field private pressedOy:I

.field private released:Z

.field final synthetic this$0:Lcom/globalfun/adventuretime/free/Touch;

.field private type:I

.field private vBorder:I

.field private vDragged:I

.field private vRange:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>(Lcom/globalfun/adventuretime/free/Touch;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 550
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->this$0:Lcom/globalfun/adventuretime/free/Touch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput p2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->index:I

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Lcom/globalfun/adventuretime/free/Touch;ILcom/globalfun/adventuretime/free/Touch$TouchRegion;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;-><init>(Lcom/globalfun/adventuretime/free/Touch;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->type:I

    return v0
.end method

.method static synthetic access$10(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->reset()V

    return-void
.end method

.method static synthetic access$11(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;Lcom/globalfun/adventuretime/free/Graphics;)V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->paint(Lcom/globalfun/adventuretime/free/Graphics;)V

    return-void
.end method

.method static synthetic access$12(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isActive:Z

    return v0
.end method

.method static synthetic access$13(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;IIII)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->setRegion(IIII)V

    return-void
.end method

.method static synthetic access$14(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->setType(II)V

    return-void
.end method

.method static synthetic access$15(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->setDrag(II)V

    return-void
.end method

.method static synthetic access$16(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->setVolatile()V

    return-void
.end method

.method static synthetic access$17(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    return v0
.end method

.method static synthetic access$18(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    return v0
.end method

.method static synthetic access$2(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z
    .locals 1

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isReleased()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->id:I

    return v0
.end method

.method static synthetic access$4(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;IIZ)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0, p1, p2, p3}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressed(IIZ)V

    return-void
.end method

.method static synthetic access$6(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;Z)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->released(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->dragged(II)V

    return-void
.end method

.method static synthetic access$8(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isVolatile:Z

    return v0
.end method

.method static synthetic access$9(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)I
    .locals 1

    .prologue
    .line 616
    invoke-direct {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->getDistance(II)I

    move-result v0

    return v0
.end method

.method private dragged(II)V
    .locals 6
    .param p1, "px"    # I
    .param p2, "py"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 690
    iget-boolean v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isActive:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    if-nez v4, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    if-eqz v4, :cond_3

    .line 695
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressedOx:I

    add-int/2addr v4, v5

    sub-int v0, p1, v4

    .line 697
    .local v0, "dx":I
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    .line 699
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    if-lez v4, :cond_2

    .line 701
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    if-gez v4, :cond_7

    .line 703
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    sub-int/2addr v0, v4

    .line 704
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    .line 713
    :cond_2
    :goto_1
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    .line 716
    .end local v0    # "dx":I
    :cond_3
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    if-eqz v4, :cond_5

    .line 718
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressedOy:I

    add-int/2addr v4, v5

    sub-int v1, p2, v4

    .line 720
    .local v1, "dy":I
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    .line 722
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    if-lez v4, :cond_4

    .line 724
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    if-gez v4, :cond_8

    .line 726
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    sub-int/2addr v1, v4

    .line 727
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    .line 736
    :cond_4
    :goto_2
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    .line 739
    .end local v1    # "dy":I
    :cond_5
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    if-nez v4, :cond_6

    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    if-nez v4, :cond_6

    .line 741
    invoke-direct {p0, p1, p2, v3}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressed(IIZ)V

    .line 744
    :cond_6
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 746
    iget-boolean v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    if-eqz v4, :cond_9

    :goto_3
    iput-boolean v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->released:Z

    goto :goto_0

    .line 706
    .restart local v0    # "dx":I
    :cond_7
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    if-le v4, v5, :cond_2

    .line 708
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 709
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    iput v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    goto :goto_1

    .line 729
    .end local v0    # "dx":I
    .restart local v1    # "dy":I
    :cond_8
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    if-le v4, v5, :cond_4

    .line 731
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    sub-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 732
    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    iput v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    goto :goto_2

    .end local v1    # "dy":I
    :cond_9
    move v2, v3

    .line 746
    goto :goto_3
.end method

.method private getDistance(II)I
    .locals 6
    .param p1, "px"    # I
    .param p2, "py"    # I

    .prologue
    const/4 v2, -0x1

    .line 618
    iget-boolean v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isActive:Z

    if-nez v3, :cond_1

    move v0, v2

    .line 660
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    const/4 v0, 0x0

    .line 622
    .local v0, "dx":I
    const/4 v1, 0x0

    .line 624
    .local v1, "dy":I
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    if-ge p1, v3, :cond_3

    .line 626
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    sub-int v0, v3, p1

    .line 628
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hBorder:I

    if-le v0, v3, :cond_2

    .line 629
    const/4 v0, -0x1

    .line 639
    :cond_2
    :goto_1
    if-gez v0, :cond_4

    move v0, v2

    .line 640
    goto :goto_0

    .line 631
    :cond_3
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->width:I

    add-int/2addr v3, v4

    if-lt p1, v3, :cond_2

    .line 633
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->width:I

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 635
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hBorder:I

    if-le v0, v3, :cond_2

    .line 636
    const/4 v0, -0x1

    goto :goto_1

    .line 642
    :cond_4
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    if-ge p2, v3, :cond_6

    .line 644
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    sub-int v1, v3, p2

    .line 646
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vBorder:I

    if-le v1, v3, :cond_5

    .line 647
    const/4 v1, -0x1

    .line 657
    :cond_5
    :goto_2
    if-gez v1, :cond_7

    move v0, v2

    .line 658
    goto :goto_0

    .line 649
    :cond_6
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->height:I

    add-int/2addr v3, v4

    if-lt p2, v3, :cond_5

    .line 651
    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->height:I

    add-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 653
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vBorder:I

    if-le v1, v3, :cond_5

    .line 654
    const/4 v1, -0x1

    goto :goto_2

    .line 660
    :cond_7
    if-gt v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPressed()Z
    .locals 2

    .prologue
    .line 766
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressed:Z

    .line 767
    .local v0, "isPressed":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressed:Z

    .line 769
    :cond_0
    return v0
.end method

.method private isReleased()Z
    .locals 2

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->released:Z

    .line 775
    .local v0, "isReleased":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->released:Z

    .line 777
    :cond_0
    return v0
.end method

.method private paint(Lcom/globalfun/adventuretime/free/Graphics;)V
    .locals 4
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isActive:Z

    if-nez v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    if-eqz v0, :cond_1

    .line 786
    const v0, -0xff6000

    invoke-virtual {p1, v0}, Lcom/globalfun/adventuretime/free/Graphics;->setColor(I)V

    .line 790
    :goto_1
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->width:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->height:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/globalfun/adventuretime/free/Graphics;->drawRect(IIII)V

    goto :goto_0

    .line 788
    :cond_1
    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Lcom/globalfun/adventuretime/free/Graphics;->setColor(I)V

    goto :goto_1
.end method

.method private pressed(IIZ)V
    .locals 3
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "dragging"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 667
    if-nez p3, :cond_0

    .line 669
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressed:Z

    .line 672
    :cond_0
    iput-boolean v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->released:Z

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->getDistance(II)I

    move-result v2

    if-ltz v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    .line 675
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    if-eqz v0, :cond_3

    .line 677
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressedOx:I

    .line 678
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressedOy:I

    .line 680
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->this$0:Lcom/globalfun/adventuretime/free/Touch;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->index:I

    invoke-static {v0, v1}, Lcom/globalfun/adventuretime/free/Touch;->access$0(Lcom/globalfun/adventuretime/free/Touch;I)V

    .line 686
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 673
    goto :goto_0

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->this$0:Lcom/globalfun/adventuretime/free/Touch;

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Touch;->access$1(Lcom/globalfun/adventuretime/free/Touch;)I

    move-result v0

    iget v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->index:I

    if-ne v0, v1, :cond_1

    .line 684
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->this$0:Lcom/globalfun/adventuretime/free/Touch;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/globalfun/adventuretime/free/Touch;->access$0(Lcom/globalfun/adventuretime/free/Touch;I)V

    goto :goto_1
.end method

.method private released(Z)V
    .locals 3
    .param p1, "soft"    # Z

    .prologue
    const/4 v1, 0x0

    .line 752
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->this$0:Lcom/globalfun/adventuretime/free/Touch;

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Touch;->access$1(Lcom/globalfun/adventuretime/free/Touch;)I

    move-result v0

    iget v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->index:I

    if-ne v0, v2, :cond_2

    .line 757
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->this$0:Lcom/globalfun/adventuretime/free/Touch;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/globalfun/adventuretime/free/Touch;->access$0(Lcom/globalfun/adventuretime/free/Touch;I)V

    .line 760
    :cond_2
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->released:Z

    .line 761
    iput-boolean v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    goto :goto_0

    .line 760
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 557
    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->type:I

    .line 558
    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->id:I

    .line 560
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isActive:Z

    .line 561
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isVolatile:Z

    .line 562
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    .line 564
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->pressed:Z

    .line 565
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->released:Z

    .line 566
    return-void
.end method

.method private setDrag(II)V
    .locals 0
    .param p1, "hRange"    # I
    .param p2, "vRange"    # I

    .prologue
    .line 612
    iput p1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    .line 613
    iput p2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    .line 614
    return-void
.end method

.method private setRegion(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/16 v3, 0x20

    const/16 v0, 0x10

    const/4 v2, 0x0

    .line 581
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->reset()V

    .line 583
    iput p1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->x:I

    .line 584
    iput p2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->y:I

    .line 585
    iput p3, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->width:I

    .line 586
    iput p4, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->height:I

    .line 590
    iput v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hBorder:I

    .line 591
    iput v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vBorder:I

    .line 593
    if-ge p3, v3, :cond_0

    .line 594
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hBorder:I

    rsub-int/lit8 v1, p3, 0x20

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hBorder:I

    .line 596
    :cond_0
    if-ge p4, v3, :cond_1

    .line 597
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vBorder:I

    rsub-int/lit8 v1, p4, 0x20

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vBorder:I

    .line 601
    :cond_1
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hRange:I

    .line 602
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vRange:I

    .line 604
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->hDragged:I

    .line 605
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->vDragged:I

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isActive:Z

    .line 608
    return-void
.end method

.method private setType(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->type:I

    .line 571
    iput p2, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->id:I

    .line 572
    return-void
.end method

.method private setVolatile()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isVolatile:Z

    .line 577
    return-void
.end method
