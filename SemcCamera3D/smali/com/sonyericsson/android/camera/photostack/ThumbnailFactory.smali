.class public Lcom/sonyericsson/android/camera/photostack/ThumbnailFactory;
.super Ljava/lang/Object;
.source "ThumbnailFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMicroThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "info"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 126
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 127
    .local v5, temp:Landroid/graphics/Bitmap;
    :try_start_0
    iget v6, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 139
    const-string v6, "ThumbnailFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createMicroThumbnail() wrong type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    if-eqz v5, :cond_0

    .line 144
    const/16 v6, 0x60

    const/16 v7, 0x60

    invoke-static {v5, v6, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 154
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 155
    const-string v6, "ThumbnailFactory"

    const-string v7, "createMicroThumbnail() can\'t create a Micro thumbnail."

    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v4, 0x0

    .line 160
    :goto_2
    return-object v4

    .line 129
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailFactory;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 130
    goto :goto_0

    .line 134
    :pswitch_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v3, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x4

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 137
    goto :goto_0

    .line 148
    .end local v3           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 149
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "ThumbnailFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createMicroThumbnail() got exception ex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "ThumbnailFactory"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    iget v6, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    invoke-static {v0, v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailFactory;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 160
    .local v4, result:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filePath"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 187
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 189
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 196
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 191
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v3, "ThumbnailFactory"

    const-string v4, "Assume this is a corrupt video file."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 197
    :catch_2
    move-exception v1

    .line 198
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 193
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v3, "ThumbnailFactory"

    const-string v4, "Assume this is a corrupt video file."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 197
    :catch_4
    move-exception v1

    .line 198
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 196
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 199
    :goto_1
    throw v3

    .line 197
    :catch_5
    move-exception v1

    .line 198
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    const-string v4, "ThumbnailFactory"

    const-string v5, "Ignore failures while cleaning up."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getMicroThumbnail(Landroid/content/ContentResolver;IIIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "cr"
    .parameter "type"
    .parameter "id"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "orientationDeg"

    .prologue
    const/4 v5, 0x3

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, microThumb:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 57
    int-to-long v3, p2

    invoke-static {p0, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    :goto_0
    if-nez v0, :cond_2

    .line 68
    const-string v3, "ThumbnailFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not get MicroThumbnail. id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v2, 0x0

    .line 73
    :goto_1
    return-object v2

    .line 59
    :cond_0
    if-ne p1, v5, :cond_1

    .line 60
    int-to-long v3, p2

    invoke-static {p0, v3, v4, v5, v1}, Lcom/sonyericsson/android/camera/photostack/QueryParameterAdapter;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    int-to-long v3, p2

    invoke-static {p0, v3, v4, v5, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v0, p5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailFactory;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 73
    .local v2, result:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static getMiniThumbnail(Landroid/content/ContentResolver;IIIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "cr"
    .parameter "type"
    .parameter "id"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "orientationDeg"

    .prologue
    const/4 v5, 0x1

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, miniThumb:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 90
    if-ne p1, v5, :cond_0

    .line 91
    int-to-long v3, p2

    invoke-static {p0, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->reset()V

    .line 106
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 108
    if-nez v0, :cond_2

    .line 111
    const/4 v2, 0x0

    .line 115
    :goto_1
    return-object v2

    .line 93
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 94
    int-to-long v3, p2

    invoke-static {p0, v3, v4, v5, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    int-to-long v3, p2

    invoke-static {p0, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {v0, p5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailFactory;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 115
    .local v2, result:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "degree"

    .prologue
    const/high16 v10, 0x4000

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 165
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 166
    .local v4, h:I
    move-object v0, p0

    .line 168
    .local v0, result:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 169
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 170
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v1, p1

    int-to-float v2, v3

    div-float/2addr v2, v10

    int-to-float v6, v4

    div-float/2addr v6, v10

    invoke-virtual {v5, v1, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 172
    .local v9, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    move-object v0, v9

    .line 180
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v9           #temp:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v8

    .line 176
    .local v8, exArg:Ljava/lang/IllegalArgumentException;
    const-string v1, "ThumbnailFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v8           #exArg:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 178
    .local v7, ex:Ljava/lang/Exception;
    const-string v1, "ThumbnailFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
