.class public Lmiui/app/screenelement/RotationAnimation;
.super Lmiui/app/screenelement/BaseAnimation;
.source "RotationAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Rotation"

.field public static final TAG_NAME:Ljava/lang/String; = "RotationAnimation"


# instance fields
.field private mCurrentAngle:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 13
    const-string v0, "Rotation"

    invoke-direct {p0, p1, v0, p2}, Lmiui/app/screenelement/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final getAngle()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lmiui/app/screenelement/RotationAnimation;->mCurrentAngle:I

    return v0
.end method

.method protected onCreateItem()Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lmiui/app/screenelement/BaseAnimation$AnimationItem;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "angle"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/app/screenelement/RotationAnimation;->mContext:Lmiui/app/screenelement/ScreenContext;

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

    .line 27
    if-nez p1, :cond_0

    move v0, v2

    .line 28
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

    iput v1, p0, Lmiui/app/screenelement/RotationAnimation;->mCurrentAngle:I

    .line 29
    return-void

    .line 27
    .end local v0           #a1:I
    :cond_0
    invoke-virtual {p1, v2}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method
