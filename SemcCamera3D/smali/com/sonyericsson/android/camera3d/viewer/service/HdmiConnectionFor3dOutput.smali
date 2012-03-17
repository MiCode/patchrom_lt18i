.class public Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;
.super Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
.source "HdmiConnectionFor3dOutput.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;,
        Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;
    }
.end annotation


# static fields
.field private static final DISPLAY_DURATION:I = 0x7d0

.field private static HDMI_3D_FORMAT:Ljava/lang/String; = null

.field private static final MESSAGE_ALERT_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiConnectionFor3dOutput"


# instance fields
.field private mAlertDisplayed:Z

.field private mContextReference:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private final mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

.field private mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

.field private mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field private mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "HDMI_3D_Format"

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->HDMI_3D_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mContextReference:Landroid/content/Context;

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_NONE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 62
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    .line 76
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_SUPPORT_HDMI:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mAlertDisplayed:Z

    .line 328
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHandler:Landroid/os/Handler;

    .line 201
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mContextReference:Landroid/content/Context;

    .line 202
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mContextReference:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->setHdmiConnectionListener(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;)V

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

    return-object v0
.end method

.method private checkTVOutputMode()V
    .locals 4

    .prologue
    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->getIHDMIControlService()Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;->getEdidData()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    .local v1, edidDate:[B
    if-nez v1, :cond_0

    .line 304
    .end local v1           #edidDate:[B
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 278
    .local v0, e1:Landroid/os/RemoteException;
    goto :goto_0

    .line 285
    .end local v0           #e1:Landroid/os/RemoteException;
    .restart local v1       #edidDate:[B
    :cond_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v1, v3

    .line 287
    .local v2, lastByte:B
    and-int/lit8 v3, v2, 0x4

    if-lez v3, :cond_1

    .line 292
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_SIDE_BY_SIDE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    goto :goto_0

    .line 293
    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_2

    .line 295
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_TOP_AND_BOTTOM:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    goto :goto_0

    .line 296
    :cond_2
    and-int/lit8 v3, v2, 0x1

    if-lez v3, :cond_3

    .line 298
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    goto :goto_0

    .line 300
    :cond_3
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_NONE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    goto :goto_0
.end method

.method private start3DOutputWithAlert()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 312
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 315
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mAlertDisplayed:Z

    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mContextReference:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    .line 323
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    return-void
.end method

.method private startHdmiCtrlService()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_3D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v1, v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->startHdmiService()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    move-result-object v0

    .line 357
    .local v0, connectionResult:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->FAILED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    if-ne v0, v1, :cond_2

    .line 358
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_SUPPORT_HDMI:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_0

    .line 359
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->SUCCEEDED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    if-ne v0, v1, :cond_0

    .line 360
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_BIND_SUCCESS:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_0
.end method


# virtual methods
.method public getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    return-object v0
.end method

.method public getServiceState()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    return-object v0
.end method

.method public isOutput3d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v1, v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_3D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-eq v1, v2, :cond_0

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHdmiConnected()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->checkTVOutputMode()V

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;->onHdmiConnected()V

    .line 374
    return-void
.end method

.method public onHdmiDisconnected()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;->onHdmiDisconnected()V

    .line 381
    return-void
.end method

.method public onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 2
    .parameter "dataStore"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_SUPPORT_HDMI:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    if-ne v0, v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->isOutput3d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->set3DTVOutput(Z)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->finishService()V

    .line 224
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_BIND:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_0
.end method

.method public onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->startHdmiCtrlService()V

    .line 231
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->release()V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mContextReference:Landroid/content/Context;

    .line 244
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

    .line 245
    return-void
.end method

.method public set3DTVOutput(Z)V
    .locals 5
    .parameter "onOffFlag"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->getHdmiState()I

    move-result v2

    .line 117
    .local v2, stat:I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_NONE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    if-eq v3, v4, :cond_0

    .line 130
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mAlertDisplayed:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    if-eq v3, v4, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->start3DOutputWithAlert()V

    goto :goto_0

    .line 139
    :cond_2
    if-eqz p1, :cond_6

    .line 141
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_SIDE_BY_SIDE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    if-ne v3, v4, :cond_4

    .line 146
    const/4 v1, 0x2

    .line 147
    .local v1, param:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 170
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 173
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mDialog:Landroid/app/Dialog;

    .line 178
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->getIHDMIControlService()Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->HDMI_3D_FORMAT:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;->setAvOutputParam(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    if-nez v1, :cond_7

    .line 188
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_2D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_0

    .line 148
    .end local v1           #param:I
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_TOP_AND_BOTTOM:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    if-ne v3, v4, :cond_5

    .line 150
    const/4 v1, 0x3

    .line 151
    .restart local v1       #param:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_1

    .line 152
    .end local v1           #param:I
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    if-ne v3, v4, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 156
    .restart local v1       #param:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_2D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_1

    .line 165
    .end local v1           #param:I
    :cond_6
    const/4 v1, 0x0

    .line 166
    .restart local v1       #param:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_2D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 190
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_3D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mServiceState:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    goto :goto_0
.end method

.method public setHdmiConnectionListenerFor3dOutput(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const-string v0, "HdmiConnectionFor3dOutput"

    const-string v1, "set null listener for 3d"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mHdmiConnectionListener:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$HdmiConnectionListenerFor3dOutput;

    goto :goto_0
.end method

.method public setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 0
    .parameter "outputMode"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;->mOutputMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 254
    return-void
.end method
