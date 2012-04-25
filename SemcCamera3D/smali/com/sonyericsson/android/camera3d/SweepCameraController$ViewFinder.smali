.class Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1095
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    .line 1097
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->clear()V

    .line 1099
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v2, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->updateRemain(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->controlPhotoLight()V

    .line 1103
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupDefaultView(I)V

    .line 1109
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getHdmiConnection()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    move-result-object v0

    .line 1110
    .local v0, hdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->getHdmiState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1112
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1116
    :cond_0
    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupStitchingEngine()V
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$700(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1118
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 1119
    return-void
.end method


# virtual methods
.method public canOpenWindow()Z
    .locals 1

    .prologue
    .line 1123
    const/4 v0, 0x1

    return v0
.end method

.method public handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1149
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1151
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showAutoFocusView()V

    .line 1154
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1155
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doAutoFocus()V

    .line 1164
    :goto_0
    return-void

    .line 1158
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Preview has not started."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 1162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AF failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleKeyZoomIn(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1192
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyZoomIn(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1193
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doZoomIn()V

    .line 1194
    return-void
.end method

.method public handleKeyZoomOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1199
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyZoomOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1200
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doZoomOut()V

    .line 1201
    return-void
.end method

.method public handlePauseController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 1169
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handlePauseController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1171
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1172
    .local v0, stopPreview:Z
    if-eqz v0, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 1180
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 1181
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doResetKeyState()V

    .line 1183
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 1184
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideDefaultView(I)V

    .line 1186
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v1, v2, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1187
    return-void

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->suspend(ZZ)V

    goto :goto_0
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1129
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1133
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    check-cast p3, Landroid/view/SurfaceHolder;

    .end local p3
    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startPreview(ZZ)V

    .line 1141
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setPreviewDisplay failed and no error callback."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
