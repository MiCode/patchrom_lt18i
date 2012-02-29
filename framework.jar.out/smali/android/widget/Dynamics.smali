.class public abstract Landroid/widget/Dynamics;
.super Ljava/lang/Object;
.source "Dynamics.java"


# static fields
.field private static final DEFAULT_VELOCITY_FACTOR:F = 4.0f

.field private static final MAX_TIMESTEP:I = 0x32


# instance fields
.field protected mLastTime:J

.field protected mMaxPosition:F

.field protected mMinPosition:F

.field protected mPosition:F

.field protected mVelocity:F

.field private final mVelocityFactor:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/high16 v0, 0x4080

    invoke-direct {p0, v0}, Landroid/widget/Dynamics;-><init>(F)V

    .line 53
    return-void
.end method

.method protected constructor <init>(F)V
    .locals 2
    .parameter "velocityFactor"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 43
    const v0, -0x800001

    iput v0, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 61
    iput p1, p0, Landroid/widget/Dynamics;->mVelocityFactor:F

    .line 62
    return-void
.end method


# virtual methods
.method protected getDistanceToLimit()F
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, distanceToLimit:F
    iget v1, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 163
    iget v1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget v1, p0, Landroid/widget/Dynamics;->mPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 165
    iget v1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/widget/Dynamics;->mPosition:F

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/widget/Dynamics;->mVelocity:F

    return v0
.end method

.method public isAtRest(FF)Z
    .locals 6
    .parameter "velocityTolerance"
    .parameter "positionTolerance"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    iget v2, p0, Landroid/widget/Dynamics;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    move v0, v5

    .line 111
    .local v0, standingStill:Z
    :goto_0
    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    sub-float/2addr v2, p2

    iget v3, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Landroid/widget/Dynamics;->mPosition:F

    add-float/2addr v2, p2

    iget v3, p0, Landroid/widget/Dynamics;->mMinPosition:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v1, v5

    .line 113
    .local v1, withinLimits:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v2, v5

    :goto_2
    return v2

    .end local v0           #standingStill:Z
    .end local v1           #withinLimits:Z
    :cond_0
    move v0, v4

    .line 110
    goto :goto_0

    .restart local v0       #standingStill:Z
    :cond_1
    move v1, v4

    .line 111
    goto :goto_1

    .restart local v1       #withinLimits:Z
    :cond_2
    move v2, v4

    .line 113
    goto :goto_2
.end method

.method protected abstract onUpdate(I)V
.end method

.method public setMaxPosition(F)V
    .locals 0
    .parameter "maxPosition"

    .prologue
    .line 122
    iput p1, p0, Landroid/widget/Dynamics;->mMaxPosition:F

    .line 123
    return-void
.end method

.method public setMinPosition(F)V
    .locals 0
    .parameter "minPosition"

    .prologue
    .line 131
    iput p1, p0, Landroid/widget/Dynamics;->mMinPosition:F

    .line 132
    return-void
.end method

.method public setState(FFJ)V
    .locals 1
    .parameter "position"
    .parameter "velocity"
    .parameter "now"

    .prologue
    .line 73
    iget v0, p0, Landroid/widget/Dynamics;->mVelocityFactor:F

    mul-float/2addr v0, p2

    iput v0, p0, Landroid/widget/Dynamics;->mVelocity:F

    .line 74
    iput p1, p0, Landroid/widget/Dynamics;->mPosition:F

    .line 75
    iput-wide p3, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 76
    return-void
.end method

.method public update(J)V
    .locals 4
    .parameter "now"

    .prologue
    const/16 v3, 0x32

    .line 140
    iget-wide v1, p0, Landroid/widget/Dynamics;->mLastTime:J

    sub-long v1, p1, v1

    long-to-int v0, v1

    .line 141
    .local v0, dt:I
    if-le v0, v3, :cond_1

    .line 142
    const/16 v0, 0x32

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Dynamics;->onUpdate(I)V

    .line 149
    iput-wide p1, p0, Landroid/widget/Dynamics;->mLastTime:J

    .line 150
    return-void

    .line 143
    :cond_1
    if-ne v0, v3, :cond_0

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method
