.class public Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$ThumbnailIndexBounds;
.super Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$Bounds;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailIndexBounds"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "headIndex"
    .parameter "count"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$Bounds;-><init>(II)V

    .line 403
    return-void
.end method


# virtual methods
.method public bridge synthetic inner(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$Bounds;->inner(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lower(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailCache$Bounds;->lower(I)Z

    move-result v0

    return v0
.end method
