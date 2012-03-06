.class Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabSemcMethods"
.end annotation


# instance fields
.field private final mSlidingTabSemc:Lcom/android/internal/widget/SlidingTabSemc;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTabSemc;)V
    .locals 5
    .parameter
    .parameter "slidingTabSemc"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->mSlidingTabSemc:Lcom/android/internal/widget/SlidingTabSemc;

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->mSlidingTabSemc:Lcom/android/internal/widget/SlidingTabSemc;

    const v1, 0x108061f

    const v2, 0x1080620

    const v3, 0x108061e

    const v4, 0x108061d

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setLeftTabResources(IIII)V

    .line 106
    return-void
.end method

.method private updateRightTabResources()V
    .locals 5

    .prologue
    .line 161
    const v0, 0x108061b

    .line 162
    .local v0, disabledId:I
    const v1, 0x108061c

    .line 163
    .local v1, expandedId:I
    const v3, 0x108061a

    .line 164
    .local v3, gotoId:I
    const v2, 0x1080619

    .line 198
    .local v2, ghostId:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->mSlidingTabSemc:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/android/internal/widget/SlidingTabSemc;->setRightTabResources(IIII)V

    .line 199
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->mSlidingTabSemc:Lcom/android/internal/widget/SlidingTabSemc;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 140
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->mSlidingTabSemc:Lcom/android/internal/widget/SlidingTabSemc;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1040331

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTabSemc;->setRightHintText(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 146
    return-void

    .line 142
    :cond_1
    const v0, 0x1040332

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v4, 0x0

    .line 117
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v0, it:Landroid/content/Intent;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 126
    .local v1, keyEvent:Landroid/view/KeyEvent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 153
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 111
    .local v0, vibe:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->updateRightTabResources()V

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$SlidingTabSemcMethods;->mSlidingTabSemc:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setVisibility(I)V

    .line 113
    return-void

    .end local v0           #vibe:Z
    :cond_0
    move v0, v1

    .line 109
    goto :goto_0
.end method
