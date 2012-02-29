.class Lcom/android/server/AccessibilityManagerService$DeathRecipient;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 0
    .parameter
    .parameter "client"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$DeathRecipient;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/android/server/AccessibilityManagerService$DeathRecipient;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 280
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$DeathRecipient;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$DeathRecipient;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 285
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$DeathRecipient;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$DeathRecipient;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
