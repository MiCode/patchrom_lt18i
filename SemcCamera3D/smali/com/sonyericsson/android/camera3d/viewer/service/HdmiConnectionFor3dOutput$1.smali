.class Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$1;
.super Landroid/os/Handler;
.source "HdmiConnectionFor3dOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 340
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;->on3dInformationDialogTimeout()V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
