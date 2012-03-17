.class public Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;
.super Ljava/lang/Object;
.source "ImageBank.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$1;,
        Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;


# instance fields
.field private mClient:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->mInstance:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->mClient:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->store(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;ILandroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->restore(ILandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->delete(I)V

    return-void
.end method

.method private native delete(I)V
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->mInstance:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;

    return-object v0
.end method

.method private native getTotalBytes()I
.end method

.method private native restore(ILandroid/graphics/Bitmap;)Z
.end method

.method private native store(Landroid/graphics/Bitmap;)I
.end method


# virtual methods
.method public native clear()V
.end method

.method public getBytes()I
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->getTotalBytes()I

    move-result v0

    monitor-exit p0

    return v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newClient()Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->mClient:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->mClient:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;->dettach()V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->clear()V

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->mClient:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->mClient:Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank$ImageBankClient;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/ImageBank;->clear()V

    .line 115
    return-void
.end method
