.class public abstract Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;
.super Landroid/os/Binder;
.source "IHDMIControlService.java"

# interfaces
.implements Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

.field static final TRANSACTION_addListener:I = 0x5

.field static final TRANSACTION_getAddressInfo:I = 0xa

.field static final TRANSACTION_getBootupOption:I = 0x2

.field static final TRANSACTION_getCurrentState:I = 0x4

.field static final TRANSACTION_getEdidData:I = 0x9

.field static final TRANSACTION_getHdmiStatus:I = 0x8

.field static final TRANSACTION_removeListener:I = 0x6

.field static final TRANSACTION_setAvOutputParam:I = 0x7

.field static final TRANSACTION_setBootupOption:I = 0x3

.field static final TRANSACTION_turnOnStart:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->turnOnStart()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v5, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->getBootupOption()Z

    move-result v2

    .line 61
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 70
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->setBootupOption(Z)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v3

    .line 69
    goto :goto_1

    .line 76
    :sswitch_4
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->getCurrentState()I

    move-result v2

    .line 78
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v2           #_result:I
    :sswitch_5
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;

    move-result-object v0

    .line 87
    .local v0, _arg0:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->addListener(Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;
    :sswitch_6
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->removeListener(Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    .end local v0           #_arg0:Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;
    :sswitch_7
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->setAvOutputParam(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:I
    :sswitch_8
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->getHdmiStatus()[B

    move-result-object v2

    .line 116
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 122
    .end local v2           #_result:[B
    :sswitch_9
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->getEdidData()[B

    move-result-object v2

    .line 124
    .restart local v2       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 130
    .end local v2           #_result:[B
    :sswitch_a
    const-string v3, "com.sonyericsson.hdmi.controlservice.IHDMIControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/hdmi/controlservice/IHDMIControlService$Stub;->getAddressInfo()[B

    move-result-object v2

    .line 132
    .restart local v2       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
