.class Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pause"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 1
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method


# virtual methods
.method public canOpenWindow()Z
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x1

    return v0
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1092
    return-void
.end method

.method public handleResumeController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1079
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleResumeController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->resume(ZZ)V

    .line 1087
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updatePhotoStack()V

    .line 1088
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1089
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startPreview(ZZ)V

    goto :goto_0
.end method

.method public isSettingsAvailable()Z
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x1

    return v0
.end method
