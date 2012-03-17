.class public interface abstract Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;
.super Ljava/lang/Object;
.source "PhotoStackMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoStackMenuListener"
.end annotation


# virtual methods
.method public abstract onHidePhotoStackDialog()V
.end method

.method public abstract onPerformDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
.end method

.method public abstract onPerformShare(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
.end method

.method public abstract onPerformView(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
.end method

.method public abstract onSelectShareStart(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
.end method

.method public abstract onShowPhotoStackDialog()V
.end method
