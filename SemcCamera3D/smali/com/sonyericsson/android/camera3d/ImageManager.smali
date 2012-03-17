.class public final Lcom/sonyericsson/android/camera3d/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/ImageManager$LatestShot2dInfo;,
        Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;,
        Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;,
        Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;,
        Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;,
        Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;,
        Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;,
        Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;,
        Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;,
        Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;,
        Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredAndStorageAvailableListener;,
        Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;,
        Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;,
        Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;,
        Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;
    }
.end annotation


# static fields
.field private static final EXT_JPEG:Ljava/lang/String; = ".JPG"

.field private static final EXT_MPO:Ljava/lang/String; = ".MPO"

.field private static final HEADER_MARGIN:I = 0x400

.field static final JPEG_QUALITY_MULTI_ANGLE:I = 0x46

.field static final JPEG_QUALITY_PANORAMA:I = 0x46

.field static final JPEG_QUALITY_PANORAMA3D:I = 0x46

.field public static final MEMORY_ERR_ACCESS:I = -0x3

.field public static final MEMORY_ERR_FORMAT:I = -0x4

.field public static final MEMORY_ERR_FULL:I = -0x5

.field public static final MEMORY_ERR_NONE:I = 0x0

.field public static final MEMORY_ERR_NO_MEMORY_CARD:I = -0x1

.field public static final MEMORY_ERR_READ_ONLY:I = -0x2

.field public static final MEMORY_ERR_SHARED:I = -0x6

.field private static final MSG_STORE_COMPLETE:I = 0x1

.field private static final MSG_STORE_PROGRESS:I = 0x2

.field private static final PHOTO_STORAGE_URI:Landroid/net/Uri; = null

.field private static final PHOTO_THUMB_URI:Landroid/net/Uri; = null

.field private static final PREVIEW_IMAGE_HEIGHT:I = 0x78

.field private static final PREVIEW_IMAGE_WIDTH:I = 0xa0

.field public static final SIZE_OF_APP0_MARKER:I = 0x2

.field public static final SIZE_OF_ONE_BYTE:I = 0x8

.field public static final STATUS_GPS_UNAVAILABLE:I = 0x1

.field public static final STATUS_MEM_ERROR:I = 0x21

.field public static final STATUS_PREPARED:I = 0x11

.field public static final STATUS_STORAGE_UNAVAILABLE:I = 0x0

.field public static final STORE_FAIL:I = -0x1

.field public static final STORE_FAIL_MEMORY_FULL:I = -0x2

.field public static final STORE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;

.field private static final VIDEO_THUMB_URI:Landroid/net/Uri;

