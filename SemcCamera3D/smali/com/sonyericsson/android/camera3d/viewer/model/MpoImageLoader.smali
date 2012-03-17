.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;
.super Ljava/lang/Object;
.source "MpoImageLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoImageLoader"


# instance fields
.field private final mComputeSampleStrategy:Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mIsReleased:Z

.field private final mMpo:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter "mpo"
    .parameter "executor"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mIsReleased:Z

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mComputeSampleStrategy:Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mMpo:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mIsReleased:Z

    return v0
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mMpo:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mMpo:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->getCount()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepresentativeIndex()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mMpo:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->getRepresentativeIndex()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mMpo:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v0

    return-object v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mIsReleased:Z

    return v0
.end method

.method protected loadImage(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "holder"
    .parameter "index"

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 129
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mMpo:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->get(I)[B

    move-result-object v3

    .line 130
    .local v3, compressedData:[B
    if-nez v3, :cond_0

    move-object v2, v7

    .line 188
    :goto_0
    return-object v2

    .line 135
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 136
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    sget-object v8, Lcom/sonyericsson/android/camera3d/viewer/Constants;->BITMAP_PIXELFORMAT:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 138
    const/4 v6, 0x0

    .line 140
    .local v6, temp:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    :try_start_0
    array-length v9, v3

    invoke-static {v3, v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 149
    if-eqz v6, :cond_1

    .line 150
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_1
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v8, v11, :cond_2

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v8, v11, :cond_5

    :cond_2
    move-object v2, v7

    .line 156
    goto :goto_0

    .line 145
    :catch_0
    move-exception v4

    .line 149
    .local v4, e:Ljava/lang/OutOfMemoryError;
    if-eqz v6, :cond_3

    .line 150
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v2, v7

    goto :goto_0

    .line 149
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_4

    .line 150
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    throw v7

    .line 158
    :cond_5
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 159
    .local v1, baseWidth:I
    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 162
    .local v0, baseHeight:I
    const/4 v2, 0x0

    .line 163
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 165
    sget-object v8, Lcom/sonyericsson/android/camera3d/viewer/Constants;->BITMAP_PIXELFORMAT:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 166
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mComputeSampleStrategy:Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;

    array-length v9, v3

    invoke-virtual {v8, v9, v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;->computeSample(III)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 170
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gtz v8, :cond_6

    move-object v2, v7

    .line 171
    goto :goto_0

    .line 174
    :cond_6
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v3

    invoke-static {v3, v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 183
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mIsReleased:Z

    .line 88
    :cond_0
    return-void
.end method

.method public startLoading(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;I)Z
    .locals 3
    .parameter "holder"
    .parameter "index"

    .prologue
    .line 96
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mIsReleased:Z

    if-nez v2, :cond_0

    .line 98
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;I)V

    .line 112
    .local v0, command:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 114
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$2;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$DestroyListener;)V

    .line 120
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    const/4 v2, 0x1

    .line 123
    .end local v0           #command:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .end local v1           #task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
