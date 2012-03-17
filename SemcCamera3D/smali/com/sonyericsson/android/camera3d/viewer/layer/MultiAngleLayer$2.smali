.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;
.super Ljava/lang/Object;
.source "MultiAngleLayer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onCloseDialog()V

    .line 398
    :cond_0
    return-void
.end method

.method public onDelAll(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->delete(Z)V

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onCloseDialog()V

    .line 413
    :cond_0
    return-void
.end method

.method public onDelThisFile(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->delete(Z)V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onCloseDialog()V

    .line 421
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onCloseDialog()V

    .line 405
    :cond_0
    return-void
.end method
