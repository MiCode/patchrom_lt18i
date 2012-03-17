.class public Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
.super Ljava/lang/Object;
.source "MpoReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/mpo/MpoReader$OpenMpoFileTask;,
        Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException;
    }
.end annotation


# instance fields
.field private final mCppObjId:J

.field private mIsClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "mpo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .parameter "cppObjId"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mCppObjId:J

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z

    .line 111
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_openMpoFile(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private native native_getExtractJpegNum()I
.end method

.method private native native_getJpegDataLength(I)I
.end method

.method private native native_getMpoType()Lcom/sonyericsson/android/camera3d/mpo/MpoType;
.end method

.method private native native_getRepresentativeImageIndex()I
.end method

.method private static native native_openMpoFile(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException;
        }
    .end annotation
.end method

.method public static openMpoFile(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
    .locals 6
    .parameter "mpoFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 89
    .local v1, openMpoExectorService:Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lcom/sonyericsson/android/camera3d/mpo/MpoReader$OpenMpoFileTask;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader$OpenMpoFileTask;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 92
    .local v2, result:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Long;>;"
    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 95
    .local v0, cppObjId:Ljava/lang/Long;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 97
    new-instance v3, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;-><init>(J)V

    return-object v3
.end method


# virtual methods
.method public declared-synchronized closeMpoFile()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 188
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z

    if-ne v0, v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_closeMpoFile()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getExtractJpegNum()I
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_getExtractJpegNum()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getJpegData(I[B)V
    .locals 2
    .parameter "index"
    .parameter "jpegData"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_getJpegData(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getJpegDataLength(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_getJpegDataLength(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getMpoType()Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_getMpoType()Lcom/sonyericsson/android/camera3d/mpo/MpoType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getRepresentativeImageIndex()I
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->mIsClosed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 148
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_getRepresentativeImageIndex()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public native native_closeMpoFile()V
.end method

.method public native native_getJpegData(I[B)V
.end method
