.class Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;
.super Ljava/lang/Object;
.source "ThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibleBounds"
.end annotation


# instance fields
.field public mHead:I

.field private mNowMovingLeft:Z

.field private mNowMovingRight:Z

.field public mTail:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    .line 53
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    .line 54
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingLeft:Z

    .line 55
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingRight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingLeft:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingRight:Z

    return p1
.end method


# virtual methods
.method public nowMovingLeft()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingLeft:Z

    return v0
.end method

.method public nowMovingRight()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingRight:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    .line 75
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    .line 76
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingLeft:Z

    .line 77
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingRight:Z

    .line 78
    return-void
.end method

.method public update(II)Z
    .locals 4
    .parameter "headPosition"
    .parameter "tailPosition"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    if-eq v3, p2, :cond_2

    :cond_0
    move v0, v2

    .line 60
    .local v0, update:Z
    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    if-ge p1, v3, :cond_3

    .line 61
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingLeft:Z

    .line 62
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingRight:Z

    .line 68
    :cond_1
    :goto_1
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mHead:I

    .line 69
    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    .line 70
    return v0

    .end local v0           #update:Z
    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    .line 63
    .restart local v0       #update:Z
    :cond_3
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mTail:I

    if-le p2, v3, :cond_1

    .line 64
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingLeft:Z

    .line 65
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$VisibleBounds;->mNowMovingRight:Z

    goto :goto_1
.end method
