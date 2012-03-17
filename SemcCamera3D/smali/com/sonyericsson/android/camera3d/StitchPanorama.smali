.class public Lcom/sonyericsson/android/camera3d/StitchPanorama;
.super Lcom/sonyericsson/android/camera3d/StitchCommon;
.source "StitchPanorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;
    }
.end annotation


# static fields
.field private static final ERR_COUNTER_MOVING:Ljava/lang/String; = "ERR_COUNTER_MOVING"

.field private static final ERR_ILLEGAL_GMV:Ljava/lang/String; = "ERR_ILLEGAL_GMV"

.field private static final ERR_TIMEOUT:Ljava/lang/String; = "ERR_TIMEOUT"

.field private static final ERR_TOO_NARROW:Ljava/lang/String; = "ERR_TOO_NARROW"

.field private static final ERR_TOO_SHORT:Ljava/lang/String; = "ERR_TOO_SHORT"

.field private static final INF_BUFFER_FULL:Ljava/lang/String; = "INF_BUFFER_FULL"

.field private static final TAG:Ljava/lang/String; = "StitchPanorama"

.field private static final mClippingOffset:I = 0xa0

.field private static final mTrimmingOffset:I = 0xa0


# instance fields
.field private mMaxOutBreadth:I

.field private mMinOutBreadth:I

.field private mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

.field private mOutLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/StitchCommon;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    .line 43
    const/16 v0, 0x1330

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOutLength:I

    .line 46
    const/16 v0, 0x2d4

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMinOutBreadth:I

    .line 47
    const/16 v0, 0x438

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    .line 69
    return-void
.end method

.method private computeImageDataSize(II)I
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    .line 600
    iget v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOutLength:I

    .line 601
    .local v0, outLength:I
    move v1, p2

    .line 603
    .local v1, previewLength:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    sget-object v3, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    if-ne v2, v3, :cond_2

    .line 604
    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    if-nez v2, :cond_1

    .line 605
    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-ne v2, v4, :cond_1

    .line 607
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOutLength:I

    .line 624
    :cond_1
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mPixelDepth:F

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->computeSize(IIF)I

    move-result v2

    return v2

    .line 611
    :cond_2
    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    if-nez v2, :cond_4

    .line 612
    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 614
    :cond_3
    move v1, p1

    goto :goto_0

    .line 616
    :cond_4
    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    if-ne v2, v4, :cond_1

    .line 617
    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-ne v2, v4, :cond_1

    .line 619
    :cond_5
    move v1, p1

    goto :goto_0
.end method

.method private computeSize(IIF)I
    .locals 1
    .parameter "previewLength"
    .parameter "outLength"
    .parameter "pixelDepth"

    .prologue
    .line 628
    mul-int v0, p1, p2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private cropLongSide(Landroid/graphics/Rect;Landroid/hardware/Camera$Size;)V
    .locals 5
    .parameter "area"
    .parameter "previewSize"

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    if-lt v3, v4, :cond_2

    .line 356
    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 357
    .local v0, centeredPictureLeft:I
    iget v3, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    add-int v1, v0, v3

    .line 359
    .local v1, centeredPictureRight:I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v3, :cond_0

    .line 404
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 500
    .local v2, outputLeft:I
    :goto_0
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 501
    iget v3, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 529
    .end local v0           #centeredPictureLeft:I
    .end local v1           #centeredPictureRight:I
    .end local v2           #outputLeft:I
    :goto_1
    return-void

    .line 406
    .restart local v0       #centeredPictureLeft:I
    .restart local v1       #centeredPictureRight:I
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v3, :cond_1

    .line 451
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    sub-int v2, v3, v4

    .restart local v2       #outputLeft:I
    goto :goto_0

    .line 497
    .end local v2           #outputLeft:I
    :cond_1
    move v2, v0

    .restart local v2       #outputLeft:I
    goto :goto_0

    .line 527
    .end local v0           #centeredPictureLeft:I
    .end local v1           #centeredPictureRight:I
    .end local v2           #outputLeft:I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mContainsGrayArea:Z

    goto :goto_1
.end method

.method private cropShortSide(Landroid/graphics/Rect;Landroid/hardware/Camera$Size;)V
    .locals 5
    .parameter "area"
    .parameter "previewSize"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    if-lt v3, v4, :cond_2

    .line 212
    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 213
    .local v1, centeredPictureTop:I
    iget v3, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    add-int v0, v1, v3

    .line 215
    .local v0, centeredPictureBottom:I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v3, :cond_0

    .line 249
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 322
    .local v2, outputTop:I
    :goto_0
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 323
    iget v3, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 344
    .end local v0           #centeredPictureBottom:I
    .end local v1           #centeredPictureTop:I
    .end local v2           #outputTop:I
    :goto_1
    return-void

    .line 251
    .restart local v0       #centeredPictureBottom:I
    .restart local v1       #centeredPictureTop:I
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_1

    .line 285
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    sub-int v2, v3, v4

    .restart local v2       #outputTop:I
    goto :goto_0

    .line 319
    .end local v2           #outputTop:I
    :cond_1
    move v2, v1

    .restart local v2       #outputTop:I
    goto :goto_0

    .line 342
    .end local v0           #centeredPictureBottom:I
    .end local v1           #centeredPictureTop:I
    .end local v2           #outputTop:I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mContainsGrayArea:Z

    goto :goto_1
