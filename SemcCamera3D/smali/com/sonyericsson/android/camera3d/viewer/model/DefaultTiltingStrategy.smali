.class public Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;
.super Ljava/lang/Object;
.source "DefaultTiltingStrategy.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;


# instance fields
.field private mIndexHead:I

.field private mIndexTail:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeIndex(Landroid/hardware/SensorEvent;)I
    .locals 5
    .parameter "event"

    .prologue
    .line 37
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 38
    .local v1, tilt:F
    const/high16 v2, 0x4040

    add-float/2addr v2, v1

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;->mIndexTail:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;->mIndexHead:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c0

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 39
    .local v0, target:I
    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;->mIndexTail:I

    sub-int v0, v2, v0

    .line 40
    const/4 v2, 0x0

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;->mIndexTail:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 41
    return v0
.end method

.method public init(II)V
    .locals 0
    .parameter "head"
    .parameter "tail"

    .prologue
    .line 29
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;->mIndexHead:I

    .line 30
    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/DefaultTiltingStrategy;->mIndexTail:I

    .line 31
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
