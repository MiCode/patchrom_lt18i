.class public abstract Lmiui/app/screenelement/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ScreenElement$1;,
        Lmiui/app/screenelement/ScreenElement$AlignV;
    }
.end annotation


# instance fields
.field protected mAlign:Landroid/graphics/Paint$Align;

.field protected mAlignV:Lmiui/app/screenelement/ScreenElement$AlignV;

.field protected mCategory:Ljava/lang/String;

.field protected mContext:Lmiui/app/screenelement/ScreenContext;

.field protected mName:Ljava/lang/String;

.field private mShow:Z

.field private mVisibilityExpression:Lmiui/app/screenelement/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 5
    .parameter "ele"
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const-string v4, "center"

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v3, p0, Lmiui/app/screenelement/ScreenElement;->mShow:Z

    .line 24
    iput-object p2, p0, Lmiui/app/screenelement/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 25
    if-eqz p1, :cond_2

    .line 26
    const-string v2, "category"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mCategory:Ljava/lang/String;

    .line 27
    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mName:Ljava/lang/String;

    .line 28
    const-string/jumbo v2, "visibility"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, vis:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/app/screenelement/ScreenElement;->mShow:Z

    .line 38
    :cond_0
    :goto_0
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    .line 39
    const-string v2, "align"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, align:Ljava/lang/String;
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    .line 48
    :cond_1
    :goto_1
    sget-object v2, Lmiui/app/screenelement/ScreenElement$AlignV;->TOP:Lmiui/app/screenelement/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlignV:Lmiui/app/screenelement/ScreenElement$AlignV;

    .line 49
    const-string v2, "alignV"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    sget-object v2, Lmiui/app/screenelement/ScreenElement$AlignV;->BOTTOM:Lmiui/app/screenelement/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlignV:Lmiui/app/screenelement/ScreenElement$AlignV;

    .line 58
    .end local v0           #align:Ljava/lang/String;
    .end local v1           #vis:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 32
    .restart local v1       #vis:Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 33
    iput-boolean v3, p0, Lmiui/app/screenelement/ScreenElement;->mShow:Z

    goto :goto_0

    .line 35
    :cond_4
    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mVisibilityExpression:Lmiui/app/screenelement/Expression;

    goto :goto_0

    .line 42
    .restart local v0       #align:Ljava/lang/String;
    :cond_5
    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 43
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_1

    .line 44
    :cond_6
    const-string v2, "center"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_1

    .line 52
    :cond_7
    const-string/jumbo v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 53
    sget-object v2, Lmiui/app/screenelement/ScreenElement$AlignV;->TOP:Lmiui/app/screenelement/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlignV:Lmiui/app/screenelement/ScreenElement$AlignV;

    goto :goto_2

    .line 54
    :cond_8
    const-string v2, "center"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    sget-object v2, Lmiui/app/screenelement/ScreenElement$AlignV;->CENTER:Lmiui/app/screenelement/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlignV:Lmiui/app/screenelement/ScreenElement$AlignV;

    goto :goto_2
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected getLeft(II)I
    .locals 3
    .parameter "pos"
    .parameter "width"

    .prologue
    .line 120
    if-gtz p2, :cond_0

    move v1, p1

    .line 131
    :goto_0
    return v1

    .line 122
    :cond_0
    move v0, p1

    .line 123
    .local v0, x:I
    sget-object v1, Lmiui/app/screenelement/ScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v2}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 131
    goto :goto_0

    .line 125
    :pswitch_0
    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 126
    goto :goto_1

    .line 128
    :pswitch_1
    sub-int/2addr v0, p2

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTop(II)I
    .locals 3
    .parameter "pos"
    .parameter "height"

    .prologue
    .line 105
    if-gtz p2, :cond_0

    move v1, p1

    .line 116
    :goto_0
    return v1

    .line 107
    :cond_0
    move v0, p1

    .line 108
    .local v0, y:I
    sget-object v1, Lmiui/app/screenelement/ScreenElement$1;->$SwitchMap$miui$app$screenelement$ScreenElement$AlignV:[I

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElement;->mAlignV:Lmiui/app/screenelement/ScreenElement$AlignV;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 116
    goto :goto_0

    .line 110
    :pswitch_0
    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 111
    goto :goto_1

    .line 113
    :pswitch_1
    sub-int/2addr v0, p2

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public isVisible()Z
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mVisibilityExpression:Lmiui/app/screenelement/Expression;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/app/screenelement/ScreenElement;->mShow:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mVisibilityExpression:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 102
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public abstract render(Landroid/graphics/Canvas;)V
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public setShouldUpdate(Z)V
    .locals 1
    .parameter "shouldUpdate"

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-boolean p1, v0, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    .line 136
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-object p1, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    .line 144
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-boolean v0, v0, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    return v0
.end method

.method public show(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 61
    iput-boolean p1, p0, Lmiui/app/screenelement/ScreenElement;->mShow:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mVisibilityExpression:Lmiui/app/screenelement/Expression;

    .line 65
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, p2}, Lmiui/app/screenelement/ScreenElement;->show(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public abstract tick(J)V
.end method
