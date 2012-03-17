.class public Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;
.super Ljava/lang/Object;
.source "MediaMpoScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final FILE_PATERN:Ljava/lang/String; = ".*\\.mpo$"

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGE_SIZE:I = 0x3

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaMpoScanner"

.field private static final THUMBNAILS_DIRECTORYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mImagesUri:Landroid/net/Uri;

.field private mOriginalCount:I

.field private mThumbsUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->getThumbnailDirectory()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->THUMBNAILS_DIRECTORYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContext:Landroid/content/Context;

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    return-void
.end method

.method private beginFile(Ljava/lang/String;JJ)Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    .locals 15
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 150
    const/16 v3, 0x2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 151
    .local v14, lastSlash:I
    if-ltz v14, :cond_1

    add-int/lit8 v3, v14, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 153
    add-int/lit8 v3, v14, 0x1

    const-string v4, "._"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const/4 v2, 0x0

    .line 177
    :cond_0
    :goto_0
    return-object v2

    .line 157
    :cond_1
    move-object/from16 v13, p1

    .line 158
    .local v13, key:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mCaseInsensitivePaths:Z

    if-eqz v3, :cond_2

    .line 159
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;

    .line 162
    .local v2, entry:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    if-nez v2, :cond_3

    .line 163
    new-instance v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;

    .end local v2           #entry:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;JJ)V

    .line 164
    .restart local v2       #entry:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 168
    iget-wide v3, v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mLastModified:J

    sub-long v3, p2, v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 169
    .local v11, delta:J
    const-wide/16 v3, 0x1

    cmp-long v3, v11, v3

    if-gtz v3, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-gez v3, :cond_5

    .line 170
    :cond_4
    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mLastModified:J

    .line 171
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 173
    :cond_5
    iget-wide v3, v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mFileSize:J

    cmp-long v3, p4, v3

    if-eqz v3, :cond_0

    .line 174
    move-wide/from16 v0, p4

    iput-wide v0, v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mFileSize:J

    .line 175
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mLastModifiedChanged:Z

    goto :goto_0
.end method

