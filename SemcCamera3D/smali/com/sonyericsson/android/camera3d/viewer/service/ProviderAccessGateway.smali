.class public Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
.super Ljava/lang/Object;
.source "ProviderAccessGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;
    }
.end annotation


# static fields
.field private static final MPO_QUERY_PROTECTION:[Ljava/lang/String; = null

.field private static final QUERY_PAGINGSIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ProviderAccessGateway"


# instance fields
.field private final mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->MPO_QUERY_PROTECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    .line 65
    return-void
.end method


# virtual methods
.method public delJPGFileid(Ljava/lang/String;)I
    .locals 6
    .parameter "dataString"

    .prologue
    const/4 v4, -0x1

    .line 388
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 389
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 390
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 391
    .local v1, deletedNumber:I
    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v4

    .line 395
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 396
    if-eqz v2, :cond_0

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, where:Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v4, v1

    .line 404
    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;)Z
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 305
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 306
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v4

    .line 310
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_0

    .line 315
    if-eqz p1, :cond_0

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v2, p1, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 321
    .local v1, number:I
    if-ne v1, v5, :cond_0

    move v4, v5

    .line 325
    goto :goto_0
.end method

.method public getCount(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)I
    .locals 9
    .parameter "type"

    .prologue
    const/4 v8, 0x0

    .line 153
    const/4 v7, 0x0

    .line 155
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, where:Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v4           #where:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    if-nez v0, :cond_0

    move v1, v8

    .line 170
    :goto_1
    return v1

    .line 164
    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_1
.end method

