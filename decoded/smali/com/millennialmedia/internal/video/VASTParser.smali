.class public Lcom/millennialmedia/internal/video/VASTParser;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/VASTParser$Background;,
        Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;,
        Lcom/millennialmedia/internal/video/VASTParser$Button;,
        Lcom/millennialmedia/internal/video/VASTParser$Overlay;,
        Lcom/millennialmedia/internal/video/VASTParser$MMExtension;,
        Lcom/millennialmedia/internal/video/VASTParser$WebResource;,
        Lcom/millennialmedia/internal/video/VASTParser$StaticResource;,
        Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;,
        Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;,
        Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;,
        Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;,
        Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;,
        Lcom/millennialmedia/internal/video/VASTParser$MediaFile;,
        Lcom/millennialmedia/internal/video/VASTParser$LinearAd;,
        Lcom/millennialmedia/internal/video/VASTParser$Creative;,
        Lcom/millennialmedia/internal/video/VASTParser$AdSystem;,
        Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;,
        Lcom/millennialmedia/internal/video/VASTParser$InLineAd;,
        Lcom/millennialmedia/internal/video/VASTParser$Ad;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/millennialmedia/internal/video/VASTParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method

.method private static nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$Ad;
    .locals 8
    .param p0, "adContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 386
    if-nez p0, :cond_1

    .line 387
    sget-object v5, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    const-string v6, "Ad content was null."

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    .line 425
    :cond_0
    :goto_0
    return-object v0

    .line 392
    :cond_1
    const/4 v0, 0x0

    .line 394
    .local v0, "ad":Lcom/millennialmedia/internal/video/VASTParser$Ad;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 395
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 396
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 397
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 400
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VAST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 402
    const-string v5, ""

    const-string v6, "version"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "sVersion":Ljava/lang/String;
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 406
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 408
    .local v2, "majorVersion":I
    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 409
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 411
    invoke-static {v3}, Lcom/millennialmedia/internal/video/VASTParser;->readAd(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Ad;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_2
    sget-object v5, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported VAST version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    .end local v2    # "majorVersion":I
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid version format for VAST tag with version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 421
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v5, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    const-string v6, "VAST version not provided."

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static readAd(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Ad;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 431
    const-string v2, "Ad"

    invoke-interface {p0, v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, "ad":Lcom/millennialmedia/internal/video/VASTParser$Ad;
    const-string v2, "id"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "id":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 438
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 442
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InLine"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 443
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readInLine(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    .line 457
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 458
    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->id:Ljava/lang/String;

    .line 461
    :cond_2
    return-object v0

    .line 447
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Wrapper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readWrapper(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    move-result-object v0

    .line 450
    goto :goto_1

    .line 453
    :cond_4
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method private static readBackground(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Background;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 606
    const-string v1, "Background"

    invoke-interface {p0, v6, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$Background;

    const-string v1, "hideButtons"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/video/VASTParser;->toBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTParser$Background;-><init>(Z)V

    .line 610
    .local v0, "background":Lcom/millennialmedia/internal/video/VASTParser$Background;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 611
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 615
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StaticResource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    new-instance v1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    const-string v2, "creativeType"

    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "backgroundColor"

    .line 617
    invoke-interface {p0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    goto :goto_0

    .line 619
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebResource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    new-instance v1, Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    .line 621
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/millennialmedia/internal/video/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    goto :goto_0

    .line 624
    :cond_2
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 628
    :cond_3
    return-object v0
.end method

.method public static readButton(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Button;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 657
    const-string v6, "Button"

    invoke-interface {p0, v11, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v6, "name"

    invoke-interface {p0, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "name":Ljava/lang/String;
    const-string v6, "offset"

    invoke-interface {p0, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, "offset":Ljava/lang/String;
    const-string v6, "position"

    invoke-interface {p0, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, "sPosition":Ljava/lang/String;
    const/4 v4, 0x0

    .line 664
    .local v4, "position":I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 666
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 672
    :cond_0
    :goto_0
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$Button;

    invoke-direct {v0, v2, v3, v4}, Lcom/millennialmedia/internal/video/VASTParser$Button;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 674
    .local v0, "button":Lcom/millennialmedia/internal/video/VASTParser$Button;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 675
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 679
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StaticResource"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 680
    new-instance v6, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    const-string v7, "creativeType"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "backgroundColor"

    .line 681
    invoke-interface {p0, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    goto :goto_1

    .line 667
    .end local v0    # "button":Lcom/millennialmedia/internal/video/VASTParser$Button;
    :catch_0
    move-exception v1

    .line 668
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for Button."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "button":Lcom/millennialmedia/internal/video/VASTParser$Button;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ButtonClicks"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 684
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readButtonClicks(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    move-result-object v6

    iput-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->buttonClicks:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    goto :goto_1

    .line 686
    :cond_3
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 690
    :cond_4
    return-object v0
.end method

.method private static readButtonClicks(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 696
    const-string v1, "ButtonClicks"

    invoke-interface {p0, v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 700
    .local v0, "buttonClicks":Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 701
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 705
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ButtonClickThrough"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    goto :goto_0

    .line 707
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ButtonClickTracking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 708
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    :cond_2
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 714
    :cond_3
    return-object v0
.end method

.method private static readButtons(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$Button;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 634
    const/4 v1, 0x0

    const-string v2, "Buttons"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v0, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$Button;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 639
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 644
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Button"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readButton(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 647
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 651
    :cond_2
    return-object v0
.end method

.method private static readCompanionAd(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    .locals 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v11, 0x0

    .line 807
    const-string v6, "Companion"

    invoke-interface {p0, v14, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v9, 0x0

    .line 812
    .local v9, "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    const/4 v6, 0x0

    :try_start_0
    const-string v11, "id"

    invoke-interface {p0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "id":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v11, "width"

    invoke-interface {p0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 814
    .local v2, "width":I
    const/4 v6, 0x0

    const-string v11, "height"

    invoke-interface {p0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 815
    .local v3, "height":I
    const/4 v6, 0x0

    const-string v11, "assetWidth"

    invoke-interface {p0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 816
    .local v4, "assetWidth":I
    const/4 v6, 0x0

    const-string v11, "assetHeight"

    invoke-interface {p0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 818
    .local v5, "assetHeight":I
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    const/4 v6, 0x0

    const-string v11, "hideButtons"

    .line 819
    invoke-interface {p0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-static {v6, v11}, Lcom/millennialmedia/internal/video/VASTParser;->toBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;-><init>(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 821
    .end local v9    # "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    .local v0, "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v11, 0x3

    if-eq v6, v11, :cond_1

    .line 822
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v14, :cond_0

    .line 826
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "StaticResource"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 827
    new-instance v6, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    const/4 v11, 0x0

    const-string v12, "creativeType"

    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "backgroundColor"

    .line 828
    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v11, v12, v13}, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v10

    .line 858
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "assetWidth":I
    .end local v5    # "assetHeight":I
    .local v10, "e":Ljava/lang/NumberFormatException;
    :goto_1
    sget-object v6, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    const-string v11, "Syntax error in Companion element; skipping."

    invoke-static {v6, v11, v10}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 861
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-object v0

    .line 830
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v4    # "assetWidth":I
    .restart local v5    # "assetHeight":I
    :cond_2
    :try_start_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "HTMLResource"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 831
    new-instance v6, Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    .line 832
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/millennialmedia/internal/video/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    goto :goto_0

    .line 834
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "IFrameResource"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 835
    new-instance v6, Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    .line 836
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/millennialmedia/internal/video/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    goto :goto_0

    .line 838
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "TrackingEvents"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 839
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readTrackingEvents(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    goto :goto_0

    .line 840
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "CompanionClickTracking"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 841
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    .line 842
    .local v8, "clickTrackingUrl":Ljava/lang/String;
    invoke-static {v8}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 843
    iget-object v6, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 846
    .end local v8    # "clickTrackingUrl":Ljava/lang/String;
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "CompanionClickThrough"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 847
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    .line 848
    .local v7, "clickThroughUrl":Ljava/lang/String;
    invoke-static {v7}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 849
    iput-object v7, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    goto/16 :goto_0

    .line 853
    .end local v7    # "clickThroughUrl":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 857
    .end local v0    # "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "assetWidth":I
    .end local v5    # "assetHeight":I
    .restart local v9    # "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    :catch_1
    move-exception v10

    move-object v0, v9

    .end local v9    # "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    .restart local v0    # "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    goto/16 :goto_1
.end method

.method private static readCompanionAds(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 780
    const/4 v2, 0x0

    const-string v3, "CompanionAds"

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v1, "companionAds":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 785
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 789
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Companion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readCompanionAd(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v0

    .line 792
    .local v0, "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    if-eqz v0, :cond_0

    .line 793
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 797
    .end local v0    # "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 801
    :cond_2
    return-object v1
.end method

.method private static readCreative(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Creative;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 743
    const-string v5, "Creative"

    invoke-interface {p0, v8, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v5, "AdID"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "adId":Ljava/lang/String;
    const-string v5, "sequence"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, "sSequence":Ljava/lang/String;
    const/4 v4, 0x0

    .line 749
    .local v4, "sequence":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 751
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 757
    :cond_0
    :goto_0
    new-instance v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    invoke-direct {v1, v0, v4}, Lcom/millennialmedia/internal/video/VASTParser$Creative;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    .local v1, "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 760
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 764
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Linear"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 765
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readLinear(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    move-result-object v5

    iput-object v5, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    goto :goto_1

    .line 752
    .end local v1    # "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    :catch_0
    move-exception v2

    .line 753
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid sequence number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for Creative."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CompanionAds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 767
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readCompanionAds(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    goto :goto_1

    .line 769
    :cond_3
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 773
    :cond_4
    return-object v1
.end method

.method private static readCreatives(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$Creative;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 720
    const/4 v1, 0x0

    const-string v2, "Creatives"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v0, "creatives":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$Creative;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 725
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 730
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creative"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readCreative(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 733
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 737
    :cond_2
    return-object v0
.end method

.method private static readExtensions(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$MMExtension;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 545
    const/4 v0, 0x0

    .line 547
    .local v0, "mmExtension":Lcom/millennialmedia/internal/video/VASTParser$MMExtension;
    const-string v2, "Extensions"

    invoke-interface {p0, v4, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 550
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 555
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Extension"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    const-string v2, "type"

    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "type":Ljava/lang/String;
    const-string v2, "MMInteractiveVideo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readMMExtension(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 564
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 568
    :cond_3
    return-object v0
.end method

.method private static readInLine(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 505
    const/4 v3, 0x0

    const-string v4, "InLine"

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    invoke-direct {v2}, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;-><init>()V

    .line 509
    .local v2, "inLineAd":Lcom/millennialmedia/internal/video/VASTParser$InLineAd;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    .line 510
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 515
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Creatives"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readCreatives(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->creatives:Ljava/util/List;

    goto :goto_0

    .line 517
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Impression"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "impressionUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 522
    iget-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->impressions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    .end local v1    # "impressionUrl":Ljava/lang/String;
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Extensions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 526
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readExtensions(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    goto :goto_0

    .line 527
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 528
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "errorUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 531
    iput-object v0, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->error:Ljava/lang/String;

    goto :goto_0

    .line 535
    .end local v0    # "errorUrl":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 539
    :cond_5
    return-object v2
.end method

.method private static readLinear(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$LinearAd;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 867
    const-string v1, "Linear"

    invoke-interface {p0, v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 869
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    const-string v1, "skipoffset"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, "linearAd":Lcom/millennialmedia/internal/video/VASTParser$LinearAd;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 872
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 876
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaFiles"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readMediaFiles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->mediaFiles:Ljava/util/List;

    goto :goto_0

    .line 878
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrackingEvents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 879
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readTrackingEvents(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    goto :goto_0

    .line 880
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoClicks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 881
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readVideoClicks(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    goto :goto_0

    .line 883
    :cond_3
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 887
    :cond_4
    return-object v0
.end method

.method private static readMMExtension(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$MMExtension;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 574
    const-string v5, "Extension"

    invoke-interface {p0, v7, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v3, 0x0

    .line 577
    .local v3, "overlay":Lcom/millennialmedia/internal/video/VASTParser$Overlay;
    const/4 v0, 0x0

    .line 578
    .local v0, "background":Lcom/millennialmedia/internal/video/VASTParser$Background;
    const/4 v1, 0x0

    .line 580
    .local v1, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$Button;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 581
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 586
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Overlay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 587
    const-string v5, "hideButtons"

    invoke-interface {p0, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/millennialmedia/internal/video/VASTParser;->toBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 588
    .local v2, "hideButtons":Z
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, "overlayUri":Ljava/lang/String;
    new-instance v3, Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    .end local v3    # "overlay":Lcom/millennialmedia/internal/video/VASTParser$Overlay;
    invoke-direct {v3, v4, v2}, Lcom/millennialmedia/internal/video/VASTParser$Overlay;-><init>(Ljava/lang/String;Z)V

    .line 591
    .restart local v3    # "overlay":Lcom/millennialmedia/internal/video/VASTParser$Overlay;
    goto :goto_0

    .end local v2    # "hideButtons":Z
    .end local v4    # "overlayUri":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Background"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 592
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readBackground(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$Background;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Buttons"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 594
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readButtons(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 596
    :cond_3
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 600
    :cond_4
    new-instance v5, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    invoke-direct {v5, v3, v0, v1}, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;-><init>(Lcom/millennialmedia/internal/video/VASTParser$Overlay;Lcom/millennialmedia/internal/video/VASTParser$Background;Ljava/util/List;)V

    return-object v5
.end method

.method private static readMediaFiles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 974
    const-string v0, "MediaFiles"

    invoke-interface {p0, v11, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 976
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v9, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$MediaFile;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v10, 0x3

    if-eq v0, v10, :cond_2

    .line 979
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 983
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "MediaFile"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    const/4 v0, 0x0

    :try_start_0
    const-string v10, "type"

    invoke-interface {p0, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, "contentType":Ljava/lang/String;
    const/4 v0, 0x0

    const-string v10, "delivery"

    invoke-interface {p0, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 988
    .local v3, "delivery":Ljava/lang/String;
    const/4 v0, 0x0

    const-string v10, "width"

    invoke-interface {p0, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 989
    .local v4, "width":I
    const/4 v0, 0x0

    const-string v10, "height"

    invoke-interface {p0, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 990
    .local v5, "height":I
    const/4 v0, 0x0

    const-string v10, "bitrate"

    invoke-interface {p0, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 991
    .local v6, "bitrate":I
    const/4 v0, 0x0

    const-string v10, "maintainAspectRatio"

    .line 992
    invoke-interface {p0, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 994
    .local v7, "maintainAspectRatio":Z
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "mediaFileURL":Ljava/lang/String;
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    invoke-direct/range {v0 .. v7}, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    .end local v1    # "mediaFileURL":Ljava/lang/String;
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v3    # "delivery":Ljava/lang/String;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "bitrate":I
    .end local v7    # "maintainAspectRatio":Z
    :catch_0
    move-exception v8

    .line 1000
    .local v8, "e":Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    const-string v10, "Skipping malformed MediaFile element in VAST response."

    invoke-static {v0, v10, v8}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1004
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1008
    :cond_2
    return-object v9
.end method

.method private static readTrackingEvents(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 920
    const-string v8, "TrackingEvents"

    invoke-interface {p0, v12, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 924
    .local v5, "trackingEvents":Ljava/util/Map;, "Ljava/util/Map<Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 925
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-ne v8, v12, :cond_0

    .line 929
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Tracking"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 931
    const-string v8, "event"

    invoke-interface {p0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "event":Ljava/lang/String;
    const-string v8, "offset"

    invoke-interface {p0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "offset":Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    .line 937
    .local v7, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 939
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    move-result-object v3

    .line 942
    .local v3, "trackableEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    sget-object v8, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-virtual {v8, v3}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 943
    new-instance v4, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    invoke-direct {v4, v7, v2}, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    .local v4, "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    :goto_1
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 949
    .local v6, "trackingEventsForEventType":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    if-nez v6, :cond_1

    .line 950
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "trackingEventsForEventType":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .restart local v6    # "trackingEventsForEventType":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 956
    .end local v3    # "trackableEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .end local v4    # "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    .end local v6    # "trackingEventsForEventType":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 958
    sget-object v8, Lcom/millennialmedia/internal/video/VASTParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported VAST event type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "trackableEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    :cond_2
    :try_start_1
    new-instance v4, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    invoke-direct {v4, v3, v7}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;-><init>(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v4    # "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    goto :goto_1

    .line 964
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "offset":Ljava/lang/String;
    .end local v3    # "trackableEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .end local v4    # "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 968
    :cond_4
    return-object v5
.end method

.method private static readVideoClicks(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 893
    const-string v1, "VideoClicks"

    invoke-interface {p0, v3, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 895
    new-instance v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v4, v1, v2}, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 897
    .local v0, "videoClicks":Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 898
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 902
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickThrough"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    goto :goto_0

    .line 904
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickTracking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 905
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomClick"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    :cond_3
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 913
    :cond_4
    return-object v0
.end method

.method private static readWrapper(Lorg/xmlpull/v1/XmlPullParser;)Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 467
    const/4 v3, 0x0

    const-string v4, "Wrapper"

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    invoke-direct {v2}, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;-><init>()V

    .line 471
    .local v2, "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    .line 472
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 476
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VASTAdTagURI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    goto :goto_0

    .line 478
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Creatives"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->readCreatives(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    goto :goto_0

    .line 480
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Impression"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 481
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "impressionUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    iget-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->impressions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    .end local v1    # "impressionUrl":Ljava/lang/String;
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 488
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->nextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "errorUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 491
    iput-object v0, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->error:Ljava/lang/String;

    goto :goto_0

    .line 495
    .end local v0    # "errorUrl":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/millennialmedia/internal/video/VASTParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 499
    :cond_5
    return-object v2
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1017
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1020
    :cond_0
    const/4 v0, 0x1

    .line 1021
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 1022
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1029
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 1026
    goto :goto_0

    .line 1034
    :cond_1
    return-void

    .line 1022
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toBoolean(Ljava/lang/String;Z)Z
    .locals 0
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 1039
    if-nez p0, :cond_0

    .line 1043
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method
