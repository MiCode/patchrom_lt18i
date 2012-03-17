.class public Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCameraDeviceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 167
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 170
    .local v1, openSuccess:Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, retryCnt:I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera3d/CameraActivity;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraActivity;->mLaunchCameraId:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->access$100(Lcom/sonyericsson/android/camera3d/CameraActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraDevice;->open(I)V

    .line 174
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sonyericsson/android/camera3d/CameraDevice$OpenCameraException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->OPEN_CAMERA:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 191
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Lcom/sonyericsson/android/camera3d/CameraDevice$OpenCameraException;
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraActivity$OpenCameraDeviceTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
