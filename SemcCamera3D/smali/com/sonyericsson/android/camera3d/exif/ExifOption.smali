.class public Lcom/sonyericsson/android/camera3d/exif/ExifOption;
.super Ljava/lang/Object;
.source "ExifOption.java"


# instance fields
.field public mDateTime:Ljava/lang/String;

.field public mGPSOption:Landroid/location/Location;

.field public mModel:Ljava/lang/String;

.field public mOrientation:I

.field public mPixelXDimension:J

.field public mPixelYDimension:J

.field public mThumbnailData:[B

.field public mThumbnailDataLength:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/exif/ExifOption;->mOrientation:I

    return-void
.end method
