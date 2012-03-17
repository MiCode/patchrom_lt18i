.class Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
.super Ljava/lang/Object;
.source "Panorama3dThumbRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;
    }
.end annotation


# static fields
.field static final PRIORITY_HIGH:I = 0x14

.field static final PRIORITY_NORMAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Panorama3dThumbRequest"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field mCr:Landroid/content/ContentResolver;

.field mMagic:J

.field mOrigColumnName:Ljava/lang/String;

.field mOrigId:J

.field mPath:Ljava/lang/String;

.field mPriority:I

.field mRequestTime:J

.field mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

.field mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    .locals 2
    .parameter "contentResolver"
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mRequestTime:J

    .line 80
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->WAIT:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mCr:Landroid/content/ContentResolver;

    .line 104
    iput-object p2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mPath:Ljava/lang/String;

    .line 105
    iput p4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mPriority:I

    .line 106
    iput-wide p5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mMagic:J

    .line 107
    iput-object p3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mUri:Landroid/net/Uri;

    .line 108
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigId:J

    .line 109
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mThumbUri:Landroid/net/Uri;

    .line 110
    const-string v0, "image_id"

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigColumnName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private static UpdateAttributesOfJepgImage(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 12
    .parameter "values"
    .parameter "imageFilePath"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 250
    const/4 v2, 0x0

    .line 252
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 258
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_2

    .line 259
    const-string v7, "datetaken"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 260
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy:MM:dd HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 262
    .local v0, dateFormat:Ljava/text/DateFormat;
    const-string v7, "DateTime"

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, time_taken:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 264
    new-instance v7, Ljava/text/ParsePosition;

    invoke-direct {v7, v11}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 265
    .local v1, dateTime:Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 266
    const-string v7, "datetaken"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    .end local v0           #dateFormat:Ljava/text/DateFormat;
    .end local v1           #dateTime:Ljava/util/Date;
    .end local v6           #time_taken:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    new-array v4, v7, [F

    .line 271
    .local v4, latlng:[F
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    const-string v7, "latitude"

    aget v8, v4, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 273
    const-string v7, "longitude"

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 275
    :cond_1
    const-string v7, "Orientation"

    invoke-virtual {v2, v7, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 276
    .local v5, orientation:I
    if-eq v5, v10, :cond_2

    .line 277
    const-string v7, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    .end local v4           #latlng:[F
    .end local v5           #orientation:I
    :cond_2
    return-void

    .line 253
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method execute()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->instance(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;

    move-result-object v15

    .line 154
    .local v15, miniThumbFile:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mMagic:J

    .line 155
    .local v12, magic:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-eqz v2, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigId:J

    invoke-virtual {v15, v4, v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->getMagic(J)J

    move-result-wide v10

    .line 157
    .local v10, fileMagic:J
    cmp-long v2, v10, v12

    if-nez v2, :cond_5

    .line 158
    const/16 v16, 0x0

    .line 159
    .local v16, pfd:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mThumbUri:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigColumnName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, " = "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 162
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 170
    :cond_0
    if-eqz v9, :cond_1

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_1
    if-eqz v16, :cond_5

    .line 174
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide v6, v12

    .line 240
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #fileMagic:J
    .end local v12           #magic:J
    .end local v16           #pfd:Landroid/os/ParcelFileDescriptor;
    .local v6, magic:J
    :goto_0
    return-void

    .line 166
    .end local v6           #magic:J
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #fileMagic:J
    .restart local v12       #magic:J
    .restart local v16       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    .line 170
    if-eqz v9, :cond_2

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_2
    if-eqz v16, :cond_5

    .line 174
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide v6, v12

    .line 175
    .end local v12           #magic:J
    .restart local v6       #magic:J
    goto :goto_0

    .line 170
    .end local v6           #magic:J
    .restart local v12       #magic:J
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_3
    if-eqz v16, :cond_4

    .line 174
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    move-wide v6, v12

    .line 175
    .end local v12           #magic:J
    .restart local v6       #magic:J
    goto :goto_0

    .end local v6           #magic:J
    .restart local v12       #magic:J
    :cond_4
    throw v2

    .line 181
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #fileMagic:J
    .end local v16           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_5
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v19, values:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 183
    .local v8, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mPath:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->UpdateAttributesOfJepgImage(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 187
    if-nez v8, :cond_6

    move-wide v6, v12

    .line 191
    .end local v12           #magic:J
    .restart local v6       #magic:J
    goto :goto_0

    .line 193
    .end local v6           #magic:J
    .restart local v12       #magic:J
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v18

    .line 197
    .local v18, uri:Landroid/net/Uri;
    if-eqz v18, :cond_7

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v17

    .line 199
    .local v17, thumbOut:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    move-object/from16 v0, v17

    invoke-virtual {v8, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 208
    .end local v17           #thumbOut:Ljava/io/OutputStream;
    :cond_7
    const/16 v2, 0xc0

    const/16 v4, 0x6c

    const/4 v5, 0x2

    invoke-static {v8, v2, v4, v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 212
    if-eqz v8, :cond_b

    .line 213
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v14, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v8, v2, v4, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    const/4 v3, 0x0

    .line 218
    .local v3, data:[B
    :try_start_1
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 219
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 226
    :goto_1
    if-eqz v3, :cond_a

    move-wide v6, v12

    .line 229
    .end local v12           #magic:J
    .restart local v6       #magic:J
    :cond_8
    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    .line 230
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_8

    .line 231
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigId:J

    move-object v2, v15

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->saveMiniThumbToFile([BJJ)V

    .line 232
    const-string v2, "mini_thumb_magic"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v4, v0, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #data:[B
    .end local v6           #magic:J
    .end local v14           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v18           #uri:Landroid/net/Uri;
    .restart local v12       #magic:J
    :cond_9
    move-wide v6, v12

    .line 206
    .end local v12           #magic:J
    .restart local v6       #magic:J
    goto/16 :goto_0

    .line 220
    .end local v6           #magic:J
    .restart local v3       #data:[B
    .restart local v12       #magic:J
    .restart local v14       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    goto :goto_1

    :cond_a
    move-wide v6, v12

    .end local v12           #magic:J
    .restart local v6       #magic:J
    goto :goto_2

    .end local v3           #data:[B
    .end local v6           #magic:J
    .end local v14           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #magic:J
    :cond_b
    move-wide v6, v12

    .end local v12           #magic:J
    .restart local v6       #magic:J
    goto/16 :goto_0
.end method

.method updateDatabase(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 11
    .parameter "thumbnail"

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mThumbUri:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->THUMB_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigColumnName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 139
    :goto_0
    return-object v4

    .line 119
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mThumbUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 129
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigColumnName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mOrigId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v0, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 126
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 135
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 139
    .local v7, ex:Ljava/lang/Exception;
    goto :goto_0
.end method
