.class public Lmiui/app/screenelement/ElementGroup;
.super Lmiui/app/screenelement/AnimatedScreenElement;
.source "ElementGroup.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"


# instance fields
.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/ScreenElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    .line 22
    return-void
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lmiui/app/screenelement/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v1

    .line 121
    .local v1, ele:Lmiui/app/screenelement/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 130
    :goto_0
    return-object v3

    .line 124
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 125
    .local v0, e:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 127
    goto :goto_0

    .line 130
    .end local v0           #e:Lmiui/app/screenelement/ScreenElement;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lmiui/app/screenelement/AnimatedScreenElement;->finish()V

    .line 106
    iget-object v2, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 107
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->finish()V

    goto :goto_0

    .line 109
    .end local v0           #ele:Lmiui/app/screenelement/ScreenElement;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Lmiui/app/screenelement/AnimatedScreenElement;->init()V

    .line 47
    iget-object v2, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 48
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->init()V

    goto :goto_0

    .line 50
    .end local v0           #ele:Lmiui/app/screenelement/ScreenElement;
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v8, "node is null"

    const-string v7, "LockScreen_ElementGroup"

    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string v5, "LockScreen_ElementGroup"

    const-string v5, "node is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v5, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v6, "node is null"

    invoke-direct {v5, v8}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 29
    :cond_0
    iget-object v5, p0, Lmiui/app/screenelement/ElementGroup;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v5, Lmiui/app/screenelement/ScreenContext;->mFactory:Lmiui/app/screenelement/ScreenElementFactory;

    .line 30
    .local v1, factory:Lmiui/app/screenelement/ScreenElementFactory;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 31
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 32
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 33
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 34
    .local v3, item:Lorg/w3c/dom/Element;
    iget-object v5, p0, Lmiui/app/screenelement/ElementGroup;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v1, v3, v5}, Lmiui/app/screenelement/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v4

    .line 35
    .local v4, newElement:Lmiui/app/screenelement/ScreenElement;
    if-eqz v4, :cond_2

    .line 36
    iget-object v5, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .end local v3           #item:Lorg/w3c/dom/Element;
    .end local v4           #newElement:Lmiui/app/screenelement/ScreenElement;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .restart local v3       #item:Lorg/w3c/dom/Element;
    .restart local v4       #newElement:Lmiui/app/screenelement/ScreenElement;
    :cond_2
    const-string v5, "LockScreen_ElementGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unrecognized element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 42
    .end local v3           #item:Lorg/w3c/dom/Element;
    .end local v4           #newElement:Lmiui/app/screenelement/ScreenElement;
    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 94
    invoke-virtual {p0}, Lmiui/app/screenelement/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/screenelement/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)V

    .line 98
    iget-object v2, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 99
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenElement;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Lmiui/app/screenelement/AnimatedScreenElement;->pause()V

    .line 54
    iget-object v2, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 55
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->pause()V

    goto :goto_0

    .line 57
    .end local v0           #ele:Lmiui/app/screenelement/ScreenElement;
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 68
    invoke-virtual {p0}, Lmiui/app/screenelement/ElementGroup;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmiui/app/screenelement/ElementGroup;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v5}, Lmiui/app/screenelement/AnimatedElement;->getAlpha()I

    move-result v5

    if-gtz v5, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/ElementGroup;->getX()I

    move-result v3

    .line 72
    .local v3, x:I
    invoke-virtual {p0}, Lmiui/app/screenelement/ElementGroup;->getY()I

    move-result v4

    .line 73
    .local v4, y:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 74
    .local v2, rs:I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object v5, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 76
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenElement;->render(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 78
    .end local v0           #ele:Lmiui/app/screenelement/ScreenElement;
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lmiui/app/screenelement/AnimatedScreenElement;->resume()V

    .line 61
    iget-object v2, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 62
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->resume()V

    goto :goto_0

    .line 64
    .end local v0           #ele:Lmiui/app/screenelement/ScreenElement;
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 114
    iget-object v2, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 115
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    .end local v0           #ele:Lmiui/app/screenelement/ScreenElement;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 83
    invoke-virtual {p0}, Lmiui/app/screenelement/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;->tick(J)V

    .line 87
    iget-object v2, p0, Lmiui/app/screenelement/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ScreenElement;

    .line 88
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElement;->tick(J)V

    goto :goto_0
.end method
