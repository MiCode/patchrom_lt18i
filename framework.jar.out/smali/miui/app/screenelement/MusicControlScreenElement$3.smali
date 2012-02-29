.class Lmiui/app/screenelement/MusicControlScreenElement$3;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/MusicControlScreenElement;->onButtonUp(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/MusicControlScreenElement;

.field final synthetic val$_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/MusicControlScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iput-object p2, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->val$_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "music_state"

    .line 320
    const-string v0, "music_pause"

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->val$_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/MusicControlScreenElement;->access$600(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/ButtonScreenElement;->show(Z)V

    .line 322
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ButtonScreenElement;->show(Z)V

    .line 323
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    const/4 v1, 0x2

    #setter for: Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v1}, Lmiui/app/screenelement/MusicControlScreenElement;->access$802(Lmiui/app/screenelement/MusicControlScreenElement;I)I

    .line 324
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iget-object v0, v0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iget-object v1, v1, Lmiui/app/screenelement/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "music_state"

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v0, v1, v4, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iget-object v0, v0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/MusicControlScreenElement;->access$900(Lmiui/app/screenelement/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 333
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iget-object v0, v0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/app/screenelement/MusicControlScreenElement;->access$900(Lmiui/app/screenelement/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void

    .line 325
    :cond_1
    const-string v0, "music_play"

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->val$_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/MusicControlScreenElement;->access$700(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/ButtonScreenElement;->show(Z)V

    .line 327
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;
    invoke-static {v0}, Lmiui/app/screenelement/MusicControlScreenElement;->access$600(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/ButtonScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ButtonScreenElement;->show(Z)V

    .line 328
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #setter for: Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v0, v2}, Lmiui/app/screenelement/MusicControlScreenElement;->access$802(Lmiui/app/screenelement/MusicControlScreenElement;I)I

    .line 329
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iget-object v0, v0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement$3;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iget-object v1, v1, Lmiui/app/screenelement/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v2, "music_state"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method
