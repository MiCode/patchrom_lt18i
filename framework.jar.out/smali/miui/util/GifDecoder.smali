.class public Lmiui/util/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final MAX_DECODE_SIZE:I = 0x100000

.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_DECODE_CANCEL:I = 0x3

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field private calledOnce:Z

.field protected delay:I

.field private dest:[I

.field protected dispose:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lmiui/util/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field private height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field private mCancel:Z

.field private mDecodeBmSize:I

.field private mMaxDecodeSize:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lmiui/util/GifDecoder;->loopCount:I

    .line 85
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/util/GifDecoder;->block:[B

    .line 87
    iput v1, p0, Lmiui/util/GifDecoder;->blockSize:I

    .line 90
    iput v1, p0, Lmiui/util/GifDecoder;->dispose:I

    .line 93
    iput v1, p0, Lmiui/util/GifDecoder;->lastDispose:I

    .line 95
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->transparency:Z

    .line 97
    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    .line 114
    const/high16 v0, 0x10

    iput v0, p0, Lmiui/util/GifDecoder;->mMaxDecodeSize:I

    .line 297
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->mCancel:Z

    .line 346
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->calledOnce:Z

    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .locals 6
    .parameter "is"

    .prologue
    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, ret:Z
    if-eqz p0, :cond_1

    .line 333
    const-string v2, ""

    .line 334
    .local v2, id:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_0

    .line 335
    invoke-static {p0}, Lmiui/util/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    move-result v0

    .line 336
    .local v0, ch:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 341
    .end local v0           #ch:I
    :cond_0
    const-string v4, "GIF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 343
    .end local v1           #i:I
    .end local v2           #id:Ljava/lang/String;
    :cond_1
    return v3

    .line 339
    .restart local v0       #ch:I
    .restart local v1       #i:I
    .restart local v2       #id:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static readOneByte(Ljava/io/InputStream;)I
    .locals 3
    .parameter "is"

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, curByte:I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 320
    :goto_0
    return v2

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private requestCancel()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .locals 25

    .prologue
    .line 391
    const/16 v17, -0x1

    .line 392
    .local v17, nullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v16, v23, v24

    .line 394
    .local v16, npix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 395
    :cond_0
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->pixels:[B

    .line 397
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 398
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->prefix:[S

    .line 400
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 401
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->suffix:[B

    .line 403
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 404
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->pixelStack:[B

    .line 407
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmiui/util/GifDecoder;->read()I

    move-result v10

    .line 408
    .local v10, data_size:I
    const/16 v23, 0x1

    shl-int v5, v23, v10

    .line 409
    .local v5, clear:I
    add-int/lit8 v12, v5, 0x1

    .line 410
    .local v12, end_of_information:I
    add-int/lit8 v2, v5, 0x2

    .line 411
    .local v2, available:I
    move/from16 v18, v17

    .line 412
    .local v18, old_code:I
    add-int/lit8 v8, v10, 0x1

    .line 413
    .local v8, code_size:I
    const/16 v23, 0x1

    shl-int v23, v23, v8

    const/16 v24, 0x1

    sub-int v7, v23, v24

    .line 414
    .local v7, code_mask:I
    const/4 v6, 0x0

    .local v6, code:I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v6

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    move v0, v6

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v6

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 419
    :cond_5
    const/4 v3, 0x0

    .local v3, bi:I
    move/from16 v19, v3

    .local v19, pi:I
    move/from16 v21, v3

    .local v21, top:I
    move v13, v3

    .local v13, first:I
    move v9, v3

    .local v9, count:I
    move v4, v3

    .local v4, bits:I
    move v11, v3

    .line 420
    .local v11, datum:I
    const/4 v14, 0x0

    .local v14, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_1
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 421
    if-nez v22, :cond_12

    .line 422
    if-ge v4, v8, :cond_8

    .line 424
    if-nez v9, :cond_7

    .line 426
    invoke-virtual/range {p0 .. p0}, Lmiui/util/GifDecoder;->readBlock()I

    move-result v9

    .line 427
    if-gtz v9, :cond_6

    move/from16 v21, v22

    .line 489
    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_2
    move/from16 v14, v20

    :goto_3
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_10

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v14

    .line 489
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 430
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_6
    const/4 v3, 0x0

    .line 432
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v3

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v4

    add-int v11, v11, v23

    .line 433
    add-int/lit8 v4, v4, 0x8

    .line 434
    add-int/lit8 v3, v3, 0x1

    .line 435
    add-int/lit8 v9, v9, -0x1

    .line 436
    goto :goto_1

    .line 439
    :cond_8
    and-int v6, v11, v7

    .line 440
    shr-int/2addr v11, v8

    .line 441
    sub-int/2addr v4, v8

    .line 443
    if-gt v6, v2, :cond_11

    if-ne v6, v12, :cond_9

    move/from16 v21, v22

    .line 444
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 446
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_9
    if-ne v6, v5, :cond_a

    .line 448
    add-int/lit8 v8, v10, 0x1

    .line 449
    const/16 v23, 0x1

    shl-int v23, v23, v8

    const/16 v24, 0x1

    sub-int v7, v23, v24

    .line 450
    add-int/lit8 v2, v5, 0x2

    .line 451
    move/from16 v18, v17

    .line 452
    goto :goto_1

    .line 454
    :cond_a
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    .line 456
    move/from16 v18, v6

    .line 457
    move v13, v6

    move/from16 v22, v21

    .line 458
    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_1

    .line 460
    :cond_b
    move v15, v6

    .line 461
    .local v15, in_code:I
    if-ne v6, v2, :cond_c

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move v0, v13

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 463
    move/from16 v6, v18

    move/from16 v22, v21

    .line 465
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_c
    :goto_4
    if-le v6, v5, :cond_d

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v6, v23, v6

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4

    .line 469
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move v13, v0

    .line 471
    const/16 v23, 0x1000

    move v0, v2

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    move/from16 v21, v22

    .line 472
    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .line 474
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move v0, v13

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v2

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    move v0, v13

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v2

    .line 477
    add-int/lit8 v2, v2, 0x1

    .line 478
    and-int v23, v2, v7

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move v0, v2

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    .line 479
    add-int/lit8 v8, v8, 0x1

    .line 480
    add-int/2addr v7, v2

    .line 482
    :cond_f
    move/from16 v18, v15

    .line 485
    .end local v15           #in_code:I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 487
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 492
    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_10
    return-void

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_11
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_12
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lmiui/util/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 153
    const/4 v1, -0x1

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    .line 154
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v0

    .line 155
    .local v0, frameCount:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 156
    iget-object v1, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/GifDecoder$GifFrame;

    iget v1, v1, Lmiui/util/GifDecoder$GifFrame;->delay:I

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    .line 158
    :cond_0
    iget v1, p0, Lmiui/util/GifDecoder;->delay:I

    return v1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "n"

    .prologue
    .line 290
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v0

    .line 291
    .local v0, frameCount:I
    if-gtz v0, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 294
    .end local p0
    :goto_0
    return-object v1

    .line 293
    .restart local p0
    :cond_0
    rem-int/2addr p1, v0

    .line 294
    iget-object v1, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/util/GifDecoder$GifFrame;

    iget-object v1, p0, Lmiui/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lmiui/util/GifDecoder;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lmiui/util/GifDecoder;->loopCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lmiui/util/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/GifDecoder;->status:I

    .line 506
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    .line 507
    iput-object v1, p0, Lmiui/util/GifDecoder;->gct:[I

    .line 508
    iput-object v1, p0, Lmiui/util/GifDecoder;->lct:[I

    .line 509
    return-void
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 521
    :goto_0
    return v0

    .line 518
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 519
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 5
    .parameter "is"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 355
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->calledOnce:Z

    if-eqz v2, :cond_0

    .line 356
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "decoder cannot be called more than once"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_0
    iput-boolean v3, p0, Lmiui/util/GifDecoder;->calledOnce:Z

    .line 359
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->init()V

    .line 360
    if-eqz p1, :cond_3

    .line 361
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readHeader()V

    .line 364
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readContents()V

    .line 366
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v1

    .line 367
    .local v1, frameCount:I
    if-gez v1, :cond_1

    .line 368
    const/4 v2, 0x1

    iput v2, p0, Lmiui/util/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1           #frameCount:I
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_2

    .line 380
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->recycle()V

    .line 381
    const/4 v2, 0x3

    iput v2, p0, Lmiui/util/GifDecoder;->status:I

    .line 383
    :cond_2
    iget v2, p0, Lmiui/util/GifDecoder;->status:I

    return v2

    .line 371
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 372
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    iput v4, p0, Lmiui/util/GifDecoder;->status:I

    .line 373
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->recycle()V

    goto :goto_0

    .line 376
    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :cond_3
    iput v4, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0
.end method

.method protected readBitmap()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 691
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->ix:I

    .line 692
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->iy:I

    .line 693
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->iw:I

    .line 694
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lmiui/util/GifDecoder;->ih:I

    .line 695
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    .line 696
    .local v0, packed:I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lmiui/util/GifDecoder;->lctFlag:Z

    .line 697
    const/4 v2, 0x2

    and-int/lit8 v3, v0, 0x7

    shl-int/2addr v2, v3

    iput v2, p0, Lmiui/util/GifDecoder;->lctSize:I

    .line 701
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lmiui/util/GifDecoder;->interlace:Z

    .line 702
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 703
    iget v2, p0, Lmiui/util/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lmiui/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lmiui/util/GifDecoder;->lct:[I

    .line 704
    iget-object v2, p0, Lmiui/util/GifDecoder;->lct:[I

    iput-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    .line 711
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 712
    .local v1, save:I
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 713
    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    iget v3, p0, Lmiui/util/GifDecoder;->transIndex:I

    aget v1, v2, v3

    .line 714
    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    iget v3, p0, Lmiui/util/GifDecoder;->transIndex:I

    aput v4, v2, v3

    .line 716
    :cond_1
    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    if-nez v2, :cond_2

    .line 717
    iput v5, p0, Lmiui/util/GifDecoder;->status:I

    .line 719
    :cond_2
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 738
    :cond_3
    :goto_3
    return-void

    .end local v1           #save:I
    :cond_4
    move v2, v4

    .line 696
    goto :goto_0

    :cond_5
    move v2, v4

    .line 701
    goto :goto_1

    .line 706
    :cond_6
    iget-object v2, p0, Lmiui/util/GifDecoder;->gct:[I

    iput-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    .line 707
    iget v2, p0, Lmiui/util/GifDecoder;->bgIndex:I

    iget v3, p0, Lmiui/util/GifDecoder;->transIndex:I

    if-ne v2, v3, :cond_0

    .line 708
    iput v4, p0, Lmiui/util/GifDecoder;->bgColor:I

    goto :goto_2

    .line 722
    .restart local v1       #save:I
    :cond_7
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->decodeBitmapData()V

    .line 723
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    .line 724
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 728
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-nez v2, :cond_3

    .line 731
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->setPixels()V

    .line 732
    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v3, Lmiui/util/GifDecoder$GifFrame;

    iget-object v4, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiui/util/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lmiui/util/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 734
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_8

    .line 735
    iget-object v2, p0, Lmiui/util/GifDecoder;->act:[I

    iget v3, p0, Lmiui/util/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 737
    :cond_8
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readBlock()I
    .locals 6

    .prologue
    .line 530
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    .line 531
    const/4 v2, 0x0

    .line 532
    .local v2, n:I
    iget v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, count:I
    :goto_0
    :try_start_0
    iget v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 536
    iget-object v3, p0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lmiui/util/GifDecoder;->block:[B

    iget v5, p0, Lmiui/util/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 537
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 545
    :cond_0
    :goto_1
    iget v3, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 546
    const/4 v3, 0x1

    iput v3, p0, Lmiui/util/GifDecoder;->status:I

    .line 549
    .end local v0           #count:I
    :cond_1
    return v2

    .line 540
    .restart local v0       #count:I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 543
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 19
    .parameter "ncolors"

    .prologue
    .line 559
    mul-int/lit8 v13, p1, 0x3

    .line 560
    .local v13, nbytes:I
    const/4 v15, 0x0

    .line 561
    .local v15, tab:[I
    new-array v5, v13, [B

    .line 562
    .local v5, c:[B
    const/4 v12, 0x0

    .line 564
    .local v12, n:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 568
    :goto_0
    if-ge v12, v13, :cond_1

    .line 569
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/util/GifDecoder;->status:I

    .line 581
    :cond_0
    return-object v15

    .line 565
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 566
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 571
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v16, 0x100

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v15, v0

    .line 572
    const/4 v8, 0x0

    .line 573
    .local v8, i:I
    const/4 v10, 0x0

    .local v10, j:I
    move v11, v10

    .end local v10           #j:I
    .local v11, j:I
    move v9, v8

    .line 574
    .end local v8           #i:I
    .local v9, i:I
    :goto_1
    move v0, v9

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 575
    add-int/lit8 v10, v11, 0x1

    .end local v11           #j:I
    .restart local v10       #j:I
    aget-byte v16, v5, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .line 576
    .local v14, r:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #j:I
    .restart local v11       #j:I
    aget-byte v16, v5, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v7, v0

    .line 577
    .local v7, g:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #j:I
    .restart local v10       #j:I
    aget-byte v16, v5, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 578
    .local v4, b:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    const/high16 v16, -0x100

    shl-int/lit8 v17, v14, 0x10

    or-int v16, v16, v17

    shl-int/lit8 v17, v7, 0x8

    or-int v16, v16, v17

    or-int v16, v16, v4

    aput v16, v15, v9

    move v11, v10

    .end local v10           #j:I
    .restart local v11       #j:I
    move v9, v8

    .line 579
    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_1
.end method

.method protected readContents()V
    .locals 7

    .prologue
    .line 589
    const/4 v2, 0x0

    .line 590
    .local v2, done:Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v4

    if-nez v4, :cond_1

    .line 591
    iget-boolean v4, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-eqz v4, :cond_2

    .line 642
    :cond_1
    return-void

    .line 594
    :cond_2
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    .line 595
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 639
    const/4 v4, 0x1

    iput v4, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0

    .line 597
    :sswitch_0
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBitmap()V

    .line 598
    iget-object v4, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 599
    iget v4, p0, Lmiui/util/GifDecoder;->mDecodeBmSize:I

    iget-object v5, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    iget-object v6, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lmiui/util/GifDecoder;->mDecodeBmSize:I

    .line 601
    :cond_3
    iget v4, p0, Lmiui/util/GifDecoder;->mDecodeBmSize:I

    iget v5, p0, Lmiui/util/GifDecoder;->mMaxDecodeSize:I

    if-le v4, v5, :cond_0

    .line 602
    const/4 v2, 0x1

    goto :goto_0

    .line 606
    :sswitch_1
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    .line 607
    sparse-switch v1, :sswitch_data_1

    .line 630
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto :goto_0

    .line 609
    :sswitch_2
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 612
    :sswitch_3
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBlock()I

    .line 613
    const-string v0, ""

    .line 614
    .local v0, app:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_4

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/util/GifDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 617
    :cond_4
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 618
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 620
    :cond_5
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto :goto_0

    .line 624
    .end local v0           #app:Ljava/lang/String;
    .end local v3           #i:I
    :sswitch_4
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto :goto_0

    .line 627
    :sswitch_5
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->skip()V

    goto/16 :goto_0

    .line 634
    :sswitch_6
    const/4 v2, 0x1

    .line 635
    goto/16 :goto_0

    .line 595
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 607
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 648
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    .line 649
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    .line 650
    .local v0, packed:I
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmiui/util/GifDecoder;->dispose:I

    .line 651
    iget v1, p0, Lmiui/util/GifDecoder;->dispose:I

    if-nez v1, :cond_0

    .line 652
    iput v2, p0, Lmiui/util/GifDecoder;->dispose:I

    .line 654
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->transparency:Z

    .line 655
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    .line 656
    iget v1, p0, Lmiui/util/GifDecoder;->delay:I

    if-gtz v1, :cond_1

    .line 657
    const/16 v1, 0x64

    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    .line 659
    :cond_1
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->transIndex:I

    .line 660
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    .line 661
    return-void

    .line 654
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 667
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    const-string v1, ""

    .line 672
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 675
    :cond_2
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 676
    const/4 v2, 0x1

    iput v2, p0, Lmiui/util/GifDecoder;->status:I

    goto :goto_0

    .line 680
    :cond_3
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readLSD()V

    .line 681
    iget-boolean v2, p0, Lmiui/util/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    iget v2, p0, Lmiui/util/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lmiui/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lmiui/util/GifDecoder;->gct:[I

    .line 683
    iget-object v2, p0, Lmiui/util/GifDecoder;->gct:[I

    iget v3, p0, Lmiui/util/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lmiui/util/GifDecoder;->bgColor:I

    goto :goto_0
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->width:I

    .line 746
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->height:I

    .line 748
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    .line 749
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->gctFlag:Z

    .line 752
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lmiui/util/GifDecoder;->gctSize:I

    .line 753
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->bgIndex:I

    .line 754
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lmiui/util/GifDecoder;->pixelAspect:I

    .line 755
    return-void

    .line 749
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 762
    :cond_0
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBlock()I

    .line 763
    iget-object v2, p0, Lmiui/util/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 765
    iget-object v2, p0, Lmiui/util/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 766
    .local v0, b1:I
    iget-object v2, p0, Lmiui/util/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 767
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lmiui/util/GifDecoder;->loopCount:I

    .line 769
    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 119
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    iget-object v2, p0, Lmiui/util/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/GifDecoder$GifFrame;

    invoke-virtual {v2}, Lmiui/util/GifDecoder$GifFrame;->recycle()V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public requestCancelDecode()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/GifDecoder;->mCancel:Z

    .line 303
    invoke-direct {p0}, Lmiui/util/GifDecoder;->requestCancel()V

    .line 304
    return-void
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    iget v0, p0, Lmiui/util/GifDecoder;->dispose:I

    iput v0, p0, Lmiui/util/GifDecoder;->lastDispose:I

    .line 785
    iget v0, p0, Lmiui/util/GifDecoder;->ix:I

    iput v0, p0, Lmiui/util/GifDecoder;->lrx:I

    .line 786
    iget v0, p0, Lmiui/util/GifDecoder;->iy:I

    iput v0, p0, Lmiui/util/GifDecoder;->lry:I

    .line 787
    iget v0, p0, Lmiui/util/GifDecoder;->iw:I

    iput v0, p0, Lmiui/util/GifDecoder;->lrw:I

    .line 788
    iget v0, p0, Lmiui/util/GifDecoder;->ih:I

    iput v0, p0, Lmiui/util/GifDecoder;->lrh:I

    .line 789
    iget-object v0, p0, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 790
    iget v0, p0, Lmiui/util/GifDecoder;->bgColor:I

    iput v0, p0, Lmiui/util/GifDecoder;->lastBgColor:I

    .line 791
    iput v1, p0, Lmiui/util/GifDecoder;->dispose:I

    .line 792
    iput-boolean v1, p0, Lmiui/util/GifDecoder;->transparency:Z

    .line 793
    iput v1, p0, Lmiui/util/GifDecoder;->delay:I

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/GifDecoder;->lct:[I

    .line 795
    return-void
.end method

.method public setMaxDecodeSize(I)V
    .locals 0
    .parameter "maxDecodeSize"

    .prologue
    .line 126
    iput p1, p0, Lmiui/util/GifDecoder;->mMaxDecodeSize:I

    .line 127
    return-void
.end method

.method protected setPixels()V
    .locals 26

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->dest:[I

    move-object v2, v0

    if-nez v2, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->height:I

    move v3, v0

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->dest:[I

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lastDispose:I

    move v2, v0

    if-lez v2, :cond_5

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lastDispose:I

    move v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 202
    invoke-virtual/range {p0 .. p0}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v2

    const/4 v3, 0x2

    sub-int v21, v2, v3

    .line 203
    .local v21, n:I
    if-lez v21, :cond_3

    .line 204
    const/4 v2, 0x1

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lmiui/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 205
    .local v10, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    move-object v2, v0

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->dest:[I

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->height:I

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 214
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v21           #n:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lastDispose:I

    move v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 218
    const/4 v11, 0x0

    .line 219
    .local v11, c:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/util/GifDecoder;->transparency:Z

    move v2, v0

    if-nez v2, :cond_2

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lastBgColor:I

    move v11, v0

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lry:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v3, v0

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lrx:I

    move v3, v0

    add-int v23, v2, v3

    .line 223
    .local v23, start:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lrh:I

    move v2, v0

    if-ge v15, v2, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->lrw:I

    move v2, v0

    add-int v14, v23, v2

    .line 225
    .local v14, end:I
    move/from16 v19, v23

    .local v19, k:I
    :goto_2
    move/from16 v0, v19

    move v1, v14

    if-ge v0, v1, :cond_4

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->dest:[I

    move-object v2, v0

    aput v11, v2, v19

    .line 225
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 210
    .end local v11           #c:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v19           #k:I
    .end local v23           #start:I
    .restart local v21       #n:I
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->height:I

    move v3, v0

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->dest:[I

    goto :goto_0

    .line 228
    .end local v21           #n:I
    .restart local v11       #c:I
    .restart local v14       #end:I
    .restart local v15       #i:I
    .restart local v19       #k:I
    .restart local v23       #start:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v2, v0

    add-int v23, v23, v2

    .line 223
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 234
    .end local v11           #c:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v19           #k:I
    .end local v23           #start:I
    :cond_5
    const/16 v22, 0x1

    .line 235
    .local v22, pass:I
    const/16 v17, 0x8

    .line 236
    .local v17, inc:I
    const/16 v16, 0x0

    .line 237
    .local v16, iline:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->ih:I

    move v2, v0

    if-ge v15, v2, :cond_b

    .line 238
    move/from16 v20, v15

    .line 239
    .local v20, line:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/util/GifDecoder;->interlace:Z

    move v2, v0

    if-eqz v2, :cond_7

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->ih:I

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-lt v0, v1, :cond_6

    .line 241
    add-int/lit8 v22, v22, 0x1

    .line 242
    packed-switch v22, :pswitch_data_0

    .line 258
    :cond_6
    :goto_4
    move/from16 v20, v16

    .line 259
    add-int v16, v16, v17

    .line 261
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->iy:I

    move v2, v0

    add-int v20, v20, v2

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->height:I

    move v2, v0

    move/from16 v0, v20

    move v1, v2

    if-ge v0, v1, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v2, v0

    mul-int v19, v20, v2

    .line 264
    .restart local v19       #k:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->ix:I

    move v2, v0

    add-int v13, v19, v2

    .line 265
    .local v13, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->iw:I

    move v2, v0

    add-int v12, v13, v2

    .line 266
    .local v12, dlim:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v2, v0

    add-int v2, v2, v19

    if-ge v2, v12, :cond_8

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v2, v0

    add-int v12, v19, v2

    .line 269
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->iw:I

    move v2, v0

    mul-int v24, v15, v2

    .local v24, sx:I
    move/from16 v25, v24

    .line 270
    .end local v24           #sx:I
    .local v25, sx:I
    :goto_5
    if-ge v13, v12, :cond_a

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->pixels:[B

    move-object v2, v0

    add-int/lit8 v24, v25, 0x1

    .end local v25           #sx:I
    .restart local v24       #sx:I
    aget-byte v2, v2, v25

    move v0, v2

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 273
    .local v18, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->act:[I

    move-object v2, v0

    aget v11, v2, v18

    .line 274
    .restart local v11       #c:I
    if-eqz v11, :cond_9

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->dest:[I

    move-object v2, v0

    aput v11, v2, v13

    .line 277
    :cond_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v25, v24

    .line 278
    .end local v24           #sx:I
    .restart local v25       #sx:I
    goto :goto_5

    .line 244
    .end local v11           #c:I
    .end local v12           #dlim:I
    .end local v13           #dx:I
    .end local v18           #index:I
    .end local v19           #k:I
    .end local v25           #sx:I
    :pswitch_0
    const/16 v16, 0x4

    .line 245
    goto :goto_4

    .line 247
    :pswitch_1
    const/16 v16, 0x2

    .line 248
    const/16 v17, 0x4

    .line 249
    goto :goto_4

    .line 251
    :pswitch_2
    const/16 v16, 0x1

    .line 252
    const/16 v17, 0x2

    .line 253
    goto :goto_4

    .line 237
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 281
    .end local v20           #line:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/GifDecoder;->dest:[I

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->width:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/util/GifDecoder;->height:I

    move v4, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 282
    return-void

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 802
    :cond_0
    invoke-virtual {p0}, Lmiui/util/GifDecoder;->readBlock()I

    .line 803
    iget v0, p0, Lmiui/util/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmiui/util/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    :cond_1
    return-void
.end method
