.class public Lmiui/app/screenelement/PositionAnimation;
.super Lmiui/app/screenelement/BaseAnimation;
.source "PositionAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Position"

.field public static final TAG_NAME:Ljava/lang/String; = "PositionAnimation"


# instance fields
.field protected mCurrentX:I

.field protected mCurrentY:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V
    .locals 0
    .parameter "node"
    .parameter "tagName"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 3
    .parameter "node"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 14
    const-string v0, "Position"

    invoke-direct {p0, p1, v0, p2}, Lmiui/app/screenelement/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 15
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PositionAnimation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong tag name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final getX()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lmiui/app/screenelement/PositionAnimation;->mCurrentX:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lmiui/app/screenelement/PositionAnimation;->mCurrentY:I

    return v0
.end method

.method protected onCreateItem()Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "y"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/app/screenelement/PositionAnimation;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    return-object v0
.end method

.method protected onTick(Lmiui/app/screenelement/BaseAnimation$AnimationItem;Lmiui/app/screenelement/BaseAnimation$AnimationItem;F)V
    .locals 5
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    if-nez p1, :cond_0

    move v0, v3

    .line 38
    .local v0, x1:I
    :goto_0
    if-nez p1, :cond_1

    move v1, v3

    .line 39
    .local v1, y1:I
    :goto_1
    int-to-float v2, v0

    invoke-virtual {p2, v3}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/app/screenelement/PositionAnimation;->mCurrentX:I

    .line 40
    int-to-float v2, v1

    invoke-virtual {p2, v4}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/app/screenelement/PositionAnimation;->mCurrentY:I

    .line 41
    return-void

    .line 37
    .end local v0           #x1:I
    .end local v1           #y1:I
    :cond_0
    invoke-virtual {p1, v3}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 38
    .restart local v0       #x1:I
    :cond_1
    invoke-virtual {p1, v4}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    move v1, v2

    goto :goto_1
.end method
