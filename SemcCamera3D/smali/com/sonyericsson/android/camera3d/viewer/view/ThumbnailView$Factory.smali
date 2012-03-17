.class Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView$Factory;
.super Ljava/lang/Object;
.source "ThumbnailView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView$Factory;->mContext:Landroid/content/Context;

    .line 182
    return-void
.end method


# virtual methods
.method public create()Landroid/view/View;
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView$Factory;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 189
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public destroy(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 193
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;

    .line 194
    .local v0, thumbnailView:Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->resetThumbnail()V

    .line 197
    :cond_0
    return-void
.end method

.method public update(Landroid/view/View;Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 1
    .parameter "view"
    .parameter "thumbnail"

    .prologue
    .line 203
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;

    .line 204
    .local v0, thumbnailView:Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->setThumbnail(Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    .line 207
    :cond_0
    return-void
.end method
