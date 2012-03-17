.class public Lcom/sonyericsson/android/camera3d/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/android/camera3d/Capturer;
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$LowBatteryAlarmListener;
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/BaseController$1;,
        Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseController"

.field public static final TEXT_ZOOM_NOT_SUPPORTED:I = 0x7f0c011b


# instance fields
.field protected mAutoZoomCallback:Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;

.field protected mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

.field protected mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

.field protected mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

.field protected mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentScene:I

.field protected mEvValueConvertMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mFaceDetectionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

.field protected mFocusMode:Ljava/lang/String;

.field protected mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

.field protected mIsFaceDetection:Z

.field protected mIsGeoTag:Z

.field protected mIsMacroFocus:Z

.field protected mIsMicroPhone:Z

.field protected mIsPhotoLightOn:Z

.field protected mIsRecording:Z

.field protected mIsSceneRecognition:Z

.field protected mIsSelfTimer:Z

.field protected mIsSmileDetection:Z

.field protected mIsTallyLightOn:Z

.field protected mIsTouchCapturing:Z

.field protected mMaxZoomStep:I

.field protected mOnCountDown:Z

.field protected mPictureHeight:I

.field protected mPictureRect:Landroid/graphics/Rect;

.field protected mPictureWidth:I

.field protected mPreviewHeight:I

.field protected mPreviewRect:Landroid/graphics/Rect;

.field protected mPreviewWidth:I

.field protected mSmileLevel:I

.field protected mZoomContinued:Z

