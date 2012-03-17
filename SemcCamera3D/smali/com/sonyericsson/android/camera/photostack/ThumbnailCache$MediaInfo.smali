.class public Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaInfo"
.end annotation


# instance fields
.field public mExistThumbnail:Z

.field public mHeight:I

.field public mId:I

.field public mMimeType:Ljava/lang/String;

.field public mOrientation:I

.field public mOriginalPath:Ljava/lang/String;

.field public mOriginalUri:Landroid/net/Uri;

.field public mType:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnapShot()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;-><init>()V

    .line 398
    .local v0, dest:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    iput v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mId:I

    .line 399
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    iput v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    .line 400
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalUri:Landroid/net/Uri;

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOriginalPath:Ljava/lang/String;

    .line 402
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    iput v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mOrientation:I

    .line 403
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mWidth:I

    iput v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mWidth:I

    .line 404
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mHeight:I

    iput v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mHeight:I

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mMimeType:Ljava/lang/String;

    .line 406
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mExistThumbnail:Z

    .line 407
    return-object v0

    .line 405
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
