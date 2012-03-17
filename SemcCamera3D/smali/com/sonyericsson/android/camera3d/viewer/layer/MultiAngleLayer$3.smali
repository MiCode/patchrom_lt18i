.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$3;
.super Ljava/lang/Object;
.source "MultiAngleLayer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;


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
    .line 425
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$3;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onCloseDialog()V

    .line 430
    :cond_0
    return-void
.end method
