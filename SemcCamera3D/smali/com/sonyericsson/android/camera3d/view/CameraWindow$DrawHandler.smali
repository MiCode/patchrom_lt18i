.class Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;
.super Landroid/os/Handler;
.source "CameraWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/view/CameraWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;-><init>(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "message"

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupCameraWindow()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$100(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto :goto_0

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setupVideoWindow()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$200(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto :goto_0

    .line 327
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showDefaultViewCamera()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$300(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto :goto_0

    .line 331
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showDefaultViewVideo()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$400(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto :goto_0

    .line 335
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideDefaultViewCamera()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$500(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto :goto_0

    .line 339
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideDefaultViewVideo()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$600(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto :goto_0

    .line 343
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    .line 344
    .local v8, args:[I
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$700(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    move-result-object v0

    aget v1, v8, v1

    aget v2, v8, v9

    const/4 v3, 0x2

    aget v3, v8, v3

    const/4 v4, 0x3

    aget v4, v8, v4

    aget v5, v8, v5

    const/4 v6, 0x5

    aget v6, v8, v6

    const/4 v7, 0x6

    aget v7, v8, v7

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setFocusIndicator(IIIIIII)V

    goto :goto_0

    .line 355
    .end local v8           #args:[I
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$700(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    goto :goto_0

    .line 359
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #getter for: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->mAfRectangles:Lcom/sonyericsson/android/camera3d/view/AfRectangles;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$700(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)Lcom/sonyericsson/android/camera3d/view/AfRectangles;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    goto :goto_0

    .line 364
    :pswitch_a
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 365
    .local v10, mode:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v9, :cond_0

    .line 366
    .local v9, enableFaceRectangles:Z
    :goto_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .line 367
    .local v11, result:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfIndicatorColorImpl(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    invoke-static {v0, v10, v11, v9}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$800(Lcom/sonyericsson/android/camera3d/view/CameraWindow;ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    goto :goto_0

    .end local v9           #enableFaceRectangles:Z
    .end local v11           #result:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;
    :cond_0
    move v9, v1

    .line 365
    goto :goto_1

    .line 371
    .end local v10           #mode:I
    :pswitch_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const v1, 0x7f0d0058

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/Notification;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/Notification;->onGpsStatusChanged(I)V

    goto :goto_0

    .line 386
    :pswitch_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showAutoFocusViewImpl()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$900(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto/16 :goto_0

    .line 390
    :pswitch_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideAutoFocusViewImpl()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1000(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto/16 :goto_0

    .line 394
    :pswitch_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showRecordingViewImpl()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1100(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto/16 :goto_0

    .line 398
    :pswitch_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideRecordingViewImpl()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1200(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto/16 :goto_0

    .line 402
    :pswitch_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideRecordingViewImplMaxDuration()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1300(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto/16 :goto_0

    .line 406
    :pswitch_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showSelftimerViewImpl()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1400(Lcom/sonyericsson/android/camera3d/view/CameraWindow;)V

    goto/16 :goto_0

    .line 410
    :pswitch_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showIdleViewImpl(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1500(Lcom/sonyericsson/android/camera3d/view/CameraWindow;I)V

    goto/16 :goto_0

    .line 414
    :pswitch_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setOrientation(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1600(Lcom/sonyericsson/android/camera3d/view/CameraWindow;I)V

    goto/16 :goto_0

    .line 418
    :pswitch_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showZoombarImpl(Z)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1700(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Z)V

    goto/16 :goto_0

    .line 422
    :pswitch_15
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideZoombarImpl(Z)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->access$1800(Lcom/sonyericsson/android/camera3d/view/CameraWindow;Z)V

    goto/16 :goto_0

    .line 426
    :pswitch_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateDebugMessage()V

    .line 427
    const/16 v0, 0x1b

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow$DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_15
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method
