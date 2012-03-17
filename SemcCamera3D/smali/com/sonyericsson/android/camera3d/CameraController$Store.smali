.class Lcom/sonyericsson/android/camera3d/CameraController$Store;
.super Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2469
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Store;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    .line 2470
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedOrientation(I)V

    .line 2473
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopAf()V

    .line 2475
    invoke-virtual {p1, v2, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->startPreview(ZZ)V

    .line 2477
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableAutoOffTimer()V

    .line 2478
    return-void
.end method


# virtual methods
.method public handleStoreDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2483
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->HANDLE_STORE_DONE_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 2484
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleStoreDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2486
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Store;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 2488
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Store;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 2489
    return-void
.end method
