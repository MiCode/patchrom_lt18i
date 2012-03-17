.class public interface abstract Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;
.super Ljava/lang/Object;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThumbnailViewFactory"
.end annotation


# virtual methods
.method public abstract create()Landroid/view/View;
.end method

.method public abstract destroy(Landroid/view/View;)V
.end method

.method public abstract update(Landroid/view/View;Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
.end method
