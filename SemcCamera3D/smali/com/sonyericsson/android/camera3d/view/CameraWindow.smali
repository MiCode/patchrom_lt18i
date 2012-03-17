.class public Lcom/sonyericsson/android/camera3d/view/CameraWindow;
.super Landroid/widget/FrameLayout;
.source "CameraWindow.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;
.implements Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;
.implements Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;
.implements Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;
.implements Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;
.implements Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$3;,
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;,
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;,
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$TouchGuideAnimationListener;,
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;,
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;,
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$TransitionCallback;,
        Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;
    }
.end annotation


# static fields
.field private static final DISABLE_OTHER_FACERECTANGLES:I = 0x0

.field public static final DISPLAY_SIZE_LARGE:I = 0x0

.field public static final DISPLAY_SIZE_SMALL:I = 0x1

.field private static final ENABLE_OTHER_FACERECTANGLES:I = 0x1

.field public static final GEOTAG_OFF:I = 0x0

.field public static final GEOTAG_ON:I = 0x1

.field public static final GPS_ACQUIRED_GPS:I = 0x3

.field public static final GPS_ACQUIRED_GPS_AND_NETWORK:I = 0x5

.field public static final GPS_ACQUIRED_NETWORK:I = 0x4

.field public static final GPS_ACQUIRING:I = 0x2

.field private static final MSG_HIDE_AF_INDICATOR:I = 0x8

.field private static final MSG_HIDE_AUTO_FOCUS:I = 0x14

.field private static final MSG_HIDE_DEFAULT_VIEW_CAMERA:I = 0x4

.field private static final MSG_HIDE_DEFAULT_VIEW_VIDEO:I = 0x5

.field private static final MSG_HIDE_FACE_RECTANGLES:I = 0x9

.field private static final MSG_HIDE_NOTIFICATION_MACRO:I = 0x11

.field private static final MSG_HIDE_RECORDING:I = 0x16

.field private static final MSG_HIDE_RECORDING_MAX_DURATION:I = 0x17

.field private static final MSG_HIDE_ZOOMBAR:I = 0xc

.field private static final MSG_SETUP_WINDOW_CAMERA:I = 0x0

.field private static final MSG_SETUP_WINDOW_VIDEO:I = 0x1

.field private static final MSG_SET_FOCUS_MODE:I = 0xd

.field private static final MSG_SET_INDICATOR_COLOR:I = 0xa

.field private static final MSG_SET_NOTIFICATION_GPS:I = 0xe

.field private static final MSG_SET_NOTIFICATION_SCENE:I = 0xf

.field private static final MSG_SET_ORIENTATION:I = 0x19

.field private static final MSG_SHOW_AF_INDICATOR:I = 0x6

.field private static final MSG_SHOW_AUTO_FOCUS:I = 0x12

.field private static final MSG_SHOW_DEFAULT_VIEW_CAMERA:I = 0x2

.field private static final MSG_SHOW_DEFAULT_VIEW_VIDEO:I = 0x3

.field private static final MSG_SHOW_FACE_RECTANGLES:I = 0x7

.field private static final MSG_SHOW_IDLE_VIEW:I = 0x18

.field private static final MSG_SHOW_NOTIFICATION_MACRO:I = 0x10

.field private static final MSG_SHOW_RECORDING:I = 0x15

.field private static final MSG_SHOW_SELFTIMER:I = 0x13

.field private static final MSG_SHOW_ZOOMBAR:I = 0xb

.field private static final MSG_UPDATE_DEBUG_INFO:I = 0x1b

.field private static final MSG_VALUE_MAX:I = 0x20

.field public static final TAG:Ljava/lang/String; = "CameraWindow"


# instance fields
.field private mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

.field mBasicIconPadding:Landroid/graphics/Rect;

.field private mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

.field private mCaptureRemainListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

.field private mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

.field private mDebugTextView:Landroid/widget/TextView;

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mDisplaySize:I

.field private mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

.field private mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

.field mLeftIconWidth:I

.field private mMode:I

.field private mNotTakenArea:Lcom/sonyericsson/android/camera3d/view/NotTakenArea;

.field private mOrientation:I

.field private mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

.field private mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

.field private mPrepared:Z

.field private mReleased:Z

.field mRightIconWidth:I

.field private mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

.field private mSettingsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

.field private mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

.field private mSurfaceHeight:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mTouchArea:Lcom/sonyericsson/android/camera3d/view/TouchArea;

.field private mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

