.class public Lcom/sonyericsson/android/camera3d/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final FIRST_REDUCE_RATIO_FULL_IMG:I = 0x2

.field private static final FULL_SIZE_MAX_LENGTH:I = 0x401

.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

.field private mImageUri:Landroid/net/Uri;

.field private mOption:Landroid/graphics/BitmapFactory$Options;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "orientation"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    .line 82
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageUri:Landroid/net/Uri;

    .line 83
    iput p3, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOrientation:I

    .line 84
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    .line 85
    return-void
.end method

.method private calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "st"
    .parameter "opt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 161
    const/4 v1, 0x2

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, temp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    :cond_0
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v2, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_2

    .line 171
    :cond_1
    const-string v1, "ImageLoader"

    const-string v2, "Bitmap read error"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Failed to calculate bounds of bitmap"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_2
    return-void
.end method

.method private calcRatio(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "opt"
    .parameter "firstRatio"
    .parameter "limit"

    .prologue
    const/4 v5, 0x1

    .line 270
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v4, v6, p2

    .line 271
    .local v4, w:I
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v0, v6, p2

    .line 273
    .local v0, h:I
    add-int v6, v4, p3

    add-int/lit8 v6, v6, -0x1

    div-int v3, v6, p3

    .line 274
    .local v3, ratioW:I
    add-int v6, v0, p3

    add-int/lit8 v6, v6, -0x1

    div-int v2, v6, p3

    .line 275
    .local v2, ratioH:I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 277
    .local v1, ratio:I
    if-nez v1, :cond_0

    .line 289
    :goto_0
    return v5

    .line 282
    :cond_0
    if-le v1, v5, :cond_2

    .line 283
    div-int v5, v4, v1

    if-gt v5, p3, :cond_1

    div-int v5, v0, v1

    if-le v5, p3, :cond_2

    .line 284
    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    move v5, v1

    .line 289
    goto :goto_0
.end method

.method private decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "st"
    .parameter "opt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 250
    .local v1, padding:Landroid/graphics/Rect;
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .local v0, fullbmp:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "st"
    .parameter "opt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    .line 204
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 206
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 209
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 210
    const-string v1, "ImageLoader"

    const-string v2, "Decode read error"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Failed to decode full size image"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    iget v2, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOrientation:I

    if-eqz v2, :cond_1

    .line 216
    move-object v0, v7

    .line 217
    .local v0, temp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .local v5, rotate:Landroid/graphics/Matrix;
    const/high16 v2, 0x42b4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    move-object v0, v7

    .line 225
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    .end local v0           #temp:Landroid/graphics/Bitmap;
    .end local v5           #rotate:Landroid/graphics/Matrix;
    :cond_1
    return-object v7
.end method


# virtual methods
.method public load()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, st:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 100
    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/ImageManager;->crOpenInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_0

    .line 103
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V

    .line 106
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v6, 0x401

    invoke-direct {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->calcRatio(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/ImageManager;->crOpenInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_1

    .line 115
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7

    .line 129
    :cond_1
    if-eqz v2, :cond_2

    .line 131
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_0
    const/4 v2, 0x0

    .line 139
    :cond_2
    :goto_1
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/InvalidObjectException;
    :try_start_2
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load full size error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v2, :cond_2

    .line 131
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 136
    .end local v0           #e:Ljava/io/InvalidObjectException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 132
    .restart local v0       #e:Ljava/io/InvalidObjectException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    if-eqz v2, :cond_2

    .line 131
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 136
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 132
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    if-eqz v2, :cond_2

    .line 131
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 132
    .restart local v0       #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string v3, "ImageLoader"

    const-string v4, "Maybe File access error."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 129
    if-eqz v2, :cond_2

    .line 131
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 136
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 132
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close stream failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 131
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 136
    :goto_6
    const/4 v2, 0x0

    :cond_3
    throw v3

    .line 132
    :catch_9
    move-exception v0

    .line 133
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
