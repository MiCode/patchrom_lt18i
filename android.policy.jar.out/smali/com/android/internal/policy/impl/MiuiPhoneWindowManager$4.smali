.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;
.super Lcom/android/internal/view/BaseInputHandler;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 380
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 408
    return-void

    .line 383
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 384
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 404
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 406
    :catchall_1
    move-exception v2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    throw v2

    .line 386
    :pswitch_0
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownX:F

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    goto :goto_1

    .line 394
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 396
    iget v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 397
    .local v0, distanceX:F
    iget v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 398
    .local v1, distanceY:F
    const/high16 v3, 0x4000

    mul-float/2addr v3, v0

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_2

    .line 400
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v4, 0x1

    #calls: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V

    .line 401
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarHeight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$4;->mDownY:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
