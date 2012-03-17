.class public Lcom/sonyericsson/android/camera3d/ControllerManager;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/ControllerManager$1;,
        Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;,
        Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;
    }
.end annotation


# static fields
.field public static final STATE_AFDONE:I = 0x1

.field public static final STATE_NON:I = 0x0

.field public static final STATE_SHUTTERDONE:I = 0x2

.field public static final STATE_ZOOM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ControllerManager"


# instance fields
.field private mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

.field private mCameraControllerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/android/camera3d/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

.field private mFormat:I

.field private mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

.field private mIsControllersReleased:Z

.field private mKeyState:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;Lcom/sonyericsson/android/camera3d/CameraConfigManager;)V
    .locals 4
    .parameter "context"
    .parameter "win"
    .parameter "dev"
    .parameter "configManager"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mIsControllersReleased:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraControllerMap:Ljava/util/HashMap;

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 128
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setCameraController(ILcom/sonyericsson/android/camera3d/CameraController;)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setCameraController(ILcom/sonyericsson/android/camera3d/CameraController;)V

    .line 134
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mIsControllersReleased:Z

    .line 137
    new-instance v0, Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;-><init>(Lcom/sonyericsson/android/camera3d/ControllerManager;Lcom/sonyericsson/android/camera3d/ControllerManager$1;)V

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera3d/ControllerManager$ExternalMemoryCallback;-><init>(Lcom/sonyericsson/android/camera3d/ControllerManager;Lcom/sonyericsson/android/camera3d/ControllerManager$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->setExternalMemoryListener(Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;)V

    .line 144
    iput v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mKeyState:I

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceHolderUnavailable()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceHolderUnavailable()V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/ControllerManager;)Lcom/sonyericsson/android/camera3d/BaseController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/ControllerManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraId:I

    return v0
.end method

.method private changeController(Lcom/sonyericsson/android/camera3d/BaseController;Lcom/sonyericsson/android/camera3d/BaseController;)V
    .locals 0
    .parameter "current"
    .parameter "next"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/BaseController;->abortController()V

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->resizeSurfaceView()V

    .line 274
    if-eqz p2, :cond_1

    .line 276
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/BaseController;->setInitState()V

    .line 277
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/BaseController;->clearEvent()V

    .line 278
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/BaseController;->setupController()V

    .line 280
    :cond_1
    return-void
.end method

.method private releaseInstance()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->releaseSurfaceHolder()V

    .line 425
    return-void
.end method

.method private releaseSurfaceHolder()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 435
    :cond_0
    return-void
.end method

.method private resizeSurfaceView()V
    .locals 2

    .prologue
    const/16 v1, 0x1e0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->resizeSurfaceView(II)V

    .line 296
    return-void
.end method

.method private setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 411
    :cond_0
    return-void
.end method

.method private setSurfaceHolderUnavailable()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 416
    return-void
.end method


# virtual methods
.method public autofocus()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/BaseController;->autofocus(Landroid/graphics/Rect;)V

    .line 477
    return-void
.end method

.method public canChangeMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 611
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    if-eqz v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->getState()Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    move-result-object v0

    .line 613
    .local v0, current:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->canChangeMode()Z

    move-result v1

    .line 623
    .end local v0           #current:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    :cond_0
    :goto_0
    return v1

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOpenWindow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 634
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    if-eqz v2, :cond_1

    .line 635
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->getState()Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    move-result-object v0

    .line 636
    .local v0, current:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->canOpenWindow()Z

    move-result v1

    .line 646
    .end local v0           #current:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    :cond_0
    :goto_0
    return v1

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v2

    if-nez v2, :cond_0

    .line 646
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->cancelAutoFocus()V

    .line 485
    return-void
.end method

.method public cancelSelftimer()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->cancelSelftimer()V

    .line 507
    return-void
.end method

.method public capture()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->capture()V

    .line 491
    return-void
.end method

