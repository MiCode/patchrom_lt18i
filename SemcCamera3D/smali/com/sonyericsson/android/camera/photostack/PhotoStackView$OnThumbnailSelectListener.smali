.class public interface abstract Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;
.super Ljava/lang/Object;
.source "PhotoStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnThumbnailSelectListener"
.end annotation


# virtual methods
.method public abstract onThumbnailDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
.end method

.method public abstract onThumbnailSelect(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
.end method

.method public abstract onThumbnailShare(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
.end method

.method public abstract onThumbnailShareStart(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
.end method
