.class Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;
.super Ljava/lang/Object;
.source "SweepCameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method


# virtual methods
.method public onStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "status"
    .parameter "storeResult"
    .parameter "filename"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 573
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 574
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget v2, p1, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    invoke-virtual {v1, p2, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->showStoreResult(II)V

    .line 577
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 578
    .local v0, results:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendRapidEvent(IILjava/lang/Object;)V

    .line 579
    return-void
.end method

.method public onStoreProgress(II)V
    .locals 4
    .parameter "current"
    .parameter "total"

    .prologue
    const/4 v3, 0x0

    .line 565
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 566
    .local v0, progress:[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x51

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 567
    return-void
.end method
