.class public interface abstract Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
.super Ljava/lang/Object;
.source "StorageEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageEventListener"
.end annotation


# virtual methods
.method public abstract onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
.end method

.method public abstract onMounted(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Ljava/lang/String;)V
.end method

.method public abstract onUnmounted(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Ljava/lang/String;)V
.end method
