.class public Lcom/sonyericsson/android/camera3d/view/MessagePopup$ZoomMessageHandler;
.super Landroid/os/Handler;
.source "MessagePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ZoomMessageHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 757
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 771
    :goto_0
    :pswitch_0
    return-void

    .line 759
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ZoomMessageHandler;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->hideZoomMessage()V

    goto :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
