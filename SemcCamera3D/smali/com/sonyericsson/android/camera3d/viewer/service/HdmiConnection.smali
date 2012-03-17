.class public Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;
.super Ljava/lang/Object;
.source "HdmiConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;,
        Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    }
.end annotation


# static fields
.field public static final HDMI_CONNECTED:I = 0x2

.field public static final HDMI_DISCONNECTED:I = 0x3

.field public static final HDMI_IN_USE:I = 0x6

.field public static final HDMI_NOT_CONNECTED:I = 0x1

.field public static final HDMI_READY:I = 0x5

.field public static final HDMI_READY_FOR_EDID:I = 0x4

.field private static final HDMI_SERVICE_ACTION:Ljava/lang/String; = "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

.field public static final HDMI_STATE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdmiConnection"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

.field private mContext:Landroid/content/Context;

.field private mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

.field private mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 110
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->NOT_STARTED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mContext:Landroid/content/Context;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    return-object v0
.end method

.method private registerHdmiBroadcastReceiver()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.intent.action.HDMI_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    return-void
.end method


# virtual methods
.method public finishService()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 257
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->NOT_STARTED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    .line 258
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHdmiState()I
    .locals 4

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, hdmiState:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    if-eqz v2, :cond_0

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    invoke-interface {v2}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;->getCurrentState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HdmiConnection"

    const-string v3, "get state failed"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIHDMIControlService()Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    .line 180
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mHDMICtrlService:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    .line 181
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mContext:Landroid/content/Context;

    .line 182
    return-void
.end method

.method public setHdmiConnectionListener(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;

    .line 190
    return-void
.end method

.method public startHdmiService()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;
    .locals 6

    .prologue
    .line 211
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->NOT_STARTED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    if-eq v3, v4, :cond_0

    .line 212
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    .line 235
    :goto_0
    return-object v3

    .line 216
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 222
    .local v0, bindHdmiServiceResult:Z
    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->registerHdmiBroadcastReceiver()V

    .line 226
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->SUCCEEDED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0           #bindHdmiServiceResult:Z
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    goto :goto_0

    .line 228
    .restart local v0       #bindHdmiServiceResult:Z
    :cond_1
    :try_start_1
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->FAILED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 230
    .end local v0           #bindHdmiServiceResult:Z
    :catch_0
    move-exception v1

    .line 232
    .local v1, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->FAILED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->mConnectionStatus:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    goto :goto_1
.end method
