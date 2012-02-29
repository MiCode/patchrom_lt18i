.class public abstract Lmiui/app/screenelement/AnimatedScreenElement;
.super Lmiui/app/screenelement/ScreenElement;
.source "AnimatedScreenElement.java"


# instance fields
.field protected mAni:Lmiui/app/screenelement/AnimatedElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 10
    new-instance v0, Lmiui/app/screenelement/AnimatedElement;

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, p1, v1}, Lmiui/app/screenelement/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    .line 11
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/AnimatedElement;->init()V

    .line 16
    return-void
.end method

.method public tick(J)V
    .locals 5
    .parameter "currentTime"

    .prologue
    .line 20
    invoke-virtual {p0}, Lmiui/app/screenelement/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/AnimatedElement;->tick(J)V

    .line 24
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_x"

    iget-object v3, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v3}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 26
    iget-object v0, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v1, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_y"

    iget-object v3, p0, Lmiui/app/screenelement/AnimatedScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v3}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method
