.class public Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;
.super Ljava/lang/Object;
.source "MeasurePerformance2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$1;,
        Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;,
        Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;,
        Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;
    }
.end annotation


# static fields
.field private static final FILE:Ljava/lang/String; = "camera_perform.csv"

.field private static final MAX_PERFORMANCE_TYPE:I = 0x5

.field public static final MEASURE_END:I = 0x2

.field public static final MEASURE_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MeasurePerformance2"

.field private static mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

.field private static mResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

.field private static sMemoryFlag:Z

.field private static sTimerFlag:Z


# instance fields
.field private originalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sTimerFlag:Z

    .line 44
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sMemoryFlag:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mTimeList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mResourceList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sInstance:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->init()V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->originalTime:J

    .line 87
    return-void
.end method

.method public static getAverage(I)D
    .locals 5
    .parameter "type"

    .prologue
    .line 358
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    aget-object v0, v1, p0

    .line 359
    .local v0, target:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;
    iget-wide v1, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfDifference:D

    iget v3, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMeasuredCount:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static getMax(I)D
    .locals 3
    .parameter "type"

    .prologue
    .line 368
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    aget-object v0, v1, p0

    .line 369
    .local v0, target:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;
    iget-wide v1, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMax:J

    long-to-double v1, v1

    return-wide v1
.end method

.method public static getMin(I)D
    .locals 3
    .parameter "type"

    .prologue
    .line 373
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    aget-object v0, v1, p0

    .line 374
    .local v0, target:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;
    iget-wide v1, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMin:J

    long-to-double v1, v1

    return-wide v1
.end method

