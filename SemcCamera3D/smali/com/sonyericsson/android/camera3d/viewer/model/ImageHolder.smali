.class public abstract Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
.super Ljava/lang/Object;
.source "ImageHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;,
        Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private final mDestroyListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mStored:Z

.field private final mUpdateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mDestroyListener:Ljava/util/List;

    .line 52
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mWidth:I

    .line 53
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mHeight:I

    .line 54
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mOriginalWidth:I

    .line 55
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mOriginalHeight:I

    .line 56
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mStored:Z

    .line 57
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mCompleted:Z

    .line 58
    return-void
.end method

.method private notifyDestroy()V
    .locals 4

    .prologue
    .line 178
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mDestroyListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 179
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;

    .line 180
    .local v1, listener:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;
    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;->onDestroy(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V

    goto :goto_0

    .line 184
    .end local v1           #listener:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;>;"
    :cond_1
    return-void
.end method

.method private notifyUpdate()V
    .locals 4

    .prologue
    .line 169
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 170
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;

    .line 171
    .local v1, listener:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;
    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;->onUpdate(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V

    goto :goto_0

    .line 175
    .end local v1           #listener:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mDestroyListener:Ljava/util/List;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mDestroyListener:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v1

    .line 98
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mHeight:I

    monitor-exit v1

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOriginalHeight()I
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v1

    .line 86
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mOriginalHeight:I

    monitor-exit v1

    return v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOriginalWidth()I
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v1

    .line 80
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mOriginalWidth:I

    monitor-exit v1

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v1

    .line 92
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mWidth:I

    monitor-exit v1

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBroken()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mStored:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mCompleted:Z

    return v0
.end method

.method public isStored()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mStored:Z

    return v0
.end method

.method protected abstract onRestore(Landroid/graphics/Bitmap;)Z
.end method

.method protected abstract onStore(Landroid/graphics/Bitmap;)Z
.end method

.method public release()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mDestroyListener:Ljava/util/List;

    monitor-enter v1

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->notifyDestroy()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 128
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mDestroyListener:Ljava/util/List;

    monitor-enter v4

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mDestroyListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 132
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;

    .line 133
    .local v0, comp:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 134
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 137
    .end local v0           #comp:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;>;>;"
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    return-void
.end method

.method public removeListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 115
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v4

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 119
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;

    .line 120
    .local v0, comp:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 121
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 124
    .end local v0           #comp:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;>;>;"
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    return-void
.end method

.method public restore(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "dest"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mStored:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->onRestore(Landroid/graphics/Bitmap;)Z

    move-result v0

    monitor-exit v1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public store(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "source"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mUpdateListener:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mOriginalWidth:I

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mOriginalHeight:I

    .line 144
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->onStore(Landroid/graphics/Bitmap;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mStored:Z

    .line 145
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mStored:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mWidth:I

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mHeight:I

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mCompleted:Z

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->notifyUpdate()V

    .line 151
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->mStored:Z

    monitor-exit v1

    return v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
