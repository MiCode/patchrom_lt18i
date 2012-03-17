.class public Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Thumbnail"


# instance fields
.field public final mCriticalSection:Ljava/lang/Object;

.field public mImage:Landroid/graphics/Bitmap;

.field public mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

.field public mIsLoading:Z

.field public final mRequestID:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "reqId"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    .line 41
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mRequestID:I

    .line 42
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 43
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mIsLoading:Z

    .line 46
    return-void
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mIsLoading:Z

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

.method public completeLoading(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mIsLoading:Z

    if-nez v0, :cond_1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_0
    monitor-exit v1

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mIsLoading:Z

    .line 102
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    .line 123
    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mImage:Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestID()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mRequestID:I

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mIsLoading:Z

    monitor-exit v1

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInfo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoading()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mCriticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mIsLoading:Z

    if-eqz v2, :cond_0

    .line 73
    const/4 v0, 0x0

    monitor-exit v1

    .line 78
    :goto_0
    return v0

    .line 75
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;->mIsLoading:Z

    .line 78
    monitor-exit v1

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
