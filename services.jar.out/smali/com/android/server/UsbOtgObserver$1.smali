.class Lcom/android/server/UsbOtgObserver$1;
.super Landroid/os/Handler;
.source "UsbOtgObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbOtgObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UsbOtgObserver;


# direct methods
.method constructor <init>(Lcom/android/server/UsbOtgObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/server/UsbOtgObserver$1;->this$0:Lcom/android/server/UsbOtgObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getDeviceIntent(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 2
    .parameter "action"
    .parameter "device"

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.hardware.usb_otg_device"

    check-cast p2, Lcom/sonyericsson/hardware/UsbDevice;

    .end local p2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 456
    return-object v0
.end method

.method private getErrorIntent(I)Landroid/content/Intent;
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.hardware.action.USB_OTG_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.hardware.usb_otg_error_cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v1, "com.sonyericsson.hardware.action.ACTION_USB_OTG_STATE"

    .line 412
    iget-object v2, p0, Lcom/android/server/UsbOtgObserver$1;->this$0:Lcom/android/server/UsbOtgObserver;

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver$1;->this$0:Lcom/android/server/UsbOtgObserver;

    #getter for: Lcom/android/server/UsbOtgObserver;->mSystemReady:Z
    invoke-static {v1}, Lcom/android/server/UsbOtgObserver;->access$000(Lcom/android/server/UsbOtgObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, intent:Landroid/content/Intent;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 444
    :goto_0
    const-string v1, "com.sonyericsson.hardware.action.ACTION_USB_OTG_STATE"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver$1;->this$0:Lcom/android/server/UsbOtgObserver;

    #getter for: Lcom/android/server/UsbOtgObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/UsbOtgObserver;->access$100(Lcom/android/server/UsbOtgObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 450
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    monitor-exit v2

    .line 451
    return-void

    .line 420
    .restart local v0       #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v1, "com.sonyericsson.hardware.action.USB_OTG_DEVICE_CONNECTED"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/android/server/UsbOtgObserver$1;->getDeviceIntent(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 421
    goto :goto_0

    .line 424
    :pswitch_1
    const-string v1, "com.sonyericsson.hardware.action.USB_OTG_DEVICE_DISCONNECTED"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/android/server/UsbOtgObserver$1;->getDeviceIntent(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 425
    goto :goto_0

    .line 428
    :pswitch_2
    const-string v1, "com.sonyericsson.hardware.action.ACTION_USB_OTG_STATE"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/android/server/UsbOtgObserver$1;->getDeviceIntent(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 429
    goto :goto_0

    .line 432
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.hardware.action.USB_OTG_ACA_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 436
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.hardware.action.USB_OTG_ACA_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 440
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/UsbOtgObserver$1;->getErrorIntent(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/server/UsbOtgObserver$1;->this$0:Lcom/android/server/UsbOtgObserver;

    #getter for: Lcom/android/server/UsbOtgObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/UsbOtgObserver;->access$100(Lcom/android/server/UsbOtgObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 450
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
