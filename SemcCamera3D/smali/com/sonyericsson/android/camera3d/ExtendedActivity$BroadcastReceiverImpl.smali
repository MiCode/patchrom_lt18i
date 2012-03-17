.class Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;
.super Landroid/content/BroadcastReceiver;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiverImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;Lcom/sonyericsson/android/camera3d/ExtendedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;-><init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    #calls: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onBatteryLow()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$200(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    #calls: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onUserPresent()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$300(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onExternalStorageStateChanged(ILandroid/net/Uri;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$400(Lcom/sonyericsson/android/camera3d/ExtendedActivity;ILandroid/net/Uri;)V

    goto :goto_0

    .line 251
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onExternalStorageStateChanged(ILandroid/net/Uri;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$400(Lcom/sonyericsson/android/camera3d/ExtendedActivity;ILandroid/net/Uri;)V

    goto :goto_0

    .line 254
    :cond_4
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ExtendedActivity$BroadcastReceiverImpl;->this$0:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/sonyericsson/android/camera3d/ExtendedActivity;->onExternalStorageStateChanged(ILandroid/net/Uri;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->access$400(Lcom/sonyericsson/android/camera3d/ExtendedActivity;ILandroid/net/Uri;)V

    goto :goto_0
.end method
