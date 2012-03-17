.class public Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
.super Ljava/lang/Object;
.source "YuvOutBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/YuvOutBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YuvOutData"
.end annotation


# instance fields
.field private mBreadth:I

.field public final mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

.field private mDirection:I

.field public mImageAlignLeft:Z

.field public mImageByteLength:I

.field private mOrientation:I

.field private mPictureSweepLength:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field public final mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    .line 95
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->newInstance(I)Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(ILcom/sonyericsson/android/camera3d/YuvOutBuffer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;-><init>(I)V

    return-void
.end method

.method private fillBuffer([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3
    .parameter "dst"
    .parameter "rawData"
    .parameter "stitched"
    .parameter "lineLength"

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->getPictureOrientationDirection()Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    move-result-object v0

    .line 253
    .local v0, pictureType:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;
    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;->$SwitchMap$com$sonyericsson$android$camera3d$YuvOutBuffer$OrientationDirection:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayColorForPortraitPicture([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 266
    :goto_0
    return-void

    .line 256
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayColorForLandscapePicture([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fillGrayColorForCornerRects([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 5
    .parameter "dst"
    .parameter "rawRect"
    .parameter "stitchedRect"
    .parameter "lineLength"

    .prologue
    .line 496
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 500
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 504
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 508
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 510
    return-void
.end method

.method private fillGrayColorForLandscapePicture([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 5
    .parameter "dst"
    .parameter "rawRect"
    .parameter "stitchedRect"
    .parameter "lineLength"

    .prologue
    .line 402
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 406
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 410
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 414
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 418
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayColorForCornerRects([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 419
    return-void
.end method

.method private fillGrayColorForPortraitPicture([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 5
    .parameter "dst"
    .parameter "rawRect"
    .parameter "stitchedRect"
    .parameter "lineLength"

    .prologue
    .line 449
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 453
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 461
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V

    .line 465
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillGrayColorForCornerRects([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 466
    return-void
.end method

.method private fillGrayRect([BLandroid/graphics/Rect;ILcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;)V
    .locals 6
    .parameter "dst"
    .parameter "rect"
    .parameter "lineLength"
    .parameter "color"

    .prologue
    .line 520
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;->$SwitchMap$com$sonyericsson$android$camera3d$YuvOutBuffer$FillingColor:[I

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 527
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfig;->IMAGE_FILLER_Y:[B

    sget-object v5, Lcom/sonyericsson/android/camera3d/CameraConfig;->IMAGE_FILLER_UV:[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillRect([BLandroid/graphics/Rect;I[B[B)V

    .line 531
    :goto_0
    return-void

    .line 522
    :pswitch_0
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfig;->IMAGE_FILLER_Y_DARK:[B

    sget-object v5, Lcom/sonyericsson/android/camera3d/CameraConfig;->IMAGE_FILLER_UV:[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillRect([BLandroid/graphics/Rect;I[B[B)V

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private fillLine([BIIIIII[B[B)V
    .locals 6
    .parameter "dst"
    .parameter "lineIndex"
    .parameter "lineLength"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "uvPosition"
    .parameter "uvLength"
    .parameter "fillerY"
    .parameter "fillerUV"

    .prologue
    .line 606
    mul-int v4, p3, p2

    add-int v3, v4, p4

    .line 607
    .local v3, startY:I
    mul-int v4, p3, p2

    add-int v1, v4, p5

    .line 610
    .local v1, endY:I
    invoke-direct {p0, p1, v3, v1, p8}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillLineBlock([BII[B)V

    .line 613
    add-int v4, v3, p3

    add-int v5, v1, p3

    invoke-direct {p0, p1, v4, v5, p8}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillLineBlock([BII[B)V

    .line 616
    mul-int v4, p3, p2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p6

    add-int v2, v4, p4

    .line 617
    .local v2, startUv:I
    add-int v0, v2, p7

    .line 618
    .local v0, endUv:I
    invoke-direct {p0, p1, v2, v0, p9}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillLineBlock([BII[B)V

    .line 619
    return-void
.end method

.method private fillLineBlock([BII[B)V
    .locals 7
    .parameter "dst"
    .parameter "start"
    .parameter "end"
    .parameter "filler"

    .prologue
    const/4 v6, 0x0

    .line 625
    sub-int v2, p3, p2

    .line 626
    .local v2, length:I
    if-gtz v2, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    array-length v4, p4

    div-int v1, v2, v4

    .line 631
    .local v1, blockCount:I
    array-length v4, p4

    rem-int v3, v2, v4

    .line 640
    .local v3, remainLength:I
    const/4 v0, 0x0

    .local v0, block:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 641
    array-length v4, p4

    mul-int/2addr v4, v0

    add-int/2addr v4, p2

    array-length v5, p4

    invoke-static {p4, v6, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    :cond_2
    if-lez v3, :cond_0

    .line 645
    array-length v4, p4

    mul-int/2addr v4, v0

    add-int/2addr v4, p2

    invoke-static {p4, v6, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private fillRect([BLandroid/graphics/Rect;I[B[B)V
    .locals 13
    .parameter "dst"
    .parameter "rect"
    .parameter "lineLength"
    .parameter "fillerY"
    .parameter "fillerUV"

    .prologue
    .line 548
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    return-void

    .line 553
    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 554
    .local v2, startLine:I
    rem-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_2

    .line 555
    add-int/lit8 v2, v2, -0x1

    .line 557
    :cond_2
    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    .line 558
    .local v11, endLine:I
    rem-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_3

    .line 559
    add-int/lit8 v11, v11, -0x1

    .line 561
    :cond_3
    sub-int v0, v11, v2

    div-int/lit8 v10, v0, 0x2

    .line 563
    .local v10, count:I
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 564
    .local v4, startY:I
    rem-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_4

    .line 565
    add-int/lit8 v4, v4, -0x1

    .line 567
    :cond_4
    iget v5, p2, Landroid/graphics/Rect;->right:I

    .line 568
    .local v5, endY:I
    rem-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_5

    .line 569
    add-int/lit8 v5, v5, -0x1

    .line 571
    :cond_5
    sub-int v7, v5, v4

    .line 573
    .local v7, uvLength:I
    iget v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    float-to-int v6, v0

    .line 580
    .local v6, uvPosition:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 581
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillLine([BIIIIII[B[B)V

    .line 583
    add-int/lit8 v2, v2, 0x2

    .line 580
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private getPictureOrientationDirection()Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 124
    iget v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 125
    iget v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mDirection:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mDirection:I

    if-ne v0, v3, :cond_1

    .line 127
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->POTRAIT_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    .line 136
    :goto_0
    return-object v0

    .line 129
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->POTRAIT_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    goto :goto_0

    .line 132
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mDirection:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mDirection:I

    if-ne v0, v3, :cond_4

    .line 134
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->LANDSCAPE_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    goto :goto_0

    .line 136
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->LANDSCAPE_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    goto :goto_0
.end method

.method private movePictureAreaToCenter([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 11
    .parameter "dst"
    .parameter "rawData"
    .parameter "stitched"
    .parameter "lineLength"

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->getPictureOrientationDirection()Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    move-result-object v5

    .line 279
    .local v5, pictureType:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;
    sget-object v8, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;->$SwitchMap$com$sonyericsson$android$camera3d$YuvOutBuffer$OrientationDirection:[I

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 298
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v0, v8, 0x2

    .line 299
    .local v0, centeredEndLine:I
    rem-int/lit8 v8, v0, 0x2

    sub-int/2addr v0, v8

    .line 300
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 301
    .local v2, centeredStartLine:I
    rem-int/lit8 v8, v2, 0x2

    add-int/2addr v2, v8

    .line 303
    iget v8, p3, Landroid/graphics/Rect;->top:I

    sub-int v7, v2, v8

    .line 304
    .local v7, shiftLine:I
    const/4 v6, 0x0

    .line 305
    .local v6, shiftHorizontal:I
    new-instance v1, Landroid/graphics/Rect;

    iget v8, p3, Landroid/graphics/Rect;->left:I

    iget v9, p3, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v8, v2, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 315
    .local v1, centeredRect:Landroid/graphics/Rect;
    :goto_0
    if-lez v7, :cond_2

    .line 316
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_b

    .line 317
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .local v4, j:I
    :goto_2
    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v8, :cond_1

    .line 319
    mul-int v8, v3, p4

    add-int/2addr v8, v4

    sub-int v9, v3, v7

    mul-int/2addr v9, p4

    add-int/2addr v9, v4

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 322
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_0

    .line 323
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    mul-int/2addr v8, p4

    add-int/2addr v8, v4

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    mul-int/2addr v9, p4

    add-int/2addr v9, v4

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 317
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 283
    .end local v0           #centeredEndLine:I
    .end local v1           #centeredRect:Landroid/graphics/Rect;
    .end local v2           #centeredStartLine:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v6           #shiftHorizontal:I
    .end local v7           #shiftLine:I
    :pswitch_0
    iget v8, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v0, v8, 0x2

    .line 284
    .restart local v0       #centeredEndLine:I
    rem-int/lit8 v8, v0, 0x2

    sub-int/2addr v0, v8

    .line 285
    iget v8, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 286
    .restart local v2       #centeredStartLine:I
    rem-int/lit8 v8, v2, 0x2

    add-int/2addr v2, v8

    .line 288
    iget v8, p3, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v8

    .line 289
    .restart local v6       #shiftHorizontal:I
    const/4 v7, 0x0

    .line 290
    .restart local v7       #shiftLine:I
    new-instance v1, Landroid/graphics/Rect;

    iget v8, p3, Landroid/graphics/Rect;->top:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v8, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    .restart local v1       #centeredRect:Landroid/graphics/Rect;
    goto :goto_0

    .line 316
    .restart local v3       #i:I
    .restart local v4       #j:I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 329
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_2
    if-gez v7, :cond_5

    .line 331
    move v3, v2

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v0, :cond_b

    .line 332
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .restart local v4       #j:I
    :goto_4
    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v8, :cond_4

    .line 334
    mul-int v8, v3, p4

    add-int/2addr v8, v4

    sub-int v9, v3, v7

    mul-int/2addr v9, p4

    add-int/2addr v9, v4

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 337
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_3

    .line 338
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    mul-int/2addr v8, p4

    add-int/2addr v8, v4

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    mul-int/2addr v9, p4

    add-int/2addr v9, v4

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 332
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 331
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 343
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_5
    if-lez v6, :cond_8

    .line 344
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .restart local v3       #i:I
    :goto_5
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v8, :cond_b

    .line 345
    add-int/lit8 v4, v0, -0x1

    .restart local v4       #j:I
    :goto_6
    if-lt v4, v2, :cond_7

    .line 347
    mul-int v8, v3, p4

    add-int/2addr v8, v4

    mul-int v9, v3, p4

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 349
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_6

    .line 351
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    mul-int/2addr v8, p4

    add-int/2addr v8, v4

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v10, v3, 0x2

    add-int/2addr v9, v10

    mul-int/2addr v9, p4

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 345
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 344
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 356
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_8
    if-gez v6, :cond_b

    .line 357
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .restart local v3       #i:I
    :goto_7
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v8, :cond_b

    .line 358
    move v4, v2

    .restart local v4       #j:I
    :goto_8
    if-ge v4, v0, :cond_a

    .line 360
    mul-int v8, v3, p4

    add-int/2addr v8, v4

    mul-int v9, v3, p4

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 362
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_9

    .line 364
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    mul-int/2addr v8, p4

    add-int/2addr v8, v4

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v10, v3, 0x2

    add-int/2addr v9, v10

    mul-int/2addr v9, p4

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    aget-byte v9, p1, v9

    aput-byte v9, p1, v8

    .line 358
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 357
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 371
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_b
    return-object v1

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private roundBufferSizeToImageSize(I)I
    .locals 1
    .parameter "length"

    .prologue
    .line 120
    and-int/lit8 v0, p1, -0x2

    return v0
.end method


# virtual methods
.method public compress(ILjava/io/ByteArrayOutputStream;)Z
    .locals 16
    .parameter "quality"
    .parameter "out"

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 145
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    rem-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v13, v13, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    rem-int/lit8 v13, v13, 0x2

    add-int/2addr v7, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v13, v13, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v14, v14, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    rem-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v14, v14, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mYuvData:Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;

    iget-object v15, v15, Lcom/sonyericsson/android/camera3d/engine/panorama/NativeStitchedYuvImage;->area:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    invoke-direct {v12, v4, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    .local v12, stitchedArea:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v9, pictureArea:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 166
    .local v11, rawDataRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    invoke-virtual {v4, v7}, Lcom/sonyericsson/android/camera3d/WorkArea;->lock(I)[B

    move-result-object v3

    .line 167
    .local v3, workArea:[B
    if-nez v3, :cond_0

    .line 169
    const/4 v4, 0x0

    .line 236
    :goto_0
    return v4

    .line 171
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBuffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    invoke-virtual {v4, v3, v7}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->readFrom([BI)V

    .line 173
    const/4 v2, 0x0

    .line 176
    .local v2, image:Landroid/graphics/YuvImage;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->getPictureOrientationDirection()Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    move-result-object v10

    .line 177
    .local v10, pictureType:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;
    sget-object v4, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;->$SwitchMap$com$sonyericsson$android$camera3d$YuvOutBuffer$OrientationDirection:[I

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 186
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPreviewWidth:I

    .line 187
    .local v5, lineLength:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    int-to-float v4, v4

    const/high16 v7, 0x3fc0

    div-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPreviewWidth:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    float-to-int v6, v4

    .line 191
    .local v6, numberOfLines:I
    :goto_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11, v4, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12, v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->movePictureAreaToCenter([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v8

    .line 198
    .local v8, centerArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v8, v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->fillBuffer([BLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 200
    sget-object v4, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$1;->$SwitchMap$com$sonyericsson$android$camera3d$YuvOutBuffer$OrientationDirection:[I

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_1

    .line 209
    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBreadth:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v7, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPictureSweepLength:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBreadth:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v9, v4, v7, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 215
    :goto_2
    new-instance v2, Landroid/graphics/YuvImage;

    .end local v2           #image:Landroid/graphics/YuvImage;
    const/16 v4, 0x11

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 220
    .restart local v2       #image:Landroid/graphics/YuvImage;
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/WorkArea;->unlock()V

    .line 223
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageAlignLeft:Z

    if-eqz v4, :cond_1

    .line 227
    iget v4, v12, Landroid/graphics/Rect;->left:I

    iget v7, v9, Landroid/graphics/Rect;->top:I

    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v7, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v9, v0, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v4

    goto/16 :goto_0

    .line 180
    .end local v5           #lineLength:I
    .end local v6           #numberOfLines:I
    .end local v8           #centerArea:Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    int-to-float v4, v4

    const/high16 v7, 0x3fc0

    div-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPreviewHeight:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    float-to-int v5, v4

    .line 181
    .restart local v5       #lineLength:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPreviewHeight:I

    .line 182
    .restart local v6       #numberOfLines:I
    goto :goto_1

    .line 203
    .restart local v8       #centerArea:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBreadth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBreadth:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPictureSweepLength:I

    invoke-virtual {v9, v4, v7, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setPictureAttributes(IIIIILandroid/hardware/Camera$Size;Z)V
    .locals 1
    .parameter "orientation"
    .parameter "direction"
    .parameter "pictureSize"
    .parameter "pictureSweepLength"
    .parameter "breadth"
    .parameter "previewSize"
    .parameter "imageAlignLeft"

    .prologue
    .line 109
    iput p1, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mOrientation:I

    .line 110
    iput p2, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mDirection:I

    .line 111
    iget v0, p6, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPreviewWidth:I

    .line 112
    iget v0, p6, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPreviewHeight:I

    .line 113
    iput p4, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mPictureSweepLength:I

    .line 114
    iput p5, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mBreadth:I

    .line 115
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->roundBufferSizeToImageSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageByteLength:I

    .line 116
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->mImageAlignLeft:Z

    .line 117
    return-void
.end method
