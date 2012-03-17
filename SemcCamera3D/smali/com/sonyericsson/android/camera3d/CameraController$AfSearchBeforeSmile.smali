.class Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;
.super Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfSearchBeforeSmile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2227
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    return-void
.end method


# virtual methods
.method public handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x1

    .line 2254
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 2255
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->backToViewFinder(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 2268
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 2257
    .restart local p3
    :cond_1
    if-nez p2, :cond_2

    .line 2259
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    check-cast p3, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .end local p3
    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doAfSuccessed(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    invoke-static {v0, p3, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1200(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    .line 2260
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0

    .line 2261
    .restart local p3
    :cond_2
    if-ne p2, v1, :cond_3

    .line 2262
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doAfFailed()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1400(Lcom/sonyericsson/android/camera3d/CameraController;)V

    .line 2263
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0

    .line 2264
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2265
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->mCanceled:Z

    goto :goto_0
.end method

.method public handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2232
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2233
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showAutoFocusView()V

    .line 2235
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doAutoFocusDetectedFace()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2240
    :goto_0
    return-void

    .line 2236
    :catch_0
    move-exception v0

    .line 2237
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 2238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AF failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopAf()V

    .line 2248
    return-void
.end method
