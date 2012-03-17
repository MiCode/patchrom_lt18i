.class public Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureSize"
.end annotation


# instance fields
.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mWidth:I

    .line 933
    iput p2, p0, Lcom/sonyericsson/android/camera3d/CameraConfig$PictureSize;->mHeight:I

    .line 934
    return-void
.end method
