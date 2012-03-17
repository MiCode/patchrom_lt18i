.class Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;
.super Ljava/lang/Object;
.source "CaptureButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/CaptureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureAreaTouchEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v5, 0x1

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->updateView()V
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$1100(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)V

    .line 281
    return v5

    .line 185
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->storeLastTouchPosition(Landroid/view/MotionEvent;)V
    invoke-static {v2, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$000(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/MotionEvent;)V

    .line 188
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v2, v3, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$100(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #setter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouched:Z
    invoke-static {v2, v5}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$202(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Z)Z

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$400(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;->onCaptureAreaTouched(Landroid/graphics/Point;)V

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$500(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$500(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosX:F
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$600(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)F

    move-result v3

    sub-float v0, v2, v3

    .line 211
    .local v0, difX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mLastTouchDownPosY:F
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$700(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)F

    move-result v3

    sub-float v1, v2, v3

    .line 213
    .local v1, difY:F
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsFingerMoved:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$800(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Z

    move-result v2

    if-nez v2, :cond_3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchSlop:I
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$900(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchSlop:I
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$900(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #setter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsFingerMoved:Z
    invoke-static {v2, v5}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$802(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Z)Z

    .line 222
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 223
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$400(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;->onCaptureAreaMoved(Landroid/graphics/Point;)V

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$500(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$500(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 236
    .end local v0           #difX:F
    .end local v1           #difY:F
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v2, v3, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$100(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 238
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsFingerMoved:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$800(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 239
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$400(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;->onCaptureAreaReleasedAfterMove(Landroid/graphics/Point;)V

    .line 257
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$500(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 262
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mTouchListenerForClient:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$500(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 266
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->resetLastTouchPosition()V
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$1000(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)V

    .line 269
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    const/4 v3, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mIsTouched:Z
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$202(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Z)Z

    goto/16 :goto_0

    .line 242
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #calls: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$400(Lcom/sonyericsson/android/camera3d/view/CaptureButton;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    goto :goto_1

    .line 250
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 251
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera3d/view/CaptureButton;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CaptureButton;->mListener:Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton;->access$300(Lcom/sonyericsson/android/camera3d/view/CaptureButton;)Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/view/CaptureButton$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    .line 254
    :cond_9
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