.field private static final sApp0Marker:[B

.field private static final sSoiMarker:[B


# instance fields
.field private mAcquiring:Z

.field private mCaptureRemainListener:Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;

.field private mContext:Landroid/content/Context;

.field private mCountOfSavingDataStack:I

.field private mDialog:Landroid/app/Dialog;

.field private mExifBuffer:[B

.field private mExternalMemoryListener:Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;

.field private mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

.field private mIsGeoTag:Z

.field private mLastCalledRemainRes:Ljava/lang/String;

.field private mLastExternalMemoryError:I

.field public mLatestShotBitmap:Landroid/graphics/Bitmap;

.field private final mLatestShotImageWidth:I

.field private mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

.field private mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

.field private volatile mLocationManager:Landroid/location/LocationManager;

.field public mMode:I

.field protected final mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

.field private final mPhotoSavingTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainBytes:J

.field private mRemainNumTimes:J

.field private mSizeOfSavingDataStack:I

.field private mStoreDataCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

.field private mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

.field private mStoreSweepPictureTask:Ljava/lang/Runnable;

.field private mStoreVideoThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 152
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager;->PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 153
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager;->PHOTO_THUMB_URI:Landroid/net/Uri;

    .line 154
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 156
    sget-object v0, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager;->VIDEO_THUMB_URI:Landroid/net/Uri;

    .line 3455
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    .line 3458
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager;->sApp0Marker:[B

    return-void

    .line 3455
    :array_0
    .array-data 0x1
        0xfft
        0xd8t
    .end array-data

    .line 3458
    nop

    :array_1
    .array-data 0x1
        0xfft
        0xe0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 119
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureTask:Ljava/lang/Runnable;

    .line 125
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    .line 132
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    .line 165
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mAcquiring:Z

    .line 175
    iput v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLastExternalMemoryError:I

    .line 195
    iput v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mMode:I

    .line 250
    const-string v0, "0"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLastCalledRemainRes:Ljava/lang/String;

    .line 261
    iput v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCountOfSavingDataStack:I

    .line 262
    iput v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mSizeOfSavingDataStack:I

    .line 277
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPhotoSavingTaskQueue:Ljava/util/LinkedList;

    .line 432
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    .line 433
    invoke-static {}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getInstance()Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->addExternalMediaChangeListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;)V

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLatestShotImageWidth:I

    .line 438
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPanorama(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/ImageManager;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPanorama3d([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/ImageManager;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepMultiAngle([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sonyericsson/android/camera3d/ImageManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/ImageManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/ImageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/ImageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera3d/ImageManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/ImageManager;)Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/android/camera3d/ImageManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/ImageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->changeLcsStatus()V

    return-void
.end method

.method private addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera3d/TakenStatus;[B)I
    .locals 6
    .parameter "os"
    .parameter "status"
    .parameter "thumbnailData"

    .prologue
    .line 3551
    new-instance v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/exif/ExifOption;-><init>()V

    .line 3553
    .local v1, exifOption:Lcom/sonyericsson/android/camera3d/exif/ExifOption;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mModel:Ljava/lang/String;

    .line 3554
    iget v3, p2, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->getExifRotation(I)S

    move-result v3

    iput v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mOrientation:I

    .line 3555
    iget-wide v3, p2, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/ImageManager;->getExifDateTime(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mDateTime:Ljava/lang/String;

    .line 3556
    iget v3, p2, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureWidth:I

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mPixelXDimension:J

    .line 3557
    iget v3, p2, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureHeight:I

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mPixelYDimension:J

    .line 3558
    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    iput-object v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mGPSOption:Landroid/location/Location;

    .line 3561
    if-nez p3, :cond_1

    .line 3564
    const/4 v3, 0x1

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailData:[B

    .line 3565
    const-wide/16 v3, 0x1

    iput-wide v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    .line 3583
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->getLength()I

    move-result v3

    iget-wide v4, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    long-to-int v4, v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mExifBuffer:[B

    .line 3585
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mExifBuffer:[B

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/exif/ExifFactory;->generate([BLcom/sonyericsson/android/camera3d/exif/ExifOption;)I

    move-result v2

    .line 3589
    .local v2, length:I
    if-lez v2, :cond_0

    .line 3591
    :try_start_0
    sget-object v3, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 3592
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mExifBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3593
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 3594
    sget-object v3, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    array-length v3, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    .line 3601
    :cond_0
    :goto_1
    return v2

    .line 3567
    .end local v2           #length:I
    :cond_1
    iput-object p3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailData:[B

    .line 3568
    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailData:[B

    array-length v3, v3

    int-to-long v3, v3

    iput-wide v3, v1, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mThumbnailDataLength:J

    goto :goto_0

    .line 3595
    .restart local v2       #length:I
    :catch_0
    move-exception v0

    .line 3596
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ImageManager"

    const-string v4, "Write failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3597
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private appendOnlyImageFromJfifData(Ljava/io/OutputStream;[BI)V
    .locals 5
    .parameter "os"
    .parameter "jfifByte"
    .parameter "length"

    .prologue
    .line 3470
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/ImageManager;->skipApp0Marker([B)I

    move-result v0

    .line 3474
    .local v0, app0Shift:I
    if-gez v0, :cond_0

    .line 3475
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid input byte array, return of skipApp0Marker() is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :goto_0
    return-void

    .line 3480
    :cond_0
    sub-int v2, p3, v0

    :try_start_0
    invoke-virtual {p1, p2, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3483
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3484
    :catch_0
    move-exception v1

    .line 3485
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ImageManager"

    const-string v3, "Exception occurs in writting"

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private changeLcsStatus()V
    .locals 3

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->checkLcsAvailableGps()Z

    move-result v0

    .line 2135
    .local v0, gps:Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->checkLcsAvailableNetwork()Z

    move-result v1

    .line 2136
    .local v1, net:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 2138
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    if-eqz v2, :cond_1

    .line 2140
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;->onAcquired(ZZ)V

    .line 2154
    :cond_1
    :goto_0
    return-void

    .line 2147
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    if-eqz v2, :cond_1

    .line 2149
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;->onLost()V

    goto :goto_0
.end method

.method private checkFsWritable()Z
    .locals 3

    .prologue
    .line 836
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDcimDirectory()Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 839
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    const/4 v2, 0x0

    .line 843
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    goto :goto_0
.end method

.method private computeRemain(JJ)J
    .locals 25
    .parameter "averageSizeByte"
    .parameter "margin"

    .prologue
    .line 970
    const-wide/16 v18, 0x0

    .line 971
    .local v18, remain:J
    const-wide/16 v6, 0x0

    .line 972
    .local v6, allSize:J
    const-wide/16 v10, 0x0

    .line 973
    .local v10, availableSize:J
    const/4 v15, 0x1

    .line 975
    .local v15, memoryAccessSucceeded:Z
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getStatFs()Landroid/os/StatFs;

    move-result-object v20

    .line 977
    .local v20, statFs:Landroid/os/StatFs;
    if-eqz v20, :cond_5

    .line 978
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockCount()I

    move-result v21

    move/from16 v0, v21

    int-to-long v4, v0

    .line 979
    .local v4, allBlocks:J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v8, v0

    .line 980
    .local v8, availableBlocks:J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v12, v0

    .line 986
    .local v12, blockSize:J
    mul-long v21, v4, v12

    const-wide/16 v23, 0x400

    div-long v6, v21, v23

    .line 987
    mul-long v21, v8, v12

    const-wide/16 v23, 0x400

    div-long v10, v21, v23

    .line 988
    sub-long v21, v10, p3

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, p1

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->floor(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v18, v0

    .line 990
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 996
    .end local v4           #allBlocks:J
    .end local v8           #availableBlocks:J
    .end local v12           #blockSize:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v14

    .line 1002
    .local v14, lastMemoryError:I
    const-wide/16 v21, 0x0

    cmp-long v21, v6, v21

    if-lez v21, :cond_0

    const/16 v21, -0x6

    move/from16 v0, v21

    if-eq v14, v0, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v14, v0, :cond_6

    :cond_0
    const/16 v17, 0x1

    .line 1009
    .local v17, noMemoryCard:Z
    :goto_1
    if-eqz v14, :cond_1

    const/16 v21, -0x5

    move/from16 v0, v21

    if-ne v14, v0, :cond_7

    :cond_1
    const/16 v16, 0x1

    .line 1011
    .local v16, memoryAvailable:Z
    :goto_2
    if-eqz v15, :cond_2

    if-eqz v17, :cond_3

    .line 1012
    :cond_2
    const/16 v16, 0x0

    .line 1021
    :cond_3
    if-nez v15, :cond_8

    .line 1022
    const/16 v21, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    .line 1023
    const/16 v21, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->showOrClearExternalStrogeErrorPopup(I)V

    .line 1043
    :goto_3
    if-nez v16, :cond_4

    .line 1044
    const-wide/16 v10, 0x0

    .line 1045
    const-wide/16 v18, 0x0

    .line 1053
    :cond_4
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonyericsson/android/camera3d/ImageManager;->mRemainNumTimes:J

    .line 1054
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mRemainBytes:J

    .line 1056
    return-wide v18

    .line 992
    .end local v14           #lastMemoryError:I
    .end local v16           #memoryAvailable:Z
    .end local v17           #noMemoryCard:Z
    :cond_5
    const-string v21, "ImageManager"

    const-string v22, "computeRemain: Cannot get external storage available size."

    invoke-static/range {v21 .. v22}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v15, 0x0

    goto :goto_0

    .line 1002
    .restart local v14       #lastMemoryError:I
    :cond_6
    const/16 v17, 0x0

    goto :goto_1

    .line 1009
    .restart local v17       #noMemoryCard:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 1024
    .restart local v16       #memoryAvailable:Z
    :cond_8
    if-eqz v17, :cond_9

    .line 1025
    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    .line 1026
    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->showOrClearExternalStrogeErrorPopup(I)V

    goto :goto_3

    .line 1027
    :cond_9
    if-eqz v16, :cond_b

    .line 1028
    const-wide/16 v21, 0x0

    cmp-long v21, v18, v21

    if-lez v21, :cond_a

    .line 1030
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    goto :goto_3

    .line 1032
    :cond_a
    const/16 v21, -0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    .line 1033
    const/16 v21, -0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->showOrClearExternalStrogeErrorPopup(I)V

    goto :goto_3

    .line 1038
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    .line 1039
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera3d/ImageManager;->showOrClearExternalStrogeErrorPopup(I)V

    goto :goto_3
.end method

.method private createLatestShot([BIIILandroid/graphics/Rect;I)Ljava/lang/String;
    .locals 18
    .parameter "yuv"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "rect"
    .parameter "q"

    .prologue
    .line 3215
    new-instance v2, Landroid/graphics/YuvImage;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 3216
    .local v2, yuvImage:Landroid/graphics/YuvImage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getThumbnailDirectory()Ljava/lang/String;

    move-result-object v16

    .line 3217
    .local v16, path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3218
    .local v10, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 3219
    .local v13, os:Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 3223
    .local v15, osTemp:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3224
    .local v8, directory:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3225
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3226
    const/4 v3, 0x0

    .line 3282
    .end local v8           #directory:Ljava/io/File;
    :goto_0
    return-object v3

    .line 3229
    .restart local v8       #directory:Ljava/io/File;
    :cond_0
    const-string v3, "temp"

    const-string v4, ".JPG"

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 3230
    if-eqz v10, :cond_1

    .line 3241
    :cond_1
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    .end local v15           #osTemp:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3242
    .restart local v15       #osTemp:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v15}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 3243
    const/4 v11, 0x0

    .line 3244
    .local v11, jfifLength:I
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 3245
    .local v17, tempJfif:[B
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit16 v3, v3, 0x400

    new-array v12, v3, [B

    .line 3247
    .local v12, normalizedJfifData:[B
    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lcom/sonyericsson/android/camera3d/jfif/DqtDhtIntegrator;->integrate([B[B)I
    :try_end_1
    .catch Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 3256
    :goto_1
    :try_start_2
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 3257
    .end local v13           #os:Ljava/io/FileOutputStream;
    .local v14, os:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v14, v12, v3, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3258
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 3259
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v16

    .line 3267
    if-eqz v14, :cond_5

    .line 3269
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v13, v14

    .line 3275
    .end local v14           #os:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    if-eqz v15, :cond_3

    .line 3277
    :try_start_5
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_3
    :goto_3
    move-object/from16 v3, v16

    .line 3282
    goto :goto_0

    .line 3234
    .end local v8           #directory:Ljava/io/File;
    .end local v11           #jfifLength:I
    .end local v12           #normalizedJfifData:[B
    .end local v17           #tempJfif:[B
    :catch_0
    move-exception v9

    .line 3237
    .local v9, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0

    .line 3248
    .end local v9           #e:Ljava/io/IOException;
    .restart local v8       #directory:Ljava/io/File;
    .restart local v11       #jfifLength:I
    .restart local v12       #normalizedJfifData:[B
    .restart local v17       #tempJfif:[B
    :catch_1
    move-exception v9

    .line 3250
    .local v9, e:Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException;
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 3251
    array-length v11, v12

    goto :goto_1

    .line 3270
    .end local v9           #e:Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException;
    .end local v13           #os:Ljava/io/FileOutputStream;
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v13, v14

    .line 3272
    .end local v14           #os:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 3260
    :catch_3
    move-exception v9

    .line 3262
    .local v9, e:Ljava/io/FileNotFoundException;
    :goto_4
    const/16 v16, 0x0

    .line 3267
    if-eqz v13, :cond_2

    .line 3269
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 3270
    :catch_4
    move-exception v3

    goto :goto_2

    .line 3263
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v9

    .line 3265
    .local v9, e:Ljava/io/IOException;
    :goto_5
    const/16 v16, 0x0

    .line 3267
    if-eqz v13, :cond_2

    .line 3269
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 3270
    :catch_6
    move-exception v3

    goto :goto_2

    .line 3267
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v13, :cond_4

    .line 3269
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 3272
    :cond_4
    :goto_7
    throw v3

    .line 3270
    :catch_7
    move-exception v4

    goto :goto_7

    .line 3278
    :catch_8
    move-exception v3

    goto :goto_3

    .line 3267
    .end local v13           #os:Ljava/io/FileOutputStream;
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14           #os:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 3263
    .end local v13           #os:Ljava/io/FileOutputStream;
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v9

    move-object v13, v14

    .end local v14           #os:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 3260
    .end local v13           #os:Ljava/io/FileOutputStream;
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v9

    move-object v13, v14

    .end local v14           #os:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v13           #os:Ljava/io/FileOutputStream;
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :cond_5
    move-object v13, v14

    .end local v14           #os:Ljava/io/FileOutputStream;
    .restart local v13       #os:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static createOptmizedBmp(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "src"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 3359
    if-eqz p0, :cond_1

    .line 3369
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3371
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 3372
    .local v1, x:I
    const/4 v2, 0x0

    .line 3379
    .local v2, y:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3394
    .local v0, square:Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3396
    .end local v0           #square:Landroid/graphics/Bitmap;
    .end local v1           #x:I
    .end local v2           #y:I
    :goto_1
    return-object v3

    .line 3382
    :cond_0
    const/4 v1, 0x0

    .line 3383
    .restart local v1       #x:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 3390
    .restart local v2       #y:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {p0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #square:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 3396
    .end local v0           #square:Landroid/graphics/Bitmap;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private declared-synchronized createStoreSweepPictureExecutor()V
    .locals 1

    .prologue
    .line 2370
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/ImageManager$2;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    monitor-exit p0

    return-void

    .line 2370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final decodeImage(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"
    .parameter "option"

    .prologue
    .line 3400
    const/4 v0, 0x0

    .line 3402
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3403
    if-eqz v0, :cond_0

    .line 3414
    :cond_0
    :goto_0
    return-object v0

    .line 3408
    :catch_0
    move-exception v1

    .line 3409
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ImageManager"

    const-string v3, "Decode failed."

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3410
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3411
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageManager"

    const-string v3, "Out of memory."

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 1185
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExifDateTime(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 3612
    const-string v0, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExifRotation(I)S
    .locals 1
    .parameter "degrees"

    .prologue
    .line 3623
    if-gez p1, :cond_0

    .line 3624
    add-int/lit16 p1, p1, 0x168

    .line 3626
    :cond_0
    const/4 v0, 0x1

    .line 3627
    .local v0, orientation:S
    sparse-switch p1, :sswitch_data_0

    .line 3641
    const/4 v0, 0x1

    .line 3644
    :goto_0
    return v0

    .line 3629
    :sswitch_0
    const/4 v0, 0x1

    .line 3630
    goto :goto_0

    .line 3632
    :sswitch_1
    const/4 v0, 0x6

    .line 3633
    goto :goto_0

    .line 3635
    :sswitch_2
    const/4 v0, 0x3

    .line 3636
    goto :goto_0

    .line 3638
    :sswitch_3
    const/16 v0, 0x8

    .line 3639
    goto :goto_0

    .line 3627
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getExifThumbnailByteArray(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Z)[B
    .locals 37
    .parameter "data"
    .parameter "status"
    .parameter "createLatestShotFlag"

    .prologue
    .line 2558
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureWidth:I

    div-int/lit16 v0, v2, 0xa0

    move/from16 v24, v0

    .line 2559
    .local v24, sampleSizeWidth:I
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureHeight:I

    div-int/lit8 v23, v2, 0x78

    .line 2560
    .local v23, sampleSizeHight:I
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    move/from16 v22, v24

    .line 2568
    .local v22, sampleSize:I
    :goto_0
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2569
    .local v17, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2570
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2571
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2572
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2574
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2577
    .local v3, originImgOs:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x32

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera3d/ImageManager;->outputYUVData(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;I[B)Z

    .line 2580
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    .line 2581
    .local v18, originImgByteArray:[B
    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v8, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v2, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2586
    .local v4, srcBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2587
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2592
    :goto_1
    new-instance v33, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v33 .. v33}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2594
    .local v33, tempThumbnailOs:Ljava/io/ByteArrayOutputStream;
    if-eqz v4, :cond_7

    .line 2595
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 2596
    .local v30, srcHeight:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    .line 2597
    .local v32, srcWidth:I
    move/from16 v0, v30

    int-to-float v2, v0

    const/high16 v8, 0x42f0

    div-float v14, v2, v8

    .line 2598
    .local v14, heightRate:F
    move/from16 v0, v32

    int-to-float v2, v0

    const/high16 v8, 0x4320

    div-float v36, v2, v8

    .line 2601
    .local v36, widhtRate:F
    cmpl-float v2, v14, v36

    if-lez v2, :cond_6

    .line 2602
    const/16 v26, 0x78

    .line 2603
    .local v26, scaledHeight:I
    move/from16 v0, v32

    int-to-float v2, v0

    div-float/2addr v2, v14

    float-to-int v0, v2

    move/from16 v28, v0

    .line 2617
    .local v28, scaledWidth:I
    :goto_2
    const/16 v2, 0xa0

    const/16 v8, 0x78

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 2619
    .local v34, thumbnailBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, -0x100

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2621
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v34

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2622
    .local v11, c:Landroid/graphics/Canvas;
    move/from16 v0, v28

    rsub-int v2, v0, 0xa0

    div-int/lit8 v20, v2, 0x2

    .line 2623
    .local v20, paddingWidth:I
    rsub-int/lit8 v2, v26, 0x78

    div-int/lit8 v19, v2, 0x2

    .line 2625
    .local v19, paddingHeight:I
    const/4 v2, 0x0

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2628
    .local v27, scaledThumbnailBitmap:Landroid/graphics/Bitmap;
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v8, v0

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v11, v0, v2, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2629
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2630
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 2633
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2634
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2635
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->recycle()V

    .line 2642
    :cond_1
    if-eqz p3, :cond_3

    if-eqz v4, :cond_3

    .line 2643
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 2644
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    .line 2645
    move/from16 v0, v30

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLatestShotImageWidth:I

    int-to-float v8, v8

    div-float v14, v2, v8

    .line 2646
    move/from16 v0, v32

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLatestShotImageWidth:I

    int-to-float v8, v8

    div-float v36, v2, v8

    .line 2647
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 2650
    .local v9, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLatestShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLatestShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLatestShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2655
    :cond_2
    const/16 v25, 0x0

    .line 2656
    .local v25, scaleRate:F
    const/4 v5, 0x0

    .line 2657
    .local v5, bitmapX:I
    const/4 v6, 0x0

    .line 2658
    .local v6, bitmapY:I
    const/4 v7, 0x0

    .line 2660
    .local v7, bitmapWidth:I
    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_8

    .line 2663
    move/from16 v25, v36

    .line 2664
    const/4 v5, 0x0

    .line 2665
    sub-int v2, v30, v32

    div-int/lit8 v6, v2, 0x2

    .line 2666
    move/from16 v7, v32

    .line 2678
    :goto_3
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    const/16 v8, 0x5a

    if-le v2, v8, :cond_9

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    add-int/lit16 v2, v2, -0xb4

    int-to-float v0, v2

    move/from16 v21, v0

    .line 2681
    .local v21, rotateDegree:F
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2682
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2683
    const/4 v10, 0x0

    move v8, v7

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLatestShotBitmap:Landroid/graphics/Bitmap;

    .line 2688
    .end local v5           #bitmapX:I
    .end local v6           #bitmapY:I
    .end local v7           #bitmapWidth:I
    .end local v9           #matrix:Landroid/graphics/Matrix;
    .end local v21           #rotateDegree:F
    .end local v25           #scaleRate:F
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2689
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2692
    :cond_4
    const/4 v15, 0x0

    .line 2693
    .local v15, jfifLength:I
    invoke-virtual/range {v33 .. v33}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v35

    .line 2694
    .local v35, tmpImage:[B
    move-object/from16 v0, v35

    array-length v2, v0

    add-int/lit16 v2, v2, 0x400

    new-array v0, v2, [B

    move-object/from16 v31, v0

    .line 2697
    .local v31, srcImage:[B
    :try_start_1
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/jfif/DqtDhtIntegrator;->integrate([B[B)I
    :try_end_1
    .catch Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 2705
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->skipApp0Marker([B)I

    move-result v16

    .line 2706
    .local v16, offset:I
    sub-int v2, v15, v16

    sget-object v8, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    array-length v8, v8

    add-int v29, v2, v8

    .line 2707
    .local v29, size:I
    move/from16 v0, v29

    new-array v12, v0, [B

    .line 2710
    .local v12, dstImage:[B
    const/4 v2, 0x0

    sget-object v8, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    const/4 v10, 0x0

    aget-byte v8, v8, v10

    aput-byte v8, v12, v2

    .line 2711
    const/4 v2, 0x1

    sget-object v8, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    const/4 v10, 0x1

    aget-byte v8, v8, v10

    aput-byte v8, v12, v2

    .line 2714
    sget-object v2, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    array-length v2, v2

    array-length v8, v12

    sget-object v10, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    array-length v10, v10

    sub-int/2addr v8, v10

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-static {v0, v1, v12, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2718
    const/16 v31, 0x0

    .line 2720
    :try_start_2
    invoke-virtual/range {v33 .. v33}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2725
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v12           #dstImage:[B
    .end local v14           #heightRate:F
    .end local v15           #jfifLength:I
    .end local v16           #offset:I
    .end local v19           #paddingHeight:I
    .end local v20           #paddingWidth:I
    .end local v26           #scaledHeight:I
    .end local v27           #scaledThumbnailBitmap:Landroid/graphics/Bitmap;
    .end local v28           #scaledWidth:I
    .end local v29           #size:I
    .end local v30           #srcHeight:I
    .end local v31           #srcImage:[B
    .end local v32           #srcWidth:I
    .end local v34           #thumbnailBitmap:Landroid/graphics/Bitmap;
    .end local v35           #tmpImage:[B
    .end local v36           #widhtRate:F
    :goto_6
    return-object v12

    .end local v3           #originImgOs:Ljava/io/ByteArrayOutputStream;
    .end local v4           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v17           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v18           #originImgByteArray:[B
    .end local v22           #sampleSize:I
    .end local v33           #tempThumbnailOs:Ljava/io/ByteArrayOutputStream;
    :cond_5
    move/from16 v22, v23

    .line 2560
    goto/16 :goto_0

    .line 2588
    .restart local v3       #originImgOs:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v17       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v18       #originImgByteArray:[B
    .restart local v22       #sampleSize:I
    :catch_0
    move-exception v13

    .line 2589
    .local v13, e:Ljava/io/IOException;
    const-string v2, "ImageManager"

    const-string v8, "close failed."

    invoke-static {v2, v8, v13}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2605
    .end local v13           #e:Ljava/io/IOException;
    .restart local v14       #heightRate:F
    .restart local v30       #srcHeight:I
    .restart local v32       #srcWidth:I
    .restart local v33       #tempThumbnailOs:Ljava/io/ByteArrayOutputStream;
    .restart local v36       #widhtRate:F
    :cond_6
    const/16 v28, 0xa0

    .line 2606
    .restart local v28       #scaledWidth:I
    move/from16 v0, v30

    int-to-float v2, v0

    div-float v2, v2, v36

    float-to-int v0, v2

    move/from16 v26, v0

    .restart local v26       #scaledHeight:I
    goto/16 :goto_2

    .line 2638
    .end local v14           #heightRate:F
    .end local v26           #scaledHeight:I
    .end local v28           #scaledWidth:I
    .end local v30           #srcHeight:I
    .end local v32           #srcWidth:I
    .end local v36           #widhtRate:F
    :cond_7
    const/4 v2, 0x0

    new-array v12, v2, [B

    goto :goto_6

    .line 2671
    .restart local v5       #bitmapX:I
    .restart local v6       #bitmapY:I
    .restart local v7       #bitmapWidth:I
    .restart local v9       #matrix:Landroid/graphics/Matrix;
    .restart local v11       #c:Landroid/graphics/Canvas;
    .restart local v14       #heightRate:F
    .restart local v19       #paddingHeight:I
    .restart local v20       #paddingWidth:I
    .restart local v25       #scaleRate:F
    .restart local v26       #scaledHeight:I
    .restart local v27       #scaledThumbnailBitmap:Landroid/graphics/Bitmap;
    .restart local v28       #scaledWidth:I
    .restart local v30       #srcHeight:I
    .restart local v32       #srcWidth:I
    .restart local v34       #thumbnailBitmap:Landroid/graphics/Bitmap;
    .restart local v36       #widhtRate:F
    :cond_8
    move/from16 v25, v14

    .line 2672
    sub-int v2, v32, v30

    div-int/lit8 v5, v2, 0x2

    .line 2673
    const/4 v6, 0x0

    .line 2674
    move/from16 v7, v30

    goto/16 :goto_3

    .line 2678
    :cond_9
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    int-to-float v0, v2

    move/from16 v21, v0

    goto/16 :goto_4

    .line 2698
    .end local v5           #bitmapX:I
    .end local v6           #bitmapY:I
    .end local v7           #bitmapWidth:I
    .end local v9           #matrix:Landroid/graphics/Matrix;
    .end local v25           #scaleRate:F
    .restart local v15       #jfifLength:I
    .restart local v31       #srcImage:[B
    .restart local v35       #tmpImage:[B
    :catch_1
    move-exception v13

    .line 2700
    .local v13, e:Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException;
    move-object/from16 v31, v35

    .line 2701
    move-object/from16 v0, v31

    array-length v15, v0

    goto :goto_5

    .line 2721
    .end local v13           #e:Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException;
    .restart local v12       #dstImage:[B
    .restart local v16       #offset:I
    .restart local v29       #size:I
    :catch_2
    move-exception v2

    goto :goto_6
.end method

.method private getLatestMpoUri(Ljava/lang/String;)I
    .locals 8
    .parameter "mpoType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 3420
    new-instance v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 3421
    .local v3, params:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v6

    iput-object v4, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 3422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 3423
    const-string v4, "datetaken DESC"

    iput-object v4, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 3424
    iput v7, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 3425
    sget-object v4, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->crQuery(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 3426
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3450
    :goto_0
    return v1

    .line 3432
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3434
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3435
    .local v2, indexaId:I
    if-gez v2, :cond_1

    .line 3450
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3441
    :cond_1
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 3450
    .local v1, id:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #id:I
    .end local v2           #indexaId:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private getMountPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "storageType"

    .prologue
    .line 481
    invoke-static {}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorages()[Ljava/io/File;

    move-result-object v5

    .line 484
    .local v5, storages:[Ljava/io/File;
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 485
    .local v4, storage:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, type:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 493
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #storage:Ljava/io/File;
    .end local v6           #type:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 484
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #storage:Ljava/io/File;
    .restart local v6       #type:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #storage:Ljava/io/File;
    .end local v6           #type:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStatFs()Landroid/os/StatFs;
    .locals 6

    .prologue
    .line 1081
    const/4 v1, 0x0

    .line 1083
    .local v1, statFs:Landroid/os/StatFs;
    new-instance v2, Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager$1;)V

    .line 1084
    .local v2, task:Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1087
    const-wide/16 v3, 0xbb8

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #statFs:Landroid/os/StatFs;
    check-cast v1, Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1098
    .restart local v1       #statFs:Landroid/os/StatFs;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$GetStatFsTask;->cancel(Z)Z

    .line 1099
    return-object v1

    .line 1088
    .end local v1           #statFs:Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .line 1090
    .restart local v1       #statFs:Landroid/os/StatFs;
    const-string v3, "ImageManager"

    const-string v4, "GetStatFsTask has been interrupted."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1091
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #statFs:Landroid/os/StatFs;
    :catch_1
    move-exception v0

    .line 1092
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const/4 v1, 0x0

    .line 1093
    .restart local v1       #statFs:Landroid/os/StatFs;
    const-string v3, "ImageManager"

    const-string v4, "GetStatFsTask failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1094
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    .end local v1           #statFs:Landroid/os/StatFs;
    :catch_2
    move-exception v0

    .line 1095
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    const/4 v1, 0x0

    .line 1096
    .restart local v1       #statFs:Landroid/os/StatFs;
    const-string v3, "ImageManager"

    const-string v4, "GetStatFsTask failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertMPOPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;
    .locals 5
    .parameter "path"
    .parameter "description"
    .parameter "loc"
    .parameter "orientation"
    .parameter "dateTaken"

    .prologue
    .line 1789
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;-><init>()V

    .line 1790
    .local v0, params:Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1800
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v3, "datetaken"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1803
    const-string v3, "mime_type"

    const-string v4, "image/mpo"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;->values:Landroid/content/ContentValues;

    .line 1806
    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore$Mpo3dPictures;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->crInsert(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;)Landroid/net/Uri;

    move-result-object v1

    .line 1808
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method public static makeAltitudeString(D)Ljava/lang/String;
    .locals 4
    .parameter "d"

    .prologue
    .line 1637
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 1639
    const-wide/high16 v2, 0x4059

    mul-double/2addr v2, p0

    double-to-int v0, v2

    .line 1641
    .local v0, altitude:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, retVal:Ljava/lang/String;
    return-object v1
.end method

.method public static makeLatLongString(D)Ljava/lang/String;
    .locals 12
    .parameter "d"

    .prologue
    const-wide/high16 v10, 0x404e

    .line 1621
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 1623
    double-to-int v0, p0

    .line 1625
    .local v0, degrees:I
    int-to-double v6, v0

    sub-double v2, p0, v6

    .line 1626
    .local v2, remainder:D
    mul-double v6, v2, v10

    double-to-int v1, v6

    .line 1627
    .local v1, minutes:I
    mul-double v6, v2, v10

    int-to-double v8, v1

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 1631
    .local v5, seconds:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1633
    .local v4, retVal:Ljava/lang/String;
    return-object v4
.end method

.method private notifyExternalMemoryListener(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 772
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLastExternalMemoryError:I

    .line 773
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mExternalMemoryListener:Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mExternalMemoryListener:Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;->onExternalMemoryStatusChanged(I)V

    .line 778
    :cond_0
    return-void
.end method

.method private notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "status"
    .parameter "result"
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 1272
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1273
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1274
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1275
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    .line 1276
    .local v1, results:[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1277
    aput-object p3, v1, v4

    .line 1278
    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 1279
    const/4 v2, 0x3

    aput-object p1, v1, v2

    .line 1280
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1281
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    if-eqz v2, :cond_0

    .line 1282
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1287
    :cond_0
    return-void
.end method

.method private notifyStoreProgress(II)V
    .locals 2
    .parameter "current"
    .parameter "total"

    .prologue
    .line 1293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1294
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1295
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1296
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1297
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    if-eqz v1, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1303
    :cond_0
    return-void
.end method

.method private outputYUVData(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;I[B)Z
    .locals 10
    .parameter "os"
    .parameter "data"
    .parameter "status"
    .parameter "quality"
    .parameter "thumbnailData"

    .prologue
    .line 2478
    const/4 v6, 0x1

    .line 2479
    .local v6, result:Z
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2483
    .local v5, osJfif:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p2, p4, v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;->compress(ILjava/io/ByteArrayOutputStream;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 2490
    :goto_0
    const/4 v3, 0x0

    .line 2491
    .local v3, jfifLength:I
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2492
    .local v0, compressedData:[B
    array-length v7, v0

    if-nez v7, :cond_0

    .line 2493
    const/4 v6, 0x0

    .line 2495
    :cond_0
    array-length v7, v0

    new-array v2, v7, [B

    .line 2496
    .local v2, jfifData:[B
    if-eqz v6, :cond_1

    .line 2498
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/WorkArea;->lock(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 2499
    if-nez v2, :cond_3

    .line 2501
    const/4 v6, 0x0

    .line 2505
    :goto_1
    const/4 v0, 0x0

    .line 2513
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2522
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 2524
    :try_start_3
    invoke-direct {p0, p1, p3, p5}, Lcom/sonyericsson/android/camera3d/ImageManager;->addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera3d/TakenStatus;[B)I

    move-result v4

    .line 2525
    .local v4, length:I
    if-lez v4, :cond_4

    .line 2527
    invoke-direct {p0, p1, v2, v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->appendOnlyImageFromJfifData(Ljava/io/OutputStream;[BI)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    .line 2538
    .end local v4           #length:I
    :cond_2
    :goto_3
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/WorkArea;->unlock()V

    .line 2541
    return v6

    .line 2484
    .end local v0           #compressedData:[B
    .end local v2           #jfifData:[B
    .end local v3           #jfifLength:I
    :catch_0
    move-exception v1

    .line 2486
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    goto :goto_0

    .line 2503
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #compressedData:[B
    .restart local v2       #jfifData:[B
    .restart local v3       #jfifLength:I
    :cond_3
    :try_start_4
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/jfif/DqtDhtIntegrator;->integrate([B[B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    goto :goto_1

    .line 2514
    :catch_1
    move-exception v1

    .line 2515
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ImageManager"

    const-string v8, "Close failed."

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2516
    const/4 v6, 0x0

    .line 2518
    goto :goto_2

    .line 2506
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 2508
    .local v1, e:Lcom/sonyericsson/android/camera3d/jfif/IntegrationMakerException;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 2509
    array-length v3, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2513
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 2514
    :catch_3
    move-exception v1

    .line 2515
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ImageManager"

    const-string v8, "Close failed."

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2516
    const/4 v6, 0x0

    .line 2518
    goto :goto_2

    .line 2512
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2513
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 2517
    :goto_4
    throw v7

    .line 2514
    :catch_4
    move-exception v1

    .line 2515
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "ImageManager"

    const-string v9, "Close failed."

    invoke-static {v8, v9, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2516
    const/4 v6, 0x0

    goto :goto_4

    .line 2529
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #length:I
    :cond_4
    :try_start_8
    const-string v7, "ImageManager"

    const-string v8, "addExifHeader failed."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5

    .line 2530
    const/4 v6, 0x0

    goto :goto_3

    .line 2532
    .end local v4           #length:I
    :catch_5
    move-exception v1

    .line 2533
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "ImageManager"

    const-string v8, "Out of memory occurs in storing"

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2534
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private pushPhotoSavingTask([BLcom/sonyericsson/android/camera3d/TakenStatus;)V
    .locals 4
    .parameter "image"
    .parameter "status"

    .prologue
    .line 283
    iget v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCountOfSavingDataStack:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCountOfSavingDataStack:I

    .line 284
    iget v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mSizeOfSavingDataStack:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mSizeOfSavingDataStack:I

    .line 287
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager$1;)V

    .line 288
    .local v0, request:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;
    iput-object p1, v0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mImage:[B

    .line 289
    iput-object p2, v0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 290
    new-instance v1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;)V

    .line 291
    .local v1, task:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPhotoSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 292
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    return-void
.end method

.method public static removeFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 1311
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1312
    .local v0, lastDotPos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1317
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1314
    .restart local p0
    :cond_1
    if-eqz v0, :cond_0

    .line 1317
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static rotateWithoutRecycle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 2253
    move-object v7, p0

    .line 2254
    .local v7, bm:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 2255
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2256
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2258
    const/4 v8, 0x0

    .line 2260
    .local v8, temp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2261
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2262
    if-nez v7, :cond_0

    .line 2263
    move-object v7, v8

    .line 2268
    :cond_0
    if-eqz v8, :cond_1

    if-eq v8, v7, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2269
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2273
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #temp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v7

    .line 2265
    .restart local v5       #m:Landroid/graphics/Matrix;
    .restart local v8       #temp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 2268
    if-eqz v8, :cond_1

    if-eq v8, v7, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2269
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2268
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    if-eq v8, v7, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2269
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v0
.end method

.method private showOrClearExternalStrogeErrorPopup(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1107
    const/4 v0, -0x1

    .line 1108
    .local v0, textId:I
    const/4 v1, -0x1

    .line 1110
    .local v1, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 1152
    :goto_0
    if-lez v0, :cond_0

    .line 1153
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorOk(IIZ)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mDialog:Landroid/app/Dialog;

    .line 1156
    :cond_0
    return-void

    .line 1112
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 1113
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 1115
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1119
    :pswitch_1
    const v0, 0x7f0c00f0

    .line 1120
    const v1, 0x7f0c00d4

    .line 1121
    goto :goto_0

    .line 1124
    :pswitch_2
    const v0, 0x7f0c00ee

    .line 1125
    const v1, 0x7f0c00d4

    .line 1126
    goto :goto_0

    .line 1129
    :pswitch_3
    const v0, 0x7f0c00eb

    .line 1130
    const v1, 0x7f0c00d4

    .line 1131
    goto :goto_0

    .line 1134
    :pswitch_4
    const v0, 0x7f0c00ed

    .line 1135
    const v1, 0x7f0c00d4

    .line 1136
    goto :goto_0

    .line 1139
    :pswitch_5
    const v0, 0x7f0c00ec

    .line 1140
    const v1, 0x7f0c00d4

    .line 1141
    goto :goto_0

    .line 1144
    :pswitch_6
    const v0, 0x7f0c00ef

    .line 1145
    const v1, 0x7f0c00d4

    .line 1146
    goto :goto_0

    .line 1110
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private skipApp0Marker([B)I
    .locals 7
    .parameter "inputByte"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 3499
    const/4 v0, 0x0

    .line 3500
    .local v0, byteCnt:I
    const/4 v2, 0x0

    .line 3503
    .local v2, siftSize:I
    array-length v3, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    aget-byte v3, p1, v5

    sget-object v4, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    aget-byte v3, p1, v6

    sget-object v4, Lcom/sonyericsson/android/camera3d/ImageManager;->sSoiMarker:[B

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_1

    .line 3541
    :cond_0
    :goto_0
    return v1

    .line 3511
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 3514
    :goto_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x3

    if-ge v0, v3, :cond_0

    .line 3517
    aget-byte v3, p1, v0

    sget-object v4, Lcom/sonyericsson/android/camera3d/ImageManager;->sApp0Marker:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 3522
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v2, v3, v4

    .line 3526
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    sget-object v4, Lcom/sonyericsson/android/camera3d/ImageManager;->sApp0Marker:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_2

    .line 3527
    sget-object v3, Lcom/sonyericsson/android/camera3d/ImageManager;->sApp0Marker:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 3532
    .local v1, ret:I
    goto :goto_0

    .line 3536
    .end local v1           #ret:I
    :cond_2
    add-int/2addr v0, v2

    goto :goto_1
.end method

.method private storeSweep3dMPO(Ljava/lang/String;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;IILcom/sonyericsson/android/camera3d/TakenStatus;)Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    .locals 20
    .parameter "path"
    .parameter "data"
    .parameter "start"
    .parameter "num"
    .parameter "status"

    .prologue
    .line 2799
    const/4 v3, 0x0

    aget-object v3, p2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPictureJPEG(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;)I

    move-result v18

    .line 2802
    .local v18, result:I
    if-nez v18, :cond_0

    .line 2803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".MPO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->IMstartCombineJpegToMpo(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2805
    const/16 v18, -0x1

    .line 2810
    :cond_0
    if-nez v18, :cond_1

    .line 2811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".JPG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->IMaddCombineJpegFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2813
    const/16 v18, -0x1

    .line 2818
    :cond_1
    const/4 v3, 0x1

    aget-object v3, p2, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v1, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->getExifThumbnailByteArray(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Z)[B

    move-result-object v8

    .line 2820
    .local v8, thumbnailData:[B
    if-nez v18, :cond_3

    .line 2821
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2822
    .local v4, osJfif:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    aget-object v5, p2, v3

    const/16 v7, 0x46

    move-object/from16 v3, p0

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera3d/ImageManager;->outputYUVData(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;I[B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2823
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->IMaddCombineJpegData([BI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2825
    const/16 v18, -0x1

    .line 2833
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 2835
    :try_start_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2844
    .end local v4           #osJfif:Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->IMendCombineJpegToMpo()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2846
    const/16 v18, -0x1

    .line 2851
    :cond_4
    const/16 v17, 0x0

    .line 2852
    .local v17, mpoUri:Landroid/net/Uri;
    if-nez v18, :cond_5

    .line 2853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".MPO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p5

    iget v13, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    move-object/from16 v0, p5

    iget-wide v14, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera3d/ImageManager;->insertMPOPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;

    move-result-object v17

    .line 2857
    if-eqz v17, :cond_8

    const/16 v18, 0x0

    .line 2860
    :cond_5
    :goto_2
    const/16 v19, 0x0

    .line 2861
    .local v19, uriJpg:Landroid/net/Uri;
    if-nez v18, :cond_6

    .line 2862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".JPG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p5

    iget v13, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    move-object/from16 v0, p5

    iget-wide v14, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/sonyericsson/android/camera3d/ImageManager;->insertPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;

    move-result-object v19

    .line 2864
    if-eqz v19, :cond_9

    const/16 v18, 0x0

    .line 2869
    :cond_6
    :goto_3
    if-nez v18, :cond_a

    .line 2870
    new-instance v3, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 2872
    :goto_4
    return-object v3

    .line 2829
    .end local v17           #mpoUri:Landroid/net/Uri;
    .end local v19           #uriJpg:Landroid/net/Uri;
    .restart local v4       #osJfif:Ljava/io/ByteArrayOutputStream;
    :cond_7
    const/16 v18, -0x1

    goto :goto_0

    .line 2837
    :catch_0
    move-exception v16

    .line 2838
    .local v16, e:Ljava/io/IOException;
    const-string v3, "ImageManager"

    const-string v5, "Close failed."

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2839
    const/16 v18, -0x1

    goto/16 :goto_1

    .line 2857
    .end local v4           #osJfif:Ljava/io/ByteArrayOutputStream;
    .end local v16           #e:Ljava/io/IOException;
    .restart local v17       #mpoUri:Landroid/net/Uri;
    :cond_8
    const/16 v18, -0x1

    goto :goto_2

    .line 2864
    .restart local v19       #uriJpg:Landroid/net/Uri;
    :cond_9
    const/16 v18, -0x1

    goto :goto_3

    .line 2872
    :cond_a
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private storeSweepMultAngleMPO(Ljava/lang/String;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;IILcom/sonyericsson/android/camera3d/TakenStatus;)Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    .locals 21
    .parameter "path"
    .parameter "data"
    .parameter "start"
    .parameter "num"
    .parameter "status"

    .prologue
    .line 2890
    move-object/from16 v0, p2

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    aget-object v3, p2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPictureJPEG(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;)I

    move-result v20

    .line 2891
    .local v20, result:I
    if-nez v20, :cond_0

    .line 2892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".MPO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->IMstartCombineJpegToMpo(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2894
    const/16 v20, -0x1

    .line 2901
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    aget-object v3, p2, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v1, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->getExifThumbnailByteArray(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Z)[B

    move-result-object v8

    .line 2903
    .local v8, thumbnailData:[B
    move/from16 v17, p3

    .local v17, index:I
    :goto_1
    add-int v3, p3, p4

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 2904
    if-nez v20, :cond_1

    .line 2906
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2907
    .local v4, osJfif:Ljava/io/ByteArrayOutputStream;
    aget-object v5, p2, v17

    const/16 v7, 0x46

    move-object/from16 v3, p0

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera3d/ImageManager;->outputYUVData(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;I[B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2909
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->IMaddCombineJpegData([BI)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2911
    const/16 v20, -0x1

    .line 2921
    :goto_2
    if-eqz v4, :cond_1

    .line 2924
    :try_start_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    .end local v4           #osJfif:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2896
    .end local v8           #thumbnailData:[B
    .end local v17           #index:I
    :cond_2
    const/4 v3, 0x2

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreProgress(II)V

    goto :goto_0

    .line 2913
    .restart local v4       #osJfif:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #thumbnailData:[B
    .restart local v17       #index:I
    :cond_3
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreProgress(II)V

    goto :goto_2

    .line 2917
    :cond_4
    const/16 v20, -0x1

    goto :goto_2

    .line 2926
    :catch_0
    move-exception v16

    .line 2927
    .local v16, e:Ljava/io/IOException;
    const-string v3, "ImageManager"

    const-string v5, "Close failed."

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2928
    const/16 v20, -0x1

    goto :goto_3

    .line 2933
    .end local v4           #osJfif:Ljava/io/ByteArrayOutputStream;
    .end local v16           #e:Ljava/io/IOException;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->IMendCombineJpegToMpo()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2935
    const/16 v20, -0x1

    .line 2938
    :cond_6
    const/16 v19, 0x0

    .line 2939
    .local v19, mpoUri:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 2940
    .local v18, jpgUri:Landroid/net/Uri;
    if-nez v20, :cond_7

    .line 2941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".MPO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p5

    iget v13, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    move-object/from16 v0, p5

    iget-wide v14, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera3d/ImageManager;->insertMPOPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;

    move-result-object v19

    .line 2947
    if-eqz v19, :cond_9

    const/16 v20, 0x0

    .line 2950
    :cond_7
    :goto_4
    if-nez v20, :cond_8

    .line 2951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".JPG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p5

    iget v13, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    move-object/from16 v0, p5

    iget-wide v14, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/sonyericsson/android/camera3d/ImageManager;->insertPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;

    move-result-object v18

    .line 2957
    if-eqz v18, :cond_a

    const/16 v20, 0x0

    .line 2962
    :cond_8
    :goto_5
    if-nez v20, :cond_b

    .line 2963
    new-instance v3, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 2965
    :goto_6
    return-object v3

    .line 2947
    :cond_9
    const/16 v20, -0x1

    goto :goto_4

    .line 2957
    :cond_a
    const/16 v20, -0x1

    goto :goto_5

    .line 2965
    :cond_b
    const/4 v3, 0x0

    goto :goto_6
.end method

.method private storeSweepMultiAngle([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 10
    .parameter "data"
    .parameter "status"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 3069
    iput v0, p2, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    .line 3071
    const/4 v1, 0x0

    .line 3072
    .local v1, path:Ljava/lang/String;
    const/4 v9, 0x0

    .line 3073
    .local v9, uri:Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    const/4 v8, 0x0

    .line 3075
    .local v8, result:I
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3076
    if-nez v1, :cond_0

    .line 3078
    const/4 v8, -0x1

    .line 3084
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 3086
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweep3dMPO(Ljava/lang/String;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;IILcom/sonyericsson/android/camera3d/TakenStatus;)Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 3090
    :goto_1
    if-nez v9, :cond_4

    .line 3091
    const/4 v8, -0x1

    .line 3097
    :cond_1
    :goto_2
    if-nez v8, :cond_2

    .line 3099
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 3100
    if-nez v1, :cond_2

    .line 3102
    const/4 v8, -0x1

    .line 3109
    :cond_2
    :goto_3
    if-nez v8, :cond_3

    .line 3111
    const/4 v3, 0x2

    const/16 v4, 0xf

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepMultAngleMPO(Ljava/lang/String;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;IILcom/sonyericsson/android/camera3d/TakenStatus;)Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    .line 3115
    :goto_4
    if-nez v9, :cond_5

    .line 3116
    const/4 v8, -0x1

    .line 3122
    :cond_3
    :goto_5
    if-nez v9, :cond_6

    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, p2, v8, v1, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 3124
    return-void

    .line 3080
    :catch_0
    move-exception v6

    .line 3082
    .local v6, e:Ljava/io/IOException;
    const/4 v8, -0x1

    goto :goto_0

    .line 3087
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 3088
    .local v7, ex:Landroid/database/sqlite/SQLiteFullException;
    const/4 v8, -0x2

    goto :goto_1

    .line 3093
    .end local v7           #ex:Landroid/database/sqlite/SQLiteFullException;
    :cond_4
    const/4 v0, 0x1

    array-length v2, p1

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreProgress(II)V

    goto :goto_2

    .line 3104
    :catch_2
    move-exception v6

    .line 3106
    .restart local v6       #e:Ljava/io/IOException;
    const/4 v8, -0x1

    goto :goto_3

    .line 3112
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 3113
    .restart local v7       #ex:Landroid/database/sqlite/SQLiteFullException;
    const/4 v8, -0x2

    goto :goto_4

    .line 3118
    .end local v7           #ex:Landroid/database/sqlite/SQLiteFullException;
    :cond_5
    iget-object v0, v9, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;->mJpgUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->sendBroadcastNewContent(Landroid/net/Uri;)V

    goto :goto_5

    .line 3122
    :cond_6
    iget-object v0, v9, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;->mMpoUri:Landroid/net/Uri;

    goto :goto_6
.end method

.method private storeSweepPanorama(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 12
    .parameter "data"
    .parameter "status"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 2978
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/TakenStatus;->deepCopy()Lcom/sonyericsson/android/camera3d/TakenStatus;

    move-result-object v7

    .line 2979
    .local v7, copyStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;
    iget v1, v7, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_2

    :goto_0
    iput v0, v7, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    .line 2981
    const/4 v9, 0x0

    .line 2982
    .local v9, path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2984
    .local v10, result:I
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2985
    if-nez v9, :cond_0

    .line 2987
    const/4 v10, -0x1

    .line 2993
    :cond_0
    :goto_1
    const/4 v11, 0x0

    .line 2994
    .local v11, uri:Landroid/net/Uri;
    if-nez v10, :cond_1

    .line 2995
    invoke-direct {p0, v9, p1, v7}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPictureJPEG(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;)I

    move-result v10

    .line 2996
    if-nez v10, :cond_4

    .line 2998
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, v7, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    iget v4, v7, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    iget-wide v5, v7, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/ImageManager;->insertPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 3000
    if-nez v11, :cond_3

    .line 3003
    const/4 v10, -0x1

    .line 3016
    :cond_1
    :goto_2
    invoke-direct {p0, v7, v10, v9, v11}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 3017
    return-void

    .line 2979
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #result:I
    .end local v11           #uri:Landroid/net/Uri;
    :cond_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 2989
    .restart local v9       #path:Ljava/lang/String;
    .restart local v10       #result:I
    :catch_0
    move-exception v8

    .line 2991
    .local v8, e:Ljava/io/IOException;
    const/4 v10, -0x1

    goto :goto_1

    .line 3005
    .end local v8           #e:Ljava/io/IOException;
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_3
    :try_start_2
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/ImageManager;->sendBroadcastNewContent(Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3007
    :catch_1
    move-exception v8

    .line 3009
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v10, -0x2

    .line 3010
    goto :goto_2

    .line 3013
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_4
    const/4 v10, -0x1

    goto :goto_2
.end method

.method private storeSweepPanorama3d([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 9
    .parameter "data"
    .parameter "status"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 3030
    iput v3, p2, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    .line 3032
    const/4 v1, 0x0

    .line 3033
    .local v1, path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3035
    .local v7, result:I
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3036
    if-nez v1, :cond_0

    .line 3038
    const/4 v7, -0x1

    .line 3044
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 3045
    .local v8, uri:Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    if-nez v7, :cond_1

    .line 3046
    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweep3dMPO(Ljava/lang/String;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;IILcom/sonyericsson/android/camera3d/TakenStatus;)Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;

    move-result-object v8

    .line 3047
    if-nez v8, :cond_2

    .line 3048
    const/4 v7, -0x1

    .line 3054
    :cond_1
    :goto_1
    if-nez v8, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, p2, v7, v1, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 3056
    return-void

    .line 3040
    .end local v8           #uri:Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    :catch_0
    move-exception v6

    .line 3042
    .local v6, e:Ljava/io/IOException;
    const/4 v7, -0x1

    goto :goto_0

    .line 3050
    .end local v6           #e:Ljava/io/IOException;
    .restart local v8       #uri:Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;
    :cond_2
    iget-object v0, v8, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;->mJpgUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->sendBroadcastNewContent(Landroid/net/Uri;)V

    goto :goto_1

    .line 3054
    :cond_3
    iget-object v0, v8, Lcom/sonyericsson/android/camera3d/ImageManager$Contents3dUris;->mMpoUri:Landroid/net/Uri;

    goto :goto_2
.end method

.method private storeSweepPictureJPEG(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;)I
    .locals 10
    .parameter "path"
    .parameter "data"
    .parameter "status"

    .prologue
    .line 2738
    const/4 v9, 0x0

    .line 2741
    .local v9, result:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".JPG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2742
    .local v7, fullPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2744
    .local v1, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #os:Ljava/io/FileOutputStream;
    .local v8, os:Ljava/io/FileOutputStream;
    move-object v1, v8

    .line 2753
    .end local v8           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getExifThumbnailByteArray(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Z)[B

    move-result-object v5

    .line 2755
    .local v5, thumbnailData:[B
    if-nez v9, :cond_0

    .line 2756
    const/16 v4, 0x46

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->outputYUVData(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;I[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2757
    const/4 v9, 0x0

    .line 2763
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2772
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 2773
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2780
    :cond_1
    :goto_3
    return v9

    .line 2745
    .end local v5           #thumbnailData:[B
    :catch_0
    move-exception v6

    .line 2747
    .local v6, e:Ljava/io/FileNotFoundException;
    const/4 v9, -0x1

    .line 2751
    goto :goto_0

    .line 2748
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 2750
    .local v6, e:Ljava/lang/SecurityException;
    const/4 v9, -0x1

    goto :goto_0

    .line 2759
    .end local v6           #e:Ljava/lang/SecurityException;
    .restart local v5       #thumbnailData:[B
    :cond_2
    const/4 v9, -0x1

    goto :goto_1

    .line 2764
    :catch_2
    move-exception v6

    .line 2765
    .local v6, e:Ljava/io/IOException;
    const-string v0, "ImageManager"

    const-string v2, "Flush failed."

    invoke-static {v0, v2, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2766
    const/4 v9, -0x1

    goto :goto_2

    .line 2775
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 2777
    .restart local v6       #e:Ljava/io/IOException;
    const-string v0, "ImageManager"

    const-string v2, "Close failed."

    invoke-static {v0, v2, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2778
    const/4 v9, -0x1

    goto :goto_3
.end method

.method private updateRemainAfterDelete()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLastCalledRemainRes:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->updateRemain(Ljava/lang/String;)V

    .line 933
    return-void
.end method


# virtual methods
.method public IMaddCombineJpegData([BI)Z
    .locals 3
    .parameter "data"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 3189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->isStoringSweepPicturesCanceling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3197
    :goto_0
    return v1

    .line 3193
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/mpo/MpoWriter;->addCombineJpegData([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3194
    const/4 v1, 0x1

    goto :goto_0

    .line 3195
    :catch_0
    move-exception v0

    .line 3197
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public IMaddCombineJpegFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 3176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->isStoringSweepPicturesCanceling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3184
    :goto_0
    return v1

    .line 3180
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/mpo/MpoWriter;->addCombineJpegFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3181
    const/4 v1, 0x1

    goto :goto_0

    .line 3182
    :catch_0
    move-exception v0

    .line 3184
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public IMendCombineJpegToMpo()Z
    .locals 2

    .prologue
    .line 3167
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/mpo/MpoWriter;->endCombineJpegToMpo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3168
    const/4 v1, 0x1

    .line 3171
    :goto_0
    return v1

    .line 3169
    :catch_0
    move-exception v0

    .line 3171
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IMstartCombineJpegToMpo(Ljava/lang/String;I)Z
    .locals 3
    .parameter "file"
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 3153
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->isStoringSweepPicturesCanceling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3161
    :goto_0
    return v1

    .line 3157
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/mpo/MpoWriter;->startCombineJpegToMpo(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    const/4 v1, 0x1

    goto :goto_0

    .line 3159
    :catch_0
    move-exception v0

    .line 3161
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public addStoreDataCallback(Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    :cond_0
    return-void
.end method

.method public assignResource()V
    .locals 4

    .prologue
    .line 445
    new-instance v2, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    .line 446
    new-instance v2, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    .line 454
    new-instance v2, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/ImageManager$1;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    .line 468
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v0

    .line 475
    .local v0, config:Lcom/sonyericsson/android/camera3d/CameraConfigManager;
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, type:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->getMountPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->setDestinationToSave(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public cancelPhotoSavingTask(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 307
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPhotoSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;

    .line 308
    .local v1, task:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->cancel(Z)Z

    goto :goto_0

    .line 310
    .end local v1           #task:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPhotoSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 311
    return-void
.end method

.method public cancelStoringSweepPictures()V
    .locals 1

    .prologue
    .line 2459
    monitor-enter p0

    .line 2460
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2463
    :cond_0
    monitor-exit p0

    .line 2464
    return-void

    .line 2463
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cancelStoringVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1813
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1816
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 1824
    :cond_0
    :goto_0
    return-void

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "ImageManager"

    const-string v2, "cancelStoringVideo"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1821
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    throw v1
.end method

.method public checkLcsAvailable()Z
    .locals 2

    .prologue
    .line 2107
    const/4 v0, 0x0

    .line 2108
    .local v0, isAcquired:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    if-nez v1, :cond_1

    .line 2109
    :cond_0
    const/4 v1, 0x0

    .line 2125
    :goto_0
    return v1

    .line 2111
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2116
    const/4 v0, 0x1

    .line 2118
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2123
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 2125
    goto :goto_0
.end method

.method public checkLcsAvailableGps()Z
    .locals 2

    .prologue
    .line 2161
    const/4 v0, 0x0

    .line 2162
    .local v0, isAcquired:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    if-nez v1, :cond_0

    .line 2163
    const/4 v1, 0x0

    .line 2170
    :goto_0
    return v1

    .line 2165
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2168
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 2170
    goto :goto_0
.end method

.method public checkLcsAvailableNetwork()Z
    .locals 2

    .prologue
    .line 2178
    const/4 v0, 0x0

    .line 2179
    .local v0, isAcquired:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    if-nez v1, :cond_0

    .line 2180
    const/4 v1, 0x0

    .line 2187
    :goto_0
    return v1

    .line 2182
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2185
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 2187
    goto :goto_0
.end method

.method public checkStorage()Z
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->mIsScanned:Z

    return v0
.end method

.method public declared-synchronized crDelete(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;)I
    .locals 4
    .parameter "uri"
    .parameter "params"

    .prologue
    .line 577
    monitor-enter p0

    const/4 v0, 0x0

    .line 579
    .local v0, result:I
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->where:Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 584
    :goto_0
    monitor-exit p0

    return v0

    .line 577
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 581
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized crInsert(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "params"

    .prologue
    .line 598
    monitor-enter p0

    const/4 v1, 0x0

    .line 600
    .local v1, result:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;->values:Landroid/content/ContentValues;

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 607
    :goto_0
    monitor-exit p0

    return-object v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, ex:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v0           #ex:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 603
    :catch_1
    move-exception v0

    .line 604
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized crOpenInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .parameter "imageUri"

    .prologue
    .line 662
    monitor-enter p0

    const/4 v0, 0x0

    .line 664
    .local v0, result:Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 678
    :goto_0
    monitor-exit p0

    return-object v0

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 665
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized crOpenOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .parameter "uri"

    .prologue
    .line 643
    monitor-enter p0

    const/4 v0, 0x0

    .line 645
    .local v0, result:Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 658
    :goto_0
    monitor-exit p0

    return-object v0

    .line 643
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 646
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized crQuery(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "params"

    .prologue
    .line 540
    monitor-enter p0

    const/4 v6, 0x0

    .line 544
    .local v6, result:Landroid/database/Cursor;
    :try_start_0
    iget v0, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    if-lez v0, :cond_0

    .line 545
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s limit %d offset %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, order:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    iget-object v4, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 563
    .end local v5           #order:Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v6

    .line 548
    :cond_0
    :try_start_1
    iget-object v5, p2, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5       #order:Ljava/lang/String;
    goto :goto_0

    .line 540
    .end local v5           #order:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 556
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized crUpdate(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;)I
    .locals 6
    .parameter "uri"
    .parameter "params"

    .prologue
    .line 621
    monitor-enter p0

    const/4 v1, 0x0

    .line 623
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->values:Landroid/content/ContentValues;

    iget-object v4, p2, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->where:Ljava/lang/String;

    iget-object v5, p2, Lcom/sonyericsson/android/camera3d/util/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 630
    :goto_0
    monitor-exit p0

    return v1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, ex:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    .end local v0           #ex:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 627
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public createStorer([BLjava/lang/String;)Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;
    .locals 1
    .parameter "jpegData"
    .parameter "path"

    .prologue
    .line 1616
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;[BLjava/lang/String;)V

    return-object v0
.end method

.method public deleteImage(Landroid/net/Uri;)Z
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2198
    const/4 v2, 0x0

    .line 2199
    .local v2, failCount:I
    if-nez p1, :cond_1

    .line 2242
    :cond_0
    :goto_0
    return v7

    .line 2203
    :cond_1
    new-instance v6, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v6}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 2204
    .local v6, params:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "_id"

    aput-object v10, v9, v7

    const-string v10, "_data"

    aput-object v10, v9, v8

    iput-object v9, v6, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 2210
    iput-object v11, v6, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 2211
    iput-object v11, v6, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 2212
    iput-object v11, v6, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 2213
    iput v7, v6, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->limit:I

    .line 2214
    iput v7, v6, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->offset:I

    .line 2215
    invoke-virtual {p0, p1, v6}, Lcom/sonyericsson/android/camera3d/ImageManager;->crQuery(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 2216
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 2218
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 2219
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2221
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2224
    .local v4, imagePath:Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;-><init>()V

    .line 2225
    .local v1, deparams:Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->where:Ljava/lang/String;

    .line 2226
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    .line 2227
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->crDelete(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;)I

    move-result v5

    .line 2228
    .local v5, number:I
    if-eq v5, v8, :cond_2

    .line 2229
    add-int/lit8 v2, v2, 0x1

    .line 2218
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2232
    .end local v1           #deparams:Lcom/sonyericsson/android/camera3d/util/CrDeleteParameter;
    .end local v4           #imagePath:Ljava/lang/String;
    .end local v5           #number:I
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->updateRemainAfterDelete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2239
    .end local v3           #i:I
    :cond_4
    if-nez v2, :cond_0

    move v7, v8

    .line 2240
    goto :goto_0

    .line 2234
    .restart local v3       #i:I
    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2024
    const/4 v2, 0x0

    .line 2025
    .local v2, locNetwork:Landroid/location/Location;
    const/4 v1, 0x0

    .line 2027
    .local v1, locGps:Landroid/location/Location;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 2028
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v0

    .line 2033
    .local v0, config:Lcom/sonyericsson/android/camera3d/CameraConfigManager;
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mIsGeoTag:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->canUseAnyLocationProvider()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v3, v4

    .line 2077
    .end local v0           #config:Lcom/sonyericsson/android/camera3d/CameraConfigManager;
    :goto_0
    return-object v3

    :cond_1
    move-object v3, v4

    .line 2030
    goto :goto_0

    .line 2040
    .restart local v0       #config:Lcom/sonyericsson/android/camera3d/CameraConfigManager;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v2

    .line 2041
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 2042
    if-eqz v2, :cond_3

    .line 2049
    :cond_3
    if-eqz v1, :cond_4

    .line 2056
    :cond_4
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->GET_LOCATION_INFORMATION:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 2059
    if-eqz v1, :cond_5

    move-object v3, v1

    .line 2064
    goto :goto_0

    .line 2066
    :cond_5
    if-eqz v2, :cond_6

    move-object v3, v2

    .line 2071
    goto :goto_0

    :cond_6
    move-object v3, v4

    .line 2077
    goto :goto_0
.end method

.method public getExternalStorageAllSize()J
    .locals 11

    .prologue
    .line 901
    const-wide/16 v5, 0x0

    .line 904
    .local v5, size:J
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v8

    const/4 v9, -0x6

    if-eq v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 907
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 908
    .local v7, statfs:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v0, v8

    .line 909
    .local v0, blockcnt:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v2, v8

    .line 910
    .local v2, blocksize:J
    mul-long v5, v0, v2

    .line 921
    .end local v0           #blockcnt:J
    .end local v2           #blocksize:J
    .end local v7           #statfs:Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-wide v5

    .line 915
    :catch_0
    move-exception v4

    .line 916
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "ImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot get external storage all size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-wide/16 v5, 0x0

    goto :goto_0
.end method

.method public getExternalStorageAvailableSize()J
    .locals 11

    .prologue
    .line 873
    const-wide/16 v5, 0x0

    .line 874
    .local v5, size:J
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v8

    const/4 v9, -0x5

    if-ne v8, v9, :cond_1

    .line 877
    :cond_0
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 878
    .local v7, statfs:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 879
    .local v0, blocknum:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v2, v8

    .line 880
    .local v2, blocksize:J
    mul-long v5, v0, v2

    .line 891
    .end local v0           #blocknum:J
    .end local v2           #blocksize:J
    .end local v7           #statfs:Landroid/os/StatFs;
    :cond_1
    :goto_0
    return-wide v5

    .line 886
    :catch_0
    move-exception v4

    .line 887
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "ImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot get external storage available size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-wide/16 v5, 0x0

    goto :goto_0
.end method

.method public getExternalStorageState(Ljava/lang/String;)I
    .locals 6
    .parameter "storage"

    .prologue
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x6

    .line 723
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, state:Ljava/lang/String;
    const-string v5, "bad_removal"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 754
    :cond_0
    :goto_0
    return v1

    .line 729
    :cond_1
    const-string v5, "removed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 732
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 733
    goto :goto_0

    .line 735
    :cond_2
    const-string v1, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 736
    goto :goto_0

    .line 738
    :cond_3
    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 739
    const/4 v1, -0x4

    goto :goto_0

    .line 741
    :cond_4
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 742
    goto :goto_0

    .line 744
    :cond_5
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 745
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->checkFsWritable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 746
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    move v1, v2

    .line 748
    goto :goto_0

    .line 750
    :cond_7
    const-string v1, "checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    .line 751
    goto :goto_0

    :cond_8
    move v1, v4

    .line 754
    goto :goto_0
.end method

.method public getLastExternalMemoryError()I
    .locals 1

    .prologue
    .line 2247
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLastExternalMemoryError:I

    return v0
.end method

.method public getLatest2DPanoramaMedia()Lcom/sonyericsson/android/camera3d/ImageManager$LatestShot2dInfo;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 3316
    new-instance v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;-><init>()V

    .line 3317
    .local v3, params:Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v5, v9

    const-string v6, "orientation"

    aput-object v6, v5, v10

    iput-object v5, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 3319
    const-string v5, "datetaken DESC"

    iput-object v5, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 3320
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s like \'%s/DCIM/___%s/%s____%s\'"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_data"

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "ANDRO"

    aput-object v8, v7, v11

    const/4 v8, 0x3

    const-string v9, "DSC_"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, ".JPG"

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;->where:Ljava/lang/String;

    .line 3326
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->crQuery(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 3327
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3353
    :goto_0
    return-object v4

    .line 3333
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3335
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 3336
    .local v1, indexaId:I
    if-gez v1, :cond_1

    .line 3337
    const-string v5, "ImageManager"

    const-string v6, "can not find the id column."

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3353
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3341
    :cond_1
    :try_start_1
    const-string v5, "orientation"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3342
    .local v2, orientationId:I
    if-gez v2, :cond_2

    .line 3343
    const-string v5, "ImageManager"

    const-string v6, "can not find the orientation column."

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3353
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3347
    :cond_2
    :try_start_2
    new-instance v4, Lcom/sonyericsson/android/camera3d/ImageManager$LatestShot2dInfo;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/ImageManager$LatestShot2dInfo;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3353
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #indexaId:I
    .end local v2           #orientationId:I
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public getLatest3DImageId(Ljava/lang/String;)I
    .locals 4
    .parameter "modeType"

    .prologue
    const/4 v0, 0x0

    .line 3292
    const-string v1, "MA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3295
    const-string v1, "ImageManager"

    const-string v2, "wrong mode type = "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3298
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLatestMpoUri(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getRemainBytes()J
    .locals 4

    .prologue
    .line 1164
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mRemainBytes:J

    iget v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mSizeOfSavingDataStack:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRemainTimes()J
    .locals 2

    .prologue
    .line 1173
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mRemainNumTimes:J

    return-wide v0
.end method

.method public getThumbnailUri(IJIII)Landroid/net/Uri;
    .locals 5
    .parameter "type"
    .parameter "imageId"
    .parameter "width"
    .parameter "height"
    .parameter "kind"

    .prologue
    .line 1663
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;-><init>()V

    .line 1664
    .local v0, insertPar:Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1665
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "kind"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1666
    const-string v3, "image_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1667
    const-string v3, "height"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1668
    const-string v3, "width"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1669
    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;->values:Landroid/content/ContentValues;

    .line 1670
    sget-object v1, Lcom/sonyericsson/android/camera3d/ImageManager;->PHOTO_THUMB_URI:Landroid/net/Uri;

    .line 1671
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->crInsert(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1194
    const/4 v1, 0x0

    .line 1196
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v2

    .line 1197
    .local v2, state:I
    if-nez v2, :cond_0

    .line 1198
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 1205
    .end local v2           #state:I
    :goto_0
    return-object v1

    .line 1200
    .restart local v2       #state:I
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->showOrClearExternalStrogeErrorPopup(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    .end local v2           #state:I
    :catch_0
    move-exception v0

    .line 1203
    .local v0, e:Ljava/io/IOException;
    const-string v1, "/dev/null"

    goto :goto_0
.end method

.method public insertPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;
    .locals 9
    .parameter "path"
    .parameter "description"
    .parameter "loc"
    .parameter "orientation"
    .parameter "dateTaken"

    .prologue
    .line 1346
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;-><init>()V

    .line 1347
    .local v0, params:Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1349
    .local v3, values:Landroid/content/ContentValues;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v1, photo:Ljava/io/File;
    const-string v4, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v4, "_display_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1353
    const-string v4, "description"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :cond_0
    const-string v4, "datetaken"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1356
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v4, "orientation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1358
    const-string v4, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v4, "date_modified"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1362
    if-eqz p3, :cond_1

    .line 1363
    const-string v4, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1364
    const-string v4, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1366
    :cond_1
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;->values:Landroid/content/ContentValues;

    .line 1368
    sget-object v4, Lcom/sonyericsson/android/camera3d/ImageManager;->PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->crInsert(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;)Landroid/net/Uri;

    move-result-object v2

    .line 1387
    .local v2, resultUri:Landroid/net/Uri;
    if-eqz p3, :cond_2

    .line 1395
    :cond_2
    return-object v2
.end method

.method public insertVideoContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;JLjava/util/EnumMap;JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "description"
    .parameter "path"
    .parameter "loc"
    .parameter "dateTaken"
    .parameter
    .parameter "duration"
    .parameter "ext"
    .parameter "mime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "J",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 1430
    .local p6, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;-><init>()V

    .line 1431
    .local v1, par:Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;
    new-instance v2, Landroid/content/ContentValues;

    const/16 v4, 0x11

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1433
    .local v2, values:Landroid/content/ContentValues;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v3, video:Ljava/io/File;
    const-string v4, "title"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const-string v4, "_display_name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1437
    const-string v4, "description"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_0
    const-string v4, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1440
    const-string v4, "date_modified"

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1441
    const-string v4, "artist"

    const-string v5, "<unknown>"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v4, "album"

    const-string v5, "<unknown>"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v4, "mime_type"

    move-object/from16 v0, p10

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v4, "duration"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v4, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v5, "resolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPictureWidth(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPictureHeight(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v4, "_data"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iput-object v2, v1, Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;->values:Landroid/content/ContentValues;

    .line 1459
    sget-object v4, Lcom/sonyericsson/android/camera3d/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->crInsert(Landroid/net/Uri;Lcom/sonyericsson/android/camera3d/util/CrInsertParameter;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method public declared-synchronized isExist(Landroid/net/Uri;)Z
    .locals 4
    .parameter "mediaUri"

    .prologue
    .line 690
    monitor-enter p0

    const/4 v2, 0x1

    .line 691
    .local v2, result:Z
    const/4 v1, 0x0

    .line 693
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 698
    :goto_0
    if-eqz v1, :cond_0

    .line 700
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    :cond_0
    :goto_1
    monitor-exit p0

    return v2

    .line 694
    :catch_0
    move-exception v0

    .line 696
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 701
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 690
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isStoring()Z
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isStoringSweepPicturesCanceling()Z
    .locals 2

    .prologue
    .line 2450
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2453
    .local v0, shutdown:Z
    monitor-exit p0

    return v0

    .line 2450
    .end local v0           #shutdown:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onExternalStorageStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "storage"

    .prologue
    .line 791
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    :goto_0
    return-void

    .line 795
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 811
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/ImageManager;->getExternalStorageState(Ljava/lang/String;)I

    move-result v0

    .line 812
    .local v0, state:I
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    .line 814
    packed-switch v0, :pswitch_data_1

    .line 823
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->showOrClearExternalStrogeErrorPopup(I)V

    goto :goto_0

    .line 800
    .end local v0           #state:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->cancelStoringSweepPictures()V

    goto :goto_1

    .line 804
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->cancel()V

    goto :goto_1

    .line 816
    .restart local v0       #state:I
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->startScan()V

    .line 817
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->showOrClearExternalStrogeErrorPopup(I)V

    goto :goto_0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 814
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public popPhotoSavingTask(Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 298
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCountOfSavingDataStack:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCountOfSavingDataStack:I

    .line 299
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mSizeOfSavingDataStack:I

    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mImage:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mSizeOfSavingDataStack:I

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPhotoSavingTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    .line 508
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    .line 509
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    .line 510
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCaptureRemainListener:Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;

    .line 511
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataHandler:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 516
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    .line 519
    :cond_0
    monitor-enter p0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 526
    :cond_1
    monitor-exit p0

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized releaseResource()V
    .locals 1

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->stopReceivingLocationUpdates()V

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_0
    monitor-exit p0

    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeStoreDataCallback(Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2312
    :cond_0
    return-void
.end method

.method public returnUnusedFile()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->returnUnusedFile()V

    .line 1213
    return-void
.end method

.method public sendBroadcastNewContent(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 3136
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3144
    :goto_0
    return-void

    .line 3140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3143
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.NEW_PICTURE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setBufferReleaseRequest(Z)V
    .locals 1
    .parameter "request"

    .prologue
    .line 3648
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureTask:Ljava/lang/Runnable;

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;

    .line 3649
    .local v0, task:Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;
    if-eqz v0, :cond_0

    .line 3650
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->requestRelease(Z)V

    .line 3652
    :cond_0
    return-void
.end method

.method public setCameraMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2282
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mMode:I

    .line 2283
    return-void
.end method

.method public setCaptureRemainListener(Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCaptureRemainListener:Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;

    .line 926
    return-void
.end method

.method public setExternalMemoryListener(Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 763
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mExternalMemoryListener:Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;

    .line 764
    return-void
.end method

.method public setGeoTag(ZZZ)V
    .locals 1
    .parameter "mode"
    .parameter "gps"
    .parameter "net"

    .prologue
    .line 2087
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mIsGeoTag:Z

    .line 2088
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 2089
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mIsGeoTag:Z

    if-eqz v0, :cond_2

    .line 2090
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;->onLost()V

    .line 2093
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/ImageManager;->startLocationUpdates(ZZ)V

    .line 2099
    :cond_1
    :goto_0
    return-void

    .line 2096
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method

.method public setGpsAcquiredListener(Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 853
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mGpsAcquiredListener:Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;

    .line 854
    return-void
.end method

.method public declared-synchronized startLocationUpdates(ZZ)V
    .locals 7
    .parameter "gps"
    .parameter "network"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1963
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->GPS_ACQUIRING_TIME:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1965
    if-eqz p1, :cond_0

    .line 1966
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1971
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->access$1002(Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;Z)Z

    .line 1973
    :cond_0
    if-eqz p2, :cond_1

    .line 1974
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1979
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->mValid:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;->access$1002(Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;Z)Z

    .line 1982
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mAcquiring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1993
    :goto_0
    monitor-exit p0

    return-void

    .line 1984
    :catch_0
    move-exception v6

    .line 1985
    .local v6, ex:Ljava/lang/SecurityException;
    :try_start_2
    const-string v0, "ImageManager"

    const-string v1, "GPS provider can\'t access."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mAcquiring:Z

    .line 1987
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1963
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1988
    :catch_1
    move-exception v6

    .line 1991
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mAcquiring:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopReceivingLocationUpdates()V
    .locals 2

    .prologue
    .line 2000
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mAcquiring:Z

    if-eqz v0, :cond_1

    .line 2001
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerGps:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2003
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLocationListenerNetwork:Lcom/sonyericsson/android/camera3d/ImageManager$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2005
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mAcquiring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    :cond_1
    monitor-exit p0

    return-void

    .line 2000
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopStoringPicture()V
    .locals 0

    .prologue
    .line 1505
    return-void
.end method

.method public declared-synchronized storePicture([BLcom/sonyericsson/android/camera3d/TakenStatus;)V
    .locals 6
    .parameter "image"
    .parameter "status"

    .prologue
    .line 1483
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1484
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ImageManager;->pushPhotoSavingTask([BLcom/sonyericsson/android/camera3d/TakenStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    :goto_0
    monitor-exit p0

    return-void

    .line 1486
    :cond_0
    :try_start_1
    const-string v2, "ImageManager"

    const-string v3, "### can\'t store a specified image file."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string v2, "ImageManager"

    const-string v3, "### so, notify a failure of storing the specified image file."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 1489
    .local v0, cb:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-interface {v0, p2, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;->onStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1483
    .end local v0           #cb:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1491
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v2, -0x1

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->cancelPhotoSavingTask(I)V

    .line 1492
    const/4 v2, -0x3

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyExternalMemoryListener(I)V

    .line 1493
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v2

    const v3, 0x7f0c00eb

    const v4, 0x7f0c00d4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorOk(IIZ)Landroid/app/Dialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized storeSweepPictures(I[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;ZLcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 7
    .parameter "type"
    .parameter "data"
    .parameter "convertNv12ToNv21"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2347
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p5}, Lcom/sonyericsson/android/camera3d/ImageManager;->addStoreDataCallback(Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 2350
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLastExternalMemoryError:I

    if-nez v0, :cond_3

    .line 2351
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;I[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;ZLcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureTask:Ljava/lang/Runnable;

    .line 2353
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 2354
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->createStoreSweepPictureExecutor()V

    .line 2361
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2367
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 2356
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->createStoreSweepPictureExecutor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2365
    :cond_3
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {p0, p4, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public storeVideo(Ljava/lang/String;JLcom/sonyericsson/android/camera3d/view/CameraWindow;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/camera3d/TakenStatus;)V
    .locals 11
    .parameter "path"
    .parameter "duration"
    .parameter "win"
    .parameter "ext"
    .parameter "mime"
    .parameter "takenStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1702
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 1704
    const-string v0, "ImageManager"

    const-string v1, "storeVideo: mStoreVideoThread timeout."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c006e

    const v2, 0x7f0c00d6

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 1785
    :goto_0
    return-void

    .line 1711
    :catch_0
    move-exception v0

    .line 1714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 1718
    :cond_0
    const-string v9, ""

    .line 1719
    .local v9, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getVideoSettings()Ljava/util/EnumMap;

    move-result-object v4

    .line 1722
    .local v4, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$1;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-wide v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/ImageManager$1;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/TakenStatus;Ljava/lang/String;Ljava/util/EnumMap;JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v10, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 1783
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1714
    .end local v4           #settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    .end local v9           #description:Ljava/lang/String;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreVideoThread:Ljava/lang/Thread;

    throw v0
.end method

.method public updateRemain(Ljava/lang/String;)V
    .locals 10
    .parameter "resolution"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mLastCalledRemainRes:Ljava/lang/String;

    .line 945
    sget-object v6, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureSizesMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 946
    .local v4, size:J
    sget-object v6, Lcom/sonyericsson/android/camera3d/CameraConfig;->sPictureMaxSizesMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long v0, v6, v8

    .line 948
    .local v0, margin:J
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->computeRemain(JJ)J

    move-result-wide v2

    .line 949
    .local v2, remain:J
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCaptureRemainListener:Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;

    if-eqz v6, :cond_0

    .line 950
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/ImageManager;->mCaptureRemainListener:Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;

    invoke-interface {v6, v2, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;->onCaptureStatusUpdate(J)V

    .line 952
    :cond_0
    return-void
.end method
