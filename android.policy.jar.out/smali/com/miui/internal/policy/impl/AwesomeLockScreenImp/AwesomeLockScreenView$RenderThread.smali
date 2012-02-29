.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;
.super Ljava/lang/Thread;
.source "AwesomeLockScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThread"
.end annotation


# instance fields
.field private mFrameTime:I

.field private mLastTouchTime:J

.field private mLastUpdateSystemTime:J

.field private mPausedTime:J

.field private notify:Ljava/lang/Object;

.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->notify:Ljava/lang/Object;

    .line 89
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mFrameRate:I
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mFrameRate:I
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mFrameTime:I

    .line 90
    return-void

    .line 89
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private waiteForResume()V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->notify:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->notify:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 159
    monitor-exit v1

    .line 163
    :goto_0
    return-void

    .line 159
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 161
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onResume()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z
    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->notify:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->notify:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 169
    monitor-exit v0

    .line 171
    :cond_0
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const-string v1, "AwesomeLockScreenView"

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mLastTouchTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xfa0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mLastTouchTime:J

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onTouch(Landroid/view/MotionEvent;)V

    .line 101
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setShouldUpdate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 110
    return-void

    .line 102
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 103
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v2, "AwesomeLockScreenView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 105
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 106
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 107
    const-string v2, "AwesomeLockScreenView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const-string v9, "AwesomeLockScreenView"

    .line 114
    const-string v5, "AwesomeLockScreenView"

    const-string v5, "RenderThread started"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->init()V

    .line 117
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mPausedTime:J

    .line 119
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    const/4 v6, 0x1

    #setter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mStarted:Z
    invoke-static {v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$302(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;Z)Z

    .line 120
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->postInvalidate()V

    .line 121
    :goto_0
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mStop:Z
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 122
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pause()V

    .line 124
    const-string v5, "AwesomeLockScreenView"

    const-string v6, "RenderThread paused, waiting for signal"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 126
    .local v3, lastPausedTime:J
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->waiteForResume()V

    .line 127
    iget-wide v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mPausedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mPausedTime:J

    .line 128
    const-string v5, "AwesomeLockScreenView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RenderThread resumed: paused time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mPausedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->resume()V

    .line 132
    .end local v3           #lastPausedTime:J
    :cond_1
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mStop:Z
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->finish()V

    .line 152
    const-string v5, "AwesomeLockScreenView"

    const-string v5, "RenderThread stopped"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 135
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 136
    .local v0, currentTime:J
    iget-wide v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mLastUpdateSystemTime:J

    sub-long v5, v0, v5

    iget v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mFrameTime:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_4

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->shouldUpdate()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    :cond_4
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->postInvalidate()V

    .line 138
    iput-wide v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->mLastUpdateSystemTime:J

    .line 139
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setShouldUpdate(Z)V

    .line 142
    :cond_5
    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 144
    .end local v0           #currentTime:J
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 145
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const-string v5, "AwesomeLockScreenView"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 148
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 149
    const-string v5, "AwesomeLockScreenView"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
