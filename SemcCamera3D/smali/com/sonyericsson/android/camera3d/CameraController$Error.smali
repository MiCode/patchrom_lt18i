.class Lcom/sonyericsson/android/camera3d/CameraController$Error;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Error"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;I)V
    .locals 4
    .parameter
    .parameter "code"

    .prologue
    const v3, 0x7f0c00d6

    const/4 v2, 0x1

    .line 1515
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Error;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    .line 1517
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 1519
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1520
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;

    .line 1530
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 1531
    return-void

    .line 1525
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showErrorExit(IIZ)Landroid/app/Dialog;

    goto :goto_0
.end method
