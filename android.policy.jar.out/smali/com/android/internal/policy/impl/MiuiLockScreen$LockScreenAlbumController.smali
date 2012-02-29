.class Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockScreenAlbumController"
.end annotation


# static fields
.field private static final ANIM_FADEIN:I = 0x1

.field private static final ANIM_FADEOUT:I = 0x2

.field private static final ANIM_NONE:I


# instance fields
.field private mAlbumBm:Landroid/graphics/Bitmap;

.field private mAlbumChanged:Z

.field private final mAlbumFadeInAnim:Landroid/view/animation/Animation;

.field private final mAlbumFadeOutAnim:Landroid/view/animation/Animation;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mDefaultAlbum:Landroid/graphics/Bitmap;

.field private mEnable:Z

.field private mTempAlbumBm:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/view/View;)V
    .locals 12
    .parameter
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1487
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x6040002

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    .line 1489
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x6040003

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    .line 1490
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumChanged:Z

    .line 1491
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$800(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60202cd

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    .line 1493
    new-instance v2, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1520
    .local v2, animationListener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1521
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1522
    iget-object v8, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1524
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1525
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x60202c7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1526
    .local v4, is:Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1527
    .local v5, rect:Landroid/graphics/Rect;
    invoke-static {v6, v11, v4, v5, v11}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1529
    .local v0, albumFilter:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 1530
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :cond_0
    :goto_0
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setRect(Landroid/graphics/Rect;)V

    .line 1536
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 1537
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1538
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1539
    .local v1, albumView:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1540
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1541
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1543
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setRect(Landroid/graphics/Rect;)V

    .line 1544
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 1545
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1546
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/internal/policy/impl/AlbumFrameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1547
    .local v7, tempAlbumView:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1548
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1549
    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1550
    return-void

    .line 1532
    .end local v1           #albumView:Landroid/widget/FrameLayout$LayoutParams;
    .end local v7           #tempAlbumView:Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v3

    .line 1533
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->setAlbumInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->startAlbumAnim(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->isAlbumShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->showAlbum()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->hideAlbum()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private hideAlbum()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1635
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1636
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1637
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1638
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1639
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1640
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1800(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1641
    return-void
.end method

.method private isAlbumShow()Z
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 1567
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumChanged:Z

    if-eqz v1, :cond_0

    .line 1568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1569
    .local v0, requestIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1571
    .end local v0           #requestIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->requestAlbum(Landroid/content/Intent;Z)V

    .line 1575
    return-void
.end method

.method private setAlbumInfo(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1680
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mEnable:Z

    if-nez v3, :cond_0

    .line 1713
    :goto_0
    return-void

    .line 1683
    :cond_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumChanged:Z

    .line 1684
    const-string v3, "album"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumName:Ljava/lang/String;

    .line 1685
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mArtistName:Ljava/lang/String;

    .line 1687
    :try_start_0
    const-string v3, "tmp_album_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, albumPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1689
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1691
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 1700
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1701
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1706
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 1707
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1711
    .end local v0           #albumPath:Ljava/lang/String;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->startTrackChangeAnim()V

    goto :goto_0

    .line 1694
    .restart local v0       #albumPath:Ljava/lang/String;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1696
    .end local v0           #albumPath:Ljava/lang/String;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1697
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1699
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 1700
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1701
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1706
    :goto_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 1707
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1699
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 1700
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1701
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1706
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 1707
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1711
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->startTrackChangeAnim()V

    .line 1699
    throw v3

    .line 1703
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1704
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1709
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 1703
    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1704
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 1709
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 1703
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #albumPath:Ljava/lang/String;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1704
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1709
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method

.method private showAlbum()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1644
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1645
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1647
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1649
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1654
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1800(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1655
    return-void

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1652
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startAlbumAnim(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1662
    packed-switch p1, :pswitch_data_0

    .line 1677
    :goto_0
    return-void

    .line 1664
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1900(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1665
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->showAlbum()V

    goto :goto_0

    .line 1669
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1900(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1673
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicControl:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1900(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 1662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startTrackChangeAnim()V
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1628
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AlbumFrameView;->clearAnimation()V

    .line 1629
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1800(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1630
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1631
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1632
    return-void
.end method


# virtual methods
.method public enableAlbum(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1553
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mEnable:Z

    .line 1554
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumChanged:Z

    if-eqz v1, :cond_0

    .line 1555
    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    .line 1556
    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    .line 1558
    :cond_0
    if-eqz p1, :cond_2

    .line 1559
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v0

    .line 1560
    .local v0, isMusicActive:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mIsOnlineSongBlocking:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 1561
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockScreenAlbumController:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    move-result-object v1

    invoke-direct {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->requestAlbum()V

    .line 1564
    .end local v0           #isMusicActive:Z
    :cond_2
    return-void
.end method

.method public requestAlbum(Landroid/content/Intent;Z)V
    .locals 7
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    const/4 v6, 0x0

    .line 1577
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumChanged:Z

    .line 1578
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mEnable:Z

    if-nez v5, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    const-string v5, "album"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, albumName:Ljava/lang/String;
    const-string v5, "artist"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1583
    .local v2, artistName:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1584
    const-string v0, ""

    .line 1586
    :cond_2
    if-nez v2, :cond_3

    .line 1587
    const-string v2, ""

    .line 1589
    :cond_3
    if-nez p2, :cond_5

    .line 1590
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1591
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 1596
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mEnable:Z

    if-eqz v5, :cond_0

    .line 1601
    :cond_5
    const-string v5, "album_uri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1602
    .local v4, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1603
    .local v3, isNeedRequest:Z
    if-eqz v4, :cond_7

    .line 1604
    const/4 v3, 0x1

    .line 1612
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mTempAlbumBm:Landroid/graphics/Bitmap;

    .line 1613
    iput-object v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;

    .line 1614
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1615
    if-eqz v3, :cond_8

    .line 1616
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->requestAlbum()V

    goto :goto_0

    .line 1606
    :cond_7
    const-string v5, "album_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1607
    .local v1, albumPath:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1608
    const/4 v3, 0x1

    goto :goto_1

    .line 1618
    .end local v1           #albumPath:Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->startTrackChangeAnim()V

    goto :goto_0
.end method
