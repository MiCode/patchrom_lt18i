.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;
.super Ljava/lang/Object;
.source "MpoThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbnailDecodeTask"
.end annotation


# instance fields
.field public final mIndex:I

.field public final mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;)V
    .locals 1
    .parameter
    .parameter "request"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget v0, p2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mIndex:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;->mIndex:I

    .line 92
    iget-object v0, p2, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;->mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;->mIndex:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader$ThumbnailDecodeTask;->mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->decodeThumbnail(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;->access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoThumbnailLoader;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    .line 97
    return-void
.end method
