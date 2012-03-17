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
    .line 914
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method

.method private finish(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 917
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 918
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 919
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 920
    return-void
.end method


# virtual methods
.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 925
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 926
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->finish(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 927
    return-void
.end method

.method public handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 938
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 939
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Error;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Error;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 940
    return-void
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 945
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 946
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 947
    return-void
.end method

.method public handleHdmiConnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 958
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleHdmiConnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 964
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/16 v1, 0x280

    iput v1, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewWidth:I

    .line 966
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/16 v1, 0x1e0

    iput v1, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewHeight:I

    .line 967
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v1, 0x0

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupPreview(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$400(Lcom/sonyericsson/android/camera3d/SweepCameraController;Z)V

    .line 968
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startPreview(ZZ)V

    .line 970
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 971
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 952
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 953
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 954
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 932
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 933
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->finish(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 934
    return-void
.end method
