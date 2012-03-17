.class public final Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/16 v2, 0xb0

    const/4 v1, 0x0

    .line 1151
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->AUTOFOCUS:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1153
    iget-boolean v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->focused:Z

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1158
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0
.end method
