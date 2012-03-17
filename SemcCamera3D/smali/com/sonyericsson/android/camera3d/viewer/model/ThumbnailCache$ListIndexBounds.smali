.class Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;
.super Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$Bounds;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListIndexBounds"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;II)V
    .locals 0
    .parameter
    .parameter "headIndex"
    .parameter "count"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    .line 411
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$Bounds;-><init>(II)V

    .line 412
    return-void
.end method


# virtual methods
.method public toThumbnailIndexBounds()Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    .locals 3

    .prologue
    .line 415
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->mBounds:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;->access$000(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;)Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;->mHead:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;->mHead:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ListIndexBounds;->mCount:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;-><init>(II)V

    return-object v0
.end method
