.class public Lmiui/app/resourcebrowser/BatchMediaPlayer;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;,
        Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mBatchPlayRun:Ljava/lang/Runnable;

.field private mCurrentItem:I

.field private mListener:Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;

.field private mPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

.field private mhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    .line 15
    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 17
    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mListener:Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mCurrentItem:I

    .line 27
    sget-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->UNDEFINED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mhandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$1;

    invoke-direct {v0, p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer$1;-><init>(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mBatchPlayRun:Ljava/lang/Runnable;

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cann\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->setPlayerDataSource()V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mBatchPlayRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/resourcebrowser/BatchMediaPlayer;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->realPlay()V

    return-void
.end method

.method private realPlay()V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mListener:Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mListener:Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;

    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    iget v2, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mCurrentItem:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mCurrentItem:I

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->size()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;->play(Ljava/lang/String;II)V

    .line 107
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 108
    sget-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PLAYING:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    .line 110
    :cond_1
    return-void
.end method

.method private setPlayerDataSource()V
    .locals 4

    .prologue
    .line 135
    :try_start_0
    iget v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mCurrentItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mCurrentItem:I

    iget-object v1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 137
    iget-object v1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    iget v3, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mCurrentItem:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->getUriByPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 138
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->stop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addPlayUri(Ljava/lang/String;)V
    .locals 1
    .parameter "uriPath"

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    sget-object v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PAUSED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    sget-object v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PLAYING:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PAUSED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    .line 161
    :cond_1
    return-void
.end method

.method public setListener(Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 45
    iput-object p1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mListener:Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;

    .line 46
    return-void
.end method

.method public setPlayList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PLAYING:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    .line 66
    invoke-direct {p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->realPlay()V

    .line 100
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 70
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$2;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer$2;-><init>(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 77
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$3;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer$3;-><init>(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 86
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$4;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer$4;-><init>(Lmiui/app/resourcebrowser/BatchMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 98
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 99
    invoke-direct {p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->setPlayerDataSource()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->stop(Z)V

    .line 114
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .parameter "hasError"

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 119
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 122
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 123
    iput-object v1, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 125
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mListener:Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mListener:Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;

    invoke-interface {v0, p1}, Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;->finish(Z)V

    .line 129
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mCurrentItem:I

    .line 130
    sget-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->UNDEFINED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lmiui/app/resourcebrowser/BatchMediaPlayer;->mState:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    .line 131
    return-void
.end method