.method private doScanFile(Ljava/lang/String;JJZ)Landroid/net/Uri;
    .locals 3
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 191
    .local v1, result:Landroid/net/Uri;
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->beginFile(Ljava/lang/String;JJ)Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;

    move-result-object v0

    .line 193
    .local v0, entry:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v2, :cond_0

    if-eqz p6, :cond_1

    .line 194
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->endFile(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    .end local v0           #entry:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    :cond_1
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private endFile(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;)Landroid/net/Uri;
    .locals 10
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 223
    iget-object v7, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mImagesUri:Landroid/net/Uri;

    iput-object v7, p1, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 224
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->toValues(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;)Landroid/content/ContentValues;

    move-result-object v6

    .line 225
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "_data"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, title:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 228
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 229
    add-int/lit8 v1, v1, 0x1

    .line 230
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 231
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 235
    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 236
    .local v0, lastDot:I
    if-lez v0, :cond_1

    .line 237
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 239
    :cond_1
    const-string v7, "title"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v7, p1, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->setFileSizeAndModifiedTime(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 242
    iget-wide v3, p1, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mRowId:J

    .line 243
    .local v3, rowId:J
    const/4 v2, 0x0

    .line 244
    .local v2, result:Landroid/net/Uri;
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_3

    .line 246
    iget-object v7, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mImagesUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_2

    .line 248
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 249
    iput-wide v3, p1, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mRowId:J

    .line 256
    :cond_2
    :goto_0
    return-object v2

    .line 253
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mImagesUri:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 254
    iget-object v7, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v2, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getThumbnailDirectory()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v6, storagePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorages()[Ljava/io/File;

    move-result-object v2

    .line 137
    .local v2, externalStorages:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 138
    .local v1, externalStorage:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, storagePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, storageType:Ljava/lang/String;
    const-string v8, "UsbOtg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/DCIM/.3d_thumbnails"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v1           #externalStorage:Ljava/io/File;
    .end local v5           #storagePath:Ljava/lang/String;
    .end local v7           #storageType:Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 321
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 326
    :goto_1
    return v1

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContentResolver:Landroid/content/ContentResolver;

    .line 411
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mImagesUri:Landroid/net/Uri;

    .line 412
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mThumbsUri:Landroid/net/Uri;

    .line 416
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mCaseInsensitivePaths:Z

    .line 419
    :cond_0
    return-void
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 10
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 374
    iget-object v5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 376
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;

    .line 378
    .local v0, entry:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    iget-object v3, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 380
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 382
    .local v1, fileMissing:Z
    iget-boolean v5, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mSeenInFileSystem:Z

    if-nez v5, :cond_1

    .line 383
    invoke-direct {p0, v3, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 385
    const/4 v1, 0x1

    .line 395
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 396
    iget-object v5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    iget-wide v7, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mRowId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 389
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v4, testFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    const/4 v1, 0x1

    goto :goto_1

    .line 401
    .end local v0           #entry:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;
    .end local v1           #fileMissing:Z
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #testFile:Ljava/io/File;
    :cond_3
    iget v5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mOriginalCount:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v6, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->pruneDeadThumbnailFiles()V

    .line 405
    :cond_4
    iput-object v9, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    .line 406
    iput-object v9, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContentResolver:Landroid/content/ContentResolver;

    .line 407
    return-void
.end method

.method private prescan(Ljava/lang/String;)V
    .locals 17
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v15, 0x0

    .line 275
    .local v15, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 276
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 277
    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    .line 284
    :goto_0
    if-eqz p1, :cond_3

    .line 285
    const-string v4, "_data=?"

    .line 286
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5           #selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 292
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mOriginalCount:I

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 294
    if-eqz v15, :cond_5

    .line 296
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mOriginalCount:I

    .line 297
    :cond_0
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 299
    .local v8, rowId:J
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 300
    .local v10, path:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 301
    .local v11, lastModified:J
    const/4 v1, 0x3

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 303
    .local v13, size:J
    const-string v1, "/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    move-object/from16 v16, v10

    .line 305
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mCaseInsensitivePaths:Z

    if-eqz v1, :cond_1

    .line 306
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    new-instance v6, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mImagesUri:Landroid/net/Uri;

    invoke-direct/range {v6 .. v14}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;JJ)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 313
    .end local v8           #rowId:J
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #lastModified:J
    .end local v13           #size:J
    .end local v16           #key:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 314
    const/4 v15, 0x0

    throw v1

    .line 280
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 290
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 313
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 314
    const/4 v15, 0x0

    .line 317
    :cond_5
    return-void
.end method

.method private processFile(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 516
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*\\.mpo$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->scanFile(Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method private processFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "directoryPath"
    .parameter "fileName"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->searchMpoFiles(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 15

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 337
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 371
    :goto_0
    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->THUMBNAILS_DIRECTORYS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 342
    .local v14, thumbnaisDirectory:Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v7, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, files:[Ljava/lang/String;
    if-nez v9, :cond_2

    .line 345
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;

    .line 346
    :cond_2
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v0, v9

    if-ge v11, v0, :cond_3

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, fullPathString:Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 351
    .end local v10           #fullPathString:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 353
    .restart local v10       #fullPathString:Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 356
    .end local v10           #fullPathString:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 361
    .local v8, fileToDelete:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 362
    :catch_0
    move-exception v0

    goto :goto_3

    .line 370
    .end local v7           #existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8           #fileToDelete:Ljava/lang/String;
    .end local v9           #files:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #thumbnaisDirectory:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private scanDirectory(Ljava/lang/String;)V
    .locals 1
    .parameter "directoryPath"

    .prologue
    .line 489
    const-string v0, ".*\\.mpo$"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->processFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method private scanFile(Ljava/lang/String;JJ)V
    .locals 7
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 184
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->doScanFile(Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 185
    return-void
.end method

.method private searchMpoFiles(Ljava/lang/String;)V
    .locals 7
    .parameter "directoryPath"

    .prologue
    .line 497
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is not a directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 503
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_2

    .line 513
    :cond_1
    return-void

    .line 506
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 507
    aget-object v1, v2, v3

    .line 508
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->processFile(Ljava/io/File;)V

    .line 509
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_3

    .line 510
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->searchMpoFiles(Ljava/lang/String;)V

    .line 506
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setFileSizeAndModifiedTime(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 9
    .parameter "values"
    .parameter "path"

    .prologue
    const-wide/16 v7, -0x1

    .line 260
    const-wide/16 v3, -0x1

    .line 261
    .local v3, time:J
    const-wide/16 v1, -0x1

    .line 262
    .local v1, size:J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 265
    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    .line 266
    const-string v5, "date_modified"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    :cond_0
    cmp-long v5, v1, v7

    if-eqz v5, :cond_1

    .line 269
    const-string v5, "_size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    :cond_1
    return-void
.end method

.method private toValues(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;)Landroid/content/ContentValues;
    .locals 6
    .parameter "entry"

    .prologue
    .line 213
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p1, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "date_modified"

    iget-wide v2, p1, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mLastModified:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v1, "_size"

    iget-wide v2, p1, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner$FileCacheEntry;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v1, "mime_type"

    const-string v2, "image/mpo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object v0
.end method


# virtual methods
.method public scanDirectories([Ljava/lang/String;)V
    .locals 8
    .parameter "directories"

    .prologue
    .line 427
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 428
    .local v5, start:J
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->initialize()V

    .line 429
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->prescan(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 432
    .local v1, prescan:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_0

    .line 433
    aget-object v7, p1, v0

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->scanDirectory(Ljava/lang/String;)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 437
    .local v3, scan:J
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->postscan([Ljava/lang/String;)V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v0           #i:I
    .end local v1           #prescan:J
    .end local v3           #scan:J
    .end local v5           #start:J
    :goto_1
    return-void

    .line 458
    :catch_0
    move-exception v7

    goto :goto_1

    .line 452
    :catch_1
    move-exception v7

    goto :goto_1

    .line 446
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public scanSingleFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "path"

    .prologue
    .line 474
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->initialize()V

    .line 475
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->prescan(Ljava/lang/String;)V

    .line 476
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->doScanFile(Ljava/lang/String;JJZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    .end local v8           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .line 480
    :catch_0
    move-exception v7

    .line 484
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method
