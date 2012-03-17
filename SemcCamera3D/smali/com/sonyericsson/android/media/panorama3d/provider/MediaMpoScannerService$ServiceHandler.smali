.class final Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaMpoScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;-><init>(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 141
    .local v0, arguments:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 142
    .local v2, filePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 143
    const-string v3, "filepath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_1

    .line 150
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;

    #calls: Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->scanFile(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v3, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->access$100(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->stopSelf(I)V

    .line 175
    return-void

    .line 155
    :cond_1
    :try_start_1
    const-string v3, "storagepath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, directories:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 162
    iget-object v3, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;

    #calls: Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->scanDirectories([Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->access$200(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    .end local v1           #directories:[Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
