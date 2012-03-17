.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.super Ljava/lang/Object;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_DATA:I = 0x1

.field private static final COLUMN_INDEX_DATE_TAKEN:I = 0x3

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_MIME:I = 0x2

.field private static final COLUMN_INDEX_MINI_THUMB_MAGIC:I = 0x4

.field private static final COLUMN_INDEX_ORIENTATION:I = 0x5

.field private static final MAX_LOCAL_CACHE_NUM:I = 0x64

.field private static final PAZING_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhotoStackLoader"

.field private static final THUMBNAIL_DECODE_INTERVAL:J = 0xc8L


# instance fields
.field private volatile mCanceled:Z

.field private mContentMode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

.field private mDecodeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

.field private final mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;

.field private mLoadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mLocalCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLockCount:I

.field private final mLockCountCS:Ljava/lang/Object;

.field private final mMainHandler:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;

.field private mMedia:Landroid/database/Cursor;

.field private final mMediaCS:Ljava/lang/Object;

.field private mMpoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

.field private mPhotoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

.field private final mRecentThumbnailCount:I

.field private mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

.field private final mRequeryTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityLevel:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

.field private mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

.field private final mThumbnailSize:I

.field private mVideoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "securityLevel"
    .parameter "destinationToSave"

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCountCS:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 132
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;

    .line 139
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PHOTO_VIDEO:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mContentMode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    .line 195
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 196
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;

    .line 197
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    .line 198
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mCanceled:Z

    .line 199
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Pause:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    .line 200
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 201
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mDecodeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 202
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMainHandler:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;

    .line 203
    iput-object p3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mSecurityLevel:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mThumbnailSize:I

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRecentThumbnailCount:I

    .line 208
    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->setupQueryParam(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->searchMedia()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMainHandler:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->loadThumbnails(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->decodeThumbnail(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V

    return-void
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->isWaiting()Z

    move-result v0

    return v0
.end method

.method private checkMiniThumbMagic(II)Z
    .locals 13
    .parameter "mediaId"
    .parameter "type"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 778
    new-instance v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 780
    .local v3, param:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    if-ne p2, v7, :cond_1

    .line 781
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 782
    .local v4, uri:Landroid/net/Uri;
    new-array v9, v7, [Ljava/lang/String;

    const-string v10, "mini_thumb_magic"

    aput-object v10, v9, v8

    iput-object v9, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 783
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s=%s"

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "_id"

    aput-object v12, v11, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 785
    iput v8, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 786
    iput v7, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 798
    :goto_0
    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v4, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 800
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 819
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return v8

    .line 787
    :cond_1
    if-ne p2, v11, :cond_0

    .line 788
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 789
    .restart local v4       #uri:Landroid/net/Uri;
    new-array v9, v7, [Ljava/lang/String;

    const-string v10, "mini_thumb_magic"

    aput-object v10, v9, v8

    iput-object v9, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 790
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s=%s"

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "_id"

    aput-object v12, v11, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 792
    iput v8, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 793
    iput v7, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    goto :goto_0

    .line 805
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 806
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, miniThumbMagic:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 808
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 810
    .local v5, value:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-eqz v9, :cond_3

    .line 817
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v8, v7

    goto :goto_1

    :cond_3
    move v7, v8

    .line 810
    goto :goto_2

    .line 817
    .end local v2           #miniThumbMagic:Ljava/lang/String;
    .end local v5           #value:J
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 813
    :catch_0
    move-exception v1

    .line 814
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v7, "PhotoStackLoader"

    const-string v9, "The specified calumn isn\'t found."

    invoke-static {v7, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method private createDecodeCommand(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)Ljava/lang/Runnable;
    .locals 1
    .parameter "request"

    .prologue
    .line 624
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$2;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V

    return-object v0
.end method

.method private createLoadCommand(Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;>;"
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Ljava/util/List;)V

    return-object v0
.end method

.method public static createOptmizedBmp(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "src"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 1102
    if-eqz p0, :cond_1

    .line 1112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 1115
    .local v1, x:I
    const/4 v2, 0x0

    .line 1122
    .local v2, y:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1137
    .local v0, square:Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1139
    .end local v0           #square:Landroid/graphics/Bitmap;
    .end local v1           #x:I
    .end local v2           #y:I
    :goto_1
    return-object v3

    .line 1125
    :cond_0
    const/4 v1, 0x0

    .line 1126
    .restart local v1       #x:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 1133
    .restart local v2       #y:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {p0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #square:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1139
    .end local v0           #square:Landroid/graphics/Bitmap;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private decodeThumbnail(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V
    .locals 10
    .parameter "request"

    .prologue
    .line 710
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 711
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v9, p1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 712
    .local v9, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    const/4 v8, 0x0

    .line 714
    .local v8, thumbBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 718
    :cond_0
    monitor-enter p0

    .line 719
    :try_start_0
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v7

    .line 720
    .local v7, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iget-boolean v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    if-nez v1, :cond_2

    .line 722
    iget v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    iget v2, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->checkMiniThumbMagic(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 729
    iget-object v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 730
    iget v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    iget v2, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->getMediaPath(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    .line 732
    :cond_1
    invoke-static {v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailFactory;->createMicroThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 742
    :cond_2
    :goto_1
    iget-boolean v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 744
    :try_start_1
    iget v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    iget v2, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    iget v3, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mWidth:I

    iget v4, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mHeight:I

    iget v5, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailFactory;->getMicroThumbnail(Landroid/content/ContentResolver;IIIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 746
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 747
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mThumbnailSize:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mThumbnailSize:I

    invoke-static {v8, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->createOptmizedBmp(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 759
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 761
    if-nez v8, :cond_4

    .line 762
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020064

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 766
    :cond_4
    if-eqz v8, :cond_6

    .line 767
    invoke-virtual {v9, v8}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->completeLoading(Landroid/graphics/Bitmap;)Z

    .line 772
    :goto_3
    iget v1, p1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;->mIndex:I

    invoke-virtual {p0, v1, v9}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->onLoaded(ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    goto :goto_0

    .line 736
    :cond_5
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    .line 737
    invoke-virtual {v9, v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->setMediaInfo(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V

    goto :goto_1

    .line 759
    .end local v7           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 750
    .restart local v7       #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :catch_0
    move-exception v6

    .line 756
    .local v6, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "PhotoStackLoader"

    const-string v2, "Exception occurs when getMicroThumbnail()."

    invoke-static {v1, v2, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 769
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    goto :goto_3
.end method

.method private getMediaPath(II)Ljava/lang/String;
    .locals 11
    .parameter "mediaId"
    .parameter "type"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 825
    new-instance v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 827
    .local v2, param:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    if-ne p2, v10, :cond_1

    .line 828
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 829
    .local v3, uri:Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "_data"

    aput-object v6, v5, v9

    iput-object v5, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 830
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_id"

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 832
    iput v9, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 833
    iput v10, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 845
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 847
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 861
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-object v4

    .line 834
    :cond_1
    if-ne p2, v7, :cond_0

    .line 835
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 836
    .restart local v3       #uri:Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "_data"

    aput-object v6, v5, v9

    iput-object v5, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 837
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_id"

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 839
    iput v9, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 840
    iput v10, v2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    goto :goto_0

    .line 852
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 853
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 859
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v5, "PhotoStackLoader"

    const-string v6, "The specified column isn\'t found."

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private isPaused()Z
    .locals 3

    .prologue
    .line 516
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    sget-object v2, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Pause:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isWaiting()Z
    .locals 3

    .prologue
    .line 507
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    sget-object v2, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Waiting:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadThumbnails(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;

    .line 648
    .local v5, request:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;
    iget v1, v5, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;->mIndex:I

    .line 649
    .local v1, index:I
    iget-object v6, v5, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 650
    .local v6, requestThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v4

    .line 651
    .local v4, loadedInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iget v7, v4, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    if-ltz v7, :cond_1

    const/4 v3, 0x1

    .line 653
    .local v3, infoIsLoaded:Z
    :goto_1
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->isLoading()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 658
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 659
    if-eqz v3, :cond_0

    .line 663
    new-instance v7, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;

    invoke-direct {v7, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;)V

    const-wide/16 v8, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->requestDecoding(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;J)V

    goto :goto_0

    .line 651
    .end local v3           #infoIsLoaded:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 666
    .restart local v3       #infoIsLoaded:Z
    :cond_2
    if-nez v3, :cond_4

    .line 668
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->getThumbnailInfo(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v2

    .line 669
    .local v2, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    if-nez v2, :cond_3

    .line 670
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    goto :goto_0

    .line 673
    :cond_3
    invoke-virtual {v6, v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->setMediaInfo(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V

    .line 676
    .end local v2           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_4
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    if-eqz v7, :cond_5

    .line 679
    new-instance v7, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;

    invoke-direct {v7, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;)V

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->decodeThumbnail(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)V

    goto :goto_0

    .line 687
    :cond_5
    new-instance v7, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;

    invoke-direct {v7, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;)V

    const-wide/16 v8, 0xc8

    invoke-direct {p0, v7, v8, v9}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->requestDecoding(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;J)V

    goto :goto_0

    .line 697
    .end local v1           #index:I
    .end local v3           #infoIsLoaded:Z
    .end local v4           #loadedInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .end local v5           #request:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;
    .end local v6           #requestThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_6
    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->reset()V

    .line 698
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 699
    return-void
.end method

.method private requestDecoding(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;J)V
    .locals 3
    .parameter "request"
    .parameter "delay"

    .prologue
    .line 528
    const/4 v0, -0x1

    iput v0, p1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;->mIndex:I

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mDecodeExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->createDecodeCommand(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private searchFromLocalCache()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 917
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "_data"

    aput-object v4, v3, v7

    const-string v4, "mime_type"

    aput-object v4, v3, v8

    const-string v4, "datetaken"

    aput-object v4, v3, v9

    const-string v4, "mini_thumb_magic"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "orientation"

    aput-object v5, v3, v4

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 925
    .local v0, cursor:Landroid/database/MatrixCursor;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    .line 926
    .local v2, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    aput-object v4, v3, v8

    iget v4, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x0

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 930
    .end local v2           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_0
    return-object v0
.end method

.method private searchMedia()Landroid/database/Cursor;
    .locals 15

    .prologue
    const/16 v4, 0x64

    const/4 v5, 0x3

    .line 868
    const/4 v14, 0x0

    .line 869
    .local v14, result:Landroid/database/Cursor;
    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$ContentMode:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mContentMode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 909
    :goto_0
    return-object v14

    .line 871
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mPhotoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    const-string v6, "PHOTO"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;IILjava/lang/String;)V

    .line 877
    .local v0, photoCursor:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;
    new-instance v6, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mVideoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    const-string v12, "VIDEO"

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;IILjava/lang/String;)V

    .line 884
    .local v6, videoCursor:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    new-instance v14, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;

    .end local v14           #result:Landroid/database/Cursor;
    invoke-direct {v14, v0, v6}, Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner;-><init>(Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;Lcom/sonyericsson/android/camera3d/util/RandomAccessCursorJoiner$OrderedCursor;)V

    .restart local v14       #result:Landroid/database/Cursor;
    goto :goto_0

    .line 889
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->close()V

    .line 890
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->close()V

    goto :goto_0

    .line 895
    .end local v0           #photoCursor:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;
    .end local v6           #videoCursor:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;
    :pswitch_1
    new-instance v7, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    sget-object v9, Lcom/sonyericsson/android/camera/photostack/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMpoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    const-string v13, "MPO"

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;IILjava/lang/String;)V

    .line 901
    .local v7, mpoCursor:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    move-object v14, v7

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$OrderedPagingCursor;->close()V

    goto :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private validateUiThread()V
    .locals 6

    .prologue
    .line 1026
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    if-eqz v4, :cond_0

    .line 1027
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 1028
    .local v2, mainThreadId:J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 1029
    .local v0, currThreadId:J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 1030
    new-instance v4, Ljava/lang/IllegalThreadStateException;

    const-string v5, "This method should be call in UI thread."

    invoke-direct {v4, v5}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1033
    .end local v0           #currThreadId:J
    .end local v2           #mainThreadId:J
    :cond_0
    return-void
.end method


# virtual methods
.method public addLocalCache(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1065
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1068
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mCanceled:Z

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 248
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mCanceled:Z

    .line 253
    return-void
.end method

.method public clearLocalCache()V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1088
    :cond_0
    return-void
.end method

.method getContentMode()Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mContentMode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    return-object v0
.end method

.method public getMediaCount()I
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    monitor-exit v1

    .line 414
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThumbnailInfo(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .locals 16
    .parameter "index"

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;

    monitor-enter v13

    .line 426
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    if-nez v12, :cond_0

    .line 427
    const/4 v3, 0x0

    monitor-exit v13

    .line 492
    :goto_0
    return-object v3

    .line 428
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 429
    const/4 v3, 0x0

    monitor-exit v13

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 434
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 435
    .local v7, thumbID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    const/4 v14, 0x2

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, mime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    const/4 v14, 0x4

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, miniThumbMagic:Ljava/lang/String;
    const-string v12, "image/jpeg"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 442
    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 444
    .local v9, uriOriginal:Landroid/net/Uri;
    const/4 v8, 0x1

    .line 464
    .local v8, type:I
    :goto_1
    const/4 v12, 0x1

    if-ne v8, v12, :cond_7

    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    const/4 v14, 0x5

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 470
    .local v6, orientDeg:I
    :goto_2
    const/4 v2, 0x0

    .line 471
    .local v2, existThumbnail:Z
    if-eqz v5, :cond_2

    .line 473
    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v10

    .line 474
    .local v10, value:J
    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-eqz v12, :cond_8

    const/4 v2, 0x1

    .line 480
    .end local v10           #value:J
    :cond_2
    :goto_3
    :try_start_3
    new-instance v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;-><init>()V

    .line 481
    .local v3, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iput v7, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    .line 482
    iput-object v9, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    .line 483
    iput-object v1, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    .line 484
    iput v8, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    .line 485
    iput v6, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    .line 486
    iput-object v4, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 487
    iput-boolean v2, v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 488
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 445
    .end local v2           #existThumbnail:Z
    .end local v3           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .end local v6           #orientDeg:I
    .end local v8           #type:I
    .end local v9           #uriOriginal:Landroid/net/Uri;
    :cond_3
    :try_start_5
    const-string v12, "video/mp4"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 446
    sget-object v12, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 448
    .restart local v9       #uriOriginal:Landroid/net/Uri;
    const/4 v8, 0x2

    .restart local v8       #type:I
    goto :goto_1

    .line 449
    .end local v8           #type:I
    .end local v9           #uriOriginal:Landroid/net/Uri;
    :cond_4
    const-string v12, "video/3gpp"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 450
    sget-object v12, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 452
    .restart local v9       #uriOriginal:Landroid/net/Uri;
    const/4 v8, 0x2

    .restart local v8       #type:I
    goto :goto_1

    .line 453
    .end local v8           #type:I
    .end local v9           #uriOriginal:Landroid/net/Uri;
    :cond_5
    const-string v12, "image/mpo"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 454
    sget-object v12, Lcom/sonyericsson/android/camera/photostack/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v9

    .line 457
    .restart local v9       #uriOriginal:Landroid/net/Uri;
    const/4 v8, 0x3

    .restart local v8       #type:I
    goto :goto_1

    .line 460
    .end local v8           #type:I
    .end local v9           #uriOriginal:Landroid/net/Uri;
    :cond_6
    const/4 v3, 0x0

    :try_start_6
    monitor-exit v13

    goto/16 :goto_0

    .line 467
    .restart local v8       #type:I
    .restart local v9       #uriOriginal:Landroid/net/Uri;
    :cond_7
    const/4 v6, 0x0

    .restart local v6       #orientDeg:I
    goto :goto_2

    .line 474
    .restart local v2       #existThumbnail:Z
    .restart local v10       #value:J
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 489
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #existThumbnail:Z
    .end local v4           #mime:Ljava/lang/String;
    .end local v5           #miniThumbMagic:Ljava/lang/String;
    .end local v6           #orientDeg:I
    .end local v7           #thumbID:I
    .end local v8           #type:I
    .end local v9           #uriOriginal:Landroid/net/Uri;
    .end local v10           #value:J
    :catch_0
    move-exception v12

    .line 492
    const/4 v3, 0x0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 475
    .restart local v1       #data:Ljava/lang/String;
    .restart local v2       #existThumbnail:Z
    .restart local v4       #mime:Ljava/lang/String;
    .restart local v5       #miniThumbMagic:Ljava/lang/String;
    .restart local v6       #orientDeg:I
    .restart local v7       #thumbID:I
    .restart local v8       #type:I
    .restart local v9       #uriOriginal:Landroid/net/Uri;
    :catch_1
    move-exception v12

    goto :goto_3
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCountCS:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCountCS:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    if-gtz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->cancel()V

    .line 266
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    .line 267
    monitor-exit v1

    .line 269
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLoaded(ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 1
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;->onLoaded(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 501
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Pause:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMainHandler:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->cancelReload()V

    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->cancel()V

    .line 338
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    .line 343
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$SecurityLevel:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mSecurityLevel:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMainHandler:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->requestReload()V

    goto :goto_0

    .line 316
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->searchFromLocalCache()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;

    .line 318
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLocalCache(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1071
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    .line 1073
    .local v0, cacheInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iget v2, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    iget v3, p1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    if-ne v2, v3, :cond_1

    .line 1074
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1078
    .end local v0           #cacheInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_0
    return-void

    .line 1071
    .restart local v0       #cacheInfo:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public requery(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 351
    new-instance v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;)V

    .line 352
    .local v1, task:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRecentThumbnailCount:I

    if-ne v2, v3, :cond_0

    .line 353
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;

    .line 354
    .local v0, removeTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->cancel(Z)Z

    .line 356
    .end local v0           #removeTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 357
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    return-void
.end method

.method public request(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLoadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->createLoadCommand(Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetRequeryTask()V
    .locals 3

    .prologue
    .line 400
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;

    .line 401
    .local v1, task:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->cancel(Z)Z

    goto :goto_0

    .line 403
    .end local v1           #task:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 404
    return-void
.end method

.method setContentMode(Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;)V
    .locals 1
    .parameter "contentMode"

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mContentMode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    .line 1093
    invoke-static {}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getInstance()Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->setupQueryParam(Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method setupQueryParam(Ljava/lang/String;)V
    .locals 10
    .parameter "storage"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 546
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mPhotoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mPhotoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "_data"

    aput-object v2, v1, v6

    const-string v2, "mime_type"

    aput-object v2, v1, v7

    const-string v2, "datetaken"

    aput-object v2, v1, v8

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "orientation"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mPhotoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s DESC"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "datetaken"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mPhotoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s like \'%s/DCIM/___%s/%s____%s\'"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_data"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const-string v4, "ANDRO"

    aput-object v4, v3, v7

    const-string v4, "DSC_"

    aput-object v4, v3, v8

    const-string v4, ".JPG"

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 566
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mVideoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mVideoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "_data"

    aput-object v2, v1, v6

    const-string v2, "mime_type"

    aput-object v2, v1, v7

    const-string v2, "datetaken"

    aput-object v2, v1, v8

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mVideoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s DESC"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "datetaken"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mVideoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s like \'%s/DCIM/___%s/%s____%%\'"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "_data"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const-string v4, "ANDRO"

    aput-object v4, v3, v7

    const-string v4, "MOV_"

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 584
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMpoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMpoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "_data"

    aput-object v2, v1, v6

    const-string v2, "mime_type"

    aput-object v2, v1, v7

    const-string v2, "datetaken"

    aput-object v2, v1, v8

    const-string v2, "mini_thumb_magic"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "type"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMpoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s DESC"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "datetaken"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 596
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->MULTI_ANGLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mContentMode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMpoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=\'%s\'"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "type"

    aput-object v4, v3, v5

    const-string v4, "MA"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PANORAMA_3D:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mContentMode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMpoQueryParam:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=\'%s\'"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "type"

    aput-object v4, v3, v5

    const-string v4, "3D"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    goto :goto_0
.end method

.method public unlock()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCountCS:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    .line 278
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    if-gtz v2, :cond_0

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mLockCount:I

    .line 281
    const/4 v0, 0x1

    monitor-exit v1

    .line 284
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSecurityLevel(Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;)V
    .locals 0
    .parameter "securityLevel"

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mSecurityLevel:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    .line 1082
    return-void
.end method
