.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;
.super Ljava/lang/Object;
.source "MpoThumbnailFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VALID_LENGTH_MAX:I = 0x895440

.field private static final VALID_LENGTH_MIN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V
    .locals 4
    .parameter "mpoReader"

    .prologue
    .line 234
    if-eqz p0, :cond_0

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->closeMpoFile()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not close the specified object, because exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static computeSampleSize([BII)I
    .locals 7
    .parameter "imageData"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 174
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    const/4 v5, 0x0

    array-length v6, p0

    invoke-static {p0, v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 181
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    :cond_0
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 186
    .local v1, baseWidth:I
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 188
    .local v0, baseHeight:I
    const/4 v4, 0x1

    .line 189
    .local v4, sample:I
    :goto_0
    mul-int/lit8 v5, v4, 0x2

    invoke-static {v1, v0, p1, p2, v5}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->validateSampleSize(IIIII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 203
    :cond_1
    return v4
.end method

.method public static getMicroThumbnail(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "mpo"

    .prologue
    const/4 v6, 0x0

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->getRepresentativeImageStream(Ljava/io/File;)[B

    move-result-object v3

    .line 65
    .local v3, imageData:[B
    if-nez v3, :cond_0

    .line 104
    .end local v3           #imageData:[B
    :goto_0
    return-object v6

    .line 69
    .restart local v3       #imageData:[B
    :cond_0
    const/16 v5, 0xc0

    .line 70
    .local v5, width:I
    const/16 v2, 0x6c

    .line 72
    .local v2, height:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Lcom/sonyericsson/android/camera3d/viewer/Constants;->BITMAP_PIXELFORMAT:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 74
    invoke-static {v3, v5, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->computeSampleSize([BII)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v7, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x2

    invoke-static {v0, v5, v2, v7}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 96
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #imageData:[B
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v7, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Out of memory error occurs when 3D album creates a micro-thumbnail for the specified data;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "This error is not critical, because it may be tempolary "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "situation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getRepresentativeImageStream(Ljava/io/File;)[B
    .locals 5
    .parameter "mpo"

    .prologue
    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, mpoReader:Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->openMpoFile(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/mpo/MpoReader;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getExtractJpegNum()I

    move-result v4

    if-lez v4, :cond_0

    .line 115
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getRepresentativeImageIndex()I

    move-result v1

    .line 116
    .local v1, imageIndex:I
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getJpegDataLength(I)I

    move-result v2

    .line 118
    .local v2, imageLength:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->validateImageDataLength(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    new-array v0, v2, [B

    .line 120
    .local v0, imageData:[B
    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->getJpegData(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_5

    .line 159
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    .line 162
    .end local v0           #imageData:[B
    .end local v1           #imageIndex:I
    .end local v2           #imageLength:I
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    .line 162
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v4

    .line 159
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    goto :goto_1

    .line 139
    :catch_1
    move-exception v4

    .line 159
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    goto :goto_1

    .line 144
    :catch_2
    move-exception v4

    .line 159
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    goto :goto_1

    .line 148
    :catch_3
    move-exception v4

    .line 159
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    goto :goto_1

    .line 152
    :catch_4
    move-exception v4

    .line 159
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    goto :goto_1

    .line 155
    :catch_5
    move-exception v4

    .line 159
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailFactory;->closeSilent(Lcom/sonyericsson/android/camera3d/mpo/MpoReader;)V

    throw v4
.end method

.method private static validateImageDataLength(I)Z
    .locals 2
    .parameter "bytes"

    .prologue
    const/4 v0, 0x1

    .line 226
    if-lt p0, v0, :cond_0

    const v1, 0x895440

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateSampleSize(IIIII)Z
    .locals 3
    .parameter "baseWidth"
    .parameter "baseHeight"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "sampleSize"

    .prologue
    .line 216
    div-int v1, p0, p4

    .line 217
    .local v1, w:I
    div-int v0, p1, p4

    .line 218
    .local v0, h:I
    if-lt v1, p2, :cond_0

    if-lt v0, p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
