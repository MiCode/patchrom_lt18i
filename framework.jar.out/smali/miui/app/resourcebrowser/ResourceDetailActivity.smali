.class public Lmiui/app/resourcebrowser/ResourceDetailActivity;
.super Landroid/app/Activity;
.source "ResourceDetailActivity.java"

# interfaces
.implements Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;
.implements Lmiui/app/resourcebrowser/IntentConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;,
        Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;,
        Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;
    }
.end annotation


# instance fields
.field protected mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

.field protected mCategoryCode:Ljava/lang/String;

.field protected mDeleteButton:Landroid/widget/ImageButton;

.field protected mDownloadButton:Landroid/widget/Button;

.field protected mDownloadManager:Landroid/app/DownloadManager;

.field protected mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;

.field protected mDownloadSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/app/resourcebrowser/DownloadFileTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mFullScreen:Z

.field protected mHasNext:Z

.field protected mHasPrevious:Z

.field protected mKeyword:Ljava/lang/String;

.field protected mLocalPath:Ljava/lang/String;

.field protected mMetaData:Landroid/os/Bundle;

.field private mNeedRecyclePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mNextButton:Landroid/widget/ImageView;

.field protected mOnlinePath:Ljava/lang/String;

.field protected mOnlineResourceSet:Z

.field protected mPlayButton:Landroid/widget/ImageView;

.field protected mPreview:Lmiui/widget/ScrollableScreenView;

.field protected mPreviewHeight:I

.field protected mPreviousButton:Landroid/widget/ImageView;

.field protected mReachBottom:Z

.field protected mResourceIndex:I

.field protected mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

.field protected mResourceSetCategory:I

.field protected mResourceSetCode:Ljava/lang/String;

.field protected mResourceSetPackage:Ljava/lang/String;

.field protected mResourceSetSubpackage:Ljava/lang/String;

.field protected mRingtoneName:Landroid/widget/TextView;

.field protected mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

.field protected mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mTitle:Ljava/lang/String;

.field protected mhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-boolean v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasPrevious:Z

    .line 72
    iput-boolean v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasNext:Z

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadSet:Ljava/util/Set;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mhandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNeedRecyclePreviewList:Ljava/util/ArrayList;

    .line 974
    return-void
.end method

