.class public Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;
.super Ljava/lang/Object;
.source "AppLayerStack.java"


# instance fields
.field private final mLayers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/AppLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    .line 36
    return-void
.end method


# virtual methods
.method public close(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 3
    .parameter "dataStore"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 74
    .local v1, prev:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->close()V

    .line 76
    .end local v1           #prev:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 78
    .local v0, next:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->foreground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 82
    .end local v0           #next:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    :cond_1
    return-void
.end method

.method public close(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/AppLayer;)V
    .locals 2
    .parameter "dataStore"
    .parameter "target"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->close()V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 93
    .local v0, next:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->foreground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 97
    .end local v0           #next:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    :cond_1
    return-void
.end method

.method public getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    .line 47
    .local v1, layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->close()V

    goto :goto_0

    .line 49
    .end local v1           #layer:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 50
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v0

    .line 104
    .local v0, active:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 107
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v0

    .line 116
    .local v0, active:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->sendTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 119
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show(Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 2
    .parameter "layer"
    .parameter "dataStore"
    .parameter "outputMode"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getActiveLayer()Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    move-result-object v0

    .line 61
    .local v0, prev:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->background()V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;->open(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 66
    return-void
.end method

.method public toCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/AppLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->mLayers:Ljava/util/LinkedList;

    return-object v0
.end method
