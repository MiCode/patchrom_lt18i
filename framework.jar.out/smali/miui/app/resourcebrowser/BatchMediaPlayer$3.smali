.class Lmiui/app/resourcebrowser/BatchMediaPlayer$3;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 77
    iput-object p1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$3;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 80
    const/16 v2, 0x3e8

    const/16 v3, 0x7d0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v0, v2

    .line 81
    .local v0, delay:J
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 82
    iget-object v2, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$3;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    #getter for: Lmiui/app/resourcebrowser/BatchMediaPlayer;->mhandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->access$200(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$3;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    #getter for: Lmiui/app/resourcebrowser/BatchMediaPlayer;->mBatchPlayRun:Ljava/lang/Runnable;
    invoke-static {v3}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->access$100(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v2, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$3;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    #getter for: Lmiui/app/resourcebrowser/BatchMediaPlayer;->mhandler:Landroid/os/Handler;
    invoke-static {v2}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->access$200(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$3;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    #getter for: Lmiui/app/resourcebrowser/BatchMediaPlayer;->mBatchPlayRun:Ljava/lang/Runnable;
    invoke-static {v3}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->access$100(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method
