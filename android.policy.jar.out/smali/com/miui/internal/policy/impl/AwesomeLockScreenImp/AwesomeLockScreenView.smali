.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;
.super Landroid/view/View;
.source "AwesomeLockScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AwesomeLockScreenView"


# instance fields
.field private mFrameRate:I

.field private mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mPaused:Z

.field private mPausedTime:J

.field private mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

.field private mStarted:Z

.field private mStop:Z

.field private mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 2
    .parameter "context"
    .parameter "callback"
    .parameter "root"

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0x1e

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mFrameRate:I

    .line 29
    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 30
    invoke-virtual {p0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusable(Z)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setFocusableInTouchMode(Z)V

    .line 32
    invoke-virtual {p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getFrameRate()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mFrameRate:I

    .line 33
    iput-object p3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .line 34
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mFrameRate:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    return v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mStop:Z

    .line 40
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onResume()V

    .line 41
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 177
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    invoke-direct {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    .line 179
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->start()V

    .line 181
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 186
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const-string v1, "AwesomeLockScreenView"

    .line 60
    iget-boolean v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mStarted:Z

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPausedTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->tick(J)V

    .line 66
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v2, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 67
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 68
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const-string v2, "AwesomeLockScreenView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 71
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 72
    const-string v2, "AwesomeLockScreenView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 194
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->onResume()V

    .line 196
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->onTouch(Landroid/view/MotionEvent;)V

    .line 56
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->mThread:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView$RenderThread;->onResume()V

    .line 49
    :cond_0
    return-void
.end method
