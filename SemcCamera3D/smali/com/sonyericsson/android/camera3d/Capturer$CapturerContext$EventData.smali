.class Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
.super Ljava/lang/Object;
.source "Capturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventData"
.end annotation


# instance fields
.field public mArg1:I

.field public mArg2:Ljava/lang/Object;

.field public mEventId:I

.field public mExpectedState:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Capturer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunnable(Ljava/lang/Class;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, current:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;>;"
    const/4 v0, 0x1

    .line 543
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mExpectedState:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v0

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mExpectedState:Ljava/lang/Class;

    if-eq v1, p1, :cond_0

    .line 549
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Event Data["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "Event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mEventId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    const-string v1, "; Arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mArg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mArg2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "; Arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mArg2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mExpectedState:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 527
    const-string v1, "; mExpectedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mExpectedState:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
