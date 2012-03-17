.class final Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/ControllerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ControllerManager;Lcom/sonyericsson/android/camera3d/ControllerManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;-><init>(Lcom/sonyericsson/android/camera3d/ControllerManager;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 713
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ControllerManager;->isControllersReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ControllerManager$ErrorCallback;->this$0:Lcom/sonyericsson/android/camera3d/ControllerManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ControllerManager;->mCameraId:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->access$300(Lcom/sonyericsson/android/camera3d/ControllerManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getCameraController(I)Lcom/sonyericsson/android/camera3d/CameraController;

    move-result-object v0

    .line 715
    .local v0, cameraCont:Lcom/sonyericsson/android/camera3d/CameraController;
    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->onError(ILandroid/hardware/Camera;)V

    .line 721
    .end local v0           #cameraCont:Lcom/sonyericsson/android/camera3d/CameraController;
    :cond_0
    return-void
.end method
