.class public Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;
.super Ljava/lang/Object;
.source "ComputeDecodingSampleStrategy.java"


# static fields
.field private static final DECODING_BITMAP_MINIMUM:I = 0x100000

.field private static final DECODING_MEMORY_LIMIT:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "ComputeDecodingSampleStrategy"


# instance fields
.field private final mByteRaye:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants;->PIXELFORMAT_TO_BYTES:Ljava/util/Map;

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/Constants;->BITMAP_PIXELFORMAT:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 35
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;->mByteRaye:I

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified format is unknown."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getBytes(III)I
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "sample"

    .prologue
    .line 63
    div-int v0, p1, p3

    mul-int/2addr v0, p2

    div-int/2addr v0, p3

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;->mByteRaye:I

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public computeSample(III)I
    .locals 5
    .parameter "filesize"
    .parameter "baseWidth"
    .parameter "baseHeight"

    .prologue
    .line 43
    move v3, p2

    .line 44
    .local v3, width:I
    move v0, p3

    .line 45
    .local v0, height:I
    const/high16 v4, 0x80

    sub-int/2addr v4, p1

    div-int/lit8 v1, v4, 0x2

    .line 46
    .local v1, limit:I
    const/high16 v4, 0x10

    if-ge v1, v4, :cond_1

    .line 47
    const/4 v2, 0x0

    .line 59
    :cond_0
    return v2

    .line 54
    :cond_1
    const/4 v2, 0x1

    .line 55
    .local v2, sample:I
    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ComputeDecodingSampleStrategy;->getBytes(III)I

    move-result v4

    if-le v4, v1, :cond_0

    .line 56
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method
