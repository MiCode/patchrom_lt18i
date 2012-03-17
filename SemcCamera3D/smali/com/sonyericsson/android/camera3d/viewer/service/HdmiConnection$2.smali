.class Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;
.super Landroid/content/BroadcastReceiver;
.source "HdmiConnection.java"


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
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, extra:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 128
    const-string v2, "HdmiConnection"

    const-string v3, "invalidate indent, extra is null"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_2
    const-string v2, "com.sonyericsson.intent.extra.HDMI_STATE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, hdmiIntentExtra:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 134
    const-string v2, "HdmiConnection"

    const-string v3, "invalid extra, get Hdmi.EXTRA_HDMI_STATE returns null"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_3
    const-string v2, "HDMI_IN_USE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;->onHdmiConnected()V

    goto :goto_0

    .line 141
    :cond_4
    const-string v2, "HDMI_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;->onHdmiDisconnected()V

    goto :goto_0

    .line 145
    :cond_5
    const-string v2, "HdmiConnection"

    const-string v3, "invalidate indent, extra value ="

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
