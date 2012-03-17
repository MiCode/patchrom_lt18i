.class public Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;
.super Landroid/os/Handler;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoOffTimerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 925
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 944
    :goto_0
    :pswitch_0
    return-void

    .line 932
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$AutoOffTimerHandler;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->abort()V

    goto :goto_0

    .line 925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
