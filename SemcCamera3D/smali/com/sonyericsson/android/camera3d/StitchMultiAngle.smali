.class public Lcom/sonyericsson/android/camera3d/StitchMultiAngle;
.super Lcom/sonyericsson/android/camera3d/StitchCommon;
.source "StitchMultiAngle.java"


# static fields
.field private static final DISPARITY_OFFSET:I = 0x50

.field private static final ERR_COUNTER_MOVING:Ljava/lang/String; = "MA_Err_Counter_Moving"

.field private static final ERR_GMV_BIG:Ljava/lang/String; = "MA_Err_GMV_Big"

.field private static final ERR_TIMEOUT:Ljava/lang/String; = "MA_Err_TimeOut"

.field private static final ERR_TOO_NARROW:Ljava/lang/String; = "MA_Err_Too_Narrow"

.field private static final ERR_TOO_SHORT:Ljava/lang/String; = "MA_Err_Too_Short"

.field private static final INF_BUFFER_FULL:Ljava/lang/String; = "MA_Err_Buffer_Fill"

.field private static final LIMIT_DISCARD_FRAMES:I = 0x64

.field private static final LIMIT_GMV_MOVING_X:I = 0xa0

.field private static final LIMIT_GMV_MOVING_Y:I = 0x90

.field private static final TAG:Ljava/lang/String; = "StitchMultiAngle"

.field private static final THRESHOLD_COUNTERMOVING:I = 0x96

.field private static final VIEW_POINT_OFFSET:I = 0x28


# instance fields
.field private mMaxOutBreadth:I

.field private mMinOutBreadth:I

.field private mOutLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/StitchCommon;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x780

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mOutLength:I

    .line 38
    const/16 v0, 0x2d4

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMinOutBreadth:I

    .line 39
    const/16 v0, 0x438

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    .line 61
    return-void
.end method

