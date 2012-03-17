.class public Lcom/sonyericsson/android/camera3d/util/Yuv420Conventer;
.super Ljava/lang/Object;
.source "Yuv420Conventer.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "Yuv420"

    sput-object v0, Lcom/sonyericsson/android/camera3d/util/Yuv420Conventer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNv12ToNv21([BI)[B
    .locals 8
    .parameter "yuvData"
    .parameter "length"

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 90
    :cond_0
    return-object p0

    .line 77
    :cond_1
    int-to-float v6, p1

    const/high16 v7, 0x3fc0

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 78
    .local v4, uvAreaPos:I
    div-int/lit8 v5, v4, 0x4

    .line 81
    .local v5, vSampleCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 82
    mul-int/lit8 v6, v2, 0x2

    add-int v1, v4, v6

    .line 83
    .local v1, firstSamplePos:I
    add-int/lit8 v3, v1, 0x1

    .line 85
    .local v3, secondSamplePos:I
    aget-byte v0, p0, v1

    .line 86
    .local v0, buffer:B
    aget-byte v6, p0, v3

    aput-byte v6, p0, v1

    .line 87
    aput-byte v0, p0, v3

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static convertNv12ToNv21([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;)[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .locals 9
    .parameter "yuvOutBufferArray"

    .prologue
    const/4 v8, 0x0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 38
    .local v1, start:J
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v6

    aget-object v7, p0, v8

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera3d/WorkArea;->lock(I)[B

    move-result-object v5

    .line 40
    .local v5, workArea:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 46
    .local v3, startEachArray:J
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    invoke-static {v6, v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->convertNativeByteArrayToByteArray(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;[B)[B

    .line 47
    aget-object v6, p0, v0

    iget v6, v6, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/Yuv420Conventer;->convertNv12ToNv21([BI)[B

    .line 48
    aget-object v6, p0, v0

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    aget-object v7, p0, v0

    iget v7, v7, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    invoke-virtual {v6, v8, v5, v7}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->writeTo(I[BI)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v3           #startEachArray:J
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/WorkArea;->unlock()V

    .line 59
    return-object p0
.end method
