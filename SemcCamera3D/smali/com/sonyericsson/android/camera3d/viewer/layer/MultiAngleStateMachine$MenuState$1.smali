.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState$1;
.super Landroid/os/Handler;
.source "MultiAngleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->onTimeout()V

    .line 515
    return-void
.end method