.method private computeImageDataBufferSize(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 260
    iget v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mOutLength:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mPixelDepth:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isContainsGrayArea([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;)Z
    .locals 6
    .parameter "yuvData"

    .prologue
    .line 212
    move-object v0, p1

    .local v0, arr$:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 213
    .local v3, yuv:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    iget-object v4, v3, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    if-ge v4, v5, :cond_0

    .line 215
    const/4 v4, 0x1

    .line 218
    .end local v3           #yuv:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :goto_1
    return v4

    .line 212
    .restart local v3       #yuv:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v3           #yuv:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public finalizeStitchingEngine()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->finalizeStitchingEngine()V

    .line 304
    invoke-static {}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->free()V

    .line 305
    return-void
.end method

.method protected getCapturingStatus(Ljava/lang/String;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, result:I
    const-string v1, "MA_Err_Buffer_Fill"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 273
    :cond_0
    const-string v1, "MA_Err_TimeOut"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const-string v1, "MA_Err_Counter_Moving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const/4 v0, 0x2

    goto :goto_0

    .line 279
    :cond_2
    const-string v1, "MA_Err_Too_Narrow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    const/4 v0, 0x3

    goto :goto_0

    .line 282
    :cond_3
    const-string v1, "MA_Err_Too_Short"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    const/4 v0, 0x3

    goto :goto_0

    .line 285
    :cond_4
    const-string v1, "MA_Err_GMV_Big"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 286
    const/4 v0, 0x4

    goto :goto_0

    .line 289
    :cond_5
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getStitchedPercentage()F
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->getStitchedPercentage()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public initialize(II)Z
    .locals 20
    .parameter "pictureWidth"
    .parameter "pictureHeight"

    .prologue
    .line 87
    invoke-super/range {p0 .. p2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->initialize(II)Z

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mPutImageCallback:Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->setCallback(Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 93
    .local v8, size:Landroid/hardware/Camera$Size;
    if-eqz v8, :cond_0

    .line 94
    iget v1, v8, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->computeImageDataBufferSize(I)I

    move-result v2

    .line 102
    .local v2, imageSize:I
    const/16 v1, 0x50

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->setDisparityOffset(I)V

    .line 103
    const/16 v1, 0xa0

    const/16 v3, 0x90

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->setLimitGmvMoving(II)V

    .line 104
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->setLimitNumDiscardFrames(I)V

    .line 105
    invoke-static/range {p1 .. p2}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->setMinimumOutSize(II)V

    .line 106
    const/16 v1, 0x96

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->setThresholdCounterMoving(I)V

    .line 107
    const/16 v1, 0x28

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->setViewPointOffset(I)V

    .line 110
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mPixelDepth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v9, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;->SWEEP_MULTIANGLE:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->createOutBuffers(IFIIIILandroid/hardware/Camera$Size;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OutBufferType;)V

    .line 117
    .end local v2           #imageSize:I
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getAllOutBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v17

    .line 118
    .local v17, yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    const/4 v1, 0x0

    aget-object v18, v17, v1

    .line 119
    .local v18, yuvLeft:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    const/4 v1, 0x1

    aget-object v19, v17, v1

    .line 120
    .local v19, yuvRight:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    const/16 v1, 0xf

    new-array v13, v1, [Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    .line 121
    .local v13, maBuffers:[Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    const/16 v1, 0xf

    move/from16 v0, v16

    if-ge v0, v1, :cond_1

    .line 122
    add-int/lit8 v1, v16, 0x2

    aget-object v1, v17, v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    aput-object v1, v13, v16

    .line 121
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 126
    :cond_1
    if-eqz v8, :cond_2

    .line 127
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->init(IIII[Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V

    .line 137
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public popResultBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getAllOutBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v0

    return-object v0
.end method

.method protected putImageYUV(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
    .locals 1
    .parameter "inputData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mPutImageCallback:Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->putImageYuv420Sp(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;)V

    .line 226
    return-void
.end method

.method protected setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mOrientation:I

    .line 251
    return-void
.end method

.method public setResolution(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setResolution(II)V

    .line 231
    iput p1, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mOutLength:I

    .line 232
    iput p2, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    .line 233
    return-void
.end method

.method protected setSweepDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setSweepDirection(I)V

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mDirection:I

    .line 257
    return-void
.end method

.method public setupStitchingEngine()V
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mOutLength:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMinOutBreadth:I

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->initialize(II)Z

    .line 299
    return-void
.end method

.method public start(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "direction"

    .prologue
    .line 240
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->setOrientation(I)V

    .line 241
    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->setSweepDirection(I)V

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->setResolution(II)V

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/StitchCommon;->start(IIII)V

    .line 245
    invoke-static {}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->start()V

    .line 246
    return-void
.end method

.method public stop()Z
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->stop()Z

    move-result v5

    if-nez v5, :cond_0

    .line 208
    :goto_0
    return v3

    .line 147
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v0, area:Landroid/graphics/Rect;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->stop()V
    :try_end_0
    .catch Lcom/sonyericsson/android/camera3d/engine/common/StitchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getAllOutBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v2

    .line 158
    .local v2, yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->getProgress()F

    move-result v5

    const/high16 v6, 0x4248

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 162
    invoke-static {v9, v0}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->getStitchedRect(ILandroid/graphics/Rect;)V

    .line 166
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    if-le v5, v6, :cond_1

    .line 170
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 172
    :cond_1
    aget-object v3, v2, v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->set(IIII)V

    .line 175
    const/16 v3, 0x10

    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->getStitchedRect(ILandroid/graphics/Rect;)V

    .line 179
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    if-le v3, v5, :cond_2

    .line 183
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 185
    :cond_2
    aget-object v3, v2, v4

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->set(IIII)V

    .line 188
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v9, :cond_4

    .line 189
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->getStitchedRect(ILandroid/graphics/Rect;)V

    .line 194
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    if-le v3, v5, :cond_3

    .line 198
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mMaxOutBreadth:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 200
    :cond_3
    add-int/lit8 v3, v1, 0x2

    aget-object v3, v2, v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->set(IIII)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    :cond_4
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->isContainsGrayArea([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->mContainsGrayArea:Z

    .line 207
    .end local v1           #i:I
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera3d/engine/multiangle/MultiAngleEngine;->free()V

    move v3, v4

    .line 208
    goto/16 :goto_0

    .line 150
    .end local v2           #yuvData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method
