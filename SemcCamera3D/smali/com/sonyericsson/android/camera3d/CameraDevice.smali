.class public Lcom/sonyericsson/android/camera3d/CameraDevice;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/CameraDevice$OpenCameraException;
    }
.end annotation


# static fields
.field public static final MIN_MULTI_FOCUS_NUM:I = 0x1

.field public static final SET_PREVIEW_DISPLAY_ERROR:I = -0x100

.field public static final SOUND_TYPE_CAMERA:I = 0x0

.field public static final SOUND_TYPE_VIDEO:I = 0x1

.field public static final START_PREVIEW_ERROR:I = -0xff

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

.field public mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mContext:Landroid/content/Context;

.field public mDefaultParameters:Landroid/hardware/Camera$Parameters;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mHasFaceDetectionStarted:Z

.field private mHasSceneRecognitionStarted:Z

.field private mIsPreviewing:Z

.field private mIsSceneRecognition:Z

.field private mIsSmileDetection:Z

.field private mIsSuspended:Z

.field private mOrientation:I

.field private mPreviewFpsRangeMax:I

.field private mPreviewFpsRangeMin:I

.field private mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

.field private mStoredFocusMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "CameraDevice"

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    .line 82
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasFaceDetectionStarted:Z

    .line 94
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasSceneRecognitionStarted:Z

    .line 97
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSceneRecognition:Z

    .line 100
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSmileDetection:Z

    .line 109
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 112
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    .line 114
    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMax:I

    .line 115
    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMin:I

    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mContext:Landroid/content/Context;

    .line 141
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z

    .line 142
    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mOrientation:I

    .line 144
    return-void
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 1142
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 1144
    .local v0, number:I
    return v0
.end method

