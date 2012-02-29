.class Lmiui/app/resourcebrowser/BatchMediaPlayer$1;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/BatchMediaPlayer;
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
    .line 30
    iput-object p1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$1;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$1;->this$0:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    #calls: Lmiui/app/resourcebrowser/BatchMediaPlayer;->setPlayerDataSource()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->access$000(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V

    .line 34
    return-void
.end method
