.class public abstract Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;
.super Ljava/lang/Object;
.source "AppEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppEventReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final notifyChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 0
    .parameter "sender"
    .parameter "mode"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 42
    return-void
.end method

.method public final notifyChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V
    .locals 0
    .parameter "sender"
    .parameter "enable"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->onChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V

    .line 47
    return-void
.end method

.method public final notifyFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V

    .line 57
    return-void
.end method

.method public final notifyPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 37
    return-void
.end method

.method public final notifyResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    .line 32
    return-void
.end method

.method public final notifyStartScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->onStartScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V

    .line 52
    return-void
.end method

.method public final notifyTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V
    .locals 0
    .parameter "sender"
    .parameter "current"

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppEventReceiver;->onTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V

    .line 62
    return-void
.end method

.method protected onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 0
    .parameter "sender"
    .parameter "mode"

    .prologue
    .line 69
    return-void
.end method

.method protected onChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V
    .locals 0
    .parameter "sender"
    .parameter "enable"

    .prologue
    .line 71
    return-void
.end method

.method protected onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 75
    return-void
.end method

.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 67
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 65
    return-void
.end method

.method protected onStartScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 73
    return-void
.end method

.method protected onTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V
    .locals 0
    .parameter "sender"
    .parameter "current"

    .prologue
    .line 77
    return-void
.end method