.method public changeCameraToMain()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 225
    .local v0, current:Lcom/sonyericsson/android/camera3d/BaseController;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 226
    .local v1, target:Lcom/sonyericsson/android/camera3d/BaseController;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->changeController(Lcom/sonyericsson/android/camera3d/BaseController;Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 233
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraId:I

    goto :goto_0
.end method

.method public changeModeToCamera()V
    .locals 3

    .prologue
    .line 205
    iget v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 210
    .local v0, target:Lcom/sonyericsson/android/camera3d/CameraController;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :goto_1
    return-void

    .line 208
    .end local v0           #target:Lcom/sonyericsson/android/camera3d/CameraController;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .restart local v0       #target:Lcom/sonyericsson/android/camera3d/CameraController;
    goto :goto_0

    .line 214
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    .line 215
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->changeController(Lcom/sonyericsson/android/camera3d/BaseController;Lcom/sonyericsson/android/camera3d/BaseController;)V

    goto :goto_1
.end method

.method public getCameraController(I)Lcom/sonyericsson/android/camera3d/CameraController;
    .locals 2
    .parameter "key"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraControllerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraController;

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraId:I

    return v0
.end method

.method public getKeyState()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mKeyState:I

    return v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceWidth:I

    return v0
.end method

.method public isControllersReleased()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mIsControllersReleased:Z

    return v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/BaseController;->isRecording()Z

    move-result v0

    .line 597
    .local v0, rec:Z
    return v0
.end method

.method public isSelfTimerModeOn()Z
    .locals 2

    .prologue
    .line 581
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    iget-boolean v0, v1, Lcom/sonyericsson/android/camera3d/BaseController;->mIsSelfTimer:Z

    .line 583
    .local v0, isSelfTimerModeOn:Z
    return v0
.end method

.method public isSelfTimerRunning()Z
    .locals 2

    .prologue
    .line 570
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    iget-boolean v0, v1, Lcom/sonyericsson/android/camera3d/BaseController;->mOnCountDown:Z

    .line 572
    .local v0, isSelfTimerRunning:Z
    return v0
.end method

.method public isSettingsAvailable()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->isSettingsAvailable()Z

    move-result v0

    return v0
.end method

.method public notifyControllerAbort()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->abortController()V

    .line 512
    return-void
.end method

.method public notifyControllerPause(Z)V
    .locals 1
    .parameter "stopPreview"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/BaseController;->pauseController(Z)V

    .line 516
    return-void
.end method

.method public notifyControllerResume()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->resumeController()V

    .line 520
    return-void
.end method

.method public onBatteryLow()V
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->onBatteryLow()V

    goto :goto_0
.end method

.method public onOffHook()V
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->onOffHook()V

    goto :goto_0
.end method

.method public onRinging()V
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->onRinging()V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mIsControllersReleased:Z

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->release()V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->removeOrienationListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;)V

    .line 174
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->release()V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->removeOrienationListener(Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;)V

    .line 181
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFrontCamera:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 183
    :cond_1
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setCameraController(ILcom/sonyericsson/android/camera3d/CameraController;)V

    .line 187
    invoke-virtual {p0, v3, v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setCameraController(ILcom/sonyericsson/android/camera3d/CameraController;)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->setExternalMemoryListener(Lcom/sonyericsson/android/camera3d/ImageManager$ExternalMemoryListener;)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraControllerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 196
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->releaseInstance()V

    .line 197
    return-void
.end method

.method public setCameraController(ILcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 2
    .parameter "key"
    .parameter "cont"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraControllerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 667
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraId:I

    .line 668
    return-void
.end method

.method public setKeyState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 678
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mKeyState:I

    .line 681
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 304
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 305
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 306
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 307
    return-void
.end method

.method public shutter()V
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isSelfTimerModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isSelfTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->capture()V

    .line 469
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->startSelftimer()V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->capture()V

    goto :goto_0
.end method

.method public startSelftimer()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->startSelftimer()V

    .line 499
    return-void
.end method

.method public startZoomIn()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->startZoomIn()V

    .line 445
    return-void
.end method

.method public startZoomOut()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->startZoomOut()V

    .line 440
    return-void
.end method

.method public stopZoom()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/BaseController;->stopZoom()V

    .line 453
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 343
    if-eq p3, p4, :cond_0

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getOrientation()I

    move-result v0

    .line 350
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 351
    if-lt p3, p4, :cond_0

    .line 363
    :cond_2
    iput p2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFormat:I

    .line 364
    iput p3, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceWidth:I

    .line 365
    iput p4, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHeight:I

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mFormat:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceWidth:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mSurfaceHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/BaseController;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    .line 356
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 357
    if-le p3, p4, :cond_2

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 317
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ControllerManager;->mCurrentController:Lcom/sonyericsson/android/camera3d/BaseController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera3d/BaseController;->surfaceDestroyed(Landroid/view/SurfaceHolder;Z)V

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->releaseSurfaceHolder()V

    .line 397
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->setSurfaceHolderUnavailable()V

    goto :goto_0
.end method

.method public switchController(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 242
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ControllerManager;->changeCameraToMain()V

    goto :goto_0
.end method
