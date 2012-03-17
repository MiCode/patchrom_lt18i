.class public Lcom/sonyericsson/android/camera/photostack/PhotoStack;
.super Ljava/lang/Object;
.source "PhotoStack.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PhotoStack"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

.field private mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

.field private mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

.field private mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

.field private mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

.field private final mRecentThumbnailCount:I

.field private final mRequeryCallbackQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailCount:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "securityLevel"
    .parameter "destinationToSave"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mThumbnailCount:I

    .line 87
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mContext:Landroid/content/Context;

    .line 88
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRequeryCallbackQueue:Ljava/util/LinkedList;

    .line 137
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    .line 140
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    const-string v1, "RECENT_THUMBNAILS"

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mIdGenerator:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;-><init>(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/util/IncrementalId;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    .line 141
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCount:I

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStack;IIIILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->onPostAddComplete(IIIILandroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStack;Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->removeRequeryCallback(Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStack;)Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/photostack/PhotoStack;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/photostack/PhotoStack;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->onPostThumbnailDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;Z)V

    return-void
.end method

.method private onPostAddComplete(IIIILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6
    .parameter "requestId"
    .parameter "mediaId"
    .parameter "orientation"
    .parameter "type"
    .parameter "uri"
    .parameter "mime"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 279
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->indexOfRecentThumbnail(I)I

    move-result v1

    .line 280
    .local v1, insertIndex:I
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->getRecentThumbnailAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v2

    .line 281
    .local v2, insertThumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-nez v2, :cond_2

    .line 331
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->unlock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resumeLoading()V

    .line 336
    :cond_1
    return-void

    .line 286
    :cond_2
    if-eqz p7, :cond_5

    .line 287
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->getThumbnailInfo(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v0

    .line 288
    .local v0, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    if-nez v0, :cond_4

    .line 290
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    .end local v0           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;-><init>()V

    .line 291
    .restart local v0       #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iput p2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    .line 292
    iput p3, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    .line 293
    iput-object p5, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    .line 294
    iput-object v5, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    .line 295
    iput p4, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    .line 296
    iput-object p6, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 297
    iput-boolean v4, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    .line 298
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->setMediaInfo(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V

    .line 315
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->addLocalCache(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V

    .line 317
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->completeStoring()V

    .line 319
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    goto :goto_0

    .line 299
    :cond_4
    iget v3, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    if-eq v3, p2, :cond_3

    .line 303
    iput p2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    .line 304
    iput p3, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    .line 305
    iput-object p5, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    .line 306
    iput-object v5, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    .line 307
    iput p4, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    .line 308
    iput-object p6, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 309
    iput-boolean v4, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    .line 310
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->setMediaInfo(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    goto :goto_1

    .line 324
    .end local v0           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->removeThumbnailByRequestId(I)V

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    goto :goto_0
.end method

.method private onPostThumbnailDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;Z)V
    .locals 2
    .parameter "thumbnail"
    .parameter "result"

    .prologue
    .line 650
    if-eqz p2, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->release()V

    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->removeLocalCache(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V

    .line 654
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resume()V

    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->reloadThumbnails(Z)V

    .line 656
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    .line 659
    :cond_0
    monitor-exit p0

    .line 661
    :cond_1
    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeRequeryCallback(Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRequeryCallbackQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private requestLoading(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;)V
    .locals 7
    .parameter "thumbnailMng"
    .parameter "bounds"

    .prologue
    .line 467
    iget v0, p2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    .line 468
    .local v0, head:I
    iget v5, p2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget v6, p2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->getThumbnailCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 469
    .local v3, tail:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v2, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;>;"
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 472
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v4

    .line 473
    .local v4, thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v4, :cond_0

    .line 474
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->startLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    new-instance v5, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;

    invoke-direct {v5, v1, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;-><init>(ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 480
    .end local v4           #thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 481
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->request(Ljava/util/List;)V

    .line 483
    :cond_2
    return-void
.end method

.method private resumeLoading()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resumeLoading(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;)V

    .line 487
    return-void
.end method

.method private resumeLoading(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;)V
    .locals 7
    .parameter "thumbnailMng"

    .prologue
    .line 492
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedIndex()I

    move-result v0

    .line 493
    .local v0, head:I
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedCount()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->getThumbnailCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 494
    .local v3, tail:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v2, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;>;"
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 497
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v4

    .line 498
    .local v4, thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v4, :cond_0

    .line 499
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 503
    new-instance v5, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;

    invoke-direct {v5, v1, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;-><init>(ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 508
    .end local v4           #thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 509
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->request(Ljava/util/List;)V

    .line 511
    :cond_2
    return-void
.end method

.method private startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 577
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 578
    .local v1, resolvedIntent:Landroid/content/Intent;
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 579
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 583
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onLaunchApplication()V

    .line 586
    :cond_0
    return-void
.end method


# virtual methods
.method public add()I
    .locals 3

    .prologue
    .line 196
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->lock()V

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, requestId:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->insertThumbnail()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v1

    .line 200
    .local v1, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getRequestId()I

    move-result v0

    .line 202
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->startStoring()V

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    .line 212
    :cond_1
    return v0
.end method

.method public addComplete(IIIILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 9
    .parameter "requestId"
    .parameter "mediaId"
    .parameter "orientation"
    .parameter "type"
    .parameter "uri"
    .parameter "mime"
    .parameter "success"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    .line 236
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStack;IIIILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 238
    .local v0, task:Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRequeryCallbackQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->requery(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;)V

    .line 240
    return-void
.end method

.method public cancelStoringAnimation()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->cancelStoringAnimation()V

    .line 731
    :cond_0
    return-void
.end method

.method public cancelStoringAnimationAt(I)V
    .locals 1
    .parameter "requestId"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->cancelStoringAnimationAt(I)V

    .line 743
    :cond_0
    return-void
.end method

.method public clearLocalCache()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->clearLocalCache()V

    .line 698
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->closeTray()V

    .line 721
    :cond_0
    return-void
.end method

.method public completePreparationForDialogShowing()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->completePreparationForDialogShowing()V

    .line 684
    return-void
.end method

.method public getRecentThumbnailAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .locals 1
    .parameter "index"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-nez v0, :cond_0

    .line 706
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->IDLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 708
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getState()Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnailAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .locals 3
    .parameter "index"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedIndex()I

    move-result v0

    .line 346
    .local v0, head:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedCount()I

    move-result v2

    add-int v1, v0, v2

    .line 347
    .local v1, tail:I
    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v2

    .line 350
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getThumbnailCount()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mThumbnailCount:I

    return v0
.end method

.method public getVisibleThumbnailCount()I
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mThumbnailCount:I

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public indexOfRecentThumbnail(I)I
    .locals 1
    .parameter "requestId"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->indexOfByRequestId(I)I

    move-result v0

    return v0
.end method

.method public init(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const-string v0, "PhotoStack"

    const-string v1, "init: view is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setTarget(Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setThumbnailSelectListener(Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;)V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    goto :goto_0
.end method

.method public insertThumbnail()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 390
    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mThumbnailCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mThumbnailCount:I

    .line 391
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v5, :cond_0

    .line 392
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->getVisibleThumbnailCount()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onLoadThumbnail(I)V

    .line 396
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->shift()V

    .line 400
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedCount()I

    move-result v0

    .line 401
    .local v0, recentReservedCount:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedIndex()I

    move-result v1

    .line 402
    .local v1, recentReservedHead:I
    add-int v2, v1, v0

    .line 403
    .local v2, recentReservedTail:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    iget v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCount:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v3

    .line 406
    .local v3, recentUpdateBounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v4

    .line 407
    .local v4, topThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-direct {p0, v5, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->requestLoading(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;)V

    .line 409
    return-object v4
.end method

.method public isSeparated()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->getContentMode()Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->isSeparated()Z

    move-result v0

    return v0
.end method

.method public onLoaded(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 2
    .parameter "sender"
    .parameter "index"
    .parameter "thumb"

    .prologue
    .line 515
    if-eqz p3, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$1;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStack;ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_0
    return-void
.end method

.method public onResume(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->reloadThumbnails(Z)V

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    .line 542
    :cond_0
    return-void
.end method

.method public onThumbnailDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStack;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 627
    .local v0, task:Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$AsyncDeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onThumbnailSelect(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 5
    .parameter "thumbnail"

    .prologue
    const/4 v2, 0x1

    .line 546
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getStoringState()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Idle:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    if-ne v3, v4, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 548
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v1

    .line 549
    .local v1, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iget v3, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    if-ne v3, v2, :cond_1

    .line 550
    .local v2, isPhoto:Z
    :goto_0
    iget-object v3, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 562
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .end local v2           #isPhoto:Z
    :cond_0
    :goto_1
    return-void

    .line 549
    .restart local v0       #act:Landroid/app/Activity;
    .restart local v1       #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 553
    .restart local v2       #isPhoto:Z
    :cond_2
    iget-object v3, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    const-string v4, "image/mpo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 554
    iget-object v3, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launch3dPlayer(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 558
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onLaunchApplication()V

    goto :goto_1

    .line 556
    :cond_3
    iget-object v3, v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchView(Landroid/app/Activity;ZLandroid/net/Uri;)V

    goto :goto_2
.end method

.method public onThumbnailShare(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 2
    .parameter "sender"
    .parameter "thumbnail"

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getShareSelectedItem()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 568
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getShareIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->startResolvedActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0
.end method

.method public onThumbnailShareStart(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 8
    .parameter "sender"
    .parameter "thumbnail"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v3

    .line 594
    .local v3, mediaInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iget-object v5, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    .line 597
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 601
    iget-object v6, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 605
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setShareIntent(Landroid/content/Intent;)V

    .line 608
    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 609
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const v6, 0x10040

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 613
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    const-string v7, "image/mpo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 614
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getShareExcludes()[Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, excludeList:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfig;->removeShareExcludes(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 618
    .end local v1           #excludeList:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setShareResolveInfo(Ljava/util/List;)V

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->openTray()V

    .line 715
    :cond_0
    return-void
.end method

.method public pauseLoading()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onLoadThumbnail(I)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resetThumbnails()V

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->pause()V

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    .line 445
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resetThumbnails()V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->pause()V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->release()V

    .line 172
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->pauseLoading()V

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->setupQueryParam(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resume()V

    .line 455
    return-void
.end method

.method public reloadThumbnails(Z)V
    .locals 4
    .parameter "needNotification"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->getMediaCount()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mThumbnailCount:I

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->reset()V

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->resetRequeryTask()V

    .line 420
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->getVisibleThumbnailCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onLoadThumbnail(I)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCount:I

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->requestLoading(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;)V

    .line 426
    return-void
.end method

.method public removeThumbnailByRequestId(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 364
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->indexOfByRequestId(I)I

    move-result v1

    .line 369
    .local v1, recentIndex:I
    if-ltz v1, :cond_0

    .line 370
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->deleteAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v0

    .line 371
    .local v0, bounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    iget v2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    if-lez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedIndex()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->getReservedCount()I

    move-result v4

    iget v5, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;->mCount:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->reserve(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;

    .line 377
    .end local v0           #bounds:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$ThumbnailIndexBounds;
    :cond_0
    monitor-exit p0

    .line 378
    return-void

    .line 377
    .end local v1           #recentIndex:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resetThumbnails()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mThumbnailCount:I

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mRecentThumbnailCache:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;->reset()V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->resetRequeryTask()V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    .line 183
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->reload()V

    .line 459
    return-void
.end method

.method public setContentMode(Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;)V
    .locals 1
    .parameter "contentMode"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->setContentMode(Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;)V

    .line 702
    return-void
.end method

.method public setPhotoStackStateListener(Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setPhotoStackStateListener(Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;)V

    .line 679
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    .line 680
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setSensorOrientation(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    if-nez v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 669
    :cond_0
    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSecurityLevel(Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;)V
    .locals 1
    .parameter "securityLevel"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->mPhotoStackLoader:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->updateSecurityLevel(Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;)V

    .line 692
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->pauseLoading()V

    .line 693
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resume()V

    .line 694
    return-void
.end method
