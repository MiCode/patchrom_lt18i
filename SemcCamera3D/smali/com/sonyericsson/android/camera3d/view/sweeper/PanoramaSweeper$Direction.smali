.class public Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;
.super Ljava/lang/Object;
.source "PanoramaSweeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Direction"
.end annotation


# instance fields
.field mHorizontal:Z

.field mReverse:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .parameter "horizontal"
    .parameter "reverse"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;->mHorizontal:Z

    .line 63
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;->mReverse:Z

    .line 64
    return-void
.end method


# virtual methods
.method public isHorizontal()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;->mHorizontal:Z

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;->mReverse:Z

    return v0
.end method
