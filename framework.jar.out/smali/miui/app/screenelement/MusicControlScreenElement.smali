.class public Lmiui/app/screenelement/MusicControlScreenElement;
.super Lmiui/app/screenelement/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;


# static fields
.field private static final BUTTON_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final BUTTON_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field private static final MUSIC_SHOW_NONE:I = 0x0

.field private static final MUSIC_SHOW_PLAY:I = 0x2

.field private static final MUSIC_SHOW_STOP:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/app/screenelement/ButtonScreenElement;

.field private mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;

.field private mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;

.field private mButtonPrev:Lmiui/app/screenelement/ButtonScreenElement;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

.field private mIsOnlineSongBlocking:Z

.field private mMusicStatus:I

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mTextDisplay:Lmiui/app/screenelement/TextScreenElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 4
    .parameter "ele"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 101
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v2, Lmiui/app/screenelement/MusicControlScreenElement$1;

    invoke-direct {v2, p0}, Lmiui/app/screenelement/MusicControlScreenElement$1;-><init>(Lmiui/app/screenelement/MusicControlScreenElement;)V

    iput-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v2, Lmiui/app/screenelement/MusicControlScreenElement$2;

    invoke-direct {v2, p0}, Lmiui/app/screenelement/MusicControlScreenElement$2;-><init>(Lmiui/app/screenelement/MusicControlScreenElement;)V

    iput-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 49
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/ScreenElement;

    .line 50
    .local v1, se:Lmiui/app/screenelement/ScreenElement;
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_prev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    check-cast v1, Lmiui/app/screenelement/ButtonScreenElement;

    .end local v1           #se:Lmiui/app/screenelement/ScreenElement;
    iput-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPrev:Lmiui/app/screenelement/ButtonScreenElement;

    goto :goto_0

    .line 52
    .restart local v1       #se:Lmiui/app/screenelement/ScreenElement;
    :cond_1
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_next"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    check-cast v1, Lmiui/app/screenelement/ButtonScreenElement;

    .end local v1           #se:Lmiui/app/screenelement/ScreenElement;
    iput-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonNext:Lmiui/app/screenelement/ButtonScreenElement;

    goto :goto_0

    .line 54
    .restart local v1       #se:Lmiui/app/screenelement/ScreenElement;
    :cond_2
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    check-cast v1, Lmiui/app/screenelement/ButtonScreenElement;

    .end local v1           #se:Lmiui/app/screenelement/ScreenElement;
    iput-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;

    goto :goto_0

    .line 56
    .restart local v1       #se:Lmiui/app/screenelement/ScreenElement;
    :cond_3
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    check-cast v1, Lmiui/app/screenelement/ButtonScreenElement;

    .end local v1           #se:Lmiui/app/screenelement/ScreenElement;
    iput-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;

    goto :goto_0

    .line 58
    .restart local v1       #se:Lmiui/app/screenelement/ScreenElement;
    :cond_4
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_display"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    check-cast v1, Lmiui/app/screenelement/TextScreenElement;

    .end local v1           #se:Lmiui/app/screenelement/ScreenElement;
    iput-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;

    goto :goto_0

    .line 60
    .restart local v1       #se:Lmiui/app/screenelement/ScreenElement;
    :cond_5
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_album_cover"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    check-cast v1, Lmiui/app/screenelement/ImageScreenElement;

    .end local v1           #se:Lmiui/app/screenelement/ScreenElement;
    iput-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    goto :goto_0

    .line 64
    :cond_6
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPrev:Lmiui/app/screenelement/ButtonScreenElement;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonNext:Lmiui/app/screenelement/ButtonScreenElement;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;

    if-nez v2, :cond_8

    .line 65
    :cond_7
    new-instance v2, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v3, "invalid music control"

    invoke-direct {v2, v3}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_8
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPrev:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {p0, v2}, Lmiui/app/screenelement/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/ButtonScreenElement;)V

    .line 68
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonNext:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {p0, v2}, Lmiui/app/screenelement/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/ButtonScreenElement;)V

    .line 69
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {p0, v2}, Lmiui/app/screenelement/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/ButtonScreenElement;)V

    .line 70
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {p0, v2}, Lmiui/app/screenelement/MusicControlScreenElement;->setupButton(Lmiui/app/screenelement/ButtonScreenElement;)V

    .line 71
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ButtonScreenElement;->show(Z)V

    .line 72
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    if-eqz v2, :cond_9

    .line 73
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60202cd

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 76
    :cond_9
    const-string v2, "autoShow"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAutoShow:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lmiui/app/screenelement/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmiui/app/screenelement/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/screenelement/MusicControlScreenElement;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/screenelement/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmiui/app/screenelement/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$302(Lmiui/app/screenelement/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/TextScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/TextScreenElement;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/app/screenelement/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/app/screenelement/MusicControlScreenElement;->updateMusic()V

    return-void
.end method

.method static synthetic access$600(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/app/screenelement/MusicControlScreenElement;)Lmiui/app/screenelement/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$802(Lmiui/app/screenelement/MusicControlScreenElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$900(Lmiui/app/screenelement/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getKeyCode(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 342
    const-string v0, "music_prev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/16 v0, 0x58

    .line 349
    :goto_0
    return v0

    .line 344
    :cond_0
    const-string v0, "music_next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    const/16 v0, 0x57

    goto :goto_0

    .line 346
    :cond_1
    const-string v0, "music_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "music_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    :cond_2
    const/16 v0, 0x55

    goto :goto_0

    .line 349
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, requestIntent:Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 160
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    .line 163
    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    if-nez v4, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, albumName:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, artistName:Ljava/lang/String;
    if-nez p2, :cond_2

    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v4}, Lmiui/app/screenelement/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v4}, Lmiui/app/screenelement/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 174
    :cond_2
    const-string v4, "album_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 175
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, albumPath:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 177
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    .line 178
    :cond_3
    invoke-direct {p0}, Lmiui/app/screenelement/MusicControlScreenElement;->requestAlbum()V

    goto :goto_0

    .line 180
    :cond_4
    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    iget-object v5, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 354
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 356
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 193
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    if-nez v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v2, "album"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 197
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 199
    :try_start_0
    const-string/jumbo v2, "tmp_album_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, albumPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 201
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-boolean v5, v2, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    goto :goto_0

    .line 205
    :cond_2
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 202
    .end local v0           #albumPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 203
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v2, "MusicControlScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load album cover bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-boolean v5, v2, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    goto :goto_0

    .line 205
    :cond_3
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_2

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mImageAlbumCover:Lmiui/app/screenelement/ImageScreenElement;

    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v3, v4}, Lmiui/app/screenelement/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-boolean v5, v3, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    throw v2

    .line 205
    :cond_4
    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method private setupButton(Lmiui/app/screenelement/ButtonScreenElement;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/ButtonScreenElement;->setListener(Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;)V

    .line 82
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/ButtonScreenElement;->setParent(Lmiui/app/screenelement/AnimatedScreenElement;)V

    .line 84
    :cond_0
    return-void
.end method

.method private updateMusic()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "music_state"

    .line 283
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v0

    .line 285
    .local v0, isMusicActive:Z
    if-nez v0, :cond_3

    move v1, v4

    .line 286
    .local v1, showPlay:Z
    :goto_0
    iget-boolean v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    if-eqz v2, :cond_0

    .line 287
    const/4 v1, 0x0

    .line 290
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPlay:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-virtual {v2, v1}, Lmiui/app/screenelement/ButtonScreenElement;->show(Z)V

    .line 291
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mButtonPause:Lmiui/app/screenelement/ButtonScreenElement;

    if-nez v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ButtonScreenElement;->show(Z)V

    .line 293
    iget v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I

    packed-switch v2, :pswitch_data_0

    .line 308
    :cond_2
    :goto_1
    return-void

    .end local v1           #showPlay:Z
    :cond_3
    move v1, v3

    .line 285
    goto :goto_0

    .line 295
    .restart local v1       #showPlay:Z
    :pswitch_0
    if-nez v0, :cond_2

    .line 296
    iput v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I

    .line 297
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v4, "music_state"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1

    .line 302
    :pswitch_1
    if-eqz v0, :cond_2

    .line 303
    const/4 v2, 0x2

    iput v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I

    .line 304
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v4, "music_state"

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {v2, v3, v6, v4, v5}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    .line 213
    invoke-super {p0}, Lmiui/app/screenelement/ElementGroup;->init()V

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v3, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v3, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v3, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 222
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v1

    .line 223
    .local v1, isMusicActive:Z
    if-eqz v1, :cond_0

    .line 224
    const/4 v3, 0x2

    iput v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I

    .line 225
    new-instance v2, Landroid/content/Intent;

    const-string v3, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, requestIntent:Landroid/content/Intent;
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    iget-boolean v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v3, :cond_0

    .line 229
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/app/screenelement/MusicControlScreenElement;->show(Z)V

    .line 231
    .end local v2           #requestIntent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v4, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v5, "music_state"

    if-eqz v1, :cond_1

    const-wide/high16 v6, 0x3ff0

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 233
    return-void

    .line 231
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-direct {p0, p1}, Lmiui/app/screenelement/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    .line 262
    .local v0, keyCode:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 266
    :goto_0
    return v1

    .line 265
    :cond_0
    invoke-direct {p0, v2, v0}, Lmiui/app/screenelement/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    move v1, v2

    .line 266
    goto :goto_0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 312
    invoke-direct {p0, p1}, Lmiui/app/screenelement/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 313
    .local v1, keyCode:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 314
    const/4 v2, 0x0

    .line 338
    :goto_0
    return v2

    .line 315
    :cond_0
    invoke-direct {p0, v4, v1}, Lmiui/app/screenelement/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    .line 316
    move-object v0, p1

    .line 317
    .local v0, _name:Ljava/lang/String;
    iget-object v2, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    new-instance v3, Lmiui/app/screenelement/MusicControlScreenElement$3;

    invoke-direct {v3, p0, v0}, Lmiui/app/screenelement/MusicControlScreenElement$3;-><init>(Lmiui/app/screenelement/MusicControlScreenElement;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v2, v4

    .line 338
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void
.end method

.method public show(Z)V
    .locals 5
    .parameter "show"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lmiui/app/screenelement/ElementGroup;->show(Z)V

    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mMusicStatus:I

    .line 91
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 97
    :goto_0
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string/jumbo v2, "visibility"

    if-eqz p1, :cond_1

    const-wide/high16 v3, 0x3ff0

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 99
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lmiui/app/screenelement/MusicControlScreenElement;->updateMusic()V

    .line 94
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/app/screenelement/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 97
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_1
.end method
