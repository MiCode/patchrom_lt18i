.class public abstract Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;
.super Ljava/lang/Object;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMediaCount()I
.end method

.method protected notifyLoaded(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 1
    .parameter "index"
    .parameter "thumb"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;->onLoaded(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    .line 139
    :cond_0
    return-void
.end method

.method public abstract request(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;",
            ">;)V"
        }
    .end annotation
.end method

.method protected setListener(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    .line 131
    return-void
.end method
