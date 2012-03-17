.class Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "Panorama3dProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$1;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMiniThumbFile;->reset()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$1;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dMediaStore;->CONTENT_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mpo_pictures"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->detachVolume(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$000(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;Landroid/net/Uri;)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$1;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #calls: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->attachVolume()Landroid/net/Uri;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$100(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    goto :goto_0

    .line 126
    :catch_2
    move-exception v0

    goto :goto_0
.end method
