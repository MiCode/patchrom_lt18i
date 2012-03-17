.class public Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;
.super Ljava/lang/Object;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailLoadRequest"
.end annotation


# instance fields
.field public mIndex:I

.field public mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;


# direct methods
.method public constructor <init>(ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 0
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mIndex:I

    .line 98
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoadRequest;->mThumbnail:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;

    .line 99
    return-void
.end method
