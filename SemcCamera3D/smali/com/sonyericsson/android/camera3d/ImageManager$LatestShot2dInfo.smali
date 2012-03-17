.class public Lcom/sonyericsson/android/camera3d/ImageManager$LatestShot2dInfo;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatestShot2dInfo"
.end annotation


# instance fields
.field public final mId:I

.field public final mOrientation:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "id"
    .parameter "orientation"

    .prologue
    .line 3302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3303
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LatestShot2dInfo;->mId:I

    .line 3304
    iput p2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$LatestShot2dInfo;->mOrientation:I

    .line 3305
    return-void
.end method
