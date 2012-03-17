.class Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;
.super Ljava/lang/Object;
.source "ThumbnailAdapter.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->reload(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 1
    .parameter "sender"
    .parameter "index"
    .parameter "thumb"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->access$100(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->mListener:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->access$100(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;->onLoaded(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    .line 245
    :cond_0
    return-void
.end method
