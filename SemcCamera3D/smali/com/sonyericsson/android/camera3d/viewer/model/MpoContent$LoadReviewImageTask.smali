.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;
.super Ljava/lang/Object;
.source "MpoContent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadReviewImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mCanceled:Z

.field final mId:I

.field final mProviderAccessRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;",
            ">;"
        }
    .end annotation
.end field

.field mResult:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(ILcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;)V
    .locals 1
    .parameter "id"
    .parameter "providerAccess"

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mId:I

    .line 304
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mProviderAccessRef:Ljava/lang/ref/WeakReference;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mCanceled:Z

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mResult:Landroid/graphics/Bitmap;

    .line 307
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :try_start_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 315
    const/4 v3, 0x0

    monitor-exit p0

    .line 346
    :goto_0
    return-object v3

    .line 317
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mProviderAccessRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    .local v2, provider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    if-eqz v2, :cond_1

    .line 322
    :try_start_3
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mId:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->getMiniThumbnail(I)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 329
    :cond_1
    :goto_1
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 330
    :try_start_5
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mCanceled:Z

    if-eqz v3, :cond_3

    .line 335
    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 346
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #provider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    :goto_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mResult:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "MpoContent"

    const-string v4, "Could not create the bitmap for Review."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 323
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #provider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    :catch_1
    move-exception v1

    .line 324
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :try_start_8
    const-string v3, "MpoContent"

    const-string v4, "Can\'t create a thumbnail. Bacause OutOfMemoryError occurred."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 340
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    :try_start_9
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mResult:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 342
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 354
    monitor-enter p0

    .line 355
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mCanceled:Z

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mResult:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mResult:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$LoadReviewImageTask;->mResult:Landroid/graphics/Bitmap;

    .line 360
    :cond_0
    monitor-exit p0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
