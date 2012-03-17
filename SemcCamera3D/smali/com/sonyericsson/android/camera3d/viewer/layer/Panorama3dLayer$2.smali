.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;
.super Ljava/lang/Object;
.source "Panorama3dLayer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;


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
    .line 484
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onCloseDialog()V

    .line 490
    :cond_0
    return-void
.end method

.method public onDelAll(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->delete(Z)V

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onCloseDialog()V

    .line 505
    :cond_0
    return-void
.end method

.method public onDelThisFile(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->delete(Z)V

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onCloseDialog()V

    .line 513
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->closeDialogs()V

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onCloseDialog()V

    .line 497
    :cond_0
    return-void
.end method
