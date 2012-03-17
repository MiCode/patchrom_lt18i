.class Lcom/sonyericsson/android/camera3d/StitchCommon$PutImageCallbackImpl;
.super Ljava/lang/Object;
.source "StitchCommon.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/StitchCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutImageCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$PutImageCallbackImpl;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon;Lcom/sonyericsson/android/camera3d/StitchCommon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/StitchCommon$PutImageCallbackImpl;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V

    return-void
.end method


# virtual methods
.method public onProcessFinished(J)V
    .locals 1
    .parameter "memoryHandle"

    .prologue
    .line 483
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureEndTo(I)V

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$PutImageCallbackImpl;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    #getter for: Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->access$300(Lcom/sonyericsson/android/camera3d/StitchCommon;)Lcom/sonyericsson/android/camera3d/ImageBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->recycle(J)V

    .line 489
    return-void
.end method