.field private mWindowCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 444
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 142
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    .line 150
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    .line 182
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPrepared:Z

    .line 185
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mReleased:Z

    .line 445
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->initialize(Landroid/content/Context;)V

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 459
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 142
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    .line 150
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    .line 182
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPrepared:Z

    .line 185
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mReleased:Z

    .line 460
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->initialize(Landroid/content/Context;)V

    .line 461
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$StoreCallback;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 142
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    .line 150
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    .line 182
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPrepared:Z

    .line 185
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mReleased:Z

    .line 478
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->initialize(Landroid/content/Context;)V

    .line 479
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupCameraWindow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideAutoFocusViewImpl()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showRecordingViewImpl()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideRecordingViewImpl()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideRecordingViewImplMaxDuration()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showSelftimerViewImpl()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera3d/view/CameraWindow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showIdleViewImpl(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera3d/view/CameraWindow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showZoombarImpl(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideZoombarImpl(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupVideoWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera/photostack/PhotoStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showDefaultViewCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showDefaultViewVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideDefaultViewCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideDefaultViewVideo()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/AfRectangles;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/view/CameraWindow;ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfIndicatorColorImpl(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showAutoFocusViewImpl()V

    return-void
.end method

.method private convertCapturingModeToPhotostackMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
    .locals 1
    .parameter "value"

    .prologue
    .line 2377
    const-string v0, "PANORAMA_3D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PANORAMA_3D:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    .line 2382
    :goto_0
    return-object v0

    .line 2379
    :cond_0
    const-string v0, "MULTI_ANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2380
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->MULTI_ANGLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    goto :goto_0

    .line 2382
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PHOTO_VIDEO:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    goto :goto_0
.end method

.method public static convertPreviewToSurface(IILandroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 10
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "displayRect"
    .parameter "displaySize"

    .prologue
    const/4 v9, 0x0

    .line 1324
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1325
    .local v4, surfaceWidth:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1327
    .local v2, surfaceHeight:I
    const/4 v5, 0x1

    if-ne p3, v5, :cond_0

    const/16 v5, 0x500

    if-ne p0, v5, :cond_0

    .line 1329
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v5, v5

    int-to-double v7, p0

    div-double v0, v5, v7

    .line 1331
    .local v0, ratio:D
    int-to-double v5, p1

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1338
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v9, v9, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1345
    .local v3, surfaceRect:Landroid/graphics/Rect;
    return-object v3

    .line 1333
    .end local v0           #ratio:D
    .end local v3           #surfaceRect:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    int-to-double v7, p1

    div-double v0, v5, v7

    .line 1335
    .restart local v0       #ratio:D
    int-to-double v5, p0

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    goto :goto_0
.end method

.method public static convertSurfaceHeight(I)I
    .locals 5
    .parameter "h"

    .prologue
    .line 1442
    move v0, p0

    .line 1443
    .local v0, height:I
    const/16 v3, 0x2d0

    if-ne p0, v3, :cond_1

    .line 1444
    const-wide v1, 0x3ff1c71c71c71c72L

    .line 1446
    .local v1, ratio:D
    const-wide/high16 v3, 0x407b

    mul-double/2addr v3, v1

    double-to-int v0, v3

    .line 1454
    .end local v1           #ratio:D
    :cond_0
    :goto_0
    return v0

    .line 1449
    :cond_1
    const/16 v3, 0x1e0

    if-ge p0, v3, :cond_0

    .line 1450
    const/16 v0, 0x1e0

    goto :goto_0
.end method

.method public static convertSurfaceHeight(II)I
    .locals 2
    .parameter "h"
    .parameter "displaySize"

    .prologue
    .line 1409
    move v0, p0

    .line 1410
    .local v0, height:I
    const/16 v1, 0x4b0

    if-ne p0, v1, :cond_1

    .line 1411
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1412
    const/16 v0, 0x140

    .line 1420
    :goto_0
    return v0

    .line 1414
    :cond_0
    const/16 v0, 0x1e0

    goto :goto_0

    .line 1417
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->convertSurfaceHeight(I)I

    move-result v0

    goto :goto_0
.end method

.method public static convertSurfaceWidth(I)I
    .locals 5
    .parameter "w"

    .prologue
    .line 1425
    move v2, p0

    .line 1426
    .local v2, width:I
    const/16 v3, 0x500

    if-ne p0, v3, :cond_1

    .line 1427
    const-wide v0, 0x3ff1caaaaaaaaaabL

    .line 1429
    .local v0, ratio:D
    const-wide/high16 v3, 0x4088

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 1437
    .end local v0           #ratio:D
    :cond_0
    :goto_0
    return v2

    .line 1432
    :cond_1
    const/16 v3, 0x280

    if-ge p0, v3, :cond_0

    .line 1433
    const/16 v2, 0x280

    goto :goto_0
.end method

.method public static convertSurfaceWidth(II)I
    .locals 2
    .parameter "w"
    .parameter "displaySize"

    .prologue
    .line 1393
    move v0, p0

    .line 1394
    .local v0, width:I
    const/16 v1, 0x640

    if-ne p0, v1, :cond_1

    .line 1395
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1396
    const/16 v0, 0x1e0

    .line 1404
    :goto_0
    return v0

    .line 1398
    :cond_0
    const/16 v0, 0x280

    goto :goto_0

    .line 1401
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->convertSurfaceWidth(I)I

    move-result v0

    goto :goto_0
.end method

.method private generateUnsupportedMode()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v1, unsupportedMode:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 748
    .local v0, cameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isSceneSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 749
    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->SEMCCAMERA_CAMERA_SCENERECOGNITION:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_0
    return-object v1
.end method

.method private getCaptureFailedTextId(IZ)Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;
    .locals 3
    .parameter "id"
    .parameter "stored"

    .prologue
    .line 2179
    const/4 v1, -0x1

    .line 2180
    .local v1, messageId:I
    const/4 v2, -0x1

    .line 2181
    .local v2, titleId:I
    if-eqz p2, :cond_0

    .line 2183
    packed-switch p1, :pswitch_data_0

    .line 2248
    :goto_0
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;-><init>(II)V

    .line 2249
    .local v0, info:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;
    return-object v0

    .line 2189
    .end local v0           #info:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;
    :pswitch_1
    const v1, 0x7f0c00a8

    .line 2190
    goto :goto_0

    .line 2193
    :pswitch_2
    const v1, 0x7f0c00a9

    .line 2194
    goto :goto_0

    .line 2197
    :pswitch_3
    const v1, 0x7f0c00a9

    .line 2198
    goto :goto_0

    .line 2201
    :pswitch_4
    const v1, 0x7f0c00a7

    .line 2202
    goto :goto_0

    .line 2214
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 2220
    :pswitch_5
    const v1, 0x7f0c00a5

    .line 2221
    const v2, 0x7f0c00da

    .line 2222
    goto :goto_0

    .line 2225
    :pswitch_6
    const v1, 0x7f0c00a6

    .line 2226
    const v2, 0x7f0c00da

    .line 2227
    goto :goto_0

    .line 2230
    :pswitch_7
    const v1, 0x7f0c00a6

    .line 2231
    const v2, 0x7f0c00da

    .line 2232
    goto :goto_0

    .line 2235
    :pswitch_8
    const v1, 0x7f0c00a4

    .line 2236
    const v2, 0x7f0c00da

    .line 2237
    goto :goto_0

    .line 2183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 2214
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private getCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "uri"
    .parameter "orientDeg"

    .prologue
    .line 1095
    const/4 v0, 0x0

    .line 1098
    .local v0, bmpCapture:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/sonyericsson/android/camera3d/util/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/sonyericsson/android/camera3d/util/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 1099
    .local v1, loader:Lcom/sonyericsson/android/camera3d/util/ImageLoader;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/util/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1101
    return-object v0
.end method

.method private getDisplayRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 566
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 569
    .local v2, rotation:I
    packed-switch v2, :pswitch_data_0

    .line 584
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 588
    .local v1, displayRect:Landroid/graphics/Rect;
    :goto_0
    return-object v1

    .line 573
    .end local v1           #displayRect:Landroid/graphics/Rect;
    :pswitch_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 575
    .restart local v1       #displayRect:Landroid/graphics/Rect;
    goto :goto_0

    .line 580
    .end local v1           #displayRect:Landroid/graphics/Rect;
    :pswitch_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 582
    .restart local v1       #displayRect:Landroid/graphics/Rect;
    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDisplaySize()I
    .locals 4

    .prologue
    .line 539
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 540
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 541
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 544
    .local v0, densityDpi:I
    sparse-switch v0, :sswitch_data_0

    .line 558
    const/4 v1, 0x0

    .line 561
    .local v1, displaySize:I
    :goto_0
    return v1

    .line 546
    .end local v1           #displaySize:I
    :sswitch_0
    const/4 v1, 0x0

    .line 547
    .restart local v1       #displaySize:I
    goto :goto_0

    .line 550
    .end local v1           #displaySize:I
    :sswitch_1
    const/4 v1, 0x1

    .line 551
    .restart local v1       #displaySize:I
    goto :goto_0

    .line 554
    .end local v1           #displaySize:I
    :sswitch_2
    const/4 v1, 0x1

    .line 555
    .restart local v1       #displaySize:I
    goto :goto_0

    .line 544
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTime(I)Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;
    .locals 3
    .parameter "msec"

    .prologue
    .line 1914
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V

    .line 1915
    .local v1, set:Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;
    div-int/lit16 v0, p0, 0x3e8

    .line 1916
    .local v0, remain:I
    rem-int/lit8 v2, v0, 0x3c

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;->sec:I

    .line 1917
    iget v2, v1, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;->sec:I

    sub-int v2, v0, v2

    div-int/lit8 v0, v2, 0x3c

    .line 1918
    rem-int/lit8 v2, v0, 0x3c

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;->min:I

    .line 1919
    iget v2, v1, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;->min:I

    sub-int v2, v0, v2

    div-int/lit8 v0, v2, 0x3c

    .line 1920
    iput v0, v1, Lcom/sonyericsson/android/camera3d/view/CameraWindow$TimeParamSet;->hour:I

    .line 1923
    return-object v1
.end method

.method private hideAutoFocusViewImpl()V
    .locals 2

    .prologue
    .line 1879
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1880
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 1882
    :cond_0
    return-void
.end method

.method private hideCaptureButton()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setVisibility(I)V

    .line 1075
    :cond_0
    return-void
.end method

.method private hideDefaultViewCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1722
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    .line 1723
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 1724
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureGuide()V

    .line 1725
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mNotTakenArea:Lcom/sonyericsson/android/camera3d/view/NotTakenArea;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->setVisibility(I)V

    .line 1726
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setVisibility(I)V

    .line 1727
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setVisibility(I)V

    .line 1728
    return-void
.end method

.method private hideDefaultViewVideo()V
    .locals 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    .line 1733
    return-void
.end method

.method private hideRecordingViewImpl()V
    .locals 0

    .prologue
    .line 1937
    return-void
.end method

.method private hideRecordingViewImplMaxDuration()V
    .locals 0

    .prologue
    .line 1940
    return-void
.end method

.method private hideZoombarImpl(Z)V
    .locals 2
    .parameter "isRecording"

    .prologue
    .line 2008
    if-nez p1, :cond_0

    .line 2009
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 2012
    :cond_0
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPrepared:Z

    .line 490
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    .line 491
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureRemainListeners:Ljava/util/List;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsListeners:Ljava/util/List;

    .line 495
    return-void
.end method

.method private pauseCapturingModeSelector()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->onPause()V

    .line 1062
    :cond_0
    return-void
.end method

.method private setAfIndicatorColorImpl(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    .locals 1
    .parameter "mode"
    .parameter "multi"
    .parameter "showOtherFaceRectangles"

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    if-nez v0, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->updateAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V

    goto :goto_0
.end method

.method private setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const v3, 0x7f0d003a

    .line 1584
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->released()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    const-string v1, "CameraWindow"

    const-string v2, "setOrientation() : already released."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :goto_0
    return-void

    .line 1588
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    .line 1589
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1590
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    :goto_1
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->measure(II)V

    .line 1597
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setSensorOrientation(I)V

    .line 1598
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setOrientation(I)V

    .line 1599
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->setOrientation(I)V

    .line 1601
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->getVisibility()I

    move-result v0

    .line 1602
    .local v0, visibility:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->updateOrientation(I)V

    .line 1603
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    .line 1605
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateRecognitionRect()V

    goto :goto_0

    .line 1592
    .end local v0           #visibility:I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupCameraWindow()V
    .locals 5

    .prologue
    const v4, 0x7f0d003a

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1489
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    if-ne v0, v2, :cond_0

    .line 1490
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setMode(ZI)V

    .line 1498
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 1499
    return-void

    .line 1492
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCaptureButton()V
    .locals 3

    .prologue
    .line 908
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const-string v1, "SCREEN_BUTTON"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->addApplicableTouchCaptureSetting(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const-string v1, "VIEW_FINDER"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->addApplicableTouchCaptureSetting(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setTouchCaptureSetting(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setTouchFocusMode(Z)V

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const v1, 0x7f02007c

    const v2, 0x7f02007f

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setLandscapeBackgroundResource(II)V

    .line 916
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const v1, 0x7f02007d

    const v2, 0x7f02007e

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setPortraitBackgroundResource(II)V

    .line 919
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setSensorOrientation(I)V

    .line 920
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureButton()V

    .line 921
    return-void
.end method

.method private setupDebugInformation()V
    .locals 2

    .prologue
    .line 876
    const v1, 0x7f0d003d

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 877
    .local v0, stub:Landroid/view/ViewStub;
    if-nez v0, :cond_0

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 881
    const v1, 0x7f0d004c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDebugTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setupModeSelector()V
    .locals 5

    .prologue
    .line 735
    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    .line 737
    .local v0, button:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;
    new-instance v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isFrontCameraSupported()Z

    move-result v3

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->generateUnsupportedMode()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;-><init>(Landroid/content/Context;ZLjava/util/List;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    .line 739
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setSelectorButton(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;)V

    .line 740
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setDialogParentView(Landroid/view/ViewGroup;)V

    .line 741
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setStateListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;)V

    .line 742
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateCurrentCapturingMode()V

    .line 743
    return-void
.end method

.method private setupNotTakenArea()V
    .locals 2

    .prologue
    .line 804
    const v1, 0x7f0d002f

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 805
    .local v0, stub:Landroid/view/ViewStub;
    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mNotTakenArea:Lcom/sonyericsson/android/camera3d/view/NotTakenArea;

    goto :goto_0
.end method

.method private setupPanoramaGuide()V
    .locals 2

    .prologue
    .line 867
    const v1, 0x7f0d003b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 868
    .local v0, stub:Landroid/view/ViewStub;
    if-nez v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    .line 872
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->setup()V

    goto :goto_0
.end method

.method private setupPhotoLandscapeLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 783
    const v3, 0x7f0d0039

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 784
    .local v1, stub:Landroid/view/ViewStub;
    if-nez v1, :cond_0

    .line 801
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 790
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d0058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    .line 792
    .local v0, finderDialog:Lcom/sonyericsson/android/camera3d/view/Notification;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->setup()V

    .line 793
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mLeftIconWidth:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mRightIconWidth:I

    invoke-virtual {v0, v3, v5, v4, v5}, Lcom/sonyericsson/android/camera3d/view/Notification;->setPadding(IIII)V

    .line 799
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureRemainListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setupPhotoStack()V
    .locals 6

    .prologue
    .line 769
    const v2, 0x7f0d005e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    .line 770
    .local v1, photoStackView:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
    new-instance v3, Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    sget-object v4, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->NORMAL:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getInstance()Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    .line 773
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->init(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V

    .line 774
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->convertCapturingModeToPhotostackMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    move-result-object v0

    .line 776
    .local v0, mode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setContentMode(Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;)V

    .line 777
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setSensorOrientation(I)V

    .line 778
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setPhotoStackStateListener(Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;)V

    .line 779
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->close()V

    .line 780
    return-void
.end method

.method private setupSettings()V
    .locals 3

    .prologue
    .line 710
    const v2, 0x7f0d003f

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 711
    .local v1, settingsDialogContainer:Landroid/widget/RelativeLayout;
    const v2, 0x7f0d0034

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 713
    .local v0, settingsCategory:Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-direct {v2, v1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;-><init>(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    .line 714
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setStateListener(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$OnSettingsStateListener;)V

    .line 716
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupSettingsShortcutBackground()V

    .line 717
    return-void
.end method

.method private setupSettingsShortcutBackground()V
    .locals 7

    .prologue
    .line 720
    const v5, 0x7f0d0033

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 721
    .local v2, settingsShortcutBackground:Landroid/view/View;
    new-instance v5, Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$ShortcutBackGroundListener;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 724
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 725
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 726
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 727
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 730
    .local v3, widthRatio:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 731
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    return-void
.end method

.method private setupStoreProgress()V
    .locals 2

    .prologue
    .line 886
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    .line 887
    return-void
.end method

.method private setupTouchArea()V
    .locals 4

    .prologue
    .line 814
    const v1, 0x7f0d002d

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 815
    .local v0, stub:Landroid/view/ViewStub;
    if-nez v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/TouchArea;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    .line 819
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->setTouchCaptureSetting(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupVideoSwitch()V
    .locals 2

    .prologue
    .line 890
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    .line 891
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setStateListener(Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch$PhotoVideoSwitchStateListener;)V

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setPhotoMode()V

    .line 905
    return-void
.end method

.method private setupVideoWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1508
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setMode(ZI)V

    .line 1513
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 1514
    return-void
.end method

.method private showAutoFocusViewImpl()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1852
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->onStartAf()V

    .line 1855
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 1857
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->hideSettingsCategory()V

    .line 1858
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setVisibility(I)V

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setVisibility(I)V

    .line 1860
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setSelectorButtonVisibility(I)V

    .line 1861
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->isTouched()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setVisibility(I)V

    .line 1864
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureGuide()V

    .line 1865
    return-void
.end method

.method private showDefaultViewCamera()V
    .locals 8

    .prologue
    const v7, 0x7f0d003a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1531
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1532
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    :cond_0
    :goto_0
    const v3, 0x7f0d0058

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/view/Notification;

    .line 1539
    .local v2, land:Lcom/sonyericsson/android/camera3d/view/Notification;
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 1541
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->showSettingsCategory()V

    .line 1542
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setVisibility(I)V

    .line 1543
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setSelectorButtonVisibility(I)V

    .line 1548
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, captureMode:Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->setTouchCaptureSetting(Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateCaptureButton(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureProgress()V

    .line 1556
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showCaptureGuide()V

    .line 1558
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mNotTakenArea:Lcom/sonyericsson/android/camera3d/view/NotTakenArea;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->setVisibility(I)V

    .line 1560
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setPhotoMode()V

    .line 1561
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setVisibility(I)V

    .line 1563
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 1564
    .local v0, cameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getBackFromLocationSourceSettings()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1565
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->showSettingsCategory()V

    .line 1566
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v3, v6, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 1569
    :cond_1
    return-void

    .line 1533
    .end local v0           #cameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    .end local v1           #captureMode:Ljava/lang/String;
    .end local v2           #land:Lcom/sonyericsson/android/camera3d/view/Notification;
    :cond_2
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    if-ne v3, v6, :cond_0

    .line 1534
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDefaultViewVideo()V
    .locals 3

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->showSettingsCategory()V

    .line 1580
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 1581
    return-void
.end method

.method private showIdleViewImpl(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    .line 1704
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureGuide()V

    .line 1707
    :cond_0
    return-void
.end method

.method private showRecordingViewImpl()V
    .locals 0

    .prologue
    .line 1904
    return-void
.end method

.method private showSelftimerViewImpl()V
    .locals 0

    .prologue
    .line 1969
    return-void
.end method

.method private showZoombarImpl(Z)V
    .locals 2
    .parameter "isRecording"

    .prologue
    .line 1994
    if-nez p1, :cond_0

    .line 1996
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 2000
    :cond_0
    return-void
.end method

.method private updateBasicIconArea()V
    .locals 17

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 672
    .local v11, width:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 674
    .local v2, height:I
    div-int/lit8 v12, v11, 0x10

    mul-int/lit8 v12, v12, 0x9

    sub-int v12, v2, v12

    div-int/lit8 v10, v12, 0x2

    .line 675
    .local v10, viewFinderTop:I
    sub-int v8, v2, v10

    .line 676
    .local v8, viewFinderBottom:I
    div-int/lit8 v12, v2, 0x3

    mul-int/lit8 v12, v12, 0x4

    sub-int v12, v11, v12

    div-int/lit8 v9, v12, 0x2

    .line 677
    .local v9, viewFinderLeft:I
    sub-int v3, v8, v10

    .line 679
    .local v3, iconAreaHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090013

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 681
    .local v1, generalViefinderIconSize:I
    if-ge v1, v9, :cond_0

    .line 682
    const/4 v4, 0x0

    .line 683
    .local v4, paddingLeft:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mLeftIconWidth:I

    .line 689
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mLeftIconWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mRightIconWidth:I

    .line 690
    move v5, v4

    .line 692
    .local v5, paddingRight:I
    new-instance v12, Landroid/graphics/Rect;

    sub-int v13, v2, v8

    invoke-direct {v12, v4, v10, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mBasicIconPadding:Landroid/graphics/Rect;

    .line 695
    const v12, 0x7f0d0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mBasicIconPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mBasicIconPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mBasicIconPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mBasicIconPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 697
    const v12, 0x7f0d0034

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mLeftIconWidth:I

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 698
    const v12, 0x7f0d0035

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mLeftIconWidth:I

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 700
    const v12, 0x7f0d0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mRightIconWidth:I

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 701
    const v12, 0x7f0d005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 702
    .local v6, photoStack:Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09002c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 704
    .local v7, photostackFrameSize:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mBasicIconPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mRightIconWidth:I

    sub-int/2addr v15, v7

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mBasicIconPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v16, v3, 0x4

    sub-int v16, v16, v7

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 707
    return-void

    .line 685
    .end local v4           #paddingLeft:I
    .end local v5           #paddingRight:I
    .end local v6           #photoStack:Landroid/view/ViewGroup;
    .end local v7           #photostackFrameSize:I
    :cond_0
    move v4, v9

    .line 686
    .restart local v4       #paddingLeft:I
    mul-int/lit8 v12, v1, 0x4

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x4

    add-int/2addr v12, v1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mLeftIconWidth:I

    goto/16 :goto_0
.end method

.method private updateCaptureButton(Ljava/lang/String;)V
    .locals 2
    .parameter "captureMode"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setTouchCaptureSetting(Ljava/lang/String;)V

    .line 1079
    const-string v0, "SCREEN_BUTTON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setVisibility(I)V

    .line 1084
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCurrentCapturingMode()V
    .locals 3

    .prologue
    .line 755
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, capturingMode:Ljava/lang/String;
    const-string v1, "PANORAMA_3D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_3DPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setCurrentMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    const-string v1, "PANORAMA_2D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 760
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPPANPRAMA:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setCurrentMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    goto :goto_0

    .line 762
    :cond_2
    const-string v1, "MULTI_ANGLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    sget-object v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->THREEDCAMERA_SWEEPMULTI:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setCurrentMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z

    goto :goto_0
.end method


# virtual methods
.method public changeModeToCamera()V
    .locals 2

    .prologue
    .line 1472
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    if-nez v0, :cond_0

    .line 1480
    :goto_0
    return-void

    .line 1476
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    .line 1477
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideSurfaceView()V

    .line 1478
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setMode(I)V

    .line 1479
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public changeSurfaceSize(II)V
    .locals 5
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 1277
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplaySize:I

    invoke-static {p1, p2, v2, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->convertPreviewToSurface(IILandroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1279
    .local v1, surfaceRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceWidth:I

    .line 1280
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceHeight:I

    .line 1283
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1285
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1286
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceHeight:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1287
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceWidth:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setSize(II)V

    .line 1293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->requestLayout()V

    .line 1294
    return-void
.end method

.method public disbleTouchEvent()V
    .locals 1

    .prologue
    .line 2055
    const v0, 0x7f0d0041

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/AllEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/AllEventListener;->disableTouchEvent()V

    .line 2056
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2071
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->DISPATCH_DRAW:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 2072
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2073
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->DISPATCH_DRAW:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 2074
    return-void
.end method

.method public doGetCompressedData()I
    .locals 2

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->add()I

    move-result v0

    .line 1088
    .local v0, requestId:I
    return v0
.end method

.method public enableTouchEvent()V
    .locals 1

    .prologue
    .line 2048
    const v0, 0x7f0d0041

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/AllEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/AllEventListener;->enableTouchEvent()V

    .line 2049
    return-void
.end method

.method public final getCameraMode()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    return v0
.end method

.method public getCenterAfPosition(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8
    .parameter "surfaceWidth"
    .parameter "surfaceHeight"
    .parameter "displayRect"

    .prologue
    .line 1363
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1365
    .local v1, positionWidth:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1369
    .local v0, positionHeight:I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1373
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1377
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, p2, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, p1, 0x2

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, p2, 0x2

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1388
    .local v2, rect:Landroid/graphics/Rect;
    return-object v2
.end method

.method public final getOrientation()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    return v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public hideAfIndicator()V
    .locals 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1770
    return-void
.end method

.method public hideAutoFocusView()V
    .locals 2

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1870
    return-void
.end method

.method public hideBlankScreen()V
    .locals 2

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2439
    :cond_0
    return-void
.end method

.method public hideCaptureGuide()V
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->hideGuide()V

    .line 2099
    return-void
.end method

.method public hideCaptureProgress()V
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->hideProgress()V

    .line 2114
    return-void
.end method

.method public hideDefaultView(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1714
    return-void
.end method

.method public hideDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 1042
    :cond_0
    return-void
.end method

.method public hideOnScreenIconsForPause()V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureButton()V

    .line 1066
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->pausePhotoStack()V

    .line 1067
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->pauseSettings()V

    .line 1068
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->pauseCapturingModeSelector()V

    .line 1069
    return-void
.end method

.method public hideRecordingView(Z)V
    .locals 2
    .parameter "maxDuration"

    .prologue
    .line 1927
    if-eqz p1, :cond_0

    .line 1928
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1932
    :goto_0
    return-void

    .line 1930
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public hideStoreProgress()V
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->hide()V

    .line 2271
    return-void
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1613
    :cond_0
    return-void
.end method

.method public hideZoombar(Z)V
    .locals 2
    .parameter "isRecording"

    .prologue
    .line 1982
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1983
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1984
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1985
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1986
    return-void
.end method

.method public onAcquired(ZZ)V
    .locals 1
    .parameter "gps"
    .parameter "net"

    .prologue
    .line 1249
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1250
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationGps(I)V

    .line 1256
    :goto_0
    return-void

    .line 1251
    :cond_0
    if-eqz p1, :cond_1

    .line 1252
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationGps(I)V

    goto :goto_0

    .line 1254
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationGps(I)V

    goto :goto_0
.end method

.method public onCaptureFailed(IZLandroid/content/DialogInterface$OnDismissListener;)Z
    .locals 8
    .parameter "id"
    .parameter "stored"
    .parameter "onDismissListener"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2140
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getCaptureFailedTextId(IZ)Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;

    move-result-object v7

    .line 2141
    .local v7, dialogInfo:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;
    iget v0, v7, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;->mMessageId:I

    if-lez v0, :cond_1

    .line 2142
    if-eqz p2, :cond_0

    .line 2143
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    iget v2, v7, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;->mMessageId:I

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showMessage(II)V

    move v3, v1

    .line 2158
    :goto_0
    return v3

    .line 2149
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    iget v1, v7, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;->mMessageId:I

    iget v2, v7, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DialogTextInfo;->mTitleId:I

    const v4, 0x7f0c0118

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    move v3, v1

    .line 2158
    goto :goto_0
.end method

.method public onCaptureStatusUpdate(J)V
    .locals 3
    .parameter "remain"

    .prologue
    .line 1187
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureRemainListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;

    .line 1188
    .local v1, listener:Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;
    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;->onCaptureStatusUpdate(J)V

    goto :goto_0

    .line 1190
    .end local v1           #listener:Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;
    :cond_0
    return-void
.end method

.method public final onChangedLandscape()V
    .locals 2

    .prologue
    .line 1636
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    if-nez v1, :cond_0

    .line 1645
    :goto_0
    return-void

    .line 1641
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1642
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1643
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1644
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onChangedPhotoStackState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2443
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$3;->$SwitchMap$com$sonyericsson$android$camera$photostack$PhotoStack$State:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2448
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->getVisibleThumbnailCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->hideGuideText()V

    goto :goto_0

    .line 2453
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->showGuideText()V

    goto :goto_0

    .line 2443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onChangedPortrait()V
    .locals 2

    .prologue
    .line 1652
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    if-nez v1, :cond_0

    .line 1661
    :goto_0
    return-void

    .line 1657
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1658
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1659
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1660
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onClosePhotoStackMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2399
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->notifyControllerResume()V

    .line 2400
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showCaptureGuide()V

    .line 2401
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setSelectorButtonVisibility(I)V

    .line 2402
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->showSettingsCategory()V

    .line 2403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setVisibility(I)V

    .line 2405
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateCaptureButton(Ljava/lang/String;)V

    .line 2407
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 2408
    return-void
.end method

.method public onCloseSettingsDialog()V
    .locals 0

    .prologue
    .line 2374
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 955
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 957
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->release()V

    .line 958
    return-void
.end method

.method public onDialogStateChanged(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;Z)V
    .locals 6
    .parameter "controller"
    .parameter "open"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2337
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 2338
    .local v0, cameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    if-eqz p2, :cond_3

    .line 2339
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->closeDialog(ZI)V

    .line 2340
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    if-eqz v2, :cond_0

    .line 2341
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setVisibility(I)V

    .line 2343
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2345
    .local v1, needHideIcons:Z
    if-nez v1, :cond_1

    .line 2346
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setSelectorButtonVisibility(I)V

    .line 2347
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->hideSettingsCategory()V

    .line 2349
    :cond_1
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->notifyControllerPause(Z)V

    .line 2356
    .end local v1           #needHideIcons:Z
    :cond_2
    :goto_0
    return-void

    .line 2352
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->isDialogOpen()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2353
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->notifyControllerResume()V

    goto :goto_0
.end method

.method public onExternalStorageStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "event"
    .parameter "storage"

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPrepared:Z

    if-nez v0, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->isSeparated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getInstance()Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->getDestinationToSave()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1211
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->reload(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->pauseLoading()V

    goto :goto_0

    .line 1215
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->cancelStoringAnimation()V

    goto :goto_0

    .line 1205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 505
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 507
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getDisplaySize()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplaySize:I

    .line 508
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDisplayRect:Landroid/graphics/Rect;

    .line 511
    const v2, 0x7f0d002b

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 512
    .local v1, surface_view:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 517
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 518
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    const v2, 0x7f0d0031

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 527
    const-string v2, "End inflate camera window"

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public onHidePhotoStackDialog()V
    .locals 0

    .prologue
    .line 2432
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideBlankScreen()V

    .line 2433
    return-void
.end method

.method public onLaunchApplication()V
    .locals 0

    .prologue
    .line 2460
    return-void
.end method

.method public onLoadThumbnail(I)V
    .locals 2
    .parameter "thumbnailTotalCount"

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->getState()Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->hideGuideText()V

    .line 2488
    :goto_0
    return-void

    .line 2486
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->showGuideText()V

    goto :goto_0
.end method

.method public onLost()V
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationGps(I)V

    .line 1264
    return-void
.end method

.method public onModeSelect(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)V
    .locals 4
    .parameter "controller"
    .parameter "mode"

    .prologue
    .line 2296
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$3;->$SwitchMap$com$sonyericsson$android$camera$capturingmodeselector$CapturingModeSelectorController$CapturingModeId:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2333
    :goto_0
    return-void

    .line 2298
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    const-string v2, "scene_recognition"

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchMainCamera(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2304
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    const-string v2, "manual"

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchMainCamera(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2311
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    const-string v2, "auto"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchMainCamera(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2315
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2318
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "PANORAMA_3D"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory()V

    goto :goto_0

    .line 2323
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "MULTI_ANGLE"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2325
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory()V

    goto :goto_0

    .line 2328
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "PANORAMA_2D"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2330
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->updateCategory()V

    goto :goto_0

    .line 2296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onOpenPhotoStackMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2388
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->notifyControllerPause(Z)V

    .line 2389
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureGuide()V

    .line 2390
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setSelectorButtonVisibility(I)V

    .line 2391
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->hideSettingsCategory()V

    .line 2392
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mVideoSwitch:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitch;->setVisibility(I)V

    .line 2393
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setVisibility(I)V

    .line 2394
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisible(Z)V

    .line 2395
    return-void
.end method

.method public onOpenSettingsDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2360
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    if-eqz v1, :cond_0

    .line 2361
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setVisibility(I)V

    .line 2363
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->closeDialog()V

    .line 2364
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2366
    .local v0, needHideIcons:Z
    if-nez v0, :cond_1

    .line 2367
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCapturingModeSelectorController:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setSelectorButtonVisibility(I)V

    .line 2368
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->hideSettingsCategory()V

    .line 2370
    :cond_1
    return-void
.end method

.method public onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "changed"

    .prologue
    .line 1227
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1228
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateCurrentCapturingMode()V

    .line 1230
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->convertCapturingModeToPhotostackMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    move-result-object v2

    .line 1231
    .local v2, mode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setContentMode(Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;)V

    .line 1232
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->pauseLoading()V

    .line 1233
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->hideGuideText()V

    .line 1234
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resume()V

    .line 1236
    .end local v2           #mode:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;

    .line 1237
    .local v1, listener:Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;->onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1239
    .end local v1           #listener:Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;
    :cond_1
    return-void
.end method

.method public onShowPhotoStackDialog()V
    .locals 2

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->setSensorOrientation(I)V

    .line 2413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->completePreparationForDialogShowing()V

    .line 2414
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showBlankScreen()V

    .line 2415
    return-void
.end method

.method public onStoreComplete(IZLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 20
    .parameter "requestId"
    .parameter "result"
    .parameter "originalUri"
    .parameter "mime"
    .parameter "thumbnailOrientation"

    .prologue
    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 1127
    .local v11, act:Lcom/sonyericsson/android/camera3d/CameraActivity;
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v13

    .line 1130
    .local v13, configMng:Lcom/sonyericsson/android/camera3d/CameraConfigManager;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1131
    const/16 v16, 0x5a

    .line 1136
    .local v16, orientDeg:I
    :goto_0
    const/16 v18, 0x1

    .line 1139
    .local v18, type:I
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isOneShotPhoto()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1142
    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getCropValue()Ljava/lang/String;

    move-result-object v14

    .line 1143
    .local v14, crop:Ljava/lang/String;
    if-eqz p2, :cond_2

    if-eqz v14, :cond_2

    .line 1144
    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v11, v0, v3, v14}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchOneShotCropper(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v17

    .line 1146
    .local v17, success:Z
    if-nez v17, :cond_0

    .line 1147
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v11, v3, v0, v1, v4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(ZLandroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1148
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera3d/CameraActivity;->finish()V

    .line 1172
    .end local v14           #crop:Ljava/lang/String;
    .end local v17           #success:Z
    :cond_0
    :goto_1
    return-void

    .line 1133
    .end local v16           #orientDeg:I
    .end local v18           #type:I
    :cond_1
    const/16 v16, 0x0

    .restart local v16       #orientDeg:I
    goto :goto_0

    .line 1151
    .restart local v14       #crop:Ljava/lang/String;
    .restart local v18       #type:I
    :cond_2
    const/4 v12, 0x0

    .line 1152
    .local v12, bmpCapture:Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1155
    :cond_3
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v11, v0, v1, v2, v12}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setResult(ZLandroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1156
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera3d/CameraActivity;->finish()V

    goto :goto_1

    .line 1159
    .end local v12           #bmpCapture:Landroid/graphics/Bitmap;
    .end local v14           #crop:Ljava/lang/String;
    :cond_4
    const/4 v15, -0x1

    .line 1161
    .local v15, mediaId:I
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1164
    :goto_2
    move v6, v15

    .line 1165
    .local v6, fixMediaId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    move-object/from16 v19, v0

    new-instance v3, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$2;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;IIILandroid/net/Uri;Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1162
    .end local v6           #fixMediaId:I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public onStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter "status"
    .parameter "result"
    .parameter "filename"
    .parameter "uri"

    .prologue
    .line 1107
    return-void
.end method

.method public onStoreFailed(I)V
    .locals 1
    .parameter "requestId"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->cancelStoringAnimationAt(I)V

    .line 1178
    :cond_0
    return-void
.end method

.method public openGeotagSettingsDialog()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->openGeotagSettingsDialog()V

    .line 1036
    :cond_0
    return-void
.end method

.method public openResetSettingsDialog()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->openResetSettingsDialog()V

    .line 1030
    :cond_0
    return-void
.end method

.method public pausePhotoStack()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->release()V

    .line 1048
    :cond_0
    return-void
.end method

.method public pauseSettings()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->onPause()V

    .line 1024
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupTouchArea()V

    .line 608
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupSettings()V

    .line 609
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupModeSelector()V

    .line 611
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateBasicIconArea()V

    .line 613
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupPhotoLandscapeLayout()V

    .line 614
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupPanoramaGuide()V

    .line 615
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupPhotoStack()V

    .line 616
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupStoreProgress()V

    .line 617
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupNotTakenArea()V

    .line 618
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupDebugInformation()V

    .line 619
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupVideoSwitch()V

    .line 620
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupCaptureButton()V

    .line 624
    iput v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    .line 625
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->changeModeToCamera()V

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isLaunchAsOneShotCapturingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setOneShotMode()V

    .line 632
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    .line 633
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->onChangedLandscape()V

    .line 640
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updatePhotoStack()V

    .line 644
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->addExternalMediaChangeListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;)V

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setListener(Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;)V

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->setGpsAcquiredListener(Lcom/sonyericsson/android/camera3d/ImageManager$GpsAcquiredListener;)V

    .line 647
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->setCaptureRemainListener(Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;)V

    .line 649
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPrepared:Z

    .line 651
    return-void

    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNormalMode()V

    goto :goto_0

    .line 635
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mOrientation:I

    if-ne v0, v2, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->onChangedPortrait()V

    goto :goto_1
.end method

.method public prepareRecording(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1892
    return-void
.end method

.method public prepared()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPrepared:Z

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 966
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->removeMessages(I)V

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    :cond_0
    const v2, 0x7f0d002c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 972
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 973
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 976
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    if-eqz v2, :cond_2

    .line 977
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->release()V

    .line 978
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    .line 980
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    if-eqz v2, :cond_3

    .line 981
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->release()V

    .line 982
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    .line 985
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->removeExternalMediaChangeListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;)V

    .line 987
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureRemainListeners:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 988
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureRemainListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 990
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsListeners:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 991
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 994
    :cond_5
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    .line 995
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    .line 996
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    if-eqz v2, :cond_6

    .line 997
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->removeStoreDataCallback(Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 999
    :cond_6
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 1000
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    .line 1001
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mReleased:Z

    .line 1002
    return-void
.end method

.method public released()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mReleased:Z

    return v0
.end method

.method public resizeSurfaceView(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1299
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1301
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1302
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1303
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    return-void
.end method

.method public resumeSettings()V
    .locals 2

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    if-eqz v1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSettingsController:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->onResume()V

    .line 1011
    :cond_0
    const v1, 0x7f0d0058

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    .line 1013
    .local v0, notification:Lcom/sonyericsson/android/camera3d/view/Notification;
    if-eqz v0, :cond_1

    .line 1014
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->setup()V

    .line 1016
    :cond_1
    return-void
.end method

.method public rotateSwitchedCameraDeviceView()V
    .locals 0

    .prologue
    .line 2063
    return-void
.end method

.method public setAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    .locals 2
    .parameter "mode"
    .parameter "result"
    .parameter "showOtherFaceRectangles"

    .prologue
    .line 1785
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1786
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1787
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1788
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1790
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1791
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1792
    return-void

    .line 1788
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAfMode(IIILandroid/graphics/Rect;)V
    .locals 8
    .parameter "mode"
    .parameter "width"
    .parameter "height"
    .parameter "area"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1753
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1754
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1755
    if-nez p4, :cond_0

    .line 1756
    const/4 v1, 0x7

    new-array v1, v1, [I

    aput p1, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceWidth:I

    aput v2, v1, v4

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceHeight:I

    aput v2, v1, v5

    aput v3, v1, v6

    aput v3, v1, v7

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1761
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1762
    return-void

    .line 1758
    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [I

    aput p1, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceWidth:I

    aput v2, v1, v4

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceHeight:I

    aput v2, v1, v5

    iget v2, p4, Landroid/graphics/Rect;->left:I

    aput v2, v1, v6

    iget v2, p4, Landroid/graphics/Rect;->top:I

    aput v2, v1, v7

    const/4 v2, 0x5

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    aput v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMaxZoom(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 1972
    return-void
.end method

.method public setNormalMode()V
    .locals 2

    .prologue
    .line 1680
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    if-nez v0, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1683
    :cond_0
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setOneShotMode(Z)V

    goto :goto_0
.end method

.method public setNotificationGps(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1831
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1832
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1833
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1834
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1835
    return-void
.end method

.method public setNotificationMacro(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1804
    if-eqz p1, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1809
    :goto_0
    return-void

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setNotificationScene(I)V
    .locals 2
    .parameter "scene_mode"

    .prologue
    .line 1818
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1819
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1820
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1821
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1822
    return-void
.end method

.method public setOneShotMode()V
    .locals 2

    .prologue
    .line 1668
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mMode:I

    if-nez v0, :cond_0

    .line 1673
    :goto_0
    return-void

    .line 1671
    :cond_0
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->setOneShotMode(Z)V

    goto :goto_0
.end method

.method public setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mTouchArea:Lcom/sonyericsson/android/camera3d/view/TouchArea;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/TouchArea;->setController(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setController(Landroid/view/View$OnTouchListener;)V

    .line 1468
    :cond_1
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    .line 598
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->addStoreDataCallback(Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 600
    return-void
.end method

.method public setupRectangles()V
    .locals 6

    .prologue
    .line 847
    const v4, 0x7f0d002c

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 848
    .local v3, view_finder:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 851
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    if-nez v4, :cond_1

    .line 852
    sget v4, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    new-array v2, v4, [Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    .line 853
    .local v2, rects:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v4, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    if-ge v0, v4, :cond_0

    .line 854
    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    aput-object v4, v2, v0

    .line 857
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 858
    aget-object v4, v2, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->prepare(I)V

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_0
    new-instance v5, Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getOrientation()I

    move-result v4

    invoke-direct {v5, v2, v4}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;-><init>([Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;I)V

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    .line 863
    .end local v0           #i:I
    .end local v2           #rects:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    .line 864
    return-void
.end method

.method public showAfIndicator()V
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1766
    return-void
.end method

.method public showAutoFocusView()V
    .locals 2

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1843
    return-void
.end method

.method public showBlankScreen()V
    .locals 3

    .prologue
    .line 2419
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mWindowCover:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2421
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez v0, :cond_0

    .line 2428
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 2424
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mWindowCover:Landroid/view/View;

    .line 2425
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mWindowCover:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->addView(Landroid/view/View;)V

    .line 2427
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mWindowCover:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCaptureGuide()V
    .locals 5

    .prologue
    .line 2081
    const/4 v1, 0x0

    .line 2082
    .local v1, panorama2d:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2083
    .local v0, capturingMode:Ljava/lang/String;
    const-string v2, "PANORAMA_2D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2084
    const/4 v1, 0x1

    .line 2089
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->showGuide(Ljava/lang/String;Z)V

    .line 2092
    return-void

    .line 2086
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCaptureProgress()V
    .locals 3

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->showProgress(Ljava/lang/String;)V

    .line 2107
    return-void
.end method

.method public showDefaultView(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1522
    return-void
.end method

.method public showIdleView(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1689
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1690
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1691
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1692
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1693
    return-void
.end method

.method public showRecordingView()V
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1896
    return-void
.end method

.method public showSelftimerView()V
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessage(I)Z

    .line 1962
    return-void
.end method

.method public showStoreProgress(ILjava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "thumbnailPath"

    .prologue
    .line 2258
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2259
    .local v0, capturingMode:Ljava/lang/String;
    const-string v1, "MULTI_ANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2260
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->showMultiAngle(I)V

    .line 2264
    :goto_0
    return-void

    .line 2262
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->show(I)V

    goto :goto_0
.end method

.method public showSurfaceView()V
    .locals 4

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 1618
    .local v0, act:Lcom/sonyericsson/android/camera3d/CameraActivity;
    if-nez v0, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera3d/ControllerManager;

    move-result-object v1

    .line 1622
    .local v1, controllerMng:Lcom/sonyericsson/android/camera3d/ControllerManager;
    if-eqz v1, :cond_0

    .line 1625
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1626
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 1627
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showZoombar(Z)V
    .locals 2
    .parameter "isRecording"

    .prologue
    .line 1975
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1976
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1977
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1978
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mHandler:Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1979
    return-void
.end method

.method public startCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1885
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideAfIndicator()V

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mCaptureButton:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->setVisibility(I)V

    .line 1887
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mNotTakenArea:Lcom/sonyericsson/android/camera3d/view/NotTakenArea;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->setVisibility(I)V

    .line 1888
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showCaptureProgress()V

    .line 1889
    return-void
.end method

.method public startFadeinAnimation()V
    .locals 2

    .prologue
    .line 924
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    return-void
.end method

.method public updateAllRecognitionName()V
    .locals 0

    .prologue
    .line 2035
    return-void
.end method

.method public updateCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPanoramaSweeper:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->updateProgress(I)V

    .line 2123
    return-void
.end method

.method public updateDebugMessage()V
    .locals 4

    .prologue
    .line 2282
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDebugTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2283
    const-string v0, ""

    .line 2284
    .local v0, res:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "PREVIEW_CB: %2.2f(%2.2f - %2.2f)\n"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "COPY      : %2.2f(%2.2f - %2.2f)\n"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "PUT       : %2.2f(%2.2f - %2.2f)\n"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2290
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mDebugTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2292
    .end local v0           #res:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updatePhotoStack()V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mPhotoStack:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->resume()V

    .line 1056
    :cond_0
    return-void
.end method

.method public updateProgressbar(I)V
    .locals 0
    .parameter "msec"

    .prologue
    .line 1949
    return-void
.end method

.method public updateRecognitionName()V
    .locals 0

    .prologue
    .line 2028
    return-void
.end method

.method public updateRecognitionRect()V
    .locals 0

    .prologue
    .line 2042
    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 0
    .parameter "msec"

    .prologue
    .line 1958
    return-void
.end method

.method public updateStoreProgress(II)V
    .locals 1
    .parameter "current"
    .parameter "total"

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mStoreProgress:Lcom/sonyericsson/android/camera3d/view/StoreProgress;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/StoreProgress;->update(II)V

    .line 2275
    return-void
.end method

.method public updateZoombar(II)V
    .locals 0
    .parameter "current_value"
    .parameter "max_value"

    .prologue
    .line 2021
    return-void
.end method
