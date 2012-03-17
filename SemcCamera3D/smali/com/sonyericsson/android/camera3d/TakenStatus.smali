.class public Lcom/sonyericsson/android/camera3d/TakenStatus;
.super Ljava/lang/Object;
.source "TakenStatus.java"


# instance fields
.field public final mDate:J

.field public final mLocation:Landroid/location/Location;

.field public mOrientation:I

.field public final mOrientationMode:I

.field public mPictureHeight:I

.field public mPictureWidth:I

.field public mRequestId:I

.field public final mRotation:I

.field public final mScene:I


# direct methods
.method public constructor <init>(JIIIILandroid/location/Location;II)V
    .locals 1
    .parameter "date"
    .parameter "scene"
    .parameter "orientationMode"
    .parameter "orientation"
    .parameter "rotation"
    .parameter "location"
    .parameter "pictureWidth"
    .parameter "pictureHeight"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    .line 75
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    .line 76
    iput p3, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mScene:I

    .line 77
    iput p5, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    .line 78
    iput p4, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientationMode:I

    .line 79
    iput p6, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRotation:I

    .line 80
    iput-object p7, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    .line 81
    iput p8, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureWidth:I

    .line 82
    iput p9, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureHeight:I

    .line 83
    return-void
.end method


# virtual methods
.method protected deepCopy()Lcom/sonyericsson/android/camera3d/TakenStatus;
    .locals 10

    .prologue
    .line 87
    const/4 v7, 0x0

    .line 88
    .local v7, cloneLocation:Landroid/location/Location;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 89
    new-instance v7, Landroid/location/Location;

    .end local v7           #cloneLocation:Landroid/location/Location;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    invoke-direct {v7, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 92
    .restart local v7       #cloneLocation:Landroid/location/Location;
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    iget v3, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mScene:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientationMode:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    iget v6, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRotation:I

    iget v8, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureWidth:I

    iget v9, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mPictureHeight:I

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera3d/TakenStatus;-><init>(JIIIILandroid/location/Location;II)V

    .line 96
    .local v0, copiedTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;
    iget v1, p0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    iput v1, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    .line 98
    return-object v0
.end method