.method static synthetic access$000(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->navigateToPreviousResource()V

    return-void
.end method

.method static synthetic access$100(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->navigateToNextResource()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->delete()V

    return-void
.end method

.method static synthetic access$300(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode()V

    return-void
.end method

.method static synthetic access$400(Lmiui/app/resourcebrowser/ResourceDetailActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterFullScreenMode(I)V

    return-void
.end method

.method static synthetic access$500(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->initPlayer()V

    return-void
.end method

.method static synthetic access$600(Lmiui/app/resourcebrowser/ResourceDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNeedRecyclePreviewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private bindScreenImageView()V
    .locals 20

    .prologue
    .line 514
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResourceInformation()Landroid/os/Bundle;

    move-result-object v3

    .line 515
    .local v3, bundle:Landroid/os/Bundle;
    const-string v18, "local_thumbnail"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 516
    .local v13, localThumbnail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "local_preview"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 517
    .local v12, localPreview:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "online_preview"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 519
    .local v15, onlinePreview:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->recyclePreviewImage()V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/Resource;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lmiui/app/resourcebrowser/Resource;->getStatus()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    move/from16 v17, v18

    .line 522
    .local v17, updatePreview:Z
    :goto_0
    const-string v18, "m_lastupdate"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 523
    .local v10, lastUpdate:J
    const/16 v18, 0xf

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 524
    .local v4, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v4, :cond_5

    .line 525
    new-instance v9, Landroid/widget/ImageView;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 526
    .local v9, imageView:Landroid/widget/ImageView;
    sget-object v18, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 528
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 529
    .local v6, filePath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v5, file:Ljava/io/File;
    if-eqz v15, :cond_0

    if-eqz v17, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    cmp-long v18, v18, v10

    if-gez v18, :cond_0

    .line 531
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 534
    :cond_0
    const/4 v2, 0x0

    .line 535
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 536
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 549
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNeedRecyclePreviewList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_2
    new-instance v8, Landroid/widget/FrameLayout;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 555
    .local v8, imageContainer:Landroid/widget/FrameLayout;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 556
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 557
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode(Landroid/view/View;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lmiui/widget/ScrollableScreenView;->addView(Landroid/view/View;)V

    .line 524
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 521
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #count:I
    .end local v5           #file:Ljava/io/File;
    .end local v6           #filePath:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #imageContainer:Landroid/widget/FrameLayout;
    .end local v9           #imageView:Landroid/widget/ImageView;
    .end local v10           #lastUpdate:J
    .end local v17           #updatePreview:Z
    :cond_3
    const/16 v18, 0x0

    move/from16 v17, v18

    goto/16 :goto_0

    .line 537
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #count:I
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #filePath:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v9       #imageView:Landroid/widget/ImageView;
    .restart local v10       #lastUpdate:J
    .restart local v17       #updatePreview:Z
    :cond_4
    if-eqz v15, :cond_1

    .line 538
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 539
    .local v14, onlinePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 540
    new-instance v16, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    .line 541
    .local v16, task:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;
    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->setOffset(I)V

    .line 542
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lmiui/app/resourcebrowser/ResourceConstants;->PREVIEW_PATH:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetCode:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->setTargetDirectory(Ljava/lang/String;)V

    .line 543
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 544
    if-eqz v13, :cond_1

    .line 545
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 561
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #filePath:Ljava/lang/String;
    .end local v9           #imageView:Landroid/widget/ImageView;
    .end local v14           #onlinePath:Ljava/lang/String;
    .end local v16           #task:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;
    :cond_5
    if-nez v4, :cond_6

    .line 562
    new-instance v9, Landroid/widget/ImageView;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 563
    .restart local v9       #imageView:Landroid/widget/ImageView;
    sget-object v18, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 564
    const v18, 0x602022c

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 565
    new-instance v8, Landroid/widget/FrameLayout;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 566
    .restart local v8       #imageContainer:Landroid/widget/FrameLayout;
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 567
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode(Landroid/view/View;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lmiui/widget/ScrollableScreenView;->addView(Landroid/view/View;)V

    .line 570
    .end local v8           #imageContainer:Landroid/widget/FrameLayout;
    .end local v9           #imageView:Landroid/widget/ImageView;
    :cond_6
    return-void
.end method

.method private bindScreenView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 410
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScrollableScreenView;->removeAllScreens()V

    .line 411
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetCategory:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 412
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->bindScreenRingtoneView()V

    .line 413
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->stopMusic()V

    .line 418
    :goto_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScrollableScreenView;->getScreenCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lmiui/widget/ScrollableScreenView;->setSeekBarVisibility(I)V

    .line 419
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v1, v4}, Lmiui/widget/ScrollableScreenView;->setCurrentScreen(I)V

    .line 420
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x60c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xa0

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviewHeight:I

    .line 422
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScrollableScreenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 423
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 424
    return-void

    .line 415
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->bindScreenImageView()V

    goto :goto_0

    .line 418
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private delete()V
    .locals 5

    .prologue
    .line 691
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 694
    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    const/16 v3, 0x2f

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, endcodedPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/app/resourcebrowser/ResourceConstants;->PREVIEW_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 696
    iget-boolean v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mOnlineResourceSet:Z

    if-eqz v2, :cond_1

    .line 697
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/Resource;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmiui/app/resourcebrowser/Resource;->setStatus(I)V

    .line 698
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setResourceStatus()V

    .line 703
    .end local v0           #endcodedPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 700
    .restart local v0       #endcodedPath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->finish()V

    goto :goto_0
.end method

.method private downloadResource()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 955
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mOnlinePath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getConfirmedDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, downloadUrl:Ljava/lang/String;
    invoke-direct {p0, v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getUriFromUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 957
    .local v3, uri:Ljava/net/URI;
    if-nez v3, :cond_0

    .line 972
    :goto_0
    return-void

    .line 961
    :cond_0
    new-instance v1, Landroid/app/MiuiDownloadManager$Request;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/MiuiDownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 962
    .local v1, request:Landroid/app/MiuiDownloadManager$Request;
    invoke-virtual {v1, v6}, Landroid/app/MiuiDownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 963
    invoke-direct {p0, v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/MiuiDownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 964
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/MiuiDownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 965
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/MiuiDownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, tmpDownloadPath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 968
    invoke-virtual {v1, v2}, Landroid/app/MiuiDownloadManager$Request;->setAppointName(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 969
    invoke-virtual {v1, v6}, Landroid/app/MiuiDownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 970
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/MiuiDownloadManager$Request;->setAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 971
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v4, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_0
.end method

.method private enterFullScreenMode(I)V
    .locals 10
    .parameter "previewIndex"

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 427
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 428
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 430
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const v6, 0x60d002a

    invoke-virtual {p0, v6}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 431
    .local v5, root:Landroid/widget/LinearLayout;
    const v6, 0x60d004d

    invoke-virtual {p0, v6}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 432
    .local v0, detail:Landroid/widget/LinearLayout;
    const v6, 0x60d0052

    invoke-virtual {p0, v6}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 433
    .local v4, parent:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 434
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v6, v8}, Lmiui/widget/ScrollableScreenView;->setSeekBarVisibility(I)V

    .line 437
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScrollableScreenView;->getScreenCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 438
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v6, v1}, Lmiui/widget/ScrollableScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, imageContainer:Landroid/view/View;
    invoke-direct {p0, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterFullScreenMode(Landroid/view/View;)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v2           #imageContainer:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lmiui/widget/ScrollableScreenView;->setOnScrollOutListener(Lmiui/widget/ScrollableScreenView$OnScrollOutListener;)V

    .line 442
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v6, p1}, Lmiui/widget/ScrollableScreenView;->setCurrentScreen(I)V

    .line 443
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mFullScreen:Z

    .line 444
    return-void
.end method

.method private enterFullScreenMode(Landroid/view/View;)V
    .locals 6
    .parameter "imageContainer"

    .prologue
    const/16 v5, 0x11

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 447
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 449
    .local v0, containerParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 451
    .local v1, imageParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 453
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 454
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 455
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 456
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 457
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 459
    new-instance v3, Lmiui/app/resourcebrowser/ResourceDetailActivity$6;

    invoke-direct {v3, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$6;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    return-void
.end method

.method private enterNormalMode()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 468
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 469
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    iget v7, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviewHeight:I

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const v6, 0x60d002a

    invoke-virtual {p0, v6}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 471
    .local v5, root:Landroid/widget/LinearLayout;
    const v6, 0x60d004d

    invoke-virtual {p0, v6}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 472
    .local v0, detail:Landroid/widget/LinearLayout;
    const v6, 0x60d0052

    invoke-virtual {p0, v6}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 473
    .local v4, parent:Landroid/widget/FrameLayout;
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 474
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v4, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    iget-object v7, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v7}, Lmiui/widget/ScrollableScreenView;->getScreenCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    move v7, v10

    :goto_0
    invoke-virtual {v6, v7}, Lmiui/widget/ScrollableScreenView;->setSeekBarVisibility(I)V

    .line 477
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScrollableScreenView;->getScreenCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 478
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v6, v1}, Lmiui/widget/ScrollableScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 479
    .local v2, imageContainer:Landroid/view/View;
    invoke-direct {p0, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode(Landroid/view/View;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 476
    .end local v1           #i:I
    .end local v2           #imageContainer:Landroid/view/View;
    :cond_0
    const/16 v7, 0x8

    goto :goto_0

    .line 481
    .restart local v1       #i:I
    :cond_1
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    iget-object v7, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

    invoke-virtual {v6, v7}, Lmiui/widget/ScrollableScreenView;->setOnScrollOutListener(Lmiui/widget/ScrollableScreenView$OnScrollOutListener;)V

    .line 482
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScrollableScreenView;->requestFocus()Z

    .line 484
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mhandler:Landroid/os/Handler;

    new-instance v7, Lmiui/app/resourcebrowser/ResourceDetailActivity$7;

    invoke-direct {v7, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$7;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    iput-boolean v10, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mFullScreen:Z

    .line 491
    return-void
.end method

.method private enterNormalMode(Landroid/view/View;)V
    .locals 7
    .parameter "imageContainer"

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0xa

    const/4 v4, -0x2

    .line 494
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v4, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 496
    .local v0, containerParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 498
    .local v1, imageParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    const/16 v3, 0x142

    invoke-virtual {p1, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 500
    const/16 v3, 0x28

    const/16 v4, 0x3c

    invoke-virtual {p1, v5, v3, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 501
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 502
    .local v2, imageView:Landroid/widget/ImageView;
    const v3, 0x60202fd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 503
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 504
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    return-void

    .line 505
    :cond_0
    new-instance v3, Lmiui/app/resourcebrowser/ResourceDetailActivity$8;

    invoke-direct {v3, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$8;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    goto :goto_0
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, -0x1

    .line 826
    move-object v2, p1

    .line 827
    .local v2, name:Ljava/lang/String;
    const-string v0, ""

    .line 828
    .local v0, extension:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 829
    .local v1, index:I
    if-eq v4, v1, :cond_0

    .line 830
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 832
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 833
    if-eq v4, v1, :cond_1

    .line 834
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getUriFromUrl(Ljava/lang/String;)Ljava/net/URI;
    .locals 14
    .parameter "url"

    .prologue
    const/4 v2, -0x1

    const/4 v13, 0x0

    .line 794
    const/4 v11, 0x0

    .line 797
    .local v11, uri:Ljava/net/URI;
    :try_start_0
    new-instance v10, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([B)V

    .line 799
    .local v10, newUrl:Ljava/lang/String;
    new-instance v12, Landroid/net/WebAddress;

    invoke-direct {v12, v10}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 800
    .local v12, w:Landroid/net/WebAddress;
    const/4 v7, 0x0

    .line 801
    .local v7, frag:Ljava/lang/String;
    const/4 v6, 0x0

    .line 802
    .local v6, query:Ljava/lang/String;
    iget-object v5, v12, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    .line 804
    .local v5, path:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 806
    const/16 v1, 0x23

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 807
    .local v9, idx:I
    if-eq v9, v2, :cond_0

    .line 808
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 809
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 811
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 812
    if-eq v9, v2, :cond_1

    .line 813
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 814
    const/4 v1, 0x0

    invoke-virtual {v5, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 817
    .end local v9           #idx:I
    :cond_1
    new-instance v0, Ljava/net/URI;

    iget-object v1, v12, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    iget-object v2, v12, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    iget-object v3, v12, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v4, v12, Landroid/net/WebAddress;->mPort:I

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11           #uri:Ljava/net/URI;
    .local v0, uri:Ljava/net/URI;
    move-object v1, v0

    .line 822
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #query:Ljava/lang/String;
    .end local v7           #frag:Ljava/lang/String;
    .end local v10           #newUrl:Ljava/lang/String;
    .end local v12           #w:Landroid/net/WebAddress;
    :goto_0
    return-object v1

    .line 818
    .end local v0           #uri:Ljava/net/URI;
    .restart local v11       #uri:Ljava/net/URI;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 819
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x6090063

    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 820
    const/4 v1, 0x0

    move-object v0, v11

    .end local v11           #uri:Ljava/net/URI;
    .restart local v0       #uri:Ljava/net/URI;
    goto :goto_0
.end method

.method private initPlayer()V
    .locals 2

    .prologue
    .line 573
    new-instance v0, Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-direct {v0, p0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    .line 574
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    new-instance v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->setListener(Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;)V

    .line 593
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/Resource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getMusicPlayList(Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->setPlayList(Ljava/util/List;)V

    .line 594
    return-void
.end method

.method private isDownloading()Z
    .locals 7

    .prologue
    .line 780
    new-instance v2, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v2}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 781
    .local v2, query:Landroid/app/MiuiDownloadManager$Query;
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    const-string v5, "\'"

    const-string v6, "\'\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, encodedFilePath:Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/app/MiuiDownloadManager$Query;->setFilterByAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;

    .line 783
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v4, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 785
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 786
    .local v3, result:Z
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 787
    invoke-static {v0}, Landroid/app/MiuiDownloadManager;->isDownloading(Landroid/database/Cursor;)Z

    move-result v3

    .line 788
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_0
    return v3
.end method

.method private navigateToNextResource()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 323
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceSet;->size()I

    move-result v0

    .line 324
    .local v0, resourceTotal:I
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    sub-int v2, v0, v3

    if-ge v1, v2, :cond_1

    .line 325
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    .line 326
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->changeCurrentResource()Z

    .line 327
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviousButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 328
    iput-boolean v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasPrevious:Z

    .line 329
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_0

    .line 330
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 331
    iput-boolean v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasNext:Z

    .line 332
    iget-boolean v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mReachBottom:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mOnlineResourceSet:Z

    if-eqz v1, :cond_0

    .line 333
    invoke-direct {p0, v0, v4}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->requestResources(II)V

    .line 336
    :cond_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_INDEX"

    iget v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    :cond_1
    return-void
.end method

.method private navigateToPreviousResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    if-lez v0, :cond_1

    .line 310
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    .line 311
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->changeCurrentResource()Z

    .line 312
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 313
    iput-boolean v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasNext:Z

    .line 314
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviousButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 316
    iput-boolean v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasPrevious:Z

    .line 318
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_INDEX"

    iget v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    :cond_1
    return-void
.end method

.method private requestResources(II)V
    .locals 20
    .parameter "start"
    .parameter "length"

    .prologue
    .line 875
    const/4 v13, 0x1

    .line 876
    .local v13, resourcesPerLine:I
    mul-int p1, p1, v13

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/app/resourcebrowser/ResourceSet;->size()I

    move-result v16

    sub-int v16, p1, v16

    div-int v16, v16, v13

    if-eqz v16, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mCategoryCode:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mKeyword:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/app/resourcebrowser/OnlineHelper;->getListURL(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v15

    .line 881
    .local v15, url:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetCode:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 883
    .local v5, directory:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 884
    invoke-static {v5, v15}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 885
    .local v7, filePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/app/resourcebrowser/OnlineHelper;->readResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v12

    .line 888
    .local v12, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    if-eqz v12, :cond_2

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceSet;->setAll(Ljava/util/List;)V

    .line 891
    :cond_2
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 892
    .local v10, now:J
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 893
    .local v8, modifiedTime:J
    sub-long v16, v10, v8

    const-wide/32 v18, 0x927c0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    .line 898
    .end local v6           #file:Ljava/io/File;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #modifiedTime:J
    .end local v10           #now:J
    .end local v12           #resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    :cond_3
    new-instance v14, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    .line 899
    .local v14, task:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "list_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->setId(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v14, v5}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->setTargetDirectory(Ljava/lang/String;)V

    .line 901
    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->setOffset(I)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadSet:Ljava/util/Set;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadSet:Ljava/util/Set;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v15, v16, v17

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private setupButton()V
    .locals 2

    .prologue
    .line 232
    const v0, 0x60d0055

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    .line 233
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    new-instance v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const v0, 0x60d0056

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDeleteButton:Landroid/widget/ImageButton;

    .line 263
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$3;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$3;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method private setupNavigator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    const v1, 0x60d004f

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviousButton:Landroid/widget/ImageView;

    .line 281
    const v1, 0x60d0050

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNextButton:Landroid/widget/ImageView;

    .line 282
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviousButton:Landroid/widget/ImageView;

    new-instance v2, Lmiui/app/resourcebrowser/ResourceDetailActivity$4;

    invoke-direct {v2, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$4;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNextButton:Landroid/widget/ImageView;

    new-instance v2, Lmiui/app/resourcebrowser/ResourceDetailActivity$5;

    invoke-direct {v2, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$5;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceSet;->size()I

    move-result v0

    .line 295
    .local v0, resourceTotal:I
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreviousButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 297
    iput-boolean v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasPrevious:Z

    .line 299
    :cond_0
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    const/4 v2, 0x1

    sub-int v2, v0, v2

    if-ne v1, v2, :cond_1

    .line 300
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 301
    iput-boolean v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasNext:Z

    .line 302
    iget-boolean v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mReachBottom:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mOnlineResourceSet:Z

    if-eqz v1, :cond_1

    .line 303
    invoke-direct {p0, v0, v3}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->requestResources(II)V

    .line 306
    :cond_1
    return-void
.end method

.method private stopMusic()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->stop()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    .line 613
    :cond_0
    return-void
.end method


# virtual methods
.method protected apply()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method protected bindScreenRingtoneView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 616
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 617
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x603001f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 618
    .local v2, ringtoneView:Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v1, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 620
    .local v1, ringtoneParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v3, v2, v1}, Lmiui/widget/ScrollableScreenView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    const v3, 0x60d0061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPlayButton:Landroid/widget/ImageView;

    .line 623
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPlayButton:Landroid/widget/ImageView;

    new-instance v4, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;

    invoke-direct {v4, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPlayButton:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    :cond_0
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.miui.android.resourcebrowser.SHOW_RINGTONE_NAME"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    const v3, 0x60d0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mRingtoneName:Landroid/widget/TextView;

    .line 645
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mRingtoneName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mRingtoneName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getFormatTitleBeforePlayingRingtone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    :cond_1
    return-void
.end method

.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 165
    invoke-static {p1, p2, p0}, Lmiui/app/resourcebrowser/ResourceHelper;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected changeCurrentResource()Z
    .locals 19

    .prologue
    .line 354
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResourceInformation()Landroid/os/Bundle;

    move-result-object v6

    .line 355
    .local v6, bundle:Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 356
    const/16 v17, 0x0

    .line 406
    :goto_0
    return v17

    .line 359
    :cond_0
    const-string v17, "online_path"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mOnlinePath:Ljava/lang/String;

    .line 360
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/Resource;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lmiui/app/resourcebrowser/ResourceHelper;->getVersionPath(Lmiui/app/resourcebrowser/Resource;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    .line 362
    const-string v17, "m_title"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mTitle:Ljava/lang/String;

    .line 363
    const v17, 0x60d004e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 364
    .local v14, titleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const-string v17, "designer"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, designer:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 368
    const v17, 0x609004a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 370
    :cond_1
    const v17, 0x60d0058

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 371
    .local v8, designerView:Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const-string v17, "nickname"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, author:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 375
    const v17, 0x609004a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 377
    :cond_2
    const v17, 0x60d0059

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 378
    .local v5, authorView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const-string v17, "m_addtime"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, addTime:Ljava/lang/String;
    const v17, 0x60d005c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 382
    .local v3, addTimeView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const-string/jumbo v17, "version"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 385
    .local v15, version:Ljava/lang/String;
    const v17, 0x60d005b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 386
    .local v16, versionView:Landroid/widget/TextView;
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const-string v17, "filesize"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 389
    .local v12, size:Ljava/lang/String;
    const v17, 0x60d005a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 390
    .local v13, sizeView:Landroid/widget/TextView;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const-string v17, "m_download"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, downloadTimes:Ljava/lang/String;
    const v17, 0x60d005d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 394
    .local v10, downloadTimesView:Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const v17, 0x60d005e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 397
    .local v11, pathView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lmiui/app/resourcebrowser/ResourceHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setResourceStatus()V

    .line 404
    invoke-direct/range {p0 .. p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->bindScreenView()V

    .line 406
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 400
    :cond_3
    const-string v17, ""

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected download()V
    .locals 2

    .prologue
    .line 706
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->downloadResource()V

    .line 707
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setResourceStatus()V

    .line 708
    const-string v0, "r=xmXshare/download&xid=%s&aid=%s"

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResourceInformation()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lmiui/app/resourcebrowser/OnlineHelper;->sendUserAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 710
    return-void
.end method

.method protected getConfirmedDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "originDowloadUrl"

    .prologue
    .line 951
    return-object p1
.end method

.method protected getCurrentResource()Lmiui/app/resourcebrowser/Resource;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/resourcebrowser/Resource;

    return-object p0
.end method

.method protected getCurrentResourceInformation()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/Resource;

    move-result-object v0

    .line 342
    .local v0, resource:Lmiui/app/resourcebrowser/Resource;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 601
    invoke-static {p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceHelper;->getDefaultFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFormatTitleBeforePlayingRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    const-string v0, ""

    return-object v0
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
    .line 605
    invoke-static {p0, p1}, Lmiui/app/resourcebrowser/ResourceHelper;->getDefaultMusicPlayList(Landroid/content/Context;Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mFullScreen:Z

    if-eqz v0, :cond_0

    .line 684
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode()V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "META_DATA"

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v4, 0x603001e

    invoke-virtual {p0, v4}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 117
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 118
    const-string v4, "META_DATA"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    .line 120
    :cond_0
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 121
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    .line 122
    const-string v4, "META_DATA"

    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    :cond_1
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v4}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 127
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->responseToViewAction()Lmiui/app/resourcebrowser/Resource;

    move-result-object v2

    .line 129
    .local v2, resource:Lmiui/app/resourcebrowser/Resource;
    if-nez v2, :cond_2

    .line 130
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->finish()V

    .line 162
    .end local v2           #resource:Lmiui/app/resourcebrowser/Resource;
    :goto_0
    return-void

    .line 133
    .restart local v2       #resource:Lmiui/app/resourcebrowser/Resource;
    :cond_2
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v4}, Lmiui/app/resourcebrowser/ResourceSet;->clear()V

    .line 134
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v4, v2}, Lmiui/app/resourcebrowser/ResourceSet;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v4, 0x0

    iput v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    .line 140
    .end local v2           #resource:Lmiui/app/resourcebrowser/Resource;
    :goto_1
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v4}, Lmiui/app/resourcebrowser/ResourceSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->finish()V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_INDEX"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setupUI()V

    .line 147
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v5, "android.intent.extra.ringtone.TYPE"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 148
    .local v3, ringtoneType:I
    if-ltz v3, :cond_5

    .line 149
    invoke-static {p0, v3}, Lmiui/app/resourcebrowser/ResourceHelper;->setMusicVolumeType(Landroid/app/Activity;I)V

    .line 152
    :cond_5
    const-string v4, "download"

    invoke-virtual {p0, v4}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    iput-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadManager:Landroid/app/DownloadManager;

    .line 153
    new-instance v4, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;

    invoke-direct {v4, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    iput-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v0, f:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;

    invoke-virtual {p0, v4, v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-static {p0}, Lmiui/app/resourcebrowser/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lmiui/app/resourcebrowser/SDCardMonitor;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    .line 159
    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    invoke-virtual {v4, p0}, Lmiui/app/resourcebrowser/SDCardMonitor;->addListener(Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V

    .line 161
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->changeCurrentResource()Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    invoke-virtual {v0, p0}, Lmiui/app/resourcebrowser/SDCardMonitor;->removeListener(Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V

    .line 665
    :cond_1
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->stopMusic()V

    .line 666
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->recyclePreviewImage()V

    .line 668
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 669
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->stopMusic()V

    .line 653
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 654
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 0
    .parameter "mount"

    .prologue
    .line 1007
    invoke-static {p0}, Lmiui/app/resourcebrowser/ResourceHelper;->exit(Landroid/app/Activity;)V

    .line 1008
    return-void
.end method

.method protected pick()V
    .locals 4

    .prologue
    const-string v3, "com.miui.android.resourcebrowser.TRACK_ID"

    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "com.miui.android.resourcebrowser.PICKED_RESOURCE"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v1, "com.miui.android.resourcebrowser.TRACK_ID"

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.TRACK_ID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetCategory:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 722
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {v2}, Lmiui/app/resourcebrowser/ResourceHelper;->getUriByPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 724
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 725
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->finish()V

    .line 726
    return-void
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "metaData"

    .prologue
    .line 169
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetPackage:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetSubpackage:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetCode:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetCategory:I

    .line 174
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetSubpackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    const-string v0, ".single"

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetSubpackage:Ljava/lang/String;

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetSubpackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceSet;->getInstance(Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    .line 178
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetSubpackage:Ljava/lang/String;

    const-string v1, ".online.hottest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSetSubpackage:Ljava/lang/String;

    const-string v1, ".online.latest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mOnlineResourceSet:Z

    .line 180
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.CATEGORY_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mCategoryCode:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.KEYWORD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mKeyword:Ljava/lang/String;

    .line 182
    return-void

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recyclePreviewImage()V
    .locals 4

    .prologue
    .line 672
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNeedRecyclePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 673
    .local v2, softBitmap:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 674
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 678
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #softBitmap:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNeedRecyclePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 679
    return-void
.end method

.method protected responseToViewAction()Lmiui/app/resourcebrowser/Resource;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v3}, Lmiui/app/resourcebrowser/ZipResourceInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lmiui/app/resourcebrowser/ZipResourceInfo;

    move-result-object v1

    .line 187
    .local v1, zipResourceInfo:Lmiui/app/resourcebrowser/ZipResourceInfo;
    if-nez v1, :cond_0

    move-object v2, v4

    .line 192
    :goto_0
    return-object v2

    .line 190
    :cond_0
    new-instance v0, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    .line 191
    .local v0, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ZipResourceInfo;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    move-object v2, v0

    .line 192
    goto :goto_0
.end method

.method protected setApplyStatus(Z)V
    .locals 2
    .parameter "showDeleted"

    .prologue
    .line 774
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const v1, 0x6090057

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 777
    return-void

    .line 776
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected setDownloadStatus()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const v1, 0x6090055

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 752
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDeleteButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 753
    return-void
.end method

.method protected setDownloadingStatus()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const v1, 0x6090056

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 764
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDeleteButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 765
    return-void
.end method

.method protected setPickStatus(Z)V
    .locals 2
    .parameter "showDeleted"

    .prologue
    .line 768
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const v1, 0x6090059

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 770
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 771
    return-void

    .line 770
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected setResourceStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 733
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/Resource;->getStatus()I

    move-result v0

    .line 734
    .local v0, status:I
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 735
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceHelper;->isSystemResource(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setPickStatus(Z)V

    .line 747
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 735
    goto :goto_0

    .line 736
    :cond_1
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setDownloadingStatus()V

    goto :goto_1

    .line 738
    :cond_2
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    invoke-virtual {p0, v3}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setApplyStatus(Z)V

    goto :goto_1

    .line 740
    :cond_3
    if-nez v0, :cond_5

    .line 741
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mLocalPath:Ljava/lang/String;

    const-string v2, "/system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_2
    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setApplyStatus(Z)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 742
    :cond_5
    if-ne v0, v4, :cond_6

    .line 743
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setUpdateStatus()V

    goto :goto_1

    .line 745
    :cond_6
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setDownloadStatus()V

    goto :goto_1
.end method

.method protected setUpdateStatus()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const v1, 0x6090058

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 758
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDeleteButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 759
    return-void
.end method

.method protected setupUI()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 197
    const v1, 0x60d0053

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/ScrollableScreenView;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    .line 198
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v1, v3}, Lmiui/widget/ScrollableScreenView;->setBackgroundColor(I)V

    .line 199
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    const v2, 0x3e4ccccd

    invoke-virtual {v1, v2}, Lmiui/widget/ScrollableScreenView;->setOverScrollRatio(F)V

    .line 200
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/ScrollableScreenView;->setOvershootTension(F)V

    .line 201
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmiui/widget/ScrollableScreenView;->setScreenAlignment(I)V

    .line 202
    new-instance v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$1;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$1;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

    .line 215
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

    invoke-virtual {v1, v2}, Lmiui/widget/ScrollableScreenView;->setOnScrollOutListener(Lmiui/widget/ScrollableScreenView$OnScrollOutListener;)V

    .line 218
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 220
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x1e

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 221
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v1, v0}, Lmiui/widget/ScrollableScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 224
    const v1, 0x60d0051

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 225
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Lmiui/widget/ScrollableScreenView;->setParentScrollView(Landroid/widget/ScrollView;)V

    .line 227
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setupButton()V

    .line 228
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setupNavigator()V

    .line 229
    return-void
.end method

.method protected update()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->downloadResource()V

    .line 714
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setResourceStatus()V

    .line 715
    return-void
.end method
