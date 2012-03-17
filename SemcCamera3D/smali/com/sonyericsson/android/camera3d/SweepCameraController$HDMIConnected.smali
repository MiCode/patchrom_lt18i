.class Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HDMIConnected"
.end annotation


# instance fields
.field errDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 4
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    .line 884
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 889
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c00c7

    const v2, 0x7f0c00db

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->errDialog:Landroid/app/Dialog;

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->errDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 896
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 897
    return-void
.end method


# virtual methods
.method public handleHdmiDisconnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 901
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleHdmiDisconnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 905
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->restartPreview()V

    .line 906
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->errDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->errDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->errDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 910
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 911
    return-void
.end method
