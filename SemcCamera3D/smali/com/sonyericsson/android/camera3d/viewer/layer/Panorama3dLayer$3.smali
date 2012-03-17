.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$3;
.super Ljava/lang/Object;
.source "Panorama3dLayer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onCloseDialog()V

    .line 524
    :cond_0
    return-void
.end method
