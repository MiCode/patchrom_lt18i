.class public final Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;
.super Ljava/lang/Object;
.source "Panorama3dMediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mpo3dPictureThumb"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.sonyericsson.android.media.panorama3d.provider.thumbnail"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.sonyericsson.android.media.panorama3d.provider.thumbnail"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final FULL_SCREEN_KIND:I = 0x2

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final KIND:Ljava/lang/String; = "kind"

.field public static final MICRO_KIND:I = 0x3

.field public static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "mpo_3d_pictures_thumb"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 269
    const-string v0, "content://com.sonyericsson.android.media.panorama3d.provider/mpo_3d_pictures_thumb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    .line 323
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->PROJECTION:[Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 463
    .local v4, thumbUri:Landroid/net/Uri;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 464
    .local v2, thumbId:J
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 465
    const-string v5, "r"

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 466
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v2           #thumbId:J
    :goto_0
    return-object v0

    .line 477
    :catch_0
    move-exception v5

    goto :goto_0

    .line 473
    :catch_1
    move-exception v5

    goto :goto_0

    .line 469
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "cr"
    .parameter "origId"
    .parameter "kind"
    .parameter "options"

    .prologue
    .line 353
    const/4 v11, 0x0

    .line 354
    .local v11, bitmap:Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 357
    .local v14, filePath:Ljava/lang/String;
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->instance(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;

    move-result-object v18

    .line 358
    .local v18, thumbFile:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->getMagic(J)J

    move-result-wide v16

    .line 359
    .local v16, magic:J
    const-wide/16 v7, 0x0

    cmp-long v3, v16, v7

    if-eqz v3, :cond_6

    .line 360
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 361
    sget-object v5, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5

    .line 362
    :try_start_0
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    if-nez v3, :cond_0

    .line 363
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    .line 365
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 366
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    array-length v8, v8

    move-object/from16 v0, p4

    invoke-static {v3, v7, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 368
    if-nez v11, :cond_1

    .line 374
    :cond_1
    monitor-exit v5

    move-object v3, v11

    .line 455
    :cond_2
    :goto_0
    return-object v3

    .line 374
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 376
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 377
    const-string v13, "image_id="

    .line 378
    .local v13, column:Ljava/lang/String;
    const/4 v12, 0x0

    .line 380
    .local v12, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 381
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 382
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v12, v3, v0, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 383
    if-eqz v11, :cond_5

    .line 388
    if-eqz v12, :cond_4

    .line 389
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v3, v11

    goto :goto_0

    .line 388
    :cond_5
    if-eqz v12, :cond_6

    .line 389
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 394
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #column:Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    .line 396
    .restart local v12       #c:Landroid/database/Cursor;
    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "blocking"

    const-string v7, "1"

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 398
    .local v4, blockingUri:Landroid/net/Uri;
    sget-object v5, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    .line 400
    if-nez v12, :cond_8

    .line 401
    const/4 v3, 0x0

    .line 452
    if-eqz v12, :cond_2

    .line 453
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 388
    .end local v4           #blockingUri:Landroid/net/Uri;
    .restart local v13       #column:Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v12, :cond_7

    .line 389
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 404
    .end local v13           #column:Ljava/lang/String;
    .restart local v4       #blockingUri:Landroid/net/Uri;
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    .line 405
    :try_start_3
    sget-object v5, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 406
    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    if-nez v3, :cond_9

    .line 407
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    .line 409
    :cond_9
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 410
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->sThumbBuf:[B

    array-length v8, v8

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 411
    if-nez v11, :cond_a

    .line 417
    :cond_a
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 427
    :cond_b
    :goto_1
    if-nez v11, :cond_14

    .line 428
    :try_start_5
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mpo_3d_pictures_thumb"

    const-string v7, "mpo_3d_pictures"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 430
    .local v6, uri:Landroid/net/Uri;
    if-nez v14, :cond_13

    .line 431
    if-eqz v12, :cond_c

    .line 432
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_c
    sget-object v7, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 434
    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    if-nez v3, :cond_12

    .line 435
    :cond_d
    const/4 v3, 0x0

    .line 452
    if-eqz v12, :cond_2

    .line 453
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 417
    .end local v6           #uri:Landroid/net/Uri;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 447
    .end local v4           #blockingUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 452
    if-eqz v12, :cond_e

    .line 453
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    :goto_2
    move-object v3, v11

    .line 455
    goto/16 :goto_0

    .line 418
    .restart local v4       #blockingUri:Landroid/net/Uri;
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_10

    .line 419
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 420
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v12, v3, v0, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1

    .line 423
    :cond_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported kind: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 452
    .end local v4           #blockingUri:Landroid/net/Uri;
    :catchall_3
    move-exception v3

    if-eqz v12, :cond_11

    .line 453
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    .line 437
    .restart local v4       #blockingUri:Landroid/net/Uri;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_12
    const/4 v3, 0x1

    :try_start_9
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 439
    :cond_13
    const/4 v3, 0x0

    invoke-static {v3, v14}, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->getJpegImageAndTypeFromMpoPicture(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 441
    .local v15, jpegImagePath:Ljava/lang/String;
    if-eqz v15, :cond_14

    .line 442
    move/from16 v0, p3

    invoke-static {v15, v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v11

    .line 452
    .end local v6           #uri:Landroid/net/Uri;
    .end local v15           #jpegImagePath:Ljava/lang/String;
    :cond_14
    if-eqz v12, :cond_e

    .line 453
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
