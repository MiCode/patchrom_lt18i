.class public Lcom/sonyericsson/android/camera3d/ImageBuffer;
.super Ljava/lang/Object;
.source "ImageBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "bufferLimit"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/sonyericsson/android/camera3d/ImageBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 81
    return-void
.end method


# virtual methods
.method public assignBuffers(II)V
    .locals 6
    .parameter "length"
    .parameter "count"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->releaseBuffers()V

    .line 92
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    monitor-enter v3

    .line 93
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 94
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->newInstance(I)Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    move-result-object v0

    .line 95
    .local v0, buffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->getMemoryHandle()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;-><init>(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0           #buffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :cond_0
    monitor-exit v3

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public obtain()Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    .locals 4

    .prologue
    .line 162
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    monitor-enter v3

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;

    .line 164
    .local v0, entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->isUsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->retain()V

    .line 167
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    monitor-exit v3

    .line 182
    .end local v0           #entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    :goto_0
    return-object v2

    .line 170
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 178
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 182
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pop()Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    .locals 7

    .prologue
    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v4, stacked:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;>;"
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    move-result v0

    .line 223
    .local v0, count:I
    if-lez v0, :cond_0

    .line 224
    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    .line 225
    .local v3, latest:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    .line 226
    .local v1, i:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->getMemoryHandle()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->recycle(J)V

    goto :goto_0

    .line 234
    .end local v1           #i:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #latest:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 240
    :cond_1
    :goto_1
    return-object v3

    .line 235
    :catch_0
    move-exception v5

    .line 240
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public put(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
    .locals 4
    .parameter "nativeByteArray"

    .prologue
    .line 194
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v1

    .line 195
    .local v1, success:Z
    if-eqz v1, :cond_1

    .line 211
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    .line 206
    .local v0, latest:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->getMemoryHandle()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->recycle(J)V

    goto :goto_0
.end method

.method public recycle(J)V
    .locals 4
    .parameter "memoryHandle"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;

    .line 147
    .local v0, entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->release()V

    .line 150
    :cond_0
    monitor-exit v2

    .line 152
    return-void

    .line 150
    .end local v0           #entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recycleBuffers()V
    .locals 4

    .prologue
    .line 127
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    monitor-enter v3

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;

    .line 129
    .local v0, entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->release()V

    goto :goto_0

    .line 131
    .end local v0           #entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 134
    return-void
.end method

.method public releaseBuffers()V
    .locals 4

    .prologue
    .line 109
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;

    .line 111
    .local v0, entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->release()V

    goto :goto_0

    .line 114
    .end local v0           #entry:Lcom/sonyericsson/android/camera3d/ImageBuffer$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 113
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mBuffers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 114
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageBuffer;->mReadyBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 117
    return-void
.end method
