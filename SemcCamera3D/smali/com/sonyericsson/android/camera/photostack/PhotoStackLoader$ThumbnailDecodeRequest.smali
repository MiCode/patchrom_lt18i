.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;
.super Ljava/lang/Object;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailDecodeRequest"
.end annotation


# instance fields
.field public mIndex:I

.field public mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;)V
    .locals 1
    .parameter "loadRequest"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iget v0, p1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;->mIndex:I

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;->mIndex:I

    .line 182
    iget-object v0, p1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailDecodeRequest;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 183
    return-void
.end method