.method private getStringValue(Z)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 840
    if-eqz p1, :cond_0

    .line 841
    const-string v0, "on"

    .line 843
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1229
    if-nez p1, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return v1

    .line 1232
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1236
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1237
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDisplayOrientation(Landroid/app/Activity;Landroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .parameter "activity"
    .parameter "camera"
    .parameter "cameraInfo"

    .prologue
    .line 1158
    const/4 v2, 0x1

    .line 1160
    .local v2, rotation:I
    const/16 v0, 0x5a

    .line 1168
    .local v0, degrees:I
    iget v3, p2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1169
    iget v3, p2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v1, v3, 0x168

    .line 1170
    .local v1, result:I
    rsub-int v3, v1, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 1177
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :goto_1
    return-void

    .line 1172
    .end local v1           #result:I
    :cond_0
    iget v3, p2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .restart local v1       #result:I
    goto :goto_0

    .line 1178
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public final changeSize(ZIIII)V
    .locals 3
    .parameter "isPhoto"
    .parameter "preW"
    .parameter "preH"
    .parameter "picW"
    .parameter "picH"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 615
    :cond_0
    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 618
    .local v0, params:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_1

    .line 621
    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 626
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 627
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 628
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getFocusRectangles()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v7, :cond_1

    .line 633
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "camera or camera extension is set to null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 636
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 637
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 639
    .local v4, previewSize:Landroid/hardware/Camera$Size;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v5, relativeFocusRects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->getFocusAreasOnPreview(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;)Ljava/util/List;

    move-result-object v0

    .line 643
    .local v0, absoluteFocusRects:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/cameraextension/CameraExtension$Rect;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 644
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->getFixedMultiFocusRects(Landroid/hardware/Camera$Size;)[Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    .line 656
    .end local v5           #relativeFocusRects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    :cond_2
    return-object v5

    .line 647
    .restart local v5       #relativeFocusRects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    .line 648
    .local v6, src:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;
    new-instance v1, Landroid/graphics/RectF;

    iget v7, v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    int-to-float v7, v7

    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    int-to-float v8, v8

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    iget v10, v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->width:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    iget v11, v6, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->height:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 653
    .local v1, dst:Landroid/graphics/RectF;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getMaxZoom()I
    .locals 3

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    .local v0, max:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "semc-max-zoom"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1057
    :cond_0
    return v0
.end method

.method public final getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public is720pPreviewCallbackUnavailable()Z
    .locals 3

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "semc-720p-preview-callback-unavailable"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    const/4 v1, 0x1

    .line 1302
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public is720pPreviewSizeSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1261
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 1262
    .local v2, supportedPreviewSize:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v2, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return v3

    .line 1267
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1268
    .local v1, sizeInList:Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    const/16 v5, 0x500

    if-ne v4, v5, :cond_2

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_2

    .line 1270
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isImageFormatSupported()Z
    .locals 3

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "semc-extension-version"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1278
    .local v0, version:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1279
    const/4 v1, 0x1

    .line 1281
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLargePreviewSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1245
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 1246
    .local v2, supportedPreviewSize:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v2, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return v3

    .line 1251
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1252
    .local v1, sizeInList:Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    const/16 v5, 0x640

    if-ne v4, v5, :cond_2

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v5, 0x4b0

    if-ne v4, v5, :cond_2

    .line 1254
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized isPreviewing()Z
    .locals 1

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSceneSupported()Z
    .locals 3

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1286
    .local v0, params:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1287
    const/4 v2, 0x0

    .line 1292
    :goto_0
    return v2

    .line 1290
    :cond_0
    const-string v2, "semc-scene-detect-supported"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, value:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public lockCamera()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    goto :goto_0
.end method

.method public final open(I)V
    .locals 3
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera3d/CameraDevice$OpenCameraException;
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSuspended:Z

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 162
    :try_start_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    .line 168
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-static {v2, p1}, Lcom/sonyericsson/cameraextension/CameraExtension;->open(Landroid/hardware/Camera;I)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 182
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_3

    .line 183
    const-string v2, "semc-multi-focus-rects"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 184
    const/4 v2, 0x5

    sput v2, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    .line 192
    :goto_0
    return-void

    .line 158
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Ljava/lang/RuntimeException;
    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraDevice$OpenCameraException;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice$OpenCameraException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 186
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_2
    const-string v2, "semc-max-multi-focus-num"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    goto :goto_0

    .line 190
    :cond_3
    const/4 v2, 0x1

    sput v2, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    goto :goto_0
.end method

.method public reconnectCamera()V
    .locals 3

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1107
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "reconnect() failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final release()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopPreview(ZZ)V

    .line 208
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setSceneRecognitionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->release()V

    .line 223
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    .line 224
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    .line 225
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    goto :goto_0
.end method

.method public declared-synchronized resume(ZZ)V
    .locals 2
    .parameter "startFaceDetect"
    .parameter "startSceneRecognition"

    .prologue
    .line 588
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSuspended:Z

    .line 589
    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startFaceDetect()V

    .line 592
    :cond_0
    if-eqz p2, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startSceneRecognition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 595
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mStoredFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mStoredFocusMode:Ljava/lang/String;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    const-string v0, "continuous-video"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 341
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 349
    :cond_0
    return-void

    .line 341
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setEv(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 693
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 697
    :cond_0
    monitor-enter p0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 699
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 700
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 702
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 406
    :cond_0
    return-void
.end method

.method public final setFlashMode(Ljava/lang/String;)V
    .locals 3
    .parameter "flashMode"

    .prologue
    .line 783
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 800
    :goto_0
    return-void

    .line 787
    :cond_0
    monitor-enter p0

    .line 788
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 789
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 790
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 793
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 799
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    .end local v1           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final setFocusArea(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 770
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 780
    :goto_0
    return-void

    .line 774
    :cond_0
    monitor-enter p0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 776
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "semc-focus-area"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 779
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setFocusMode(Ljava/lang/String;)V
    .locals 4
    .parameter "focusMode"

    .prologue
    .line 732
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 767
    :goto_0
    return-void

    .line 736
    :cond_0
    monitor-enter p0

    .line 737
    :try_start_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSuspended:Z

    if-eqz v3, :cond_1

    .line 739
    const-string v3, "continuous-video"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    const-string v3, "continuous-video"

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mStoredFocusMode:Ljava/lang/String;

    .line 743
    monitor-exit p0

    goto :goto_0

    .line 766
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 747
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 748
    .local v1, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 749
    .local v2, supportedFocusMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 750
    if-nez v2, :cond_2

    .line 752
    monitor-exit p0

    goto :goto_0

    .line 754
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 756
    monitor-exit p0

    goto :goto_0

    .line 759
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    .line 762
    :cond_4
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 763
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 764
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mStoredFocusMode:Ljava/lang/String;

    .line 766
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final setFocusPosition(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1080
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "semc-user-focus-area-x"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1081
    const-string v1, "semc-user-focus-area-y"

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1082
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1083
    return-void
.end method

.method public final setImageStabilizer(IZ)V
    .locals 3
    .parameter "mode"
    .parameter "value"

    .prologue
    .line 803
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 815
    :goto_0
    return-void

    .line 808
    :cond_0
    const-string v0, "semc-is"

    .line 810
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 811
    .local v1, params:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getStringValue(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 386
    :cond_0
    return-void
.end method

.method public declared-synchronized setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setDisplayOrientation(Landroid/app/Activity;Landroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;)V

    .line 1194
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    monitor-exit p0

    return-void

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "orientation"
    .parameter "restartPreview"

    .prologue
    .line 1207
    if-eqz p2, :cond_0

    .line 1208
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasFaceDetectionStarted:Z

    .line 1209
    .local v1, restartFaceDetect:Z
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasSceneRecognitionStarted:Z

    .line 1210
    .local v2, restartSceneRecog:Z
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasFaceDetectionStarted:Z

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasSceneRecognitionStarted:Z

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopPreview(ZZ)V

    .line 1211
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setOrientation(I)V

    .line 1213
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startPreview(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .end local v1           #restartFaceDetect:Z
    .end local v2           #restartSceneRecog:Z
    :goto_0
    return-void

    .line 1214
    .restart local v1       #restartFaceDetect:Z
    .restart local v2       #restartSceneRecog:Z
    :catch_0
    move-exception v0

    .line 1215
    .local v0, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraDevice;->TAG:Ljava/lang/String;

    const-string v4, "setOrientation: startPreview failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1218
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #restartFaceDetect:Z
    .end local v2           #restartSceneRecog:Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setOrientation(I)V

    goto :goto_0
.end method

.method public final setParametersSafe(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 292
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setParameters() failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setPhotometry(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 818
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 826
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 823
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "semc-metering-mode"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 361
    :cond_0
    return-void
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 374
    :cond_0
    return-void
.end method

.method public final declared-synchronized setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 316
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 321
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    const/16 v2, -0x100

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v2, v3}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 312
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 326
    .restart local v0       #e:Ljava/io/IOException;
    :cond_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setPreviewFpsRange(I)V
    .locals 10
    .parameter "maxFps"

    .prologue
    const/4 v9, 0x1

    .line 414
    mul-int/lit16 p1, p1, 0x3e8

    .line 415
    move v0, p1

    .line 416
    .local v0, adjustedMaxFps:I
    const/4 v1, 0x0

    .line 417
    .local v1, adjustedMinFps:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mDefaultParameters:Landroid/hardware/Camera$Parameters;

    .line 418
    .local v3, param:Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_3

    .line 419
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    .line 420
    .local v7, vals:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-eqz v7, :cond_3

    .line 422
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 426
    .local v6, val:[I
    aget v4, v6, v9

    .line 427
    .local v4, supportedMaxFps:I
    if-gt v4, p1, :cond_0

    if-lt v4, v0, :cond_0

    .line 429
    move v0, v4

    goto :goto_0

    .line 432
    .end local v4           #supportedMaxFps:I
    .end local v6           #val:[I
    :cond_1
    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMax:I

    .line 435
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 436
    .restart local v6       #val:[I
    const/4 v8, 0x0

    aget v5, v6, v8

    .line 437
    .local v5, supportedMinFps:I
    aget v4, v6, v9

    .line 438
    .restart local v4       #supportedMaxFps:I
    iget v8, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMax:I

    if-ne v4, v8, :cond_2

    if-gt v1, v5, :cond_2

    .line 440
    move v1, v5

    goto :goto_1

    .line 446
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #supportedMaxFps:I
    .end local v5           #supportedMinFps:I
    .end local v6           #val:[I
    .end local v7           #vals:Ljava/util/List;,"Ljava/util/List<[I>;"
    :cond_3
    monitor-enter p0

    .line 447
    :try_start_0
    iput v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMin:I

    .line 448
    monitor-exit p0

    .line 453
    return-void

    .line 448
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public final setPreviewFpsRange(II)V
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 679
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 690
    :goto_0
    return-void

    .line 683
    :cond_0
    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 685
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 686
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 689
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setPreviewMode(Z)V
    .locals 3
    .parameter "isVideo"

    .prologue
    .line 829
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 837
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 834
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "semc-video-mode"

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getStringValue(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public final setScene(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 706
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 710
    :cond_0
    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 712
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 715
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSceneRecognition(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 960
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSceneRecognition:Z

    .line 961
    return-void
.end method

.method public final setSceneRecognitionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    .line 395
    return-void
.end method

.method public final setSelectFacePos(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setSelectFacePos(II)V

    goto :goto_0
.end method

.method public final setShutterSound(ILjava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "sound_file"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-nez p1, :cond_2

    .line 247
    const-string v0, "key-semc-ext-shuttersound"

    .line 256
    .local v0, key:Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 257
    .local v1, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 248
    .end local v0           #key:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 249
    const-string v0, "key-semc-ext-recordingsound"

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_1
.end method

.method public setSmileDetection(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 951
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSmileDetection:Z

    .line 952
    return-void
.end method

.method public final setWhiteBalance(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 719
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 723
    :cond_0
    monitor-enter p0

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 725
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 728
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setZoom(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1069
    :cond_0
    monitor-enter p0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1071
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1072
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1073
    monitor-exit p0

    goto :goto_0

    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method public final startAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;ZZZ)V
    .locals 1
    .parameter "cb"
    .parameter "aeLock"
    .parameter "awbLock"
    .parameter "focusLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_0

    .line 867
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/cameraextension/CameraExtension;->startAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;ZZZ)V

    goto :goto_0
.end method

.method public startFaceDetect()V
    .locals 3

    .prologue
    .line 908
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasFaceDetectionStarted:Z

    if-nez v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 918
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v1, "semc-smile-detect"

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSmileDetection:Z

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getStringValue(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 921
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->startFaceDetection()V

    .line 922
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasFaceDetectionStarted:Z

    goto :goto_0
.end method

.method public final startPreview(ZZ)V
    .locals 5
    .parameter "startFaceDetect"
    .parameter "startSceneRecognition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 516
    :goto_0
    return-void

    .line 473
    :cond_0
    monitor-enter p0

    .line 474
    :try_start_0
    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mOrientation:I

    if-nez v2, :cond_1

    .line 477
    monitor-exit p0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 480
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z

    if-eqz v2, :cond_3

    .line 515
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMax:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMin:I

    if-lez v2, :cond_4

    .line 487
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 488
    .local v1, parms:Landroid/hardware/Camera$Parameters;
    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMin:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mPreviewFpsRangeMax:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 489
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 491
    .end local v1           #parms:Landroid/hardware/Camera$Parameters;
    :cond_4
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->START_PREVIEW:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 493
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 494
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->START_PREVIEW:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 496
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z

    .line 499
    if-eqz p1, :cond_5

    .line 500
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startFaceDetect()V

    .line 502
    :cond_5
    if-eqz p2, :cond_2

    .line 503
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startSceneRecognition()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, ex:Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z

    .line 507
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "startPreview failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    if-eqz v2, :cond_6

    .line 509
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    const/16 v3, -0xff

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v3, v4}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto :goto_1

    .line 511
    :cond_6
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final startSceneRecognition()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSceneRecognition:Z

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 979
    const-string v0, "continuous-video"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 980
    const-string v0, "center"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusArea(Ljava/lang/String;)V

    .line 982
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startFaceDetect()V

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->startSceneRecognition(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasSceneRecognitionStarted:Z

    goto :goto_0
.end method

.method public final startSmoothZoom(I)V
    .locals 1
    .parameter "step_value"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0
.end method

.method public final stopAutoFocus()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopAutoFocus()V

    goto :goto_0
.end method

.method public stopFaceDetect()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasFaceDetectionStarted:Z

    .line 938
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopFaceDetection()V

    goto :goto_0
.end method

.method public final declared-synchronized stopPreview(ZZ)V
    .locals 1
    .parameter "stopFaceDetect"
    .parameter "stopSceneRecognition"

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 535
    if-eqz p2, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopSceneRecognition()V

    .line 538
    :cond_0
    if-eqz p1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopFaceDetect()V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 547
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stopSceneRecognition()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasSceneRecognitionStarted:Z

    if-eqz v0, :cond_0

    .line 1001
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mHasSceneRecognitionStarted:Z

    .line 1002
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopFaceDetect()V

    .line 1003
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopSceneRecognition()V

    goto :goto_0
.end method

.method public final stopSmoothZoom()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0
.end method

.method public declared-synchronized suspend(ZZ)V
    .locals 2
    .parameter "stopFaceDetect"
    .parameter "stopSceneRecognition"

    .prologue
    .line 566
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopSceneRecognition()V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "fixed"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 573
    const-string v0, "continuous-video"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mStoredFocusMode:Ljava/lang/String;

    .line 575
    :cond_1
    if-eqz p1, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopFaceDetect()V

    .line 578
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsSuspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 895
    :cond_0
    monitor-enter p0

    .line 896
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mIsPreviewing:Z

    .line 897
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 899
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 897
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unlockCamera()V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0
.end method
