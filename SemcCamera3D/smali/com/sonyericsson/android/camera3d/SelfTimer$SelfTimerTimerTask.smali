.class Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;
.super Ljava/util/TimerTask;
.source "SelfTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SelfTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfTimerTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SelfTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SelfTimer;Lcom/sonyericsson/android/camera3d/SelfTimer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;-><init>(Lcom/sonyericsson/android/camera3d/SelfTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    #getter for: Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$100(Lcom/sonyericsson/android/camera3d/SelfTimer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 107
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    #getter for: Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$100(Lcom/sonyericsson/android/camera3d/SelfTimer;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 110
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    #getter for: Lcom/sonyericsson/android/camera3d/SelfTimer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$200(Lcom/sonyericsson/android/camera3d/SelfTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    #getter for: Lcom/sonyericsson/android/camera3d/SelfTimer;->mInterval:J
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$400(Lcom/sonyericsson/android/camera3d/SelfTimer;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$122(Lcom/sonyericsson/android/camera3d/SelfTimer;J)J

    .line 125
    return-void

    .line 115
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 117
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    #getter for: Lcom/sonyericsson/android/camera3d/SelfTimer;->mCurTime:J
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$100(Lcom/sonyericsson/android/camera3d/SelfTimer;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 118
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    #getter for: Lcom/sonyericsson/android/camera3d/SelfTimer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$200(Lcom/sonyericsson/android/camera3d/SelfTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SelfTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/android/camera3d/SelfTimer;

    #calls: Lcom/sonyericsson/android/camera3d/SelfTimer;->terminateInnerTimer()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->access$300(Lcom/sonyericsson/android/camera3d/SelfTimer;)V

    goto :goto_0
.end method
