.class public Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;
.super Landroid/app/Service;
.source "MediaMpoScannerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$1;,
        Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaMpoScannerService"


# instance fields
.field private volatile mServiceHandler:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->scanFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->scanDirectories([Ljava/lang/String;)V

    return-void
.end method

.method private createMediaScanner()Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, scanner:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;
    return-object v0
.end method

.method private scanDirectories([Ljava/lang/String;)V
    .locals 4
    .parameter "directories"

    .prologue
    .line 53
    iget-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.android.media.panorama3d.provider.SCAN_STARTED"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->createMediaScanner()Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;

    move-result-object v0

    .line 58
    .local v0, scanner:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->scanDirectories([Ljava/lang/String;)V

    .line 59
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.android.media.panorama3d.provider.SCAN_FINISHED"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    iget-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 61
    return-void
.end method

.method private scanFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "path"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->createMediaScanner()Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;

    move-result-object v0

    .line 129
    .local v0, scanner:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScanner;->scanSingleFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 65
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 66
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "MediaMpoScannerService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "MediaMpoScannerService"

    invoke-direct {v1, v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    .local v1, thr:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 105
    monitor-enter p0

    .line 107
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 77
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mServiceHandler:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;

    if-nez v1, :cond_0

    .line 78
    monitor-enter p0

    .line 80
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 90
    const/4 v1, 0x2

    .line 98
    :goto_2
    return v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mServiceHandler:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mServiceHandler:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    const/4 v1, 0x3

    goto :goto_2

    .line 81
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 119
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 122
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mServiceLooper:Landroid/os/Looper;

    .line 123
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;-><init>(Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService;->mServiceHandler:Lcom/sonyericsson/android/media/panorama3d/provider/MediaMpoScannerService$ServiceHandler;

    .line 124
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 125
    return-void
.end method
