.class Landroid/media/AudioService$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mClientId:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "cb"
    .parameter "clientId"

    .prologue
    .line 2208
    iput-object p1, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2209
    iput-object p2, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 2210
    iput-object p3, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mClientId:Ljava/lang/String;

    .line 2211
    return-void
.end method

.method static synthetic access$5600(Landroid/media/AudioService$AudioFocusDeathHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2203
    iget-object v0, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService$AudioFocusDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2203
    iget-object v0, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const-string v1, "AudioService"

    .line 2214
    invoke-static {}, Landroid/media/AudioService;->access$5300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2215
    :try_start_0
    const-string v2, "AudioService"

    const-string v3, "  AudioFocus   audio focus client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v2, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    iget-object v3, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    #calls: Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 2217
    iget-object v2, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/List;
    invoke-static {v2}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 2218
    .local v0, registered:Z
    if-nez v0, :cond_0

    .line 2219
    const-string v2, "AudioService"

    const-string v3, "AudioFocus unregistered audio focus client died"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_0
    monitor-exit v1

    .line 2222
    return-void

    .line 2221
    .end local v0           #registered:Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
