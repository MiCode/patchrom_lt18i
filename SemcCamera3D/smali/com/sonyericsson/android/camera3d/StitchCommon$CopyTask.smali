.class public Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;
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
    name = "CopyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 356
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureStartFrom(I)V

    .line 358
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/WorkArea;->unlock()V

    .line 360
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsRunning:Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$200(Lcom/sonyericsson/android/camera3d/StitchCommon;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 364
    .local v0, buffer:[B
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$100(Lcom/sonyericsson/android/camera3d/StitchCommon;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #buffer:[B
    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .restart local v0       #buffer:[B
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$300(Lcom/sonyericsson/android/camera3d/StitchCommon;)Lcom/sonyericsson/android/camera3d/ImageBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->obtain()Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;

    move-result-object v2

    .line 372
    .local v2, nativeByteArray:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    if-nez v2, :cond_1

    .line 375
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$100(Lcom/sonyericsson/android/camera3d/StitchCommon;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    .end local v0           #buffer:[B
    .end local v2           #nativeByteArray:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :catch_0
    move-exception v1

    .line 386
    :cond_0
    return-void

    .line 379
    .restart local v0       #buffer:[B
    .restart local v2       #nativeByteArray:Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;
    :cond_1
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;->writeTo([B)V

    .line 381
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$300(Lcom/sonyericsson/android/camera3d/StitchCommon;)Lcom/sonyericsson/android/camera3d/ImageBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->put(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V

    .line 382
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method
