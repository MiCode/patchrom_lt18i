.class public Lmiui/app/screenelement/SourcesAnimation;
.super Lmiui/app/screenelement/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentBitmap:Ljava/lang/String;


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
    .line 26
    const-string v0, "Source"

    invoke-direct {p0, p1, v0, p2}, Lmiui/app/screenelement/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/app/screenelement/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem()Lmiui/app/screenelement/BaseAnimation$AnimationItem;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lmiui/app/screenelement/SourcesAnimation$Source;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "y"

    aput-object v3, v1, v2

    iget-object v2, p0, Lmiui/app/screenelement/SourcesAnimation;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/SourcesAnimation$Source;-><init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V

    return-object v0
.end method

.method protected onTick(Lmiui/app/screenelement/BaseAnimation$AnimationItem;Lmiui/app/screenelement/BaseAnimation$AnimationItem;F)V
    .locals 1
    .parameter "item1"
    .parameter "item2"
    .parameter "ratio"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/SourcesAnimation;->mCurrentX:I

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lmiui/app/screenelement/BaseAnimation$AnimationItem;->get(I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/SourcesAnimation;->mCurrentY:I

    .line 37
    check-cast p2, Lmiui/app/screenelement/SourcesAnimation$Source;

    .end local p2
    iget-object v0, p2, Lmiui/app/screenelement/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/screenelement/SourcesAnimation;->mCurrentBitmap:Ljava/lang/String;

    .line 38
    return-void
.end method
