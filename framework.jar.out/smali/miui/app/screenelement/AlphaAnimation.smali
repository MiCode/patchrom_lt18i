.class public Lmiui/app/screenelement/AlphaAnimation;
.super Lmiui/app/screenelement/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mCurrentAlpha:I


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
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/screenelement/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 18
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
    .line 12
    const-string v0, "Alpha"

    invoke-direct {p0, p1, v0, p2}, Lmiui/app/screenelement/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 13
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlphaAnimation"

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

    .line 14
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lmiui/app/screenelement/AlphaAnimation;->mCurrentAlpha:I

    return v0
.end method

.method protected onCreateItem()Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/app/screenelement/AlphaAnimation;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;-><init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    return-object v0
.end method

.method protected onTick(Lmiui/app/screenelement/BaseAnimation$AnimationItem;Lmiui/app/screenelement/BaseAnimation$AnimationItem;F)V
    .locals 3
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    const/4 v2, 0x0

    .line 31
    if-nez p1, :cond_0

    const/16 v1, 0xff

    move v0, v1

    .line 32
    .local v0, a1:I
    :goto_0
    int-to-float v1, v0

    invoke-virtual {p2, v2}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/app/screenelement/AlphaAnimation;->mCurrentAlpha:I

    .line 33
    return-void

    .line 31
    .end local v0           #a1:I
    :cond_0
    invoke-virtual {p1, v2}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method
