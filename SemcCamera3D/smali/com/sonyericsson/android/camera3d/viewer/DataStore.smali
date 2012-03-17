.class public Lcom/sonyericsson/android/camera3d/viewer/DataStore;
.super Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
.source "DataStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Datastore"


# instance fields
.field private final mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

.field private final mIntervalOfLoadingContent:J

.field private mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

.field private final mMpoFileAccess:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

.field private final mMpoImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

.field private mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

.field private mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

.field private final mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

.field private final mReviewImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

.field private final mThumbnailLoadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;J)V
    .locals 4
    .parameter "mpoFileAccess"
    .parameter "providerAccess"
    .parameter "imageBank"
    .parameter "intervalOfLoadingContent"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mReviewImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoFileAccess:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

    .line 70
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 71
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    .line 72
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 73
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 74
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    const/16 v1, 0x20

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    .line 78
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    .line 79
    iput-wide p4, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mIntervalOfLoadingContent:J

    .line 80
    return-void
.end method


# virtual methods
.method public clearPreviousContent()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->releaseReviewImage()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 242
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->dump()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->dump()V

    .line 301
    :cond_1
    return-void
.end method

.method public getContentCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getCount()I

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    return-object v0
.end method

.method public getMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_0
.end method

.method public getMpoInfoRetriever()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    return-object v0
.end method

.method public getMpoReader()Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoFileAccess:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

    return-object v0
.end method

.method public getPreviousContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    return-object v0
.end method

.method public getProvider()Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getThumbnailAdapter()Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    return-object v0
.end method

.method public hasMpoInfoQuery()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V
    .locals 0
    .parameter "sender"
    .parameter "mounted"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->pause()V

    .line 308
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->resume()V

    .line 309
    return-void
.end method

.method protected onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->resetMpoInfoRetriever()V

    .line 314
    return-void
.end method

.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->pause()V

    .line 324
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->resume()V

    .line 319
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->release()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->release()V

    .line 104
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->release()V

    .line 108
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->reset()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->release()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->release()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mReviewImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 142
    const-string v0, "Datastore"

    const-string v1, "release() start"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "Datastore"

    const-string v1, "release() end"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public resetMpoInfoRetriever()V
    .locals 4

    .prologue
    .line 272
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->release()V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    if-nez v1, :cond_2

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->execute()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->reset()V

    .line 283
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailLoadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 287
    .local v0, loader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->setMpoInfoRetriever(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->reload(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;)V

    .line 289
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mThumbnailAdapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadReviewImage()V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoFileAccess:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadMpoImages(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadReviewImage()V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->resetMpoInfoRetriever()V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->startScan()V

    .line 127
    return-void
.end method

.method public setCurrentContent(I)Z
    .locals 13
    .parameter "index"

    .prologue
    const/4 v12, 0x0

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    if-nez v0, :cond_1

    move v11, v12

    .line 234
    :cond_0
    :goto_0
    return v11

    .line 200
    :cond_1
    const/4 v11, 0x0

    .line 202
    .local v11, modified:Z
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->releaseReviewImage()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 205
    const/4 v11, 0x1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoRetriever:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v2

    .line 208
    .local v2, info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-eqz v2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->releaseMpoImages()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 217
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoFileAccess:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mReviewImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mIntervalOfLoadingContent:J

    move v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;-><init>(ILcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;J)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getImageCache()Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    move v11, v12

    .line 230
    goto :goto_0

    .line 234
    :cond_5
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public setCurrentContent(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)Z
    .locals 10
    .parameter "info"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->releaseReviewImage()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->releaseMpoImages()V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mPrevMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 156
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoFileAccess:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mImageBank:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mReviewImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoImageDecodeExecutor:Ljava/util/concurrent/ExecutorService;

    iget-wide v8, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mIntervalOfLoadingContent:J

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;J)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getImageCache()Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v0

    if-nez v0, :cond_3

    .line 168
    :cond_2
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMpoInfoQuery(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    if-eq v0, p1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->mMpoInfoQuery:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    .line 268
    :cond_0
    return-void
.end method
