.class Lmiui/app/screenelement/MusicControlScreenElement$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v2

    if-nez v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, title:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, artist:Ljava/lang/String;
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #setter for: Lmiui/app/screenelement/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v5}, Lmiui/app/screenelement/MusicControlScreenElement;->access$302(Lmiui/app/screenelement/MusicControlScreenElement;Z)Z

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmiui/app/screenelement/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/app/screenelement/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 151
    :goto_1
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lmiui/app/screenelement/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/app/screenelement/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v2

    const-string v3, "%s   %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, action:Ljava/lang/String;
    const-string v3, "playing"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 109
    .local v2, isPlaying:Z
    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    const-string v3, "other"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, extra:Ljava/lang/String;
    const-string v3, "meta_changed_track"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-direct {p0, p2}, Lmiui/app/screenelement/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 117
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$000(Lmiui/app/screenelement/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v3, "meta_changed_album"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    const/4 v4, 0x1

    #calls: Lmiui/app/screenelement/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V
    invoke-static {v3, p2, v4}, Lmiui/app/screenelement/MusicControlScreenElement;->access$100(Lmiui/app/screenelement/MusicControlScreenElement;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 121
    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    const-string v3, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    invoke-direct {p0, p2}, Lmiui/app/screenelement/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 123
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$200(Lmiui/app/screenelement/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_4
    const-string v3, "com.miui.player.refreshprogress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    const-string v4, "block"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lmiui/app/screenelement/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v3, v4}, Lmiui/app/screenelement/MusicControlScreenElement;->access$302(Lmiui/app/screenelement/MusicControlScreenElement;Z)Z

    goto :goto_0

    .line 126
    :cond_5
    const-string v3, "com.miui.player.playstatechanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v3}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;
    invoke-static {v3}, Lmiui/app/screenelement/MusicControlScreenElement;->access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/screenelement/TextScreenElement;->isVisible()Z

    move-result v3

    if-nez v3, :cond_6

    .line 128
    invoke-direct {p0, p2}, Lmiui/app/screenelement/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 130
    :cond_6
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$000(Lmiui/app/screenelement/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0
.end method