.end method

.method private cropStitchedImage(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "area"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 181
    .local v0, size:Landroid/hardware/Camera$Size;
    if-nez v0, :cond_0

    .line 182
    const-string v1, "StitchPanorama"

    const-string v2, "preview size == null"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 185
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 186
    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-ne v1, v4, :cond_2

    .line 188
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->cropShortSide(Landroid/graphics/Rect;Landroid/hardware/Camera$Size;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->cropLongSide(Landroid/graphics/Rect;Landroid/hardware/Camera$Size;)V

    goto :goto_0

    .line 193
    :cond_3
    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    if-ne v1, v4, :cond_5

    .line 195
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->cropLongSide(Landroid/graphics/Rect;Landroid/hardware/Camera$Size;)V

    goto :goto_0

    .line 197
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->cropShortSide(Landroid/graphics/Rect;Landroid/hardware/Camera$Size;)V

    goto :goto_0
.end method


# virtual methods
.method public finalizeStitchingEngine()V
    .locals 0

    .prologue
    .line 732
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->finalizeStitchingEngine()V

    .line 733
    return-void
.end method

.method protected getCapturingStatus(Ljava/lang/String;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, result:I
    const-string v1, "INF_BUFFER_FULL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const/4 v0, 0x0

    .line 722
    :goto_0
    return v0

    .line 702
    :cond_0
    const-string v1, "ERR_TIMEOUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    const/4 v0, 0x1

    goto :goto_0

    .line 705
    :cond_1
    const-string v1, "ERR_COUNTER_MOVING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    const/4 v0, 0x2

    goto :goto_0

    .line 708
    :cond_2
    const-string v1, "ERR_TOO_NARROW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    const/4 v0, 0x3

    goto :goto_0

    .line 711
    :cond_3
    const-string v1, "ERR_TOO_SHORT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 712
    const/4 v0, 0x3

    goto :goto_0

    .line 714
    :cond_4
    const-string v1, "ERR_ILLEGAL_GMV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 715
    const/4 v0, 0x4

    goto :goto_0

    .line 718
    :cond_5
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getStitchedPercentage()F
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/sonyericsson/android/camera3d/engine/panorama/PanoramaEngine;->getStitchedPercentage()D

    move-result-wide v0

    .line 90
    .local v0, r:D
    double-to-float v2, v0

    return v2
.end method

.method public initialize(II)Z
    .locals 10
    .parameter "pictureWidth"
    .parameter "pictureHeight"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->initialize(II)Z

    move-result v9

    .line 99
    .local v9, result:Z
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 100
    .local v7, size:Landroid/hardware/Camera$Size;
    if-eqz v7, :cond_0

    .line 101
    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    iget v2, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->computeImageDataSize(II)I

    move-result v1

    .line 104
    .local v1, imageSize:I
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    sget-object v2, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    if-ne v0, v2, :cond_1

    .line 106
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mPixelDepth:F

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    iget v6, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    sget-object v8, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->createOutBuffers(IFIIIILandroid/hardware/Camera$Size;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)V

    .line 115
    .end local v1           #imageSize:I
    :cond_0
    :goto_0
    return v9

    .line 110
    .restart local v1       #imageSize:I
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mPixelDepth:F

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    iget v6, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    sget-object v8, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->createOutBuffers(IFIIIILandroid/hardware/Camera$Size;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)V

    goto :goto_0
.end method

.method public popResultBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getAllOutBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v0

    return-object v0
.end method

.method protected putImageYUV(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
    .locals 3
    .parameter "inputData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/engine/panorama/PanoramaEngine;->putImageYuv420Sp(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mPutImageCallback:Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->getMemoryHandle()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;->onProcessFinished(J)V

    .line 536
    return-void
.end method

.method protected setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 549
    packed-switch p1, :pswitch_data_0

    .line 563
    iput v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    .line 566
    :goto_0
    return-void

    .line 551
    :pswitch_0
    iput v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    goto :goto_0

    .line 554
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    if-ne v0, v1, :cond_0

    .line 555
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    goto :goto_0

    .line 558
    :cond_0
    iput v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setResolution(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 540
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setResolution(II)V

    .line 541
    iput p1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOutLength:I

    .line 542
    iput p2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMaxOutBreadth:I

    .line 543
    return-void
.end method

.method protected setSweepDirection(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setSweepDirection(I)V

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    if-ne v0, v1, :cond_1

    .line 574
    iget v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    if-ne v0, v3, :cond_0

    .line 575
    packed-switch p1, :pswitch_data_0

    .line 597
    :goto_0
    return-void

    .line 577
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    goto :goto_0

    .line 580
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    goto :goto_0

    .line 583
    :pswitch_2
    iput v3, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    goto :goto_0

    .line 586
    :pswitch_3
    iput v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    goto :goto_0

    .line 592
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    goto :goto_0

    .line 595
    :cond_1
    iput v2, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setupStitchingEngine()V
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOutLength:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMinOutBreadth:I

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->initialize(II)Z

    .line 728
    return-void
.end method

.method public start(IIII)V
    .locals 15
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "direction"

    .prologue
    .line 636
    invoke-super/range {p0 .. p4}, Lcom/sonyericsson/android/camera3d/StitchCommon;->start(IIII)V

    .line 638
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->setOrientation(I)V

    .line 639
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->setSweepDirection(I)V

    .line 640
    invoke-virtual/range {p0 .. p2}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->setResolution(II)V

    .line 642
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 643
    .local v11, size:Landroid/hardware/Camera$Size;
    if-eqz v11, :cond_0

    .line 649
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    sget-object v2, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    if-ne v1, v2, :cond_2

    .line 650
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getOutBuffer(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v12

    .line 652
    .local v12, yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    const/4 v1, 0x0

    aget-object v13, v12, v1

    .line 653
    .local v13, yuvLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    const/4 v1, 0x1

    aget-object v14, v12, v1

    .line 655
    .local v14, yuvRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    if-eqz v13, :cond_0

    if-nez v14, :cond_1

    .line 692
    .end local v12           #yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .end local v13           #yuvLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .end local v14           #yuvRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :cond_0
    :goto_0
    return-void

    .line 661
    .restart local v12       #yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .restart local v13       #yuvLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .restart local v14       #yuvRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :cond_1
    iget-object v1, v13, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    iget-object v2, v14, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    iget v3, v11, Landroid/hardware/Camera$Size;->width:I

    iget v4, v11, Landroid/hardware/Camera$Size;->height:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOutLength:I

    iget v6, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMinOutBreadth:I

    iget v7, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    iget v8, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    const/16 v9, 0xa0

    const/16 v10, 0xa0

    invoke-static/range {v1 .. v10}, Lcom/sonyericsson/android/camera3d/engine/panorama/PanoramaEngine;->startPanorama3d(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;IIIIIIII)V

    goto :goto_0

    .line 673
    .end local v12           #yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .end local v13           #yuvLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .end local v14           #yuvRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getOutBuffer(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v12

    .line 675
    .restart local v12       #yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    const/4 v1, 0x0

    aget-object v13, v12, v1

    .line 677
    .restart local v13       #yuvLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    if-eqz v13, :cond_0

    .line 682
    iget-object v1, v13, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    iget v2, v11, Landroid/hardware/Camera$Size;->width:I

    iget v3, v11, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOutLength:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMinOutBreadth:I

    iget v6, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mOrientation:I

    iget v7, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mDirection:I

    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/engine/panorama/PanoramaEngine;->startPanorama2d(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;IIIIII)V

    goto :goto_0
.end method

.method public stop()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->stop()Z

    move-result v6

    if-nez v6, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v4

    .line 125
    :cond_1
    const/4 v1, 0x0

    .line 126
    .local v1, yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/StitchPanorama;->mMode:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    sget-object v7, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    if-ne v6, v7, :cond_2

    .line 128
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getOutBuffer(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v1

    .line 130
    aget-object v6, v1, v4

    if-eqz v6, :cond_0

    aget-object v6, v1, v5

    if-eqz v6, :cond_0

    .line 134
    aget-object v4, v1, v4

    iget-object v2, v4, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    .line 135
    .local v2, yuvLeft:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    aget-object v4, v1, v5

    iget-object v3, v4, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    .line 137
    .local v3, yuvRight:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    :try_start_0
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/engine/panorama/PanoramaEngine;->stopPanorama3d(Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;)V
    :try_end_0
    .catch Lcom/sonyericsson/android/camera3d/engine/common/StitchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :goto_1
    iget-object v4, v2, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->cropStitchedImage(Landroid/graphics/Rect;)V

    .line 147
    iget-object v4, v3, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->cropStitchedImage(Landroid/graphics/Rect;)V

    .end local v2           #yuvLeft:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    .end local v3           #yuvRight:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    :goto_2
    move v4, v5

    .line 170
    goto :goto_0

    .line 151
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getOutBuffer(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v1

    .line 153
    aget-object v6, v1, v4

    if-eqz v6, :cond_0

    .line 156
    aget-object v4, v1, v4

    iget-object v0, v4, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    .line 158
    .local v0, yuv:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    :try_start_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/engine/panorama/PanoramaEngine;->stopPanorama2d(Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;)V
    :try_end_1
    .catch Lcom/sonyericsson/android/camera3d/engine/common/StitchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 167
    :goto_3
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->cropStitchedImage(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 138
    .end local v0           #yuv:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    .restart local v2       #yuvLeft:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    .restart local v3       #yuvRight:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 141
    :catch_1
    move-exception v4

    goto :goto_1

    .line 159
    .end local v2           #yuvLeft:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    .end local v3           #yuvRight:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    .restart local v0       #yuv:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 162
    :catch_3
    move-exception v4

    goto :goto_3
.end method
