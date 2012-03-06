.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgParam"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 536
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->obj:Ljava/lang/Object;

    .line 538
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mLock:Ljava/lang/Object;

    .line 539
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "object"
    .parameter "lock"

    .prologue
    .line 541
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 542
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->obj:Ljava/lang/Object;

    .line 543
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mLock:Ljava/lang/Object;

    .line 544
    return-void
.end method


# virtual methods
.method public notifyPending()V
    .locals 3

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 550
    monitor-exit v1

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForResult()V
    .locals 3

    .prologue
    .line 554
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$MsgParam;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "interrupted while trying to load and update record"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
