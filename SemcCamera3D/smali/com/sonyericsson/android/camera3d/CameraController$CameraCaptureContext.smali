.class Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraCaptureContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "state"

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 1292
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1293
    return-void
.end method


# virtual methods
.method protected isSelfTimerRunning(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1315
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;

    if-eqz v0, :cond_1

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mOnCountDown:Z

    .line 1333
    :goto_0
    return-void

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mOnCountDown:Z

    goto :goto_0
.end method

.method public setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1297
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1298
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;->updateRemain(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1299
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;->isSelfTimerRunning(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1300
    return-void
.end method

.method protected updateRemain(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1303
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraController$Warning;

    if-eqz v0, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->updateRemain(Ljava/lang/String;)V

    goto :goto_0
.end method
