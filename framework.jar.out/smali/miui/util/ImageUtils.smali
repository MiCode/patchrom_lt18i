.class public Lmiui/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSize(Lmiui/util/InputStreamLoader;I)I
    .locals 8
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 29
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 31
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v4

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 32
    .local v2, size:D
    const/4 v1, 0x1

    .line 33
    .local v1, roundedSize:I
    :goto_0
    mul-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 34
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return v1
.end method

.method public static final getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 54
    invoke-static {}, Lmiui/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 55
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lmiui/util/ImageUtils;->computeSampleSize(Lmiui/util/InputStreamLoader;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, retry:I
    move v4, v3

    .line 60
    .end local v3           #retry:I
    .local v4, retry:I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #retry:I
    .restart local v3       #retry:I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 76
    :cond_0
    :goto_1
    return-object v0

    .line 65
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 66
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 67
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    move v4, v3

    .end local v3           #retry:I
    .restart local v4       #retry:I
    goto :goto_0

    .line 68
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    .end local v4           #retry:I
    .restart local v3       #retry:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 69
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v5
.end method

.method public static final getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "streamLoader"

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 44
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    .line 50
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V

    throw v1
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 22
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 25
    return-object v0
.end method

.method public static saveBitmapToLocal(Lmiui/util/InputStreamLoader;Ljava/lang/String;II)Z
    .locals 7
    .parameter "streamLoader"
    .parameter "path"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 80
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 81
    :cond_0
    const/4 p0, 0x0

    .line 129
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return p0

    .line 84
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    const/4 v1, 0x0

    .line 85
    .local v1, result:Z
    invoke-static {p0}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 86
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_2

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v2, :cond_3

    :cond_2
    move p0, v1

    .line 87
    goto :goto_0

    .line 90
    :cond_3
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v2, p2, :cond_4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    if-ne v0, p3, :cond_4

    .line 91
    invoke-static {p0, p1}, Lmiui/util/ImageUtils;->saveToFile(Lmiui/util/InputStreamLoader;Ljava/lang/String;)Z

    move-result p0

    .end local v1           #result:Z
    .local p0, result:Z
    goto :goto_0

    .line 94
    .restart local v1       #result:Z
    .local p0, streamLoader:Lmiui/util/InputStreamLoader;
    :cond_4
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    :try_start_0
    invoke-static {p0, v0}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    .local v2, srcBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 96
    .local v4, srcWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 103
    .local v3, srcHeight:I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    .local v0, matrix:Landroid/graphics/Matrix;
    const/high16 p0, 0x3f80

    int-to-float v5, p2

    mul-float/2addr p0, v5

    int-to-float v5, v4

    div-float/2addr p0, v5

    const/high16 v5, 0x3f80

    int-to-float v6, p3

    mul-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {p0, v5}, Ljava/lang/Math;->max(FF)F

    .end local p0           #streamLoader:Lmiui/util/InputStreamLoader;
    move-result p0

    .line 105
    .local p0, ratio:F
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 106
    int-to-float v5, p2

    int-to-float v4, v4

    mul-float/2addr v4, p0

    sub-float v4, v5, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, p3

    int-to-float v3, v3

    mul-float/2addr p0, v3

    sub-float p0, v5, p0

    const/high16 v3, 0x4000

    div-float/2addr p0, v3

    invoke-virtual {v0, v4, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 110
    .end local v3           #srcHeight:I
    .end local v4           #srcWidth:I
    .end local p0           #ratio:F
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 111
    .local p2, destBmp:Landroid/graphics/Bitmap;
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 112
    .local p0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    const/4 p3, 0x0

    invoke-virtual {p0, v2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 115
    .end local p3
    new-instance p0, Ljava/io/FileOutputStream;

    .end local p0           #canvas:Landroid/graphics/Canvas;
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 116
    .local p0, outputStream:Ljava/io/FileOutputStream;
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p1
    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 117
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 119
    if-eq p2, v2, :cond_5

    .line 120
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    const/4 p0, 0x1

    .end local v1           #result:Z
    .local p0, result:Z
    goto/16 :goto_0

    .line 124
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v2           #srcBmp:Landroid/graphics/Bitmap;
    .end local p0           #result:Z
    .end local p2           #destBmp:Landroid/graphics/Bitmap;
    .restart local v1       #result:Z
    :catch_0
    move-exception p0

    .line 125
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move p0, v1

    .line 127
    .end local v1           #result:Z
    .local p0, result:Z
    goto/16 :goto_0

    .line 126
    .end local p0           #result:Z
    .restart local v1       #result:Z
    :catch_1
    move-exception p0

    move p0, v1

    .end local v1           #result:Z
    .restart local p0       #result:Z
    goto/16 :goto_0
.end method

.method public static saveToFile(Lmiui/util/InputStreamLoader;Ljava/lang/String;)Z
    .locals 6
    .parameter "streamLoader"
    .parameter "path"

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 135
    .local v3, result:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    .line 137
    .local v1, inputStream:Ljava/io/InputStream;
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v4, -0x1

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 138
    .local v0, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    invoke-virtual {v0, v2}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 140
    invoke-virtual {p0}, Lmiui/util/InputStreamLoader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v3, 0x1

    .line 144
    .end local v0           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 142
    :catch_0
    move-exception v4

    goto :goto_0
.end method
