.class public Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;
.super Ljava/lang/Object;
.source "SmoothTiltingStrategy.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector$TiltingStrategy;


# static fields
.field private static final ANGLE_BOUNDS:D = 0.25

.field private static final GRAVITY:D = 9.8100004196167

.field private static final RECENTCOUNT_QUICK:I = 0x6

.field private static final RECENTCOUNT_SLOW:I = 0x18

.field private static final TAG:Ljava/lang/String; = "TiltingSmallStrategy"


# instance fields
.field private mIndexHead:I

.field private mIndexTail:I

.field private mRecentHead:I

.field private mRecentLength:I

.field private final mRecentValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    .line 60
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentHead:I

    .line 64
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    .line 73
    return-void
.end method

.method private computeAverageRecentAcceleration()F
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, count:I
    const/4 v7, 0x0

    .line 155
    .local v7, total:F
    iget v10, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    if-gtz v10, :cond_0

    .line 157
    const/4 v9, 0x0

    .line 197
    :goto_0
    return v9

    .line 159
    :cond_0
    iget v10, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    if-ne v10, v1, :cond_1

    .line 161
    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->getRecent(I)F

    move-result v9

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->getRecent(I)F

    move-result v2

    .line 166
    .local v2, first:F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->getRecent(I)F

    move-result v6

    .line 167
    .local v6, second:F
    add-int/lit8 v0, v0, 0x2

    .line 168
    add-float v10, v2, v6

    add-float/2addr v7, v10

    .line 169
    move v5, v6

    .line 170
    .local v5, prev:F
    cmpl-float v10, v6, v2

    if-lez v10, :cond_3

    move v8, v1

    .line 171
    .local v8, up:Z
    :goto_1
    cmpg-float v10, v6, v2

    if-gez v10, :cond_4

    .line 174
    .local v1, down:Z
    :goto_2
    const/4 v3, 0x2

    .local v3, i:I
    :goto_3
    iget v9, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    if-ge v3, v9, :cond_6

    .line 175
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->getRecent(I)F

    move-result v4

    .line 176
    .local v4, next:F
    add-int/lit8 v0, v0, 0x1

    .line 177
    add-float/2addr v7, v4

    .line 178
    if-eqz v8, :cond_7

    .line 179
    cmpg-float v9, v4, v5

    if-gtz v9, :cond_5

    .line 180
    const/4 v8, 0x0

    .line 194
    :cond_2
    :goto_4
    move v5, v4

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1           #down:Z
    .end local v3           #i:I
    .end local v4           #next:F
    .end local v8           #up:Z
    :cond_3
    move v8, v9

    .line 170
    goto :goto_1

    .restart local v8       #up:Z
    :cond_4
    move v1, v9

    .line 171
    goto :goto_2

    .line 181
    .restart local v1       #down:Z
    .restart local v3       #i:I
    .restart local v4       #next:F
    :cond_5
    if-lt v0, v11, :cond_2

    .line 196
    .end local v4           #next:F
    :cond_6
    :goto_5
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    .line 197
    int-to-float v9, v0

    div-float v9, v7, v9

    goto :goto_0

    .line 186
    .restart local v4       #next:F
    :cond_7
    if-eqz v1, :cond_2

    .line 187
    cmpl-float v9, v4, v5

    if-ltz v9, :cond_8

    .line 188
    const/4 v1, 0x0

    goto :goto_4

    .line 189
    :cond_8
    if-lt v0, v11, :cond_2

    goto :goto_5
.end method

.method private convertToRecentPosition(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 111
    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentHead:I

    add-int v0, v1, p1

    .line 112
    .local v0, position:I
    if-gez v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    array-length v1, v1

    add-int/2addr v0, v1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getRecent(I)F
    .locals 2
    .parameter "index"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->convertToRecentPosition(I)I

    move-result v0

    .line 131
    .local v0, position:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    aget v1, v1, v0

    return v1
.end method

.method private pushLatestAcceleration(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 140
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->convertToRecentPosition(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentHead:I

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentHead:I

    aput p1, v0, v1

    .line 142
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 143
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentValues:[F

    array-length v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    goto :goto_0
.end method


# virtual methods
.method public computeIndex(Landroid/hardware/SensorEvent;)I
    .locals 11
    .parameter "event"

    .prologue
    .line 90
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v0, v7, v8

    .line 91
    .local v0, acceleration:F
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->pushLatestAcceleration(F)V

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->computeAverageRecentAcceleration()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x40239eb860000000L

    div-double v1, v7, v9

    .line 93
    .local v1, angle:D
    const-wide/high16 v7, -0x4010

    const-wide/high16 v9, 0x3ff0

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    .line 94
    iget v7, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mIndexTail:I

    iget v8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mIndexHead:I

    sub-int/2addr v7, v8

    int-to-double v5, v7

    .line 95
    .local v5, indexBounds:D
    const-wide v7, 0x400921fb54442d18L

    div-double v7, v1, v7

    const-wide/high16 v9, 0x3fc0

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x3fd0

    div-double/2addr v7, v9

    mul-double v3, v7, v5

    .line 96
    .local v3, index:D
    iget v7, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mIndexTail:I

    int-to-double v7, v7

    sub-double v3, v7, v3

    .line 97
    const/4 v7, 0x0

    iget v8, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mIndexTail:I

    add-int/lit8 v8, v8, -0x1

    double-to-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7
.end method

.method public init(II)V
    .locals 1
    .parameter "head"
    .parameter "tail"

    .prologue
    const/4 v0, 0x0

    .line 77
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mIndexHead:I

    .line 78
    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mIndexTail:I

    .line 79
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentHead:I

    .line 80
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    .line 81
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentHead:I

    .line 85
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    .line 86
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentHead:I

    .line 103
    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/SmoothTiltingStrategy;->mRecentLength:I

    .line 104
    return-void
.end method
