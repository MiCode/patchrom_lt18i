.class Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;
.super Ljava/lang/Object;
.source "MeasurePerformance2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformnaceData"
.end annotation


# instance fields
.field public mMax:J

.field public mMeasuredCount:I

.field public mMin:J

.field public mPreviousMeasuredTime:J

.field public mSumOfDifference:D

.field public mSumOfSquareDifference:D


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfDifference:D

    .line 315
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mSumOfSquareDifference:D

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMeasuredCount:I

    .line 317
    iput-wide v2, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mPreviousMeasuredTime:J

    .line 318
    iput-wide v2, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMax:J

    .line 319
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;->mMin:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2$PerformnaceData;-><init>()V

    return-void
.end method
