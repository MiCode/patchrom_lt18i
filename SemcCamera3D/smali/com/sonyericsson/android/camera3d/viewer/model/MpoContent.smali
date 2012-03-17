.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
.super Ljava/lang/Object;
.source "MpoContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;,
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;,
        Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;
    }
.end annotation


# static fields
.field private static final LOAD_THUMBNAIL_TIMEOUT:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "MpoContent"


# instance fields
.field private final mDelayOfLoading:J

.field private final mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

.field private final mIndex:I

.field private final mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

.field private final mLoadMpoImageExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLoadReviewImageExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

.field private mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewImage:Landroid/graphics/Bitmap;

.field private mScrollable:Z

.field private mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(ILcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;J)V
    .locals 1
    .parameter "index"
    .parameter "info"
    .parameter "provider"
    .parameter "providerAccess"
    .parameter "imageBank"
    .parameter "taskScheduler"
    .parameter "loadReviewExecutor"
    .parameter "decodeExecutor"
    .parameter "delayOfLoading"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p6, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 133
    iput-object p7, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mLoadReviewImageExecutor:Ljava/util/concurrent/ExecutorService;

    .line 134
    iput-object p8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mLoadMpoImageExecutor:Ljava/util/concurrent/ExecutorService;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mHandler:Landroid/os/Handler;

    .line 136
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mIndex:I

    .line 137
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 138
    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mScrollable:Z

    .line 140
    iput-wide p9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mDelayOfLoading:J

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadReviewImage()V

    .line 143
    invoke-virtual {p0, p3, p5}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadMpoImages(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;)V

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->startSearchRelativeMedia()V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;J)V
    .locals 1
    .parameter "info"
    .parameter "fileAccess"
    .parameter "providerAccess"
    .parameter "imageBank"
    .parameter "taskScheduler"
    .parameter "loadReviewImageExecutor"
    .parameter "loadMpoImageExecutor"
    .parameter "delayOfLoading"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 108
    iput-object p6, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mLoadReviewImageExecutor:Ljava/util/concurrent/ExecutorService;

    .line 109
    iput-object p7, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mLoadMpoImageExecutor:Ljava/util/concurrent/ExecutorService;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mHandler:Landroid/os/Handler;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mIndex:I

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    .line 114
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mScrollable:Z

    .line 116
    iput-wide p8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mDelayOfLoading:J

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadReviewImage()V

    .line 118
    invoke-virtual {p0, p2, p4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->reloadMpoImages(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;)V

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->startSearchRelativeMedia()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->onCompleteSearchRelativeMedia(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V

    return-void
.end method

.method private deleteTargetMpoFileAndRelatedFile(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Z
    .locals 15
    .parameter "database"
    .parameter "fileType"

    .prologue
    .line 433
    iget-object v13, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->getRepresentativeJpegFilename(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Ljava/lang/String;

    move-result-object v12

    .line 437
    .local v12, reviewFileName:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 439
    new-instance v4, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v12}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Ljava/lang/String;)V

    .line 440
    .local v4, jpgTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 441
    .local v5, jpgThread:Ljava/lang/Thread;
    const/16 v13, 0xa

    invoke-virtual {v5, v13}, Ljava/lang/Thread;->setPriority(I)V

    .line 442
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 446
    const-wide/16 v13, 0xbb8

    :try_start_0
    invoke-virtual {v5, v13, v14}, Ljava/lang/Thread;->join(J)V

    .line 447
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;->getResult()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 452
    .local v3, jpgRet:I
    :goto_0
    if-gez v3, :cond_0

    .line 454
    const/4 v13, 0x0

    .line 522
    .end local v3           #jpgRet:I
    .end local v4           #jpgTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;
    .end local v5           #jpgThread:Ljava/lang/Thread;
    :goto_1
    return v13

    .line 448
    .restart local v4       #jpgTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;
    .restart local v5       #jpgThread:Ljava/lang/Thread;
    :catch_0
    move-exception v2

    .line 449
    .local v2, e:Ljava/lang/InterruptedException;
    const/4 v3, 0x0

    .restart local v3       #jpgRet:I
    goto :goto_0

    .line 455
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_0
    if-nez v3, :cond_1

    .line 458
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v11, reviewFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 460
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_1

    .line 482
    .end local v3           #jpgRet:I
    .end local v4           #jpgTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteJpgRecordTask;
    .end local v5           #jpgThread:Ljava/lang/Thread;
    .end local v11           #reviewFile:Ljava/io/File;
    :cond_1
    iget-object v13, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget v13, v13, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 484
    new-instance v7, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;

    iget-object v13, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->getUri(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v13}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Landroid/net/Uri;)V

    .line 487
    .local v7, mpoTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 488
    .local v8, mpoThread:Ljava/lang/Thread;
    const/16 v13, 0xa

    invoke-virtual {v8, v13}, Ljava/lang/Thread;->setPriority(I)V

    .line 489
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 494
    const-wide/16 v13, 0xbb8

    :try_start_1
    invoke-virtual {v8, v13, v14}, Ljava/lang/Thread;->join(J)V

    .line 495
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;->getResult()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 500
    .local v1, delMpo:Z
    :goto_2
    if-nez v1, :cond_2

    .line 510
    .end local v1           #delMpo:Z
    .end local v7           #mpoTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;
    .end local v8           #mpoThread:Ljava/lang/Thread;
    :cond_2
    iget-object v13, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->getMpoFilename(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Ljava/lang/String;

    move-result-object v9

    .line 511
    .local v9, path:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 512
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v6, mpoFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 515
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v10

    .line 516
    .local v10, ret:Z
    if-nez v10, :cond_3

    .line 518
    const/4 v13, 0x0

    goto :goto_1

    .line 496
    .end local v6           #mpoFile:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #ret:Z
    .restart local v7       #mpoTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;
    .restart local v8       #mpoThread:Ljava/lang/Thread;
    :catch_1
    move-exception v2

    .line 497
    .restart local v2       #e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .restart local v1       #delMpo:Z
    goto :goto_2

    .line 522
    .end local v1           #delMpo:Z
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v7           #mpoTask:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$DeleteMpoRecordTask;
    .end local v8           #mpoThread:Ljava/lang/Thread;
    .restart local v9       #path:Ljava/lang/String;
    :cond_3
    const/4 v13, 0x1

    goto :goto_1
.end method

.method private onCompleteSearchRelativeMedia(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V
    .locals 2
    .parameter "current"
    .parameter "relative"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$3;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void
.end method

.method private startSearchRelativeMedia()V
    .locals 5

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    .line 575
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mDelayOfLoading:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 589
    return-void
.end method


# virtual methods
.method public delete(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Z)Z
    .locals 3
    .parameter "database"
    .parameter "delFlag"

    .prologue
    .line 408
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 412
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->RELATED_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->deleteTargetMpoFileAndRelatedFile(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Z

    move-result v0

    .line 416
    .local v0, retRelated:Z
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->deleteTargetMpoFileAndRelatedFile(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Z

    move-result v1

    .line 423
    .end local v0           #retRelated:Z
    .local v1, retTarget:Z
    :goto_0
    return v1

    .line 422
    .end local v1           #retTarget:Z
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->deleteTargetMpoFileAndRelatedFile(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Z

    move-result v1

    .line 423
    .restart local v1       #retTarget:Z
    goto :goto_0
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public getImageCache()Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mIndex:I

    return v0
.end method

.method public getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    return-object v0
.end method

.method public getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getReviewImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isBroken()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 159
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    if-nez v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v0

    .line 167
    .local v0, holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isBroken()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v0           #holder:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    if-eqz v3, :cond_0

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v1

    .line 178
    .local v1, image:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    .end local v0           #i:I
    .end local v1           #image:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_0
    :goto_1
    return v2

    .line 176
    .restart local v0       #i:I
    .restart local v1       #image:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v1           #image:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isMultiAngle()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorana3d()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mScrollable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mSearchRelativeMediaTask:Ljava/util/concurrent/FutureTask;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->releaseReviewImage()V

    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->releaseMpoImages()V

    .line 228
    return-void
.end method

.method public releaseMpoImages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 240
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->release()V

    .line 244
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    .line 246
    :cond_1
    return-void
.end method

.method public releaseReviewImage()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    .line 235
    :cond_0
    return-void
.end method

.method public reloadMpoImages(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;)V
    .locals 9
    .parameter "fileAccess"
    .parameter "imageBank"

    .prologue
    const/4 v6, 0x0

    .line 366
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->release()V

    .line 368
    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    if-eqz v4, :cond_1

    .line 371
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 372
    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    .line 374
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mData:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;->open(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    move-result-object v3

    .line 375
    .local v3, mpoFile:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;
    if-eqz v3, :cond_2

    .line 376
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mLoadMpoImageExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;Ljava/util/concurrent/ExecutorService;)V

    .line 377
    .local v2, loader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;
    new-instance v4, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->newClient()Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    .line 378
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->getRepresentativeIndex()I

    move-result v0

    .line 379
    .local v0, center:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 383
    .local v1, count:I
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;II)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    .line 398
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mTaskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReloadMpoImageTask:Ljava/util/concurrent/FutureTask;

    iget-wide v6, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mDelayOfLoading:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 402
    .end local v0           #center:I
    .end local v1           #count:I
    .end local v2           #loader:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;
    :goto_0
    return-void

    .line 400
    :cond_2
    new-instance v4, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    invoke-direct {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mImageCache:Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    goto :goto_0
.end method

.method public reloadReviewImage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 249
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 250
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    .line 252
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mScrollable:Z

    .line 256
    :cond_0
    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mId:I

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;-><init>(ILcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;)V

    .line 259
    .local v3, task:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mLoadReviewImageExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 261
    .local v2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/graphics/Bitmap;>;"
    const-wide/16 v4, 0xbb8

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 280
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->cancel()V

    .line 288
    :cond_1
    :goto_1
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Ljava/util/concurrent/TimeoutException;
    invoke-interface {v2, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 283
    .end local v1           #e:Ljava/util/concurrent/TimeoutException;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 284
    .local v0, aspect:F
    const v4, 0x3ff05b06

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 285
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mScrollable:Z

    goto :goto_1

    .line 265
    .end local v0           #aspect:F
    :catch_1
    move-exception v4

    goto :goto_0

    .line 262
    :catch_2
    move-exception v4

    goto :goto_0
.end method
