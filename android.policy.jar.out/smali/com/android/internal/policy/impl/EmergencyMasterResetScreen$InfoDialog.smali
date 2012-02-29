.class final Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;
.super Landroid/app/AlertDialog;
.source "EmergencyMasterResetScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InfoDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;III)V
    .locals 2
    .parameter
    .parameter "iconId"
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    .line 329
    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$500(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->setIcon(I)V

    .line 331
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->setTitle(I)V

    .line 332
    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$500(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 335
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v4, 0x18

    const/4 v5, 0x1

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$100(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$000(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 345
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 347
    .local v0, keyCode:I
    if-eq v0, v4, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_4

    .line 349
    :cond_0
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$600(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$602(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 355
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$600(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$600(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v4, :cond_3

    move v3, v5

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2
    move v1, v5

    .line 368
    :goto_1
    return v1

    .line 355
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 358
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 368
    :cond_4
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$100(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$InfoDialog;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    #getter for: Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->mScreenOffTime:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$000(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 379
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
