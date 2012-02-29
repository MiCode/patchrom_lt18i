.class public abstract Lmiui/app/resourcebrowser/ResourceAdapter;
.super Lmiui/widget/AsyncImageAdapter;
.source "ResourceAdapter.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/widget/AsyncImageAdapter",
        "<",
        "Lmiui/app/resourcebrowser/Resource;",
        ">;",
        "Lmiui/app/resourcebrowser/IntentConstants;"
    }
.end annotation


# instance fields
.field private mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

.field protected mContext:Landroid/app/Activity;

.field private mCurrentPlayingButton:Landroid/widget/ImageView;

.field private mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;

.field protected mCurrentUsingPath:Ljava/lang/String;

.field protected mDisplayType:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mMetaData:Landroid/os/Bundle;

.field protected mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

.field protected mResourceSetCategory:I

.field protected mResourceSetCode:Ljava/lang/String;

.field protected mResourceSetPackage:Ljava/lang/String;

.field protected mResourceSetSubpackage:Ljava/lang/String;

.field protected mShowRingtoneName:Z

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 55
    invoke-direct {p0}, Lmiui/widget/AsyncImageAdapter;-><init>()V

    .line 56
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    .line 59
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v6, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSetCode:Ljava/lang/String;

    .line 60
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v6, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSetCategory:I

    .line 62
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v6, "com.miui.android.resourcebrowser.SHOW_RINGTONE_NAME"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mShowRingtoneName:Z

    .line 64
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceAdapter;->refreshDataSet()V

    .line 66
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v6, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    .line 67
    iget v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    invoke-static {v5}, Lmiui/app/resourcebrowser/ResourceHelper;->isCombineView(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setDataPerLine(I)V

    .line 71
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setAutoLoadMoreStyle(I)V

    .line 72
    const/16 v5, 0x1e

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceAdapter;->getDataPerLine()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setPreloadOffset(I)V

    .line 74
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    invoke-static {v6}, Lmiui/app/resourcebrowser/ResourceHelper;->getViewResource(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, view:Landroid/view/View;
    const v5, 0x60d001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, imageView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 78
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailWidth:I

    .line 79
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailHeight:I

    .line 80
    iget v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailWidth:I

    if-lez v5, :cond_1

    iget v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailHeight:I

    if-gtz v5, :cond_2

    .line 81
    :cond_1
    iget v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    invoke-static {v5}, Lmiui/app/resourcebrowser/ResourceHelper;->isCombineView(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 83
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 84
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #parent:Landroid/view/ViewParent;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 85
    .local v3, parentParams:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailWidth:I

    .line 86
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailHeight:I

    .line 90
    .end local v3           #parentParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lmiui/app/resourcebrowser/ResourceAdapter;)Lmiui/app/resourcebrowser/Resource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/app/resourcebrowser/ResourceAdapter;Lmiui/app/resourcebrowser/Resource;)Lmiui/app/resourcebrowser/Resource;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/app/resourcebrowser/ResourceAdapter;Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceAdapter;->playMusic(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/resourcebrowser/ResourceAdapter;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/app/resourcebrowser/ResourceAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lmiui/app/resourcebrowser/ResourceAdapter;Landroid/view/View;ILmiui/app/resourcebrowser/Resource;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/app/resourcebrowser/ResourceAdapter;->bindText(Landroid/view/View;ILmiui/app/resourcebrowser/Resource;Ljava/lang/String;)V

    return-void
.end method

.method private bindCombineView(Landroid/view/View;ILjava/util/List;III)V
    .locals 7
    .parameter "view"
    .parameter "id"
    .parameter
    .parameter "position"
    .parameter "offset"
    .parameter "titleId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, resourceItem:Lmiui/app/resourcebrowser/Resource;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge p5, v4, :cond_0

    .line 132
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #resourceItem:Lmiui/app/resourcebrowser/Resource;
    check-cast v1, Lmiui/app/resourcebrowser/Resource;

    .line 134
    .restart local v1       #resourceItem:Lmiui/app/resourcebrowser/Resource;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 135
    .local v2, thumbnail:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 136
    add-int v4, p4, p5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 137
    new-instance v4, Lmiui/app/resourcebrowser/ResourceAdapter$1;

    invoke-direct {v4, p0}, Lmiui/app/resourcebrowser/ResourceAdapter$1;-><init>(Lmiui/app/resourcebrowser/ResourceAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 150
    .local v0, parent:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-direct {p0, v0, v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->setResourceFlag(Landroid/view/View;Lmiui/app/resourcebrowser/Resource;)V

    .line 152
    const-string v4, "m_title"

    invoke-direct {p0, p1, p6, v1, v4}, Lmiui/app/resourcebrowser/ResourceAdapter;->bindText(Landroid/view/View;ILmiui/app/resourcebrowser/Resource;Ljava/lang/String;)V

    .line 160
    .end local v0           #parent:Landroid/view/View;
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 154
    .restart local p0
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, title:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindText(Landroid/view/View;ILmiui/app/resourcebrowser/Resource;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "resourceItem"
    .parameter "key"

    .prologue
    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p3}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_0
    return-void
.end method

.method private initPlayer()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Lmiui/app/resourcebrowser/BatchMediaPlayer;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiui/app/resourcebrowser/BatchMediaPlayer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    .line 328
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    new-instance v1, Lmiui/app/resourcebrowser/ResourceAdapter$3;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/ResourceAdapter$3;-><init>(Lmiui/app/resourcebrowser/ResourceAdapter;)V

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->setListener(Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;)V

    .line 356
    return-void
.end method

.method private playMusic(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;)V
    .locals 2
    .parameter "view"
    .parameter "resourceItem"

    .prologue
    .line 307
    const v0, 0x6020322

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iput-object p2, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;

    .line 309
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;

    .line 311
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceAdapter;->initPlayer()V

    .line 314
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {p0, p2}, Lmiui/app/resourcebrowser/ResourceAdapter;->getMusicPlayList(Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->setPlayList(Ljava/util/List;)V

    .line 315
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->start()V

    .line 316
    return-void
.end method

.method private setPlayerDataSource(Landroid/media/MediaPlayer;Lmiui/app/resourcebrowser/Resource;)V
    .locals 7
    .parameter "player"
    .parameter "resourceItem"

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p2}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, localPath:Ljava/lang/String;
    invoke-virtual {p2}, Lmiui/app/resourcebrowser/Resource;->getOnlinePath()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, onlinePath:Ljava/lang/String;
    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceHelper;->getUriByPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 291
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v5, v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v5, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 304
    .end local v1           #localPath:Ljava/lang/String;
    .end local v2           #onlinePath:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 294
    .restart local v1       #localPath:Ljava/lang/String;
    .restart local v2       #onlinePath:Ljava/lang/String;
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_1
    if-eqz v2, :cond_0

    .line 295
    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 297
    .end local v1           #localPath:Ljava/lang/String;
    .end local v2           #onlinePath:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 298
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 300
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 302
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setResourceFlag(Landroid/view/View;Lmiui/app/resourcebrowser/Resource;)V
    .locals 2
    .parameter "parent"
    .parameter "resourceItem"

    .prologue
    .line 163
    if-eqz p2, :cond_0

    .line 164
    const v1, 0x60d0014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 165
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0, p2}, Lmiui/app/resourcebrowser/ResourceAdapter;->getFlagId(Lmiui/app/resourcebrowser/Resource;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V
    .locals 2
    .parameter "view"
    .parameter "data"
    .parameter "index"
    .parameter
    .parameter "showEmpty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lmiui/app/resourcebrowser/Resource;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p4, partialData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSetCategory:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;

    invoke-virtual {p2, v0}, Lmiui/app/resourcebrowser/Resource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const v0, 0x6020322

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    :goto_0
    new-instance v0, Lmiui/app/resourcebrowser/ResourceAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lmiui/app/resourcebrowser/ResourceAdapter$2;-><init>(Lmiui/app/resourcebrowser/ResourceAdapter;Lmiui/app/resourcebrowser/Resource;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .end local p0
    :goto_1
    return-void

    .line 251
    .restart local p0
    :cond_0
    const v0, 0x602031f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 266
    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    :cond_2
    if-eqz p5, :cond_3

    .line 268
    const v0, 0x602022c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 270
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 273
    :cond_4
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method protected bindContentView(Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 9
    .parameter "view"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceHelper;->getViewResource(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 114
    :cond_0
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->isCombineView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    const v2, 0x60d001d

    const v6, 0x60d0020

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lmiui/app/resourcebrowser/ResourceAdapter;->bindCombineView(Landroid/view/View;ILjava/util/List;III)V

    .line 117
    const v2, 0x60d001e

    const v6, 0x60d0021

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lmiui/app/resourcebrowser/ResourceAdapter;->bindCombineView(Landroid/view/View;ILjava/util/List;III)V

    .line 118
    const v2, 0x60d001f

    const/4 v5, 0x2

    const v6, 0x60d0022

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lmiui/app/resourcebrowser/ResourceAdapter;->bindCombineView(Landroid/view/View;ILjava/util/List;III)V

    .line 125
    :goto_0
    invoke-virtual {p1, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 126
    return-object p1

    .line 120
    :cond_1
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/app/resourcebrowser/Resource;

    .line 121
    .local v7, resourceItem:Lmiui/app/resourcebrowser/Resource;
    invoke-direct {p0, p1, v7}, Lmiui/app/resourcebrowser/ResourceAdapter;->setResourceFlag(Landroid/view/View;Lmiui/app/resourcebrowser/Resource;)V

    .line 122
    const v0, 0x60d0024

    const-string v1, "m_title"

    invoke-direct {p0, p1, v0, v7, v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->bindText(Landroid/view/View;ILmiui/app/resourcebrowser/Resource;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic bindPartialContentView(Landroid/view/View;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    check-cast p2, Lmiui/app/resourcebrowser/Resource;

    .end local p2
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/app/resourcebrowser/ResourceAdapter;->bindPartialContentView(Landroid/view/View;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;)V

    return-void
.end method

.method protected bindPartialContentView(Landroid/view/View;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;)V
    .locals 7
    .parameter "view"
    .parameter "data"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lmiui/app/resourcebrowser/Resource;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p4, partialData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->isMultipleView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const v0, 0x60d001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V

    .line 226
    const v0, 0x60d001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V

    .line 227
    const v0, 0x60d001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V

    .line 243
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceAdapter;->getDataPerLine()I

    move-result v0

    rem-int v6, p3, v0

    .line 230
    .local v6, offset:I
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    const v0, 0x60d001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V

    goto :goto_0

    .line 235
    :pswitch_1
    const v0, 0x60d001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V

    goto :goto_0

    .line 238
    :pswitch_2
    const v0, 0x60d001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected checkResourceModifyTime()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic getCacheKeys(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lmiui/app/resourcebrowser/Resource;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceAdapter;->getCacheKeys(Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheKeys(Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;
    .locals 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/app/resourcebrowser/Resource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, cacheKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget v4, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    invoke-static {v4}, Lmiui/app/resourcebrowser/ResourceHelper;->isMultipleView(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    move v3, v4

    .line 195
    .local v3, total:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 196
    invoke-virtual {p1, v1}, Lmiui/app/resourcebrowser/Resource;->getLocalThumbnail(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, thumbnailPath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p1, v1}, Lmiui/app/resourcebrowser/Resource;->getLocalThumbnail(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    .end local v1           #i:I
    .end local v2           #thumbnailPath:Ljava/lang/String;
    .end local v3           #total:I
    :cond_1
    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    .line 201
    .restart local v1       #i:I
    .restart local v3       #total:I
    :cond_2
    return-object v0
.end method

.method protected getFlagId(Lmiui/app/resourcebrowser/Resource;)I
    .locals 3
    .parameter "resourceItem"

    .prologue
    .line 170
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/Resource;->getStatus()I

    move-result v0

    .line 171
    .local v0, updateStatus:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    const v1, 0x6020235

    .line 180
    :goto_0
    return v1

    .line 173
    :cond_0
    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentUsingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const v1, 0x6020236

    goto :goto_0

    .line 177
    :cond_1
    const v1, 0x6020234

    goto :goto_0

    .line 180
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 359
    invoke-static {p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceHelper;->getDefaultFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLoadPartialDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">.Async",
            "LoadPartialDataTask;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;

    invoke-direct {v0, p0}, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;-><init>(Lmiui/widget/AsyncImageAdapter;)V

    .line 280
    .local v0, task:Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;,"Lmiui/widget/AsyncImageAdapter<Lmiui/app/resourcebrowser/Resource;>.AsyncLoadImageTask;"
    new-instance v1, Lmiui/os/DaemonAsyncTask$StackJobPool;

    invoke-direct {v1}, Lmiui/os/DaemonAsyncTask$StackJobPool;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->setJobPool(Lmiui/os/DaemonAsyncTask$JobPool;)V

    .line 281
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailWidth:I

    iget v2, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mThumbnailHeight:I

    invoke-virtual {v0, v1, v2}, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->setTargetSize(II)V

    .line 282
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mDisplayType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->setScaled(Z)V

    .line 283
    return-object v0

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMusicPlayList(Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;
    .locals 1
    .parameter "resourceItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/app/resourcebrowser/Resource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmiui/app/resourcebrowser/ResourceHelper;->getDefaultMusicPlayList(Landroid/content/Context;Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResourceSet()Lmiui/app/resourcebrowser/ResourceSet;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    return-object v0
.end method

.method protected bridge synthetic isValidKey(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    check-cast p2, Lmiui/app/resourcebrowser/Resource;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceAdapter;->isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/Resource;I)Z

    move-result v0

    return v0
.end method

.method protected isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/Resource;I)Z
    .locals 8
    .parameter "key"
    .parameter "data"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 206
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 207
    .local v2, localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v7

    .line 214
    :goto_0
    return v3

    .line 210
    :cond_0
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceAdapter;->checkResourceModifyTime()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p2}, Lmiui/app/resourcebrowser/Resource;->getModifiedTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move v3, v7

    .line 212
    goto :goto_0

    .line 214
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmiui/widget/AsyncImageAdapter;->isValidKey(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    goto :goto_0
.end method

.method public refreshDataSet()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSetPackage:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSetSubpackage:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSetSubpackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceSet;->getInstance(Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    .line 100
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->setDataSet(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public setCurrentUsingPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 104
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentUsingPath:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentUsingPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public stopMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->stop()V

    .line 322
    :cond_0
    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;

    .line 323
    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;

    .line 324
    return-void
.end method
