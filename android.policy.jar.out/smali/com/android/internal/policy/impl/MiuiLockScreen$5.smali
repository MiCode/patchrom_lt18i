.class Lcom/android/internal/policy/impl/MiuiLockScreen$5;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1721
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1900(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1725
    .local v0, action:Ljava/lang/String;
    const-string v3, "playing"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1726
    .local v2, isPlaying:Z
    if-eqz v2, :cond_0

    .line 1729
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1730
    const-string v3, "other"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, extra:Ljava/lang/String;
    const-string v3, "meta_changed_track"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1732
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->setTrackInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Intent;)V

    .line 1733
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1734
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$2100(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;Landroid/content/Intent;)V

    goto :goto_0

    .line 1736
    :cond_2
    const-string v3, "meta_changed_album"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1737
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1738
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->requestAlbum(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 1741
    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    const-string v3, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1742
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->setTrackInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Intent;)V

    .line 1743
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1744
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->setAlbumInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$2200(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;Landroid/content/Intent;)V

    goto :goto_0

    .line 1746
    :cond_4
    const-string v3, "com.miui.player.refreshprogress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1747
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    const-string v4, "block"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsOnlineSongBlocking:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1502(Lcom/android/internal/policy/impl/MiuiLockScreen;Z)Z

    goto/16 :goto_0

    .line 1748
    :cond_5
    const-string v3, "com.miui.player.playstatechanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1753
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->setTrackInfo(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Intent;)V

    .line 1754
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1755
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$5;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$2100(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
