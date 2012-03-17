.class public Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;
.super Ljava/lang/Object;
.source "Panorama3dThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$1;,
        Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x5100

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Panorama3dThumbnailUtils"

.field public static final TARGET_HEIGHT_MICRO_THUMBNAIL:I = 0x6c

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field public static final TARGET_WIDTH_MICRO_THUMBNAIL:I = 0xc0

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 137
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 138
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 140
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 142
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 145
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 155
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 140
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 142
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 150
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 151
    goto :goto_2

    .line 152
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 155
    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 124
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 125
    const/4 v1, 0x1

    .line 126
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 132
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 270
    if-ne p1, v10, :cond_2

    .line 271
    .local v10, wantMini:Z
    :goto_0
    if-eqz v10, :cond_3

    const/16 v9, 0x140

    .line 272
    .local v9, targetSize:I
    :goto_1
    if-eqz v10, :cond_4

    const/high16 v5, 0x3

    .line 273
    .local v5, maxPixels:I
    :goto_2
    new-instance v8, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;

    invoke-direct {v8, v11}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;-><init>(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$1;)V

    .line 274
    .local v8, sizedThumbnailBitmap:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;
    const/4 v0, 0x0

    .line 275
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v9, v5, v8}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->createThumbnailFromFullImage(Ljava/lang/String;IILcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;)V

    .line 276
    iget-object v0, v8, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 278
    if-nez v0, :cond_6

    .line 279
    const/4 v3, 0x0

    .line 281
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 283
    .local v1, fd:Ljava/io/FileDescriptor;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 284
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput v12, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 285
    const/4 v12, 0x1

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 286
    const/4 v12, 0x0

    invoke-static {v1, v12, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 287
    iget-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v12, :cond_0

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v12, v13, :cond_0

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-ne v12, v13, :cond_5

    .line 300
    :cond_0
    if-eqz v4, :cond_1

    .line 302
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_3
    return-object v11

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #maxPixels:I
    .end local v8           #sizedThumbnailBitmap:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;
    .end local v9           #targetSize:I
    .end local v10           #wantMini:Z
    :cond_2
    move v10, v12

    .line 270
    goto :goto_0

    .line 271
    .restart local v10       #wantMini:Z
    :cond_3
    const/16 v9, 0x60

    goto :goto_1

    .line 272
    .restart local v9       #targetSize:I
    :cond_4
    const/16 v5, 0x5100

    goto :goto_2

    .line 290
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #maxPixels:I
    .restart local v6       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #sizedThumbnailBitmap:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;
    :cond_5
    :try_start_3
    invoke-static {v6, v9, v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v11

    iput v11, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 291
    const/4 v11, 0x0

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 292
    const/4 v11, 0x0

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 293
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 294
    const/4 v11, 0x0

    invoke-static {v1, v11, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    .line 300
    if-eqz v4, :cond_6

    .line 302
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 310
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    :goto_4
    const/4 v11, 0x3

    if-ne p1, v11, :cond_7

    .line 312
    const/16 v11, 0xc0

    const/16 v12, 0x6c

    const/4 v13, 0x2

    invoke-static {v0, v11, v12, v13}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 319
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    .line 320
    .local v7, ret:Z
    if-nez v7, :cond_8

    .line 321
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v7           #ret:Z
    :cond_8
    :goto_5
    move-object v11, v0

    .line 332
    goto :goto_3

    .line 295
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v11

    .line 300
    :goto_6
    if-eqz v3, :cond_6

    .line 302
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 303
    :catch_1
    move-exception v11

    goto :goto_4

    .line 300
    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v3, :cond_9

    .line 302
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 305
    :cond_9
    :goto_8
    throw v11

    .line 303
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v12

    goto :goto_3

    :catch_3
    move-exception v11

    goto :goto_4

    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v12

    goto :goto_8

    .line 326
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    :catch_5
    move-exception v11

    goto :goto_5

    .line 300
    .end local v2           #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 295
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v11

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method private static createThumbnailFromFullImage(Ljava/lang/String;IILcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 2
    .parameter "filePath"
    .parameter "targetSize"
    .parameter "maxPixels"
    .parameter "sizedThumbBitmap"

    .prologue
    .line 342
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 344
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    .local v0, fullOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 346
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 347
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 349
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 100
    :goto_0
    return-object v2

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 93
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 97
    .local v1, scale:F
    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 99
    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 100
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 95
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #scale:F
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_1
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "options"

    .prologue
    .line 167
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    const/16 v27, 0x1

    .line 168
    .local v27, scaleUp:Z
    :goto_0
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_3

    const/16 v25, 0x1

    .line 170
    .local v25, recycle:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 171
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 172
    .local v18, deltaY:I
    if-nez v27, :cond_4

    if-ltz v16, :cond_0

    if-gez v18, :cond_4

    .line 179
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 180
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 182
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 183
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 184
    .local v19, deltaYHalf:I
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 187
    .local v28, src:Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 188
    .local v21, dstX:I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 189
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 191
    if-eqz v25, :cond_1

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v28           #src:Landroid/graphics/Rect;
    :cond_1
    :goto_2
    return-object v11

    .line 167
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v16           #deltaX:I
    .end local v18           #deltaY:I
    .end local v25           #recycle:Z
    .end local v27           #scaleUp:Z
    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v27       #scaleUp:Z
    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 196
    .restart local v16       #deltaX:I
    .restart local v18       #deltaY:I
    .restart local v25       #recycle:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 197
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 199
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 200
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    .line 202
    .local v29, viewAspect:F
    cmpl-float v3, v12, v29

    if-lez v3, :cond_9

    .line 203
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v26, v3, v13

    .line 204
    .local v26, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_5

    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-lez v3, :cond_8

    .line 205
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 219
    :goto_3
    if-eqz p0, :cond_c

    .line 221
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 227
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_4
    if-eqz v25, :cond_6

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_6

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 232
    .local v23, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 234
    .local v24, dy1:I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 236
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_1

    .line 237
    if-nez v25, :cond_7

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 238
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 207
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #dx1:I
    .end local v24           #dy1:I
    :cond_8
    const/16 p0, 0x0

    goto :goto_3

    .line 210
    .end local v26           #scale:F
    :cond_9
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v26, v3, v14

    .line 211
    .restart local v26       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_a

    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-lez v3, :cond_b

    .line 212
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_3

    .line 214
    :cond_b
    const/16 p0, 0x0

    goto :goto_3

    .line 224
    :cond_c
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_4
.end method
