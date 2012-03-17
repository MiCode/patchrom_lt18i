.class public Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;
.super Ljava/lang/Object;
.source "MpoFileAccessGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MpoFile"
.end annotation


# instance fields
.field private final mCount:I

.field private final mFilename:Ljava/lang/String;

.field private final mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

.field private final mRepresentativeIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mFilename:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->openMpoFile(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/mpo/MpoReader;

    move-result-object v0

    .line 47
    .local v0, mpoReader:Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getExtractJpegNum()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mCount:I

    .line 48
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getRepresentativeImageIndex()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mRepresentativeIndex:I

    .line 49
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$1;->$SwitchMap$com$sonyericsson$android$camera3d$mpo$MpoType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getMpoType()Lcom/sonyericsson/android/camera3d/mpo/MpoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/mpo/MpoType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 57
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V

    .line 62
    return-void

    .line 51
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V

    throw v1

    .line 54
    :pswitch_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public get(I)[B
    .locals 6
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 65
    const/4 v3, 0x0

    .line 69
    .local v3, mpoReader:Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mFilename:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->openMpoFile(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 79
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getJpegDataLength(I)I

    move-result v2

    .line 80
    .local v2, length:I
    new-array v0, v2, [B

    .line 81
    .local v0, compressedData:[B
    invoke-virtual {v3, p1, v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getJpegData(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :try_start_2
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V

    monitor-exit v5

    .end local v0           #compressedData:[B
    .end local v2           #length:I
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    monitor-exit v5

    goto :goto_0

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 73
    :catch_1
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 84
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v4

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mCount:I

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    return-object v0
.end method

.method public getRepresentativeIndex()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->mRepresentativeIndex:I

    return v0
.end method
