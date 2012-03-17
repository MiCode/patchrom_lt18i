.class public Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;
.super Ljava/lang/Object;
.source "Capturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Capturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapturerContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturerContext"


# instance fields
.field private volatile mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

.field private mEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 2
    .parameter "activity"
    .parameter "state"

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mHandler:Landroid/os/Handler;

    .line 578
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mEventQueue:Ljava/util/Queue;

    .line 579
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 580
    return-void
.end method

.method private declared-synchronized dispatchEvent(IILjava/lang/Object;)V
    .locals 1
    .parameter "eventId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 765
    monitor-enter p0

    sparse-switch p1, :sswitch_data_0

    .line 962
    :goto_0
    monitor-exit p0

    return-void

    .line 767
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 771
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 775
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleZoomProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 779
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleFocusedFaceChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 783
    :sswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleFocusPositionChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 787
    :sswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 791
    :sswitch_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyCaptureTouch(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 795
    :sswitch_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCaptureDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 799
    :sswitch_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCaptureFailed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 803
    :sswitch_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCaptureProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 807
    :sswitch_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 811
    :sswitch_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 815
    :sswitch_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyZoomIn(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 819
    :sswitch_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyZoomOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 823
    :sswitch_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyZoom(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 827
    :sswitch_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 831
    :sswitch_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleGetRawData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 835
    :sswitch_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleGetCompressedData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 839
    :sswitch_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleStoreDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 843
    :sswitch_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleStoreProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto :goto_0

    .line 847
    :sswitch_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 851
    :sswitch_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleFaceDetectError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 855
    :sswitch_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleFaceDetectTimeout(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 859
    :sswitch_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleFaceDetectTimerStart(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 863
    :sswitch_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSelfTimerStart(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 867
    :sswitch_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleKeyBack(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 871
    :sswitch_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSelfTimerCountDown(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 875
    :sswitch_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSelfTimerTimeOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 879
    :sswitch_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSelfTimerCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 883
    :sswitch_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 887
    :sswitch_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCameraReady(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 891
    :sswitch_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 895
    :sswitch_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 899
    :sswitch_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleExternalMemoryInsert(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 903
    :sswitch_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleVideoProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 907
    :sswitch_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleVideoInfo(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 911
    :sswitch_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handlePauseController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 915
    :sswitch_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleResumeController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 919
    :sswitch_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSceneChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 923
    :sswitch_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleChangeOrientation(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 927
    :sswitch_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSetupController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 931
    :sswitch_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 935
    :sswitch_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handlePhoneRinging(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 939
    :sswitch_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handlePhoneOffHook(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 943
    :sswitch_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 947
    :sswitch_2d
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleHdmiConnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 951
    :sswitch_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleHdmiDisconnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 955
    :sswitch_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleResumeGeoTagDialog(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 765
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x20 -> :sswitch_2
        0x30 -> :sswitch_5
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_e
        0x3a -> :sswitch_6
        0x3b -> :sswitch_7
        0x3c -> :sswitch_8
        0x3d -> :sswitch_9
        0x41 -> :sswitch_3
        0x42 -> :sswitch_4
        0x50 -> :sswitch_12
        0x51 -> :sswitch_13
        0x60 -> :sswitch_22
        0x61 -> :sswitch_23
        0x70 -> :sswitch_24
        0x71 -> :sswitch_25
        0x72 -> :sswitch_2f
        0x73 -> :sswitch_28
        0x80 -> :sswitch_1d
        0x81 -> :sswitch_20
        0x82 -> :sswitch_21
        0x84 -> :sswitch_1f
        0x85 -> :sswitch_1e
        0x90 -> :sswitch_26
        0xa0 -> :sswitch_27
        0xb0 -> :sswitch_f
        0xc0 -> :sswitch_10
        0xc1 -> :sswitch_11
        0xd2 -> :sswitch_14
        0xd3 -> :sswitch_15
        0xd4 -> :sswitch_16
        0xd5 -> :sswitch_17
        0xe0 -> :sswitch_18
        0xe1 -> :sswitch_1a
        0xe2 -> :sswitch_1b
        0xe3 -> :sswitch_1c
        0xe4 -> :sswitch_19
        0xf0 -> :sswitch_29
        0xf1 -> :sswitch_2a
        0xf2 -> :sswitch_2b
        0xf3 -> :sswitch_2c
        0x100 -> :sswitch_2d
        0x101 -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method public declared-synchronized cancel(I)V
    .locals 3
    .parameter "eventId"

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 741
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 742
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;

    .line 743
    .local v0, event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mEventId:I

    if-ne v2, p1, :cond_0

    .line 745
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 740
    .end local v0           #event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 748
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 731
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 7

    .prologue
    .line 699
    monitor-enter p0

    const/4 v3, 0x0

    .line 700
    .local v3, storedEvent:I
    const/4 v0, 0x0

    .line 701
    .local v0, dispatchedEvent:I
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 702
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 703
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;

    .line 704
    .local v1, event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v4, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 705
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->isRunnable(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    add-int/lit8 v0, v0, 0x1

    .line 708
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;ZLjava/lang/String;)V

    .line 710
    iget v4, v1, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mEventId:I

    iget v5, v1, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mArg1:I

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mArg2:Ljava/lang/Object;

    invoke-direct {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->dispatchEvent(IILjava/lang/Object;)V

    .line 711
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 713
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 699
    .end local v1           #event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 715
    .restart local v1       #event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 722
    .end local v1           #event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    :cond_2
    if-lez v3, :cond_3

    if-lez v0, :cond_3

    .line 723
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendEmergencyEvent(IILjava/lang/Object;)V
    .locals 1
    .parameter "eventId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->clear()V

    .line 658
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->dispatchEvent(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendEvent(IILjava/lang/Object;)V
    .locals 1
    .parameter "eventId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 692
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V

    .line 693
    return-void
.end method

.method public declared-synchronized sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .parameter "eventId"
    .parameter "arg1"
    .parameter "arg2"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p4, expectedState:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;-><init>(Lcom/sonyericsson/android/camera3d/Capturer$1;)V

    .line 629
    .local v0, event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    iput p1, v0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mEventId:I

    .line 630
    iput p2, v0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mArg1:I

    .line 631
    iput-object p3, v0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mArg2:Ljava/lang/Object;

    .line 632
    iput-object p4, v0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;->mExpectedState:Ljava/lang/Class;

    .line 635
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    .line 628
    .end local v0           #event:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext$EventData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendRapidEvent(IILjava/lang/Object;)V
    .locals 1
    .parameter "eventId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->dispatchEvent(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;

    if-eqz v0, :cond_0

    .line 607
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->mCurrentState:Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
