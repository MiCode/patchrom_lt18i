.class Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.source "SweepCameraController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureFailed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 1
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    .line 1629
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 1630
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 1631
    return-void
.end method


# virtual methods
.method public handleCameraReady(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1636
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCameraReady(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1637
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updatePhotoStack()V

    .line 1638
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1639
    return-void
.end method

.method public handleCaptureDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1644
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCaptureDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1645
    move v1, p2

    .line 1646
    .local v1, resultId:I
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1650
    .local v2, store:Z
    if-eqz v2, :cond_0

    .line 1651
    new-instance v3, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1652
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStoreData(I)V
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1400(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    .line 1653
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 1665
    :goto_0
    return-void

    .line 1656
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v3, v1, v2, p0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->onCaptureFailed(IZLandroid/content/DialogInterface$OnDismissListener;)Z

    move-result v0

    .line 1659
    .local v0, dialogOpened:Z
    if-nez v0, :cond_1

    .line 1660
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->onCameraReady()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1500(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1662
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->onCameraReady()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1500(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1669
    return-void
.end method
