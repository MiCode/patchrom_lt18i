.class Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCaptureContext;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SweepCaptureContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "state"

    .prologue
    .line 841
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCaptureContext;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    .line 842
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 843
    return-void
.end method


# virtual methods
.method public setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 847
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 848
    return-void
.end method
