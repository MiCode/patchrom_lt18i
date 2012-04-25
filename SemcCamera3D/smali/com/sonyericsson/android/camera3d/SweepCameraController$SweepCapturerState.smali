.class Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SweepCapturerState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method

.method private finish(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 914
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 915
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 916
    return-void
.end method


# virtual methods
.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 921
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 922
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->finish(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 923
    return-void
.end method

.method public handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 934
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 935
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Error;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Error;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 936
    return-void
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 941
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 942
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 943
    return-void
.end method

.method public handleHdmiConnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 954
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleHdmiConnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 961
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/16 v1, 0x280

    iput v1, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewWidth:I

    .line 962
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/16 v1, 0x1e0

    iput v1, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewHeight:I

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v1, 0x0

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupPreview(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$400(Lcom/sonyericsson/android/camera3d/SweepCameraController;Z)V

    .line 964
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startPreview(ZZ)V

    .line 966
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 967
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 948
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 950
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 928
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 929
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->finish(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 930
    return-void
.end method
