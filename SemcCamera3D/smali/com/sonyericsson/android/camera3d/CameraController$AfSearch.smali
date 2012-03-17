.class Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;
.super Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfSearch"
.end annotation


# instance fields
.field protected mCanceled:Z

.field private mIsFullPressed:Z

.field protected mMemoryError:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2008
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    .line 2009
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mIsFullPressed:Z

    .line 2010
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mCanceled:Z

    .line 2011
    return-void
.end method


# virtual methods
.method protected backToViewFinder(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getLastExternalMemoryError()I

    move-result v0

    if-nez v0, :cond_0

    .line 2056
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 2060
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedOrientation(I)V

    .line 2062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mCanceled:Z

    .line 2063
    return-void

    .line 2058
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mMemoryError:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$Warning;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0
.end method

.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopAutoFocus()V

    .line 2113
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2114
    return-void
.end method

.method public handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2027
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2029
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 2030
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->backToViewFinder(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 2044
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 2032
    .restart local p3
    :cond_1
    if-nez p2, :cond_2

    .line 2033
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    check-cast p3, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .end local p3
    const/4 v1, 0x0

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doAfSuccessed(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    invoke-static {v0, p3, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1200(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    .line 2034
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0

    .line 2035
    .restart local p3
    :cond_2
    if-ne p2, v1, :cond_3

    .line 2036
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doAfFailed()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1400(Lcom/sonyericsson/android/camera3d/CameraController;)V

    .line 2037
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0

    .line 2038
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2041
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mCanceled:Z

    goto :goto_0
.end method

.method public handleChangeOrientation(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2140
    return-void
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2087
    iput p2, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mMemoryError:I

    .line 2088
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mIsFullPressed:Z

    if-nez v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopAf()V

    .line 2093
    :goto_0
    return-void

    .line 2091
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mMemoryError:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$Warning;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0
.end method

.method public handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2147
    return-void
.end method

.method public handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2017
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2018
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mIsFullPressed:Z

    if-nez v0, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopAf()V

    .line 2021
    :cond_0
    return-void
.end method

.method public handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2071
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mIsFullPressed:Z

    .line 2073
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-class v4, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V

    .line 2074
    return-void
.end method

.method public handleKeyCaptureTouch(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2079
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyCaptureTouch(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2080
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 2081
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->capture()V

    .line 2082
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2098
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2099
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->mIsFullPressed:Z

    if-nez v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopAf()V

    .line 2104
    :goto_0
    return-void

    .line 2102
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_0
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopAutoFocus()V

    .line 2123
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2124
    return-void
.end method

.method public handleZoomProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2133
    return-void
.end method
