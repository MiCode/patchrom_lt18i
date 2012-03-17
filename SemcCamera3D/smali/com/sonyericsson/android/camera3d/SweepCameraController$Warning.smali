.class Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Warning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V
    .locals 2
    .parameter
    .parameter "err"

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    .line 1211
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1213
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 1215
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setAllCameraSettings()V

    .line 1217
    const/4 v0, 0x0

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupPreview(Z)V
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$400(Lcom/sonyericsson/android/camera3d/SweepCameraController;Z)V

    .line 1218
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-boolean v1, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startPreview(ZZ)V

    .line 1221
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 1224
    packed-switch p2, :pswitch_data_0

    .line 1239
    :pswitch_0
    return-void

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1249
    return-void
.end method

.method public handleExternalMemoryInsert(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1244
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->handleExternalMemoryInsert(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1245
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1246
    return-void
.end method

.method public handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1251
    return-void
.end method

.method public handleKeyZoomIn(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1253
    return-void
.end method

.method public handleKeyZoomOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1255
    return-void
.end method
