.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;
.super Ljava/lang/Object;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailLoadRequest"
.end annotation


# instance fields
.field public mIndex:I

.field public mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;


# direct methods
.method public constructor <init>(ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 0
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;->mIndex:I

    .line 1059
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$ThumbnailLoadRequest;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 1060
    return-void
.end method