.field protected mZoomingAfModeChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 2
    .parameter "context"
    .parameter "win"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsPhotoLightOn:Z

    .line 71
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsTallyLightOn:Z

    .line 85
    const-string v0, "SINGLE"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mFocusMode:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomContinued:Z

    .line 111
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsRecording:Z

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    .line 137
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    .line 140
    new-instance v0, Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;-><init>(Lcom/sonyericsson/android/camera3d/BaseController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mAutoZoomCallback:Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;

    .line 141
    return-void
.end method

.method protected static createEvValueConvertMap(Landroid/hardware/Camera$Parameters;)Ljava/util/Map;
    .locals 9
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 451
    .local v5, max:I
    const/4 v6, 0x0

    .line 452
    .local v6, min:I
    if-eqz p0, :cond_0

    .line 453
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v5

    .line 454
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 458
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getEV()[Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, keys:[Ljava/lang/String;
    array-length v7, v3

    div-int/lit8 v0, v7, 0x2

    .line 460
    .local v0, center:I
    move v2, v6

    .line 461
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_4

    .line 462
    sub-int v7, v1, v0

    if-ne v2, v7, :cond_1

    if-gt v2, v5, :cond_1

    .line 463
    aget-object v7, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v2, v2, 0x1

    .line 461
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_1
    if-ge v1, v0, :cond_2

    .line 468
    aget-object v7, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 469
    :cond_2
    if-le v1, v0, :cond_3

    .line 470
    aget-object v7, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 472
    :cond_3
    aget-object v7, v3, v1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 479
    :cond_4
    return-object v4
.end method


# virtual methods
.method public abortController()V
    .locals 4

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xf0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEmergencyEvent(IILjava/lang/Object;)V

    .line 1038
    return-void
.end method

.method public autofocus(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "focusPosition"

    .prologue
    .line 1100
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method

.method public cancelSelftimer()V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public capture()V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method public clearEvent()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->clear()V

    .line 1056
    return-void
.end method

.method public controlPhotoLight()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected convertPositionToDevice(II)Landroid/graphics/Rect;
    .locals 16
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    .line 919
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 921
    move/from16 v8, p2

    .line 922
    .local v8, posX:I
    move/from16 v0, p1

    rsub-int v9, v0, 0x1e0

    .line 929
    .local v9, posY:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    div-int/lit8 v14, v14, 0x2

    rsub-int v11, v14, 0x1ab

    .line 930
    .local v11, previewLeft:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/lit16 v12, v14, 0x1ab

    .line 931
    .local v12, previewRight:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    div-int/lit8 v14, v14, 0x2

    rsub-int v13, v14, 0xf0

    .line 932
    .local v13, previewTop:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    div-int/lit8 v14, v14, 0x2

    add-int/lit16 v10, v14, 0xf0

    .line 936
    .local v10, previewBottom:I
    if-gt v11, v8, :cond_5

    if-gt v8, v12, :cond_5

    if-gt v13, v9, :cond_5

    if-gt v9, v10, :cond_5

    .line 939
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-static {v14, v15}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getAfPos(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 942
    .local v3, afPos:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int v2, v8, v14

    .line 943
    .local v2, afLeft:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int v4, v8, v14

    .line 944
    .local v4, afRight:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int v5, v9, v14

    .line 945
    .local v5, afTop:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int v1, v9, v14

    .line 949
    .local v1, afBottom:I
    if-ge v2, v11, :cond_1

    .line 950
    sub-int v6, v11, v2

    .line 958
    .local v6, offsetLeftRight:I
    :goto_1
    if-ge v5, v13, :cond_3

    .line 959
    sub-int v7, v13, v5

    .line 967
    .local v7, offsetTopBottom:I
    :goto_2
    add-int v14, v2, v6

    sub-int/2addr v14, v11

    iput v14, v3, Landroid/graphics/Rect;->left:I

    .line 968
    add-int v14, v4, v6

    sub-int/2addr v14, v11

    iput v14, v3, Landroid/graphics/Rect;->right:I

    .line 969
    add-int v14, v5, v7

    sub-int/2addr v14, v13

    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 970
    add-int v14, v1, v7

    sub-int/2addr v14, v13

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 982
    .end local v1           #afBottom:I
    .end local v2           #afLeft:I
    .end local v3           #afPos:Landroid/graphics/Rect;
    .end local v4           #afRight:I
    .end local v5           #afTop:I
    .end local v6           #offsetLeftRight:I
    .end local v7           #offsetTopBottom:I
    :goto_3
    return-object v3

    .line 924
    .end local v8           #posX:I
    .end local v9           #posY:I
    .end local v10           #previewBottom:I
    .end local v11           #previewLeft:I
    .end local v12           #previewRight:I
    .end local v13           #previewTop:I
    :cond_0
    move/from16 v8, p1

    .line 925
    .restart local v8       #posX:I
    move/from16 v9, p2

    .restart local v9       #posY:I
    goto :goto_0

    .line 951
    .restart local v1       #afBottom:I
    .restart local v2       #afLeft:I
    .restart local v3       #afPos:Landroid/graphics/Rect;
    .restart local v4       #afRight:I
    .restart local v5       #afTop:I
    .restart local v10       #previewBottom:I
    .restart local v11       #previewLeft:I
    .restart local v12       #previewRight:I
    .restart local v13       #previewTop:I
    :cond_1
    if-ge v12, v4, :cond_2

    .line 952
    sub-int v6, v12, v4

    .restart local v6       #offsetLeftRight:I
    goto :goto_1

    .line 954
    .end local v6           #offsetLeftRight:I
    :cond_2
    const/4 v6, 0x0

    .restart local v6       #offsetLeftRight:I
    goto :goto_1

    .line 960
    :cond_3
    if-ge v10, v1, :cond_4

    .line 961
    sub-int v7, v10, v1

    .restart local v7       #offsetTopBottom:I
    goto :goto_2

    .line 963
    .end local v7           #offsetTopBottom:I
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #offsetTopBottom:I
    goto :goto_2

    .line 982
    .end local v1           #afBottom:I
    .end local v2           #afLeft:I
    .end local v3           #afPos:Landroid/graphics/Rect;
    .end local v4           #afRight:I
    .end local v5           #afTop:I
    .end local v6           #offsetLeftRight:I
    .end local v7           #offsetTopBottom:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method protected doChangeFocusedFace([I)V
    .locals 14
    .parameter "results"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 801
    iget-boolean v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomContinued:Z

    if-eqz v8, :cond_0

    .line 835
    :goto_0
    return-void

    .line 810
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    aget v8, p1, v10

    aget v9, p1, v12

    aget v10, p1, v10

    const/4 v11, 0x3

    aget v11, p1, v11

    add-int/2addr v10, v11

    aget v11, p1, v12

    const/4 v12, 0x4

    aget v12, p1, v12

    add-int/2addr v11, v12

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 814
    .local v3, rectPos:Landroid/graphics/Rect;
    iget v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->convertSurfaceWidth(I)I

    move-result v5

    .line 815
    .local v5, w:I
    iget v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->convertSurfaceHeight(I)I

    move-result v0

    .line 816
    .local v0, h:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v13, v13, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 819
    .local v4, rectView:Landroid/graphics/Rect;
    iget v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    if-ne v5, v8, :cond_1

    iget v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    if-eq v0, v8, :cond_3

    .line 820
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPictureRect:Landroid/graphics/Rect;

    .line 821
    .local v2, rectPicture:Landroid/graphics/Rect;
    iget v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPictureWidth:I

    const/16 v9, 0x500

    if-ne v8, v9, :cond_2

    .line 822
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #rectPicture:Landroid/graphics/Rect;
    const/16 v8, 0x300

    const/16 v9, 0x1b0

    invoke-direct {v2, v13, v13, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 825
    .restart local v2       #rectPicture:Landroid/graphics/Rect;
    :cond_2
    invoke-static {v3, v2, v4}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->scaleToDev(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 827
    .end local v2           #rectPicture:Landroid/graphics/Rect;
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v3, v4, v8}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->convertViewToDev(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 830
    .local v1, rectDev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 831
    .local v6, x:I
    iget v8, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 834
    .local v7, y:I
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v8, v6, v7}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setSelectFacePos(II)V

    goto :goto_0
.end method

.method protected doCheckResults(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z
    .locals 2
    .parameter "results"

    .prologue
    const/4 v0, 0x0

    .line 784
    iget-object v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v1, v1, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->width:I

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v1, v1, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->height:I

    if-eqz v1, :cond_0

    .line 786
    const/4 v0, 0x1

    .line 788
    :cond_0
    return v0
.end method

.method protected doClearZoom()V
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomContinued:Z

    .line 648
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/BaseController;->doStopZoom()V

    .line 651
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/BaseController;->setTouchAreaListener()V

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->clearIgnoreOnKeyDownEventUntilZoomStop()V

    .line 655
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/BaseController;->doResetKeyState()V

    .line 656
    return-void
.end method

.method public doResetKeyState()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 664
    .local v0, app:Lcom/sonyericsson/android/camera3d/CameraActivity;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->resetKeyState()V

    .line 669
    :cond_0
    return-void
.end method

.method protected doSetAfMode(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "area"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    .line 267
    return-void
.end method

.method public doSetFocusPosition(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 254
    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->convertAbsolutePositionToRelative(II)I

    move-result v0

    .line 256
    .local v0, convertedX:I
    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->convertAbsolutePositionToRelative(II)I

    move-result v1

    .line 258
    .local v1, convertedY:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusPosition(II)V

    .line 259
    return-void
.end method

.method protected doStopZoom()V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method protected doUpdateFaceDetectionResult(ILcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    .locals 5
    .parameter "success"
    .parameter "FaceDetectionResult"
    .parameter "isRecording"

    .prologue
    const/4 v4, 0x0

    .line 844
    if-eqz p1, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget v0, p2, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceNum:I

    if-lez v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mFocusMode:Ljava/lang/String;

    const-string v1, "FACE_DETECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/BaseController;->doCheckResults(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    goto :goto_0

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mFocusMode:Ljava/lang/String;

    const-string v1, "FACE_DETECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showAfIndicator()V

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected doZoomIn()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method protected doZoomOut()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method protected doZoomProgress(IZ)V
    .locals 1
    .parameter "current_value"
    .parameter "stopped"

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/BaseController;->updateZoombar(I)V

    .line 693
    if-eqz p2, :cond_0

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomContinued:Z

    .line 698
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/BaseController;->setTouchAreaListener()V

    .line 701
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->clearIgnoreOnKeyDownEventUntilZoomStop()V

    .line 703
    :cond_0
    return-void
.end method

.method protected fixOrientation()V
    .locals 4

    .prologue
    .line 721
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 723
    .local v0, activity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    const/4 v1, 0x4

    .line 724
    .local v1, requestOrientation:I
    sget-object v2, Lcom/sonyericsson/android/camera3d/BaseController$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfig$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getLastLayoutOrientation()Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 738
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedOrientation(I)V

    .line 739
    return-void

    .line 726
    :pswitch_0
    const/4 v1, 0x1

    .line 727
    goto :goto_0

    .line 729
    :pswitch_1
    const/16 v1, 0x9

    .line 730
    goto :goto_0

    .line 732
    :pswitch_2
    const/4 v1, 0x0

    .line 733
    goto :goto_0

    .line 735
    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCameraId(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1066
    const-string v0, "FRONT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    const/4 v0, 0x1

    .line 1069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorMessageId(Ljava/lang/String;)I
    .locals 1
    .parameter "capturingMode"

    .prologue
    .line 1089
    const/4 v0, -0x1

    return v0
.end method

.method public getEvValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, ev:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mEvValueConvertMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/BaseController;->createEvValueConvertMap(Landroid/hardware/Camera$Parameters;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mEvValueConvertMap:Ljava/util/Map;

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mEvValueConvertMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mEvValueConvertMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 493
    :cond_1
    return v0
.end method

.method protected getIndexOfSelectedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)I
    .locals 2
    .parameter "results"

    .prologue
    .line 898
    iget v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    .line 901
    .local v0, indexOfSelectedFace:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 902
    const/4 v0, 0x0

    .line 904
    :cond_0
    return v0
.end method

.method protected getRectDev(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Landroid/graphics/Rect;
    .locals 7
    .parameter "results"

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/BaseController;->getIndexOfSelectedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)I

    move-result v0

    .line 882
    .local v0, indexOfSelectedFace:I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v2, v2, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    iget-object v3, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v3, v3, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    iget-object v4, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v4, v4, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    iget-object v5, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v5, v5, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->width:I

    add-int/2addr v4, v5

    iget-object v5, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v5, v5, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    iget-object v6, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v6, v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->height:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 889
    .local v1, rectDev:Landroid/graphics/Rect;
    return-object v1
.end method

.method protected getSelfTimerTime(Ljava/lang/Object;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, setting:Ljava/lang/String;
    const-string v2, "SELFTIMER_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1077
    const/16 v1, 0x2710

    .line 1085
    .local v1, time:I
    :goto_0
    return v1

    .line 1078
    .end local v1           #time:I
    :cond_0
    const-string v2, "SELFTIMER_2SECONDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    const/16 v1, 0x7d0

    .restart local v1       #time:I
    goto :goto_0

    .line 1082
    .end local v1           #time:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #time:I
    goto :goto_0
.end method

.method public initZoom()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 3

    .prologue
    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, available:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->getState()Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    move-result-object v1

    .line 989
    .local v1, state:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    if-eqz v1, :cond_0

    .line 990
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->isMenuAvailable()Z

    move-result v0

    .line 993
    :cond_0
    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method public isSettingsAvailable()Z
    .locals 3

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, available:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->getState()Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    move-result-object v1

    .line 999
    .local v1, state:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->isSettingsAvailable()Z

    move-result v0

    .line 1003
    :cond_0
    return v0
.end method

.method public onBatteryLow()V
    .locals 0

    .prologue
    .line 1140
    return-void
.end method

.method public onChangeFocusFace(IIIII)V
    .locals 4
    .parameter "selected"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 1061
    const/4 v1, 0x5

    new-array v0, v1, [I

    aput p1, v0, v3

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 1062
    .local v0, result:[I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1063
    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 0
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 1155
    return-void
.end method

.method public onExternalMemoryError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1143
    return-void
.end method

.method public onHdmiConnected()V
    .locals 0

    .prologue
    .line 1149
    return-void
.end method

.method public onHdmiDisconnected()V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public onMemoryMounted()V
    .locals 0

    .prologue
    .line 1146
    return-void
.end method

.method public onOffHook()V
    .locals 0

    .prologue
    .line 1134
    return-void
.end method

.method public onRinging()V
    .locals 0

    .prologue
    .line 1137
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1158
    const/4 v0, 0x0

    return v0
.end method

.method public pauseController(Z)V
    .locals 4
    .parameter "stopPreview"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendRapidEvent(IILjava/lang/Object;)V

    .line 1047
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->clear()V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 165
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mAutoZoomCallback:Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;

    .line 166
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    .line 184
    return-void
.end method

.method protected releaseOrientation()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedOrientation(I)V

    .line 747
    return-void
.end method

.method public resumeController()V
    .locals 4

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x71

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendRapidEvent(IILjava/lang/Object;)V

    .line 1052
    return-void
.end method

.method protected setAfMulti()V
    .locals 5

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "macro"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "multi"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/BaseController;->setFaceDetection(Z)V

    .line 361
    return-void
.end method

.method protected setAfSingle()V
    .locals 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/BaseController;->setFaceDetection(Z)V

    .line 351
    return-void
.end method

.method public setCapturingMode(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 513
    return-void
.end method

.method public setEv(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/BaseController;->getEvValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setEv(I)V

    .line 499
    return-void
.end method

.method public setFaceDetection(Ljava/lang/String;)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 364
    const-string v0, "FACE_DETECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/BaseController;->setFaceDetection(Z)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/BaseController;->setFaceDetection(Z)V

    goto :goto_0
.end method

.method public setFaceDetection(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsFaceDetection:Z

    .line 380
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mFaceDetectionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startFaceDetect()V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopFaceDetect()V

    goto :goto_0
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public setFocusModeToDevice(Ljava/lang/String;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 315
    const-string v0, "SINGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string v0, "MULTI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getZoomStep(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "macro"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "multi"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    const-string v0, "INFINITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_3
    const-string v0, "MACRO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_4
    const-string v0, "FACE_DETECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_5
    const-string v0, "TOUCH_FOCUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "macro"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusModeToView(Ljava/lang/String;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 277
    const-string v0, "SINGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    .line 304
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "MULTI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getZoomStep(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    goto :goto_0

    .line 288
    :cond_2
    const-string v0, "INFINITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    goto :goto_0

    .line 291
    :cond_3
    const-string v0, "MACRO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    goto :goto_0

    .line 294
    :cond_4
    const-string v0, "FACE_DETECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    goto :goto_0

    .line 297
    :cond_5
    const-string v0, "TOUCH_FOCUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    goto :goto_0

    .line 302
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGeoTag(Z)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->canUseGpsProvider()Z

    move-result v0

    .line 413
    .local v0, gps:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->canUseNetworkProvider()Z

    move-result v1

    .line 415
    .local v1, net:Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationGps(I)V

    .line 421
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v2, v4, v4, v4}, Lcom/sonyericsson/android/camera3d/ImageManager;->setGeoTag(ZZZ)V

    .line 422
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->setGeoTag(ZZZ)V

    .line 427
    :goto_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsGeoTag:Z

    .line 428
    return-void

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationGps(I)V

    .line 425
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v2, v4, v4, v4}, Lcom/sonyericsson/android/camera3d/ImageManager;->setGeoTag(ZZZ)V

    goto :goto_0
.end method

.method public setImageStabilizer(IZ)V
    .locals 1
    .parameter "type"
    .parameter "mode"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setImageStabilizer(IZ)V

    .line 439
    return-void
.end method

.method protected setInitState()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method public setMaxZoomStep()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mMaxZoomStep:I

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mMaxZoomStep:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setMaxZoom(I)V

    .line 146
    return-void
.end method

.method public setMicroPhone(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsMicroPhone:Z

    .line 528
    return-void
.end method

.method public setPhotoLight(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsPhotoLightOn:Z

    .line 222
    return-void
.end method

.method public setPhotometry(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPhotometry(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public setPlayMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->setPlayMode(I)V

    .line 539
    return-void
.end method

.method public setResolution(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "prevW"
    .parameter "prevH"

    .prologue
    .line 556
    iput p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPictureWidth:I

    .line 557
    iput p2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPictureHeight:I

    .line 558
    iput p3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewWidth:I

    .line 559
    iput p4, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mPreviewHeight:I

    .line 560
    return-void
.end method

.method public setSelfTimer(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsSelfTimer:Z

    .line 211
    return-void
.end method

.method public setSmileLevel(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 399
    iput p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mSmileLevel:I

    .line 400
    return-void
.end method

.method public setSweepDirection(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 517
    return-void
.end method

.method public setTallyLight(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsTallyLightOn:Z

    .line 237
    return-void
.end method

.method protected setTouchAreaListener()V
    .locals 2

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsTouchCapturing:Z

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mFocusMode:Ljava/lang/String;

    const-string v1, "TOUCH_FOCUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    goto :goto_0
.end method

.method public setTouchCapturingMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsTouchCapturing:Z

    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setWhiteBalance(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public setupController()V
    .locals 4

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x73

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1042
    return-void
.end method

.method public setupDefaultView(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    .line 1018
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsMacroFocus:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationMacro(Z)V

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mFocusMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/BaseController;->setFocusModeToView(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/BaseController;->setTouchAreaListener()V

    .line 1026
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showDefaultView(I)V

    .line 1029
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->enableTouchEvent()V

    .line 1030
    return-void
.end method

.method protected showStoreResult(II)V
    .locals 3
    .parameter "result"
    .parameter "requestId"

    .prologue
    .line 760
    packed-switch p1, :pswitch_data_0

    .line 772
    const v0, 0x7f0c0078

    .line 775
    .local v0, resId:I
    :goto_0
    if-lez v0, :cond_0

    .line 776
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showMessageOnUiThread(II)V

    .line 779
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->onStoreFailed(I)V

    .line 781
    :cond_0
    return-void

    .line 763
    .end local v0           #resId:I
    :pswitch_0
    const/4 v0, -0x1

    .line 764
    .restart local v0       #resId:I
    goto :goto_0

    .line 766
    .end local v0           #resId:I
    :pswitch_1
    const v0, 0x7f0c0078

    .line 767
    .restart local v0       #resId:I
    goto :goto_0

    .line 769
    .end local v0           #resId:I
    :pswitch_2
    const v0, 0x7f0c0079

    .line 770
    .restart local v0       #resId:I
    goto :goto_0

    .line 760
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showZoomMessage(I)V
    .locals 2
    .parameter "redId"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showZoomMessage(II)V

    .line 1009
    return-void
.end method

.method public showZoombar()V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method protected startAutoZoom(I)V
    .locals 4
    .parameter "step_value"

    .prologue
    const/4 v3, 0x1

    .line 588
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 591
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->addIgnoreOnKeyDownEventUntilZoomStop(I)V

    .line 593
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->addIgnoreOnKeyDownEventUntilZoomStop(I)V

    .line 595
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->addIgnoreOnKeyDownEventUntilZoomStop(I)V

    .line 597
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->addIgnoreOnKeyDownEventUntilZoomStop(I)V

    .line 600
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mIsRecording:Z

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showZoombar(Z)V

    .line 601
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomContinued:Z

    if-nez v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mFocusMode:Ljava/lang/String;

    const-string v2, "MULTI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomingAfModeChanged:Z

    if-nez v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/BaseController;->setAfSingle()V

    .line 608
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomingAfModeChanged:Z

    .line 611
    :cond_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mZoomContinued:Z

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startSmoothZoom(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_1
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 617
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/BaseController;->doClearZoom()V

    goto :goto_0
.end method

.method public startSelftimer()V
    .locals 0

    .prologue
    .line 1128
    return-void
.end method

.method public startZoomIn()V
    .locals 0

    .prologue
    .line 1112
    return-void
.end method

.method public startZoomOut()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method public stopZoom()V
    .locals 0

    .prologue
    .line 1118
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1122
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;Z)V
    .locals 0
    .parameter "holder"
    .parameter "sync"

    .prologue
    .line 1125
    return-void
.end method

.method public switchCamera(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1094
    return-void
.end method

.method protected updateZoombar(I)V
    .locals 2
    .parameter "current_value"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mMaxZoomStep:I

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateZoombar(II)V

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setZoomStep(Ljava/lang/Object;I)V

    .line 713
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/BaseController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setZoomStep(Ljava/lang/Object;I)V

    .line 715
    return-void
.end method
