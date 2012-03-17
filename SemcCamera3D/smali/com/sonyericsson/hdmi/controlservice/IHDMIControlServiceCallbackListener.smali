.class public interface abstract Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener;
.super Ljava/lang/Object;
.source "IHDMIControlServiceCallbackListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/hdmi/controlservice/IHDMIControlServiceCallbackListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCECNotSupported()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHdmiDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHdmiTurnOnComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
