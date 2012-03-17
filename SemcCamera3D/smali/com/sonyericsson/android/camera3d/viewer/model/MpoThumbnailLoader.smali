.class public final Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;
.super Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;
.source "MpoThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;,
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCriticalSection:Ljava/lang/Object;

.field private mDecodeExecutor:Ljava/util/concurrent/ExecutorService;

.field private mLoadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

.field private final mProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

.field private mReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter "provider"
    .parameter "loadExecutor"
    .parameter "decodeExecutor"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mCriticalSection:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mReleased:Z

    .line 106
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 107
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->loadThumbnails(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->decodeThumbnail(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    return-void
.end method

.method private decodeThumbnail(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 5
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, thumbBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->isLoading()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    .line 241
    .local v0, info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-eqz v0, :cond_1

    .line 242
    iget-boolean v3, v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mHasThumbnail:Z

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->getMicroThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 262
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->completeLoading(Landroid/graphics/Bitmap;)V

    .line 267
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->notifyLoaded(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    goto :goto_0

    .line 250
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, mpo:Ljava/io/File;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->getMicroThumbnail(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 264
    .end local v1           #mpo:Ljava/io/File;
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->cancelLoading()V

    goto :goto_2
.end method

.method private loadThumbnails(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;

    .line 175
    .local v4, request:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;
    iget v1, v4, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mIndex:I

    .line 176
    .local v1, index:I
    iget-object v5, v4, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 178
    .local v5, requestThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->isLoading()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v3

    .line 186
    .local v3, loadedInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-nez v3, :cond_2

    .line 188
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->getThumbnailInfo(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v2

    .line 189
    .local v2, info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-nez v2, :cond_1

    .line 190
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->cancelLoading()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->setInfo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V

    .line 198
    .end local v2           #info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    :cond_2
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mHasThumbnail:Z

    if-eqz v6, :cond_3

    .line 202
    iget v6, v4, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mIndex:I

    iget-object v7, v4, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->decodeThumbnail(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    goto :goto_0

    .line 210
    :cond_3
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->requestDecoding(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;)V

    goto :goto_0

    .line 219
    .end local v1           #index:I
    .end local v3           #loadedInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .end local v4           #request:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;
    .end local v5           #requestThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    :cond_4
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 220
    return-void
.end method

.method private requestDecoding(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 159
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;)V

    .line 160
    .local v0, task:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0           #task:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getMediaCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v0

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailInfo(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 278
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->TAG:Ljava/lang/String;

    const-string v1, "MpoInfoRetriever is not setted."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mReleased:Z

    .line 117
    return-void
.end method

.method public request(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;>;"
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mReleased:Z

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;Ljava/util/List;)V

    .line 135
    .local v0, task:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #task:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailLoadTask;
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 137
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setMpoInfoRetriever(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V
    .locals 2
    .parameter "mpoInfoRetriever"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
