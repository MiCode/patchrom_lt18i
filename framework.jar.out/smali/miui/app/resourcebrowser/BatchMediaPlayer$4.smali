.class Lmiui/app/resourcebrowser/BatchMediaPlayer$4;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/BatchMediaPlayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$4;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$4;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    #getter for: Lmiui/app/resourcebrowser/BatchMediaPlayer;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->access$300(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 91
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$4;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    #calls: Lmiui/app/resourcebrowser/BatchMediaPlayer;->realPlay()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->access$400(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$4;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->stop(Z)V

    goto :goto_0
.end method
