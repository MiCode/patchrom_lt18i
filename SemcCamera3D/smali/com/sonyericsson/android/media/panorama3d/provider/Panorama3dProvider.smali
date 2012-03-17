.class public Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;
.super Landroid/content/ContentProvider;
.source "Panorama3dProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;
    }
.end annotation


# static fields
.field private static final DEFAULT_STORAGE:Ljava/lang/String; = "Emmc"

.field private static final IMAGE_CLEAN:I = 0x2

.field private static final IMAGE_THUMB:I = 0x1

.field private static final MPO3DPICTURES_MEDIA:I = 0x1

.field private static final MPO3DPICTURES_MEDIA_ID:I = 0x3

.field private static final MPO3DPICTURES_THUMB:I = 0x2

.field private static final MPO3DPICTURES_THUMB_ID:I = 0x4

.field private static final SDCARD_STORAGE:Ljava/lang/String; = "SdCard"

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterString:Ljava/lang/String;

.field private mPicturesThumbQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdPath:Ljava/lang/String;

.field private mThumbHandler:Landroid/os/Handler;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    const-string v0, "Panorama3dProvider"

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 84
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.android.media.panorama3d.provider"

    const-string v2, "mpo_3d_pictures"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.android.media.panorama3d.provider"

    const-string v2, "mpo_3d_pictures_thumb"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.android.media.panorama3d.provider"

    const-string v2, "mpo_3d_pictures/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.android.media.panorama3d.provider"

    const-string v2, "mpo_3d_pictures_thumb/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 699
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;-><init>(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$1;)V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    .line 101
    const-string v0, "SdCard"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mSdPath:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data NOT LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mSdPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mFilterString:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mPicturesThumbQueue:Ljava/util/PriorityQueue;

    .line 108
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$1;-><init>(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 693
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->attachVolume()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mPicturesThumbQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->cleanOldTempFiles()V

    return-void
.end method

.method private attachVolume()Landroid/net/Uri;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 872
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Opening and closing databases not allowed."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 874
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v7

    .line 875
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    const-string v8, "mpo_pictures"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 877
    sget-object v6, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore;->CONTENT_AUTHORITY:Landroid/net/Uri;

    monitor-exit v7

    .line 895
    :goto_0
    return-object v6

    .line 880
    :cond_1
    const-string v6, "SdCard"

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 881
    .local v4, path:Ljava/lang/String;
    const-string v6, "android.os.FileUtils"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 882
    .local v2, fileUtils:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getFatVolumeId"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 883
    .local v3, getFatVolumeId:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 885
    .local v5, volumeID:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mpo_pictures-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".db"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, dbName:Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v0, v6, v1, v8}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 891
    .local v0, db:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    if-eqz v0, :cond_2

    .line 892
    iget-object v6, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    const-string v8, "mpo_pictures"

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    sget-object v6, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore;->CONTENT_AUTHORITY:Landroid/net/Uri;

    goto :goto_0

    .line 894
    .end local v0           #db:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    .end local v1           #dbName:Ljava/lang/String;
    .end local v2           #fileUtils:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #getFatVolumeId:Ljava/lang/reflect/Method;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #volumeID:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private cleanOldTempFiles()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 997
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->TEMP_FILE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 998
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1000
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v7, v3

    if-nez v7, :cond_1

    .line 1015
    .end local v3           #files:[Ljava/io/File;
    :cond_0
    return-void

    .line 1006
    .restart local v3       #files:[Ljava/io/File;
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1007
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    .line 1008
    .local v6, ret:Z
    if-nez v6, :cond_2

    .line 1006
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "data"
    .parameter "values"

    .prologue
    .line 602
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 603
    .local v1, parentFile:Ljava/io/File;
    if-nez v1, :cond_0

    .line 604
    new-instance v1, Ljava/io/File;

    .end local v1           #parentFile:Ljava/io/File;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .restart local v1       #parentFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, name:Ljava/lang/String;
    const-string v3, "bucket_id"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const-string v3, "bucket_display_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private static computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "data"
    .parameter "values"

    .prologue
    .line 623
    if-nez p0, :cond_1

    const-string v1, ""

    .line 624
    .local v1, s:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 625
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 626
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void

    .line 623
    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 911
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 912
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Opening and closing databases not allowed."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 914
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v4

    .line 915
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    const-string v5, "mpo_pictures"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    .line 916
    .local v0, database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    if-nez v0, :cond_1

    .line 917
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :goto_0
    return-void

    .line 920
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v1, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 922
    .local v2, ret:Z
    if-nez v2, :cond_2

    .line 936
    .end local v1           #file:Ljava/io/File;
    .end local v2           #ret:Z
    :cond_2
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    const-string v5, "mpo_pictures"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    invoke-virtual {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->close()V

    .line 938
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 939
    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 938
    .end local v0           #database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 931
    .restart local v0       #database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 927
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private ensureFile(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .parameter "initialValues"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 466
    const-string v2, "_data"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, file:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->generateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 470
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    move-object v1, p1

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 477
    :cond_1
    return-object v1
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 658
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 689
    :goto_0
    return v6

    .line 665
    :cond_0
    const/16 v8, 0x2f

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 666
    .local v5, secondSlash:I
    if-ge v5, v6, :cond_1

    move v6, v7

    .line 667
    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    .line 671
    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 673
    .local v3, parentFile:Ljava/io/File;
    if-nez v3, :cond_3

    move v6, v7

    .line 674
    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 677
    .local v4, ret:Z
    if-nez v4, :cond_4

    .line 683
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 684
    :catch_0
    move-exception v6

    move v6, v7

    .line 689
    goto :goto_0
.end method

.method private generateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emmc"

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    .locals 3
    .parameter "uri"

    .prologue
    .line 849
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v1

    .line 850
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    const-string v2, "mpo_pictures"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    monitor-exit v1

    .line 854
    :goto_0
    return-object v0

    .line 853
    :cond_0
    monitor-exit v1

    .line 854
    const/4 v0, 0x0

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "storageTypeToSearch"

    .prologue
    .line 1018
    const-string v5, ""

    .line 1019
    .local v5, storagePath:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorages()[Ljava/io/File;

    move-result-object v2

    .line 1020
    .local v2, externalStorages:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1021
    .local v1, externalStorage:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1022
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1023
    .local v6, storageType:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1029
    .end local v1           #externalStorage:Ljava/io/File;
    .end local v6           #storageType:Ljava/lang/String;
    :cond_0
    return-object v5

    .line 1020
    .restart local v1       #externalStorage:Ljava/io/File;
    .restart local v6       #storageType:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;)V
    .locals 4
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 722
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :pswitch_0
    const-string v1, "mpo_3d_pictures"

    iput-object v1, p4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 726
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 727
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 735
    :goto_1
    return-void

    .line 712
    :pswitch_1
    const-string v1, "mpo_3d_pictures"

    iput-object v1, p4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    goto :goto_0

    .line 716
    :pswitch_2
    const-string v1, "mpo_3d_pictures_thumb"

    iput-object v1, p4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 719
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    goto :goto_0

    .line 730
    :cond_0
    iput-object p3, p4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_1

    .line 733
    :cond_1
    iput-object v0, p4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_1

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 523
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 524
    .local v8, match:I
    const/4 v2, 0x0

    .line 525
    .local v2, newUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    move-result-object v6

    .line 526
    .local v6, database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    if-nez v6, :cond_0

    .line 527
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    invoke-virtual {v6}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 530
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_1

    .line 531
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .restart local p2
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 565
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :pswitch_0
    const-string v0, ".mpo"

    const-string v3, "DCIM/Camera"

    invoke-direct {p0, p2, v0, v3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->ensureFile(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v12

    .line 536
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 537
    .local v9, mpoFilePath:Ljava/lang/String;
    const-string v0, "_display_name"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    invoke-static {v9, v12}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 540
    :cond_2
    invoke-direct {p0, v12, v9}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->setTitle(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, v12, v9}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->setFileSizeAndTime(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 542
    invoke-static {v9, v12}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 543
    invoke-static {v12, v9}, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->getJpegImageAndTypeFromMpoPicture(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, jpgImageFilePath:Ljava/lang/String;
    const-string v0, "mpo_3d_pictures"

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 546
    .local v10, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v0, v10, v3

    if-lez v0, :cond_3

    if-eqz v1, :cond_3

    .line 547
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 548
    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->requestThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    .line 567
    .end local v1           #jpgImageFilePath:Ljava/lang/String;
    .end local v9           #mpoFilePath:Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v2

    .line 556
    .end local v10           #rowId:J
    .end local v12           #values:Landroid/content/ContentValues;
    :pswitch_1
    const-string v0, ".jpg"

    const-string v3, "DCIM/.3d_thumbnails"

    invoke-direct {p0, p2, v0, v3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->ensureFile(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v12

    .line 557
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v0, "mpo_3d_pictures_thumb"

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 558
    .restart local v10       #rowId:J
    const-wide/16 v3, 0x0

    cmp-long v0, v10, v3

    if-lez v0, :cond_3

    .line 559
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictureThumb;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "qb"
    .parameter "uri"
    .parameter "table"
    .parameter "column"
    .parameter "hasThumbnailId"

    .prologue
    const/4 v3, 0x1

    .line 286
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 287
    if-eqz p5, :cond_1

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    :goto_0
    return v3

    .line 294
    :cond_1
    const-string v4, "orig_id"

    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, origId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 301
    const-string v4, "1"

    const-string v5, "blocking"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 302
    .local v0, needBlocking:Z
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mpo_3d_pictures_thumb"

    const-string v7, "mpo_3d_pictures"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 308
    .local v2, origUri:Landroid/net/Uri;
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->waitForThumbnailReady(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 312
    const/4 v3, 0x0

    goto :goto_0

    .line 314
    :cond_2
    if-eqz v1, :cond_0

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private requestCleanOldTempFile()V
    .locals 3

    .prologue
    .line 989
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 990
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 991
    return-void
.end method

.method private requestCreateThumbnailFromMpoFile(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    .locals 7
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 636
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MpoFileUtils;->getJpegImageAndTypeFromMpoPicture(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, filePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 638
    .local v6, req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 639
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->requestThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v6

    .line 641
    :cond_0
    return-object v6
.end method

.method private requestThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    .locals 9
    .parameter "tempJpgPath"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 572
    const/4 v8, 0x0

    .line 574
    .local v8, req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v8           #req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    .local v0, req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    :goto_0
    if-eqz v0, :cond_0

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mPicturesThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v2

    .line 583
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mPicturesThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 584
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 587
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 589
    .end local v7           #msg:Landroid/os/Message;
    :cond_0
    return-object v0

    .line 576
    .end local v0           #req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    .restart local v8       #req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    :catch_0
    move-exception v1

    move-object v0, v8

    .end local v8           #req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    .restart local v0       #req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    goto :goto_0

    .line 584
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setFileSizeAndTime(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 7
    .parameter "values"
    .parameter "path"

    .prologue
    .line 967
    const-string v5, "date_modified"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "_size"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 973
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 974
    .local v3, time:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 975
    .local v1, size:J
    const-string v5, "date_modified"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_2

    .line 976
    const-string v5, "date_modified"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 978
    :cond_2
    const-string v5, "_size"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_0

    .line 979
    const-string v5, "_size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private setTitle(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .parameter "values"
    .parameter "path"

    .prologue
    .line 946
    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 948
    :cond_0
    move-object v2, p2

    .line 950
    const/16 v3, 0x2f

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 951
    .local v1, lastSlash:I
    if-ltz v1, :cond_1

    .line 952
    add-int/lit8 v1, v1, 0x1

    .line 953
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 954
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 958
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 959
    .local v0, lastDot:I
    if-lez v0, :cond_2

    .line 960
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 962
    :cond_2
    const-string v3, "title"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .end local v0           #lastDot:I
    .end local v1           #lastSlash:I
    :cond_3
    return-void
.end method

.method private waitForThumbnailReady(Landroid/net/Uri;)Z
    .locals 12
    .parameter "origUri"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 327
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "_data"

    aput-object v0, v2, v10

    const-string v0, "mini_thumb_magic"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v9

    .line 365
    :goto_0
    return v8

    .line 333
    :cond_0
    const/4 v8, 0x0

    .line 334
    .local v8, result:Z
    const/4 v7, 0x0

    .line 336
    .local v7, req:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 339
    .local v4, magic:J
    const/16 v3, 0x14

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->requestCreateThumbnailFromMpoFile(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 343
    .end local v1           #path:Ljava/lang/String;
    .end local v4           #magic:J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    if-nez v7, :cond_2

    move v8, v9

    .line 347
    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 349
    :cond_2
    monitor-enter v7

    .line 351
    :goto_1
    :try_start_1
    iget-object v0, v7, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->WAIT:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    if-ne v0, v2, :cond_3

    .line 352
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    .line 360
    :cond_3
    :try_start_2
    iget-object v0, v7, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    if-ne v0, v2, :cond_4

    .line 361
    const/4 v8, 0x1

    .line 363
    :cond_4
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    move-result-object v0

    .line 486
    .local v0, database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    if-nez v0, :cond_0

    .line 487
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 489
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 490
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 491
    const/4 v4, 0x0

    .line 493
    .local v4, numInserted:I
    :try_start_0
    array-length v3, p2

    .line 494
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 495
    aget-object v5, p2, v2

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_1
    move v4, v3

    .line 498
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 502
    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 503
    return v4

    .line 500
    .end local v2           #i:I
    .end local v3           #len:I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 743
    sget-object v4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 744
    .local v3, match:I
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    move-result-object v1

    .line 745
    .local v1, database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    if-nez v1, :cond_0

    .line 746
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 749
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    monitor-enter v5

    .line 750
    :try_start_0
    sget-object v4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;)V

    .line 751
    sget-object v4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    iget-object v4, v4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v4, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 753
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 754
    monitor-exit v5

    .line 755
    return v0

    .line 754
    .end local v0           #count:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 440
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.com.sonyericsson.android.media.panorama3d.provider.mpo_3d_picture"

    .line 448
    :goto_0
    return-object v0

    .line 444
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.com.sonyericsson.android.media.panorama3d.provider.mpo_3d_picture"

    goto :goto_0

    .line 446
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.com.sonyericsson.android.media.panorama3d.provider.thumbnail"

    goto :goto_0

    .line 448
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.com.sonyericsson.android.media.panorama3d.provider.thumbnail"

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 511
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 512
    .local v0, newUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 515
    :cond_0
    return-object v0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    .line 144
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mDatabases:Ljava/util/HashMap;

    .line 145
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    :try_start_0
    const-string v5, "MPOLib"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->attachVolume()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 184
    :cond_1
    :goto_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v5, "thumbs thread"

    const/16 v6, 0xa

    invoke-direct {v0, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 185
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 186
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 187
    .local v2, looper:Landroid/os/Looper;
    if-nez v2, :cond_2

    .line 191
    const/4 v5, 0x0

    .line 277
    :goto_2
    return v5

    .line 152
    .end local v0           #ht:Landroid/os/HandlerThread;
    .end local v2           #looper:Landroid/os/Looper;
    .end local v3           #state:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 153
    .local v4, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "loadLibrary failed."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v4           #ule:Ljava/lang/UnsatisfiedLinkError;
    .restart local v0       #ht:Landroid/os/HandlerThread;
    .restart local v2       #looper:Landroid/os/Looper;
    .restart local v3       #state:Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;

    invoke-direct {v5, p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;-><init>(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mThumbHandler:Landroid/os/Handler;

    .line 276
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->requestCleanOldTempFile()V

    .line 277
    const/4 v5, 0x1

    goto :goto_2

    .line 165
    .end local v0           #ht:Landroid/os/HandlerThread;
    .end local v2           #looper:Landroid/os/Looper;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 170
    :catch_2
    move-exception v5

    goto :goto_1

    .line 177
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 805
    const/4 v11, 0x0

    .line 806
    .local v11, pfd:Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 808
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 811
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 812
    .local v7, count:I
    :cond_0
    if-eq v7, v12, :cond_3

    .line 815
    if-nez v7, :cond_2

    .line 816
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    .end local v7           #count:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 833
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 818
    .restart local v7       #count:I
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 821
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 822
    .local v9, i:I
    if-ltz v9, :cond_4

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 826
    .local v10, path:Ljava/lang/String;
    :cond_4
    if-nez v10, :cond_5

    .line 827
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Column _data not found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_5
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    .local v8, f:Ljava/io/File;
    const/high16 v0, 0x3000

    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 832
    if-eqz v6, :cond_6

    .line 833
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 836
    :cond_6
    return-object v11
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 374
    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 375
    .local v21, table:I
    const/4 v13, 0x0

    .line 376
    .local v13, groupBy:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    move-result-object v18

    .line 377
    .local v18, database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    if-nez v18, :cond_1

    .line 378
    const/16 v17, 0x0

    .line 432
    :cond_0
    :goto_0
    return-object v17

    .line 380
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 381
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 382
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 384
    .local v16, limit:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mSdPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 385
    .local v20, state:Ljava/lang/String;
    const/16 v19, 0x1

    .line 386
    .local v19, isSdCardMounted:Z
    const-string v2, "mounted"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mounted_ro"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mSdPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 389
    const/16 v19, 0x0

    .line 392
    :cond_2
    const/4 v7, 0x0

    .line 393
    .local v7, hasThumbnailId:Z
    packed-switch v21, :pswitch_data_0

    .line 426
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :pswitch_0
    const-string v2, "mpo_3d_pictures"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 396
    const-string v2, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 397
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 399
    :cond_3
    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 428
    :cond_4
    :goto_1
    const/4 v14, 0x0

    move-object v8, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 429
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_0

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v2, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 402
    .end local v17           #c:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "mpo_3d_pictures"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 403
    const-string v2, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 404
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 405
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 406
    if-nez v19, :cond_4

    .line 407
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 413
    :pswitch_2
    const/4 v7, 0x1

    .line 414
    const-string v5, "mpo_3d_pictures_thumb"

    const-string v6, "image_id"

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 416
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 420
    :pswitch_3
    const-string v5, "mpo_3d_pictures_thumb"

    const-string v6, "image_id"

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 422
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 764
    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 765
    .local v10, match:I
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;

    move-result-object v8

    .line 766
    .local v8, database:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;
    if-nez v8, :cond_0

    .line 767
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    :cond_0
    invoke-virtual {v8}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 770
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v12, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    monitor-enter v12

    .line 771
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;)V

    .line 772
    packed-switch v10, :pswitch_data_0

    .line 789
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    iget-object v1, v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    iget-object v2, v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v9, v1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 793
    .local v7, count:I
    :cond_1
    :goto_0
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    if-lez v7, :cond_2

    .line 795
    invoke-virtual {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 797
    :cond_2
    return v7

    .line 775
    .end local v7           #count:I
    :pswitch_1
    :try_start_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 776
    .local v11, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    iget-object v1, v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->sGetTableAndWhereParam:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;

    iget-object v2, v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v9, v1, v11, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 782
    .restart local v7       #count:I
    if-lez v7, :cond_1

    const-string v1, "_data"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 783
    const-string v1, "_data"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->requestCreateThumbnailFromMpoFile(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    goto :goto_0

    .line 793
    .end local v7           #count:I
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