.method public static getResult(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "type"
    .parameter "format"

    .prologue
    const-wide v6, 0x408f400000000000L

    .line 378
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getAverage(I)D

    move-result-wide v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getMax(I)D

    move-result-wide v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getMin(I)D

    move-result-wide v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getSampleVariance(I)D

    move-result-wide v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, res:Ljava/lang/String;
    return-object v0
.end method

.method public static getSampleVariance(I)D
    .locals 7
    .parameter "type"

    .prologue
    .line 363
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    aget-object v0, v1, p0

    .line 364
    .local v0, target:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;
    iget-wide v1, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfSquareDifference:D

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->getAverage(I)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    return-wide v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    sget-object v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-static {}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->resetMeasuredResults()V

    .line 94
    return-void
.end method

.method public static measure(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 353
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureEndTo(I)V

    .line 354
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureStartFrom(I)V

    .line 355
    return-void
.end method

.method public static measureEndTo(I)V
    .locals 11
    .parameter "type"

    .prologue
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 332
    .local v0, current:J
    sget-object v5, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    aget-object v4, v5, p0

    .line 334
    .local v4, target:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;
    iget-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mPreviousMeasuredTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mPreviousMeasuredTime:J

    sub-long v2, v0, v5

    .line 339
    .local v2, diff:J
    iget-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfDifference:D

    long-to-double v7, v2

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfDifference:D

    .line 340
    iget-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfSquareDifference:D

    long-to-double v7, v2

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfSquareDifference:D

    .line 341
    iget v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMeasuredCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMeasuredCount:I

    .line 342
    iget-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMax:J

    cmp-long v5, v5, v2

    if-gtz v5, :cond_2

    .line 343
    iput-wide v2, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMax:J

    .line 345
    :cond_2
    iget-wide v5, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMin:J

    cmp-long v5, v5, v2

    if-ltz v5, :cond_0

    .line 346
    iput-wide v2, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMin:J

    goto :goto_0
.end method

.method public static final measureResource(I)V
    .locals 7
    .parameter "aId"

    .prologue
    .line 161
    sget-boolean v6, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sMemoryFlag:Z

    if-nez v6, :cond_0

    .line 174
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;-><init>(Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$1;)V

    .line 166
    .local v2, resource:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 167
    .local v3, runtime:Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 168
    .local v4, totalMem:J
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 171
    .local v0, freeMem:J
    iput-wide v4, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mTotalMemory:J

    .line 172
    iput-wide v0, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mFreeMemory:J

    .line 173
    sget-object v6, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final measureResource(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 178
    sget-boolean v6, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sMemoryFlag:Z

    if-nez v6, :cond_0

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;-><init>(Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$1;)V

    .line 182
    .local v2, resource:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 183
    .local v3, runtime:Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 184
    .local v4, totalMem:J
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 186
    .local v0, freeMem:J
    iput-object p0, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mTag:Ljava/lang/String;

    .line 187
    iput-wide v4, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mTotalMemory:J

    .line 188
    iput-wide v0, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mFreeMemory:J

    .line 189
    sget-object v6, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static measureStartFrom(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 326
    .local v0, current:J
    sget-object v3, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    aget-object v2, v3, p0

    .line 327
    .local v2, target:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;
    iput-wide v0, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mPreviousMeasuredTime:J

    .line 328
    return-void
.end method

.method public static final measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;ILjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "aKind"
    .parameter "comment"

    .prologue
    .line 125
    sget-boolean v3, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sTimerFlag:Z

    if-nez v3, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, sysTime:J
    new-instance v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;-><init>(Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$1;)V

    .line 132
    .local v2, time:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;
    iput-object p0, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    .line 133
    iput-object p2, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mAdditionalInfo:Ljava/lang/String;

    .line 134
    iput-wide v0, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mTime:J

    .line 135
    iput p1, v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mKind:I

    .line 136
    sget-object v3, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V
    .locals 2
    .parameter "id"
    .parameter "isStart"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;ILjava/lang/String;)V

    .line 157
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static final measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;ZLjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "isStart"
    .parameter "comment"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;ILjava/lang/String;)V

    .line 148
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static final outResult()V
    .locals 3

    .prologue
    .line 195
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sTimerFlag:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sMemoryFlag:Z

    if-nez v1, :cond_0

    .line 210
    .local v0, string:Ljava/lang/String;
    :goto_0
    return-void

    .line 199
    .end local v0           #string:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .line 201
    .restart local v0       #string:Ljava/lang/String;
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sTimerFlag:Z

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sInstance:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->setResultTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sMemoryFlag:Z

    if-eqz v1, :cond_2

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sInstance:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->setResultResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sInstance:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->writeFile(Ljava/lang/String;)V

    .line 209
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sInstance:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->init()V

    goto :goto_0
.end method

.method public static resetMeasuredResults()V
    .locals 4

    .prologue
    .line 101
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    sput-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    sget-object v1, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mPerformanceData:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    new-instance v2, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;-><init>(Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$1;)V

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public static final setMemoryFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 120
    sput-boolean p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sMemoryFlag:Z

    .line 121
    return-void
.end method

.method private setResultResource()Ljava/lang/String;
    .locals 12

    .prologue
    .line 257
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v4, string:Ljava/lang/StringBuffer;
    const-string v10, "---Measure Resource Start---\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const-string v10, "ID,Total,Used,free\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    sget-object v10, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;

    .line 261
    .local v3, resource:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;
    iget-object v5, v3, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mTag:Ljava/lang/String;

    .line 262
    .local v5, tag:Ljava/lang/String;
    iget-wide v6, v3, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mTotalMemory:J

    .line 263
    .local v6, totalMem:J
    iget-wide v0, v3, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;->mFreeMemory:J

    .line 264
    .local v0, freeMem:J
    sub-long v8, v6, v0

    .line 265
    .local v8, usedMem:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 268
    .end local v0           #freeMem:J
    .end local v3           #resource:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureResource;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #totalMem:J
    .end local v8           #usedMem:J
    :cond_0
    const-string v10, "---Measure Resource End---\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private setResultTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 214
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->values()[Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    move-result-object v4

    array-length v4, v4

    new-array v2, v4, [Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;

    .line 215
    .local v2, start:[Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v3, string:Ljava/lang/StringBuffer;
    const-string v4, "---Measure Time Start---\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v4, "ID,Time[ms],Comment\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    sget-object v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mTimeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;

    .line 219
    .local v0, data:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;
    iget v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mKind:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 220
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ordinal()I

    move-result v4

    aput-object v0, v2, v4

    goto :goto_0

    .line 222
    :cond_1
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ordinal()I

    move-result v4

    aget-object v4, v2, v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mTime:J

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v2, v6

    iget-wide v6, v6, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mAdditionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ordinal()I

    move-result v4

    aget-object v4, v2, v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mAdditionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    aput-object v5, v2, v4

    goto :goto_0

    .line 236
    .end local v0           #data:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;
    :cond_2
    const-string v4, "---Measure Time End---\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v4, "---Measure Time Dump Start---\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v4, "ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    sget-object v4, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->mTimeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;

    .line 240
    .restart local v0       #data:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mId:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mKind:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mTime:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->originalTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;->mAdditionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 251
    .end local v0           #data:Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$MeasureTime;
    :cond_3
    const-string v4, "---Measure Time Dump End---\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static final setTimerFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 112
    sput-boolean p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->sTimerFlag:Z

    .line 113
    return-void
.end method

.method private writeFile(Ljava/lang/String;)V
    .locals 8
    .parameter "aResult"

    .prologue
    .line 273
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_perform.csv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 276
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    const/4 v2, 0x0

    .line 285
    .local v2, writer:Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "camera_perform.csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 288
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    .local v3, writer:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 295
    if-eqz v3, :cond_1

    .line 296
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 297
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v2, v3

    .line 303
    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    :cond_2
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MeasurePerformance2"

    const-string v5, "Create output file failed"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MeasurePerformance2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 302
    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v2       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 289
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v4, "MeasurePerformance2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    if-eqz v2, :cond_2

    .line 296
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 297
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 299
    :catch_3
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MeasurePerformance2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 292
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v4, "MeasurePerformance2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 295
    if-eqz v2, :cond_2

    .line 296
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 297
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 299
    :catch_5
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MeasurePerformance2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 295
    :goto_3
    if-eqz v2, :cond_3

    .line 296
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 297
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 301
    :cond_3
    :goto_4
    throw v4

    .line 299
    :catch_6
    move-exception v0

    .line 300
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "MeasurePerformance2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v2       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 291
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v2       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 289
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #writer:Ljava/io/OutputStreamWriter;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #writer:Ljava/io/OutputStreamWriter;
    .restart local v2       #writer:Ljava/io/OutputStreamWriter;
    goto/16 :goto_1
.end method
