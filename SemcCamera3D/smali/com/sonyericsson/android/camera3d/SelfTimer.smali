.class public Lcom/sonyericsson/android/camera3d/SelfTimer;
.super Ljava/lang/Object;
.source "SelfTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/SelfTimer$1;,
        Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;
    }
.end annotation


# static fields
.field public static final MSG_CANCEL:I = 0x2

.field public static final MSG_INTERVAL:I = 0x0

.field public static final MSG_POST_TIMEOUT:I = 0x3

.field public static final MSG_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SelfTimer"


# instance fields
.field private mCurTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private mOptionName:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(JJLandroid/os/Handler;Ljava/lang/String;)V
    .locals 4
    .parameter "maxtime"
    .parameter "interval"
    .parameter "handler"
    .parameter "optionName"

    .prologue
    const-wide/16 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J

    .line 52
    iput-object p5, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mHandler:Landroid/os/Handler;

    .line 53
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mInterval:J

    .line 54
    iput-object p6, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mOptionName:Ljava/lang/String;

    .line 55
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mDelay:J

    .line 57
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    if-eqz p5, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/SelfTimer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/sonyericsson/android/camera3d/SelfTimer;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/SelfTimer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/SelfTimer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->terminateInnerTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/SelfTimer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mInterval:J

    return-wide v0
.end method

.method private declared-synchronized terminateInnerTimer()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->terminateInnerTimer()V

    .line 86
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, msg:Landroid/os/Message;
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 89
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start()V
    .locals 6

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;-><init>(Lcom/sonyericsson/android/camera3d/SelfTimer;Lcom/sonyericsson/android/camera3d/SelfTimer$1;)V

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mDelay:J

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/SelfTimer;->mInterval:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
