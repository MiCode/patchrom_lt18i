.class public Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnail"
.end annotation


# instance fields
.field private mAlive:Z

.field private mImage:Landroid/graphics/Bitmap;

.field private mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

.field private mIsLoading:Z

.field private final mRequestId:I

.field private mStoringState:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .parameter "reqId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->setMediaInfo(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    iput v4, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    iput-object v3, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    iput-object v3, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    iput v2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    iput v2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mWidth:I

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    iput v2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mHeight:I

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    iput-boolean v2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    .line 436
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mRequestId:I

    .line 437
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->setImage(Landroid/graphics/Bitmap;)V

    .line 438
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mIsLoading:Z

    .line 439
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Idle:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mStoringState:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    .line 440
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mAlive:Z

    .line 442
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 418
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mRequestId:I

    return v0
.end method

.method private declared-synchronized setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelLoading()V
    .locals 1

    .prologue
    .line 522
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized completeLoading(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 506
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 510
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mAlive:Z

    if-eqz v1, :cond_1

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mIsLoading:Z

    .line 514
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    const/4 v0, 0x1

    .line 517
    :cond_1
    monitor-exit p0

    return v0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized completeStoring()V
    .locals 1

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Done:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mStoringState:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copy(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)Z
    .locals 4
    .parameter "thumbnail"

    .prologue
    const/4 v1, 0x0

    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->getSnapShot()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v0

    .line 446
    .local v0, myInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :goto_0
    monitor-exit p0

    return v1

    .line 450
    :cond_1
    :try_start_2
    iget-object v1, p1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    iget-object v1, p1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 453
    :cond_2
    iput-object v0, p1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    .line 454
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    .line 455
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mIsLoading:Z

    .line 456
    sget-object v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Idle:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mStoringState:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    .line 457
    monitor-exit p1

    .line 460
    const/4 v1, 0x1

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 445
    .end local v0           #myInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mAlive:Z

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :cond_0
    monitor-exit p0

    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .locals 1

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->getSnapShot()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mRequestId:I

    return v0
.end method

.method public declared-synchronized getStoringState()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
    .locals 1

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mStoringState:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAlive()Z
    .locals 1

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetStoringState()V
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Idle:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mStoringState:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMediaInfo(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLoading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 496
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 502
    :goto_0
    monitor-exit p0

    return v0

    .line 499
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mIsLoading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startStoring()V
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Doing:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->mStoringState:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
