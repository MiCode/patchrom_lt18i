.class public abstract Lcom/sonyericsson/android/camera3d/ExtendedActivity;
.super Landroid/app/Activity;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationEventListenerImpl;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;,
        Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_THRESHOLDS_RANGE:[[I = null

.field private static final ORIENTATION_VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation; = null

.field private static final TAG:Ljava/lang/String; = "ExtendedActivity"


# instance fields
.field private mAudioFocusGranted:Z

.field protected volatile mAutoOffHandler:Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;

.field protected mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

.field protected mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

.field private mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

.field protected mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

.field protected mDebugEventIntruder:Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;

.field protected mDelayedOnResume:Z

.field protected mEnabledAutoTerminationTimer:Z

.field private mExternalStorageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

.field protected mIncrementalId:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

.field private mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

.field private mLvaListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;

.field protected mMeasurePerformance2:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

.field protected mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

.field protected mNoncancelableErrorDialog:Landroid/app/Dialog;

.field private mOrientationLisreners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;

.field private mReceiver:Z

.field public mRotationDegree:I

.field protected mShutterToneGenerator:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->ORIENTATION_THRESHOLDS_RANGE:[[I

    .line 169
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->ORIENTATION_VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    return-void

    .line 158
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x87t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xe1t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x95t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mEnabledAutoTerminationTimer:Z

    .line 91
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mDelayedOnResume:Z

    .line 125
    new-instance v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mExternalStorageListeners:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationLisreners:Ljava/util/Set;

    .line 147
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mRotationDegree:I

    .line 153
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAudioFocusGranted:Z

    .line 228
    new-instance v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 913
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onBatteryLow()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onUserPresent()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/ExtendedActivity;ILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onExternalStorageStateChanged(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onActivated()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

    return-object v0
.end method

.method private getLayoutOrientation()Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 431
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 441
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    :goto_0
    return-object v1

    .line 433
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 435
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 437
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 439
    :pswitch_3
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getLayoutOrientation(I)Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    .locals 7
    .parameter "newOrientation"

    .prologue
    const/16 v6, 0x13b

    const/16 v5, 0xe1

    const/16 v4, 0x87

    const/16 v3, 0x2d

    .line 450
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 451
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 474
    :goto_0
    return-object v1

    .line 454
    :cond_0
    rem-int/lit16 v0, p1, 0x168

    .line 456
    .local v0, orientation:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne v1, v2, :cond_2

    .line 457
    if-ge v0, v6, :cond_1

    if-ge v0, v3, :cond_5

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne v1, v2, :cond_3

    .line 461
    if-lt v0, v3, :cond_5

    if-ge v0, v4, :cond_5

    .line 462
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 464
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne v1, v2, :cond_4

    .line 465
    if-lt v0, v4, :cond_5

    if-ge v0, v5, :cond_5

    .line 466
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 468
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne v1, v2, :cond_5

    .line 469
    if-lt v0, v5, :cond_5

    if-ge v0, v6, :cond_5

    .line 470
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    goto :goto_0

    .line 474
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    move-result-object v1

    goto :goto_0
.end method

.method public static isReverseRotation(Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;)Z
    .locals 2
    .parameter "previous"
    .parameter "next"

    .prologue
    const/4 v0, 0x1

    .line 805
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p0, v1, :cond_1

    .line 806
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p1, v1, :cond_2

    .line 823
    :cond_0
    :goto_0
    return v0

    .line 809
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p0, v1, :cond_3

    .line 810
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-eq p1, v1, :cond_0

    .line 823
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 813
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p0, v1, :cond_4

    .line 814
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 817
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p0, v1, :cond_2

    .line 818
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p1, v1, :cond_2

    goto :goto_0
.end method

.method private muteSound(I)V
    .locals 4
    .parameter "streamType"

    .prologue
    const/4 v3, 0x1

    .line 979
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 980
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAudioFocusGranted:Z

    if-nez v1, :cond_0

    .line 981
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 982
    .local v0, m:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 983
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 985
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAudioFocusGranted:Z

    .line 990
    .end local v0           #m:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private notifyOrientationChanged(Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 774
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne p1, v2, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-eq p1, v2, :cond_0

    .line 782
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 784
    sget-object v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfig$LayoutOrientation:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 796
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationLisreners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;

    .line 797
    .local v1, listener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;
    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;->onChangedLandscape()V

    goto :goto_1

    .line 788
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationLisreners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;

    .line 789
    .restart local v1       #listener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;
    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;->onChangedPortrait()V

    goto :goto_2

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onActivated()V
    .locals 0

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->pauseAudioPlayback()V

    .line 701
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->resumeAll()V

    .line 702
    return-void
.end method

.method private onBatteryLow()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLvaListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLvaListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;->onBatteryLow()V

    .line 268
    :cond_0
    return-void
.end method

.method private onExternalStorageStateChanged(ILandroid/net/Uri;)V
    .locals 3
    .parameter "event"
    .parameter "storage"

    .prologue
    .line 278
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mExternalStorageListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;

    .line 279
    .local v1, listener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;->onExternalStorageStateChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v1           #listener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;
    :cond_0
    return-void
.end method

.method private onUserPresent()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mDelayedOnResume:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->resumeAllIfForceSoundOrNotCall()V

    .line 274
    :cond_0
    return-void
.end method

.method private setOffTimerHandler(Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoOffHandler:Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;

    .line 599
    return-void
.end method

.method private unmuteSound(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 997
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 998
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 999
    .local v0, m:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1001
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAudioFocusGranted:Z

    .line 1005
    .end local v0           #m:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract abort()V
.end method

.method public addExternalMediaChangeListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mExternalStorageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mExternalStorageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_0
    return-void
.end method

.method public addOrienationListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationLisreners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    return-void
.end method

.method public convertRotationToLayoutOrientation(I)Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    .locals 4
    .parameter "degree"

    .prologue
    .line 512
    const/4 v1, -0x1

    .line 513
    .local v1, row:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->ORIENTATION_THRESHOLDS_RANGE:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 514
    sget-object v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->ORIENTATION_THRESHOLDS_RANGE:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gt v2, p1, :cond_1

    sget-object v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->ORIENTATION_THRESHOLDS_RANGE:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ge p1, v2, :cond_1

    .line 516
    move v1, v0

    .line 520
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 521
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 523
    :goto_1
    return-object v2

    .line 513
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->ORIENTATION_VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aget-object v2, v2, v1

    goto :goto_1
.end method

.method public convertRotationToOrientation(I)I
    .locals 4
    .parameter "degree"

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->convertRotationToLayoutOrientation(I)Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    move-result-object v0

    .line 489
    .local v0, layoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    sget-object v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfig$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 499
    :goto_0
    :pswitch_0
    return v1

    .line 493
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 495
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 497
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final disableAutoOffTimer()V
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->stopAutoOffTimer()V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mEnabledAutoTerminationTimer:Z

    .line 572
    return-void
.end method

.method public disableOrientation()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 377
    :cond_0
    return-void
.end method

.method public final enableAutoOffTimer()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mEnabledAutoTerminationTimer:Z

    .line 580
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->startAutoOffTimer()Z

    .line 581
    return-void
.end method

.method public enableOrientation()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 366
    return-void
.end method

.method public getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    return-object v0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera3d/CameraDevice;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    return-object v0
.end method

.method public getControllerManager()Lcom/sonyericsson/android/camera3d/ControllerManager;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mControllerManager:Lcom/sonyericsson/android/camera3d/ControllerManager;

    return-object v0
.end method

.method public getDebugEventIntruder()Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mDebugEventIntruder:Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;

    return-object v0
.end method

.method public getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    return-object v0
.end method

.method public getIncrementalId()Lcom/sonyericsson/android/camera3d/util/IncrementalId;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mIncrementalId:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    return-object v0
.end method

.method public getLastLayoutOrientation()Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    return-object v0
.end method

.method public getMeasurePerformance2()Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mMeasurePerformance2:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

    return-object v0
.end method

.method public getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mMessagePopup:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    return-object v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 404
    .local v0, orientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    move-result-object v0

    .line 408
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfig$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 418
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 412
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 416
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOrientationValue()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 386
    .local v0, orientation:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    if-ne v0, v2, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    move-result-object v0

    .line 389
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfig$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 399
    :goto_0
    :pswitch_0
    return v1

    .line 393
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 395
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 397
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public final isEnabledAutoOffTimer()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mEnabledAutoTerminationTimer:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 616
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 617
    new-instance v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->setOffTimerHandler(Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;)V

    .line 618
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 746
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationLisreners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 748
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 749
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

    .line 750
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mExternalStorageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 751
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLvaListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;

    .line 752
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->setOffTimerHandler(Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;)V

    .line 753
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 719
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 720
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->disableAutoOffTimer()V

    .line 721
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->unmuteSound(I)V

    .line 722
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->disableOrientation()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mReceiver:Z

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mReceiver:Z

    .line 730
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 635
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 637
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 641
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 644
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 647
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 651
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 652
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 655
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.android.camera.intent.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 657
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mReceiver:Z

    .line 658
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->enableAutoOffTimer()V

    .line 661
    new-instance v1, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationEventListenerImpl;

    invoke-direct {v1, p0, p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationEventListenerImpl;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 662
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->enableOrientation()V

    .line 663
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 624
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 626
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 628
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 737
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 739
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 741
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 742
    return-void
.end method

.method public pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 711
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->muteSound(I)V

    .line 712
    return-void
.end method

.method public removeExternalMediaChangeListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mExternalStorageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mExternalStorageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 842
    :cond_0
    return-void
.end method

.method public removeOrienationListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mOrientationLisreners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public abstract resumeAll()V
.end method

.method protected resumeAllIfForceSoundOrNotCall()V
    .locals 5

    .prologue
    .line 953
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 955
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 957
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onActivated()V

    .line 972
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 961
    .restart local v0       #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 962
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v1

    const v2, 0x7f0c0076

    const v3, 0x7f0c00df

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    .line 967
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->enableAutoOffTimer()V

    goto :goto_0

    .line 970
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onActivated()V

    goto :goto_0
.end method

.method public final setInternalPhoneStateListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 852
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

    .line 853
    return-void
.end method

.method public final setLowBatteryAlarmListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mLvaListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;

    .line 864
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 605
    return-void
.end method

.method public final declared-synchronized startAutoOffTimer()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 534
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mEnabledAutoTerminationTimer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 541
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoOffHandler:Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;

    if-eqz v1, :cond_0

    .line 543
    new-instance v0, Lcom/sonyericsson/android/camera3d/SelfTimer;

    const-wide/32 v1, 0x2bf20

    const-wide/32 v3, 0x2bf20

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoOffHandler:Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;

    const-string v6, "AutoOffTimer"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/SelfTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopAutoOffTimer()V
    .locals 1

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_0
    monitor-exit p0

    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
