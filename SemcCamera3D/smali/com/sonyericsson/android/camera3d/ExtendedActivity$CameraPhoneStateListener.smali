.class Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 883
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 884
    packed-switch p1, :pswitch_data_0

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 886
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mNoncancelableErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    #calls: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onActivated()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$500(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V

    goto :goto_0

    .line 892
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    #getter for: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$600(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    #getter for: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$600(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;->onRinging()V

    goto :goto_0

    .line 898
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    #getter for: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$600(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    #getter for: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->mCameraPhoneStateListener:Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$600(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$CameraInternalPhoneStateListener;->onOffHook()V

    goto :goto_0

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
