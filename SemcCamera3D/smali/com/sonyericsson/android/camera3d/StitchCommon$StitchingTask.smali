.class public Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;
.super Ljava/lang/Object;
.source "StitchCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/StitchCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StitchingTask"
.end annotation


# static fields
.field private static final PUTIMAGE_SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 397
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsRunning:Z
    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$200(Lcom/sonyericsson/android/camera3d/StitchCommon;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 398
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureStartFrom(I)V

    .line 402
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;
    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$300(Lcom/sonyericsson/android/camera3d/StitchCommon;)Lcom/sonyericsson/android/camera3d/ImageBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->pop()Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    move-result-object v0

    .line 405
    .local v0, buffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    if-nez v0, :cond_2

    .line 466
    .end local v0           #buffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget v8, v8, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    const/high16 v9, 0x4248

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    const/4 v7, 0x1

    .line 467
    .local v7, success:Z
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mMainHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$500(Lcom/sonyericsson/android/camera3d/StitchCommon;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;

    invoke-direct {v9, p0, v7}, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$3;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void

    .line 412
    .end local v7           #success:Z
    .restart local v0       #buffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :cond_2
    const/4 v6, 0x0

    .line 414
    .local v6, result:I
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->putImageYUV(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_2
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/StitchCommon;->getStitchedPercentage()F

    move-result v4

    .line 424
    .local v4, progress:F
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #calls: Lcom/sonyericsson/android/camera3d/StitchCommon;->checkCondition(IF)Z
    invoke-static {v8, v6, v4}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$400(Lcom/sonyericsson/android/camera3d/StitchCommon;IF)Z

    move-result v5

    .line 426
    .local v5, requestStop:Z
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-wide v8, v8, Lcom/sonyericsson/android/camera3d/StitchCommon;->mRestTime:J

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 427
    const/4 v6, 0x1

    .line 430
    :cond_3
    move v3, v6

    .line 431
    .local v3, notificationResult:I
    move v2, v4

    .line 433
    .local v2, notificationProgress:F
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mMainHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$500(Lcom/sonyericsson/android/camera3d/StitchCommon;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;

    invoke-direct {v9, p0, v3, v2}, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$1;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;IF)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    if-eqz v5, :cond_0

    .line 447
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mMainHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$500(Lcom/sonyericsson/android/camera3d/StitchCommon;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;

    invoke-direct {v9, p0, v2, v3}, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask$2;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;FI)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 415
    .end local v2           #notificationProgress:F
    .end local v3           #notificationResult:I
    .end local v4           #progress:F
    .end local v5           #requestStop:Z
    :catch_0
    move-exception v1

    .line 416
    .local v1, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/camera3d/StitchCommon;->getCapturingStatus(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 466
    .end local v0           #buffer:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #result:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method
