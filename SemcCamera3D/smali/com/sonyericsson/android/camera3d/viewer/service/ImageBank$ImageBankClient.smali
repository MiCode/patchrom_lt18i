.class public Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;
.super Ljava/lang/Object;
.source "ImageBank.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageBankClient"
.end annotation


# instance fields
.field private mIsDettached:Z

.field private final mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;)V
    .locals 1
    .parameter "server"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mIsDettached:Z

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;)V

    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mIsDettached:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    monitor-exit v1

    .line 110
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->delete(I)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->access$300(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;I)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dettach()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mIsDettached:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mIsDettached:Z

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->clear()V

    .line 80
    :cond_0
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restore(ILandroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "i"
    .parameter "bitmap"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mIsDettached:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    monitor-exit v1

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->restore(ILandroid/graphics/Bitmap;)Z
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->access$200(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;ILandroid/graphics/Bitmap;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public store(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mIsDettached:Z

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, -0x1

    monitor-exit v1

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->mServer:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->store(Landroid/graphics/Bitmap;)I
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Landroid/graphics/Bitmap;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
