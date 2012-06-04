.class public Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;
.super Landroid/os/Handler;
.source "ShutterToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LedBlinkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;->this$0:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;->this$0:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    #getter for: Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->access$000(Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;)Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
