.class public interface abstract Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StoreDataCallback"
.end annotation


# virtual methods
.method public abstract onStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract onStoreProgress(II)V
.end method
