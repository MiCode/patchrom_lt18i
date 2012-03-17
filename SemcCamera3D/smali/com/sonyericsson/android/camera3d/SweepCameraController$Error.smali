.class Lcom/sonyericsson/android/camera3d/SweepCameraController$Error;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Error"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V
    .locals 4
    .parameter
    .parameter "code"

    .prologue
    const v3, 0x7f0c00d6

    const/4 v2, 0x1

    .line 859
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Error;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    .line 860
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 862
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 863
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;

    .line 876
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 877
    return-void

    .line 870
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;

    goto :goto_0
.end method