.method public getMicroThumbnail(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 335
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 336
    .local v3, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-object v4

    .line 340
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 341
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 342
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Lcom/sonyericsson/android/camera3d/viewer/Constants;->BITMAP_PIXELFORMAT:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 344
    int-to-long v5, p1

    const/4 v7, 0x3

    :try_start_0
    invoke-static {v3, v5, v6, v7, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "ProviderAccessGateway"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t create Mini thumbnail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ProviderAccessGateway"

    const-string v6, "Exception occurs when getMicroThumbnail()."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMiniThumbnail(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 368
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 369
    .local v3, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-object v4

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 373
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 374
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Lcom/sonyericsson/android/camera3d/viewer/Constants;->BITMAP_PIXELFORMAT:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 376
    int-to-long v5, p1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v3, v5, v6, v7, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "ProviderAccessGateway"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t create Mini thumbnail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMiniThumbnailData(I)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 267
    const/4 v7, 0x0

    .line 269
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "image_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, where:Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v4           #where:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_1

    .line 283
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    :goto_1
    return-object v1

    .line 278
    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v1, v8

    .line 290
    goto :goto_1

    .line 287
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getRelativeMedia(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 10
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 294
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "datetaken"

    aput-object v6, v2, v5

    const/4 v6, 0x1

    iget-wide v8, p1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mDataTaken:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->MPO_QUERY_PROTECTION:[Ljava/lang/String;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v7

    .line 296
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 299
    :goto_0
    return-object v4

    :cond_0
    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->create(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v4

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "protection"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 69
    .local v6, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 71
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 79
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v7

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 17
    .parameter "uri"
    .parameter "protection"
    .parameter "where"
    .parameter "order"
    .parameter "limit"
    .parameter "offset"

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    .line 91
    .local v9, context:Landroid/content/Context;
    if-eqz v9, :cond_2

    .line 92
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 93
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 94
    .local v6, orderWithLimit:Ljava/lang/String;
    if-eqz p4, :cond_0

    if-lez p5, :cond_0

    .line 95
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s limit %d offset %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p4, v5, v15

    const/4 v15, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v15

    const/4 v15, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v15

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 99
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v8, buffer:Ljava/lang/StringBuffer;
    move-object/from16 v7, p2

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v11, v7, v12

    .line 101
    .local v11, i:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 106
    .end local v11           #i:Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v1, task:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;
    new-instance v14, Ljava/lang/Thread;

    invoke-direct {v14, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .local v14, thread:Ljava/lang/Thread;
    const/16 v3, 0xa

    invoke-virtual {v14, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 109
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    const-wide/16 v3, 0xbb8

    :try_start_1
    invoke-virtual {v14, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 120
    .end local v1           #task:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v6           #orderWithLimit:Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #buffer:Ljava/lang/StringBuffer;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #thread:Ljava/lang/Thread;
    :goto_2
    return-object v3

    .line 112
    .restart local v1       #task:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #orderWithLimit:Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v8       #buffer:Ljava/lang/StringBuffer;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #thread:Ljava/lang/Thread;
    :catch_0
    move-exception v10

    .line 113
    .local v10, e:Ljava/lang/InterruptedException;
    const-string v3, "ProviderAccessGateway"

    const-string v4, "reloadReviewImage thread: Interrupted."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 117
    .end local v1           #task:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v6           #orderWithLimit:Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #buffer:Ljava/lang/StringBuffer;
    .end local v10           #e:Ljava/lang/InterruptedException;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #thread:Ljava/lang/Thread;
    :catch_1
    move-exception v3

    .line 120
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public select(J)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 175
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v2, v5

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->MPO_QUERY_PROTECTION:[Ljava/lang/String;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v7

    .line 177
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 180
    :goto_0
    return-object v4

    :cond_0
    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->create(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v4

    goto :goto_0
.end method

.method public select(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 9
    .parameter "type"

    .prologue
    .line 185
    const/4 v7, 0x0

    .line 187
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "type"

    aput-object v8, v3, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, where:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s DESC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "datetaken"

    aput-object v8, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, order:Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/PagingCursor;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->MPO_QUERY_PROTECTION:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/16 v6, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #order:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    if-nez v0, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 204
    :goto_1
    return-object v1

    .line 198
    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->create(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v1

    goto :goto_1
.end method

.method public selectWithCurrentContent(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 17
    .parameter "type"
    .parameter "current"
    .parameter "photoStackNum"

    .prologue
    .line 210
    const/4 v8, 0x0

    .line 213
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=\'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v16, "type"

    aput-object v16, v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, where:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s DESC"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v16, "datetaken"

    aput-object v16, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, order:Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/PagingCursor;

    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->MPO_QUERY_PROTECTION:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/16 v7, 0x64

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/util/PagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #order:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_4

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 230
    .local v15, scheme:Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->createWithCurrentFile(Landroid/database/Cursor;Ljava/io/File;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v2

    .line 262
    .end local v10           #filename:Ljava/lang/String;
    .end local v15           #scheme:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 224
    .end local v1           #cursor:Landroid/database/Cursor;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    move-object v1, v8

    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v1       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 234
    .restart local v15       #scheme:Ljava/lang/String;
    :cond_0
    const-string v2, "content"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 237
    .local v11, id:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->select(J)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v14

    .line 238
    .local v14, mpoInfos:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    const/4 v13, 0x0

    .line 239
    .local v13, info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-eqz v14, :cond_1

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v13

    .line 242
    :cond_1
    if-eqz v13, :cond_2

    .line 243
    move/from16 v0, p3

    invoke-static {v1, v13, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->createWithCurrentMpoInfo(Landroid/database/Cursor;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v2

    goto :goto_1

    .line 246
    :cond_2
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->create(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    goto :goto_1

    .line 249
    .end local v11           #id:J
    .end local v13           #info:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .end local v14           #mpoInfos:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    :catch_1
    move-exception v9

    .line 250
    .local v9, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "ProviderAccessGateway"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filed to find the content specified by id. :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v9           #e:Ljava/lang/UnsupportedOperationException;
    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->create(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v2

    goto :goto_1

    .line 253
    :catch_2
    move-exception v9

    .line 254
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v2, "ProviderAccessGateway"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filed to find the content specified by id. :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 261
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v15           #scheme:Ljava/lang/String;
    :cond_4
    const-string v2, "ProviderAccessGateway"

    const-string v3, "filed the query to find the contents."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public startScan()V
    .locals 5

    .prologue
    .line 409
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 410
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 413
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.android.media.panorama3d.provider.SCAN_MEDIA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    const-string v3, "ProviderAccessGateway"

    const-string v4, "start media scanning...success"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ProviderAccessGateway"

    const-string v4, "start media scanning...failed"

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
