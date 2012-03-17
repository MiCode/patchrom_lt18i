.class Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;
.super Ljava/lang/Object;
.source "ScrollableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Distance"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 288
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    .line 289
    return-void
.end method
