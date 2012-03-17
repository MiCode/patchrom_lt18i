.class Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 81
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;

    move-result-object v4

    if-nez v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 87
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/util/CameraEnvironment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, storage:Ljava/lang/String;
    const-string v4, "Emmc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SdCard"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    :cond_2
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    invoke-interface {v4, v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;->onMounted(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    invoke-interface {v4, v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;->onUnmounted(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_4
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 107
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    invoke-interface {v4, v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;->onUnmounted(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_5
    const-string v4, "com.sonyericsson.android.media.panorama3d.provider.SCAN_FINISHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->mListener:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;->access$000(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver$StorageEventListener;->onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V

    goto :goto_0
.end method
