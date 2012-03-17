.class Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;
.super Ljava/lang/Object;
.source "HdmiConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-static {p2}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    move-result-object v2

    #setter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$002(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->getHdmiState()I

    move-result v0

    .line 81
    .local v0, stat:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;->onHdmiDisconnected()V

    .line 92
    .end local v0           #stat:I
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 96
    const-string v0, "HdmiConnection"

    const-string v1, "onServiceDisconnected is called"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$002(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;->onHdmiDisconnected()V

    .line 101
    :cond_0
    return-void
.end method
