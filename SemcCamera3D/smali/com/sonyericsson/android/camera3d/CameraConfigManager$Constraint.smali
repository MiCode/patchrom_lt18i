.class Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;
.super Ljava/lang/Object;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraint"
.end annotation


# instance fields
.field public mBytes:J

.field public mMillisecs:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2
    .parameter "seconds"
    .parameter "mbytes"

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 471
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mMillisecs:J

    .line 476
    :goto_0
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mBytes:J

    .line 477
    return-void

    .line 473
    :cond_0
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mMillisecs:J

    goto :goto_0
.end method
