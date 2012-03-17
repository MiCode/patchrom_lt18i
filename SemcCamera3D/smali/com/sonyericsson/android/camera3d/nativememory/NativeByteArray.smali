.class public Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
.super Ljava/lang/Object;
.source "NativeByteArray.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLength:I

.field private final mMemoryHandle:J

.field private mReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->$assertionsDisabled:Z

    .line 34
    const-string v0, "nativebytearray"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JI)V
    .locals 0
    .parameter "memoryHandle"
    .parameter "length"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mMemoryHandle:J

    .line 66
    iput p3, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mLength:I

    .line 67
    return-void
.end method

.method private static native alloc(I)J
.end method

.method private static native free(J)V
.end method

.method public static declared-synchronized newInstance(I)Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    .locals 6
    .parameter "length"

    .prologue
    .line 75
    const-class v3, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    monitor-enter v3

    if-gtz p0, :cond_0

    .line 76
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "length should be the positive value.\n"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 79
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->alloc(I)J

    move-result-wide v0

    .line 80
    .local v0, memoryHandle:J
    sget-boolean v2, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 81
    :cond_1
    new-instance v2, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-direct {v2, v0, v1, p0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;-><init>(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method private static native read(J[BI)V
.end method

.method private static native write(JI[BI)V
.end method


# virtual methods
.method public declared-synchronized getLength()I
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mReleased:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object is already released.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getMemoryHandle()J
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mReleased:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object is already released.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mMemoryHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized readFrom([B)V
    .locals 3
    .parameter "dst"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mReleased:Z

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This object is already released.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 176
    :cond_0
    :try_start_1
    array-length v0, p1

    .line 178
    .local v0, dstLength:I
    iget v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mLength:I

    if-ge v0, v1, :cond_1

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Length of dst is shorter than mLength\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mMemoryHandle:J

    invoke-static {v1, v2, p1, v0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->read(J[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized readFrom([BI)V
    .locals 3
    .parameter "dst"
    .parameter "length"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mReleased:Z

    if-eqz v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This object is already released.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 198
    :cond_0
    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    .line 199
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "length is less than 1.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    array-length v0, p1

    .line 205
    .local v0, dstLength:I
    if-ge v0, p2, :cond_2

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Length of dst is shorter than length\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_2
    iget v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mLength:I

    if-le p2, v1, :cond_3

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "length is larger than mLength.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_3
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mMemoryHandle:J

    invoke-static {v1, v2, p1, p2}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->read(J[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 224
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mMemoryHandle:J

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->free(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, exception:Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    .end local v0           #exception:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeTo(I[B)V
    .locals 1
    .parameter "pos"
    .parameter "src"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->writeTo(I[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(I[BI)V
    .locals 3
    .parameter "pos"
    .parameter "src"
    .parameter "length"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mReleased:Z

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This object is already released.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 139
    :cond_0
    if-gez p1, :cond_1

    .line 140
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pos is less than 0.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    const/4 v1, 0x1

    if-ge p3, v1, :cond_2

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "length is less than 1.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_2
    array-length v0, p2

    .line 150
    .local v0, srcLength:I
    if-le p3, v0, :cond_3

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "length is larger than length of src.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_3
    add-int v1, p1, p3

    iget v2, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mLength:I

    if-le v1, v2, :cond_4

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pos + length is larger than mLength.\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_4
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->mMemoryHandle:J

    invoke-static {v1, v2, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->write(JI[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized writeTo([B)V
    .locals 2
    .parameter "src"

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->writeTo(I[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
