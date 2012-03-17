.class Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field protected mCount:I

.field protected mHead:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "head"
    .parameter "count"

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;->mHead:I

    .line 568
    iput p2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;->mCount:I

    .line 569
    return-void
.end method


# virtual methods
.method public inner(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 572
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;->mHead:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;->mHead:I

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;->mCount:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lower(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 576
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Bounds;->mHead:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
