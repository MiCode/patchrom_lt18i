.class public interface abstract Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;
.super Ljava/lang/Object;
.source "PhotoStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoStackStateListener"
.end annotation


# virtual methods
.method public abstract onChangedPhotoStackState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V
.end method

.method public abstract onClosePhotoStackMenu()V
.end method

.method public abstract onHidePhotoStackDialog()V
.end method

.method public abstract onLaunchApplication()V
.end method

.method public abstract onLoadThumbnail(I)V
.end method

.method public abstract onOpenPhotoStackMenu()V
.end method

.method public abstract onShowPhotoStackDialog()V
.end method
