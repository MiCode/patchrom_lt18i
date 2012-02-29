.class public Lmiui/app/screenelement/SizeAnimation;
.super Lmiui/app/screenelement/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mCurrentH:I

.field private mCurrentW:I

.field private mMaxH:I

.field private mMaxW:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 6
    .parameter "node"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 18
    const-string v2, "Size"

    invoke-direct {p0, p1, v2, p2}, Lmiui/app/screenelement/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 19
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SizeAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong tag name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 21
    iget-object v2, p0, Lmiui/app/screenelement/SizeAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    .line 22
    .local v0, ai:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v5}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    iget v3, p0, Lmiui/app/screenelement/SizeAnimation;->mMaxW:I

    if-le v2, v3, :cond_1

    .line 23
    invoke-virtual {v0, v5}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/app/screenelement/SizeAnimation;->mMaxW:I

    .line 24
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    iget v3, p0, Lmiui/app/screenelement/SizeAnimation;->mMaxH:I

    if-le v2, v3, :cond_0

    .line 25
    invoke-virtual {v0, v5}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/app/screenelement/SizeAnimation;->mMaxH:I

    goto :goto_0

    .line 27
    .end local v0           #ai:Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    :cond_2
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lmiui/app/screenelement/SizeAnimation;->mCurrentH:I

    return v0
.end method

.method public final getMaxHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmiui/app/screenelement/SizeAnimation;->mMaxH:I

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lmiui/app/screenelement/SizeAnimation;->mMaxW:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lmiui/app/screenelement/SizeAnimation;->mCurrentW:I

    return v0
.end method

.method protected onCreateItem()Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "w"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "h"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/app/screenelement/SizeAnimation;->mContext:Lmiui/app/screenelement/ScreenContext;

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

    .line 52
    if-nez p1, :cond_0

    move v0, v3

    .line 53
    .local v0, x1:I
    :goto_0
    if-nez p1, :cond_1

    move v1, v3

    .line 54
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

    iput v2, p0, Lmiui/app/screenelement/SizeAnimation;->mCurrentW:I

    .line 55
    int-to-float v2, v1

    invoke-virtual {p2, v4}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/app/screenelement/SizeAnimation;->mCurrentH:I

    .line 56
    return-void

    .line 52
    .end local v0           #x1:I
    .end local v1           #y1:I
    :cond_0
    invoke-virtual {p1, v3}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 53
    .restart local v0       #x1:I
    :cond_1
    invoke-virtual {p1, v4}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    move v1, v2

    goto :goto_1
.end method
