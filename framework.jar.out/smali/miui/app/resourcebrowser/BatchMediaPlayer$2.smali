.class Lmiui/app/resourcebrowser/BatchMediaPlayer$2;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 70
    iput-object p1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$2;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$2;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->stop(Z)V

    .line 74
    return v1
.end method
