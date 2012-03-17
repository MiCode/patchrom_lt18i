.class public Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
.super Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
.source "MultiAngleLayer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;


# static fields
.field private static final MSG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiAngleLayer"


# instance fields
.field private mComfirmListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

.field private final mCorruptedIcon:Landroid/widget/ImageView;

.field private mCurrentPosition:I

.field private mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

.field private final mImageUpdateHandler:Landroid/os/Handler;

.field private final mImageView:Landroid/widget/ImageView;

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBroken:Z

.field private mIsLoaded:Z

.field private mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

.field private final mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

.field private mReviewImage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

.field private mShareDialogCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

.field private mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

.field private final mSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;)V
    .locals 1
    .parameter "mediator"
    .parameter "view"
    .parameter "tiltDetector"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;-><init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;)V

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImageUpdateHandler:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mComfirmListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    .line 425
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$3;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialogCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    .line 130
    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImageView:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 132
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    .line 133
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z

    return p1
.end method

.method static synthetic access$072(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z

    and-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsBroken:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method private clearSwitchImages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    return-void
.end method

.method private clearTiltingImages()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->release(Landroid/widget/ImageView;)V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->clear()V

    .line 259
    return-void
.end method

.method private setCurrentSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getReviewImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z
    .locals 7
    .parameter "content"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 299
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    .line 300
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImageUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return v4

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsBroken:Z

    .line 307
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isLoaded()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z

    .line 308
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getInfo()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    .line 314
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 315
    .local v0, i:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->removeListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V

    goto :goto_1

    .line 317
    .end local v0           #i:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 318
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsBroken:Z

    if-nez v5, :cond_2

    .line 319
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getReviewImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getImageCache()Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 321
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getImageCache()Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoImageCache;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v2

    .line 322
    .local v2, image:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder$UpdateListener;)V

    .line 323
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 326
    .end local v0           #i:I
    .end local v2           #image:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCurrentPosition:I

    .line 327
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsBroken:Z

    if-nez v5, :cond_3

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method private setNextSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getReviewImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private updateImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "image"

    .prologue
    .line 362
    if-eqz p2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->release(Landroid/widget/ImageView;)V

    .line 364
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    :cond_0
    return-void
.end method

.method private updateImage(Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)Z
    .locals 5
    .parameter "view"
    .parameter "image"

    .prologue
    const/4 v1, 0x1

    .line 335
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->getHeight()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->reset(Landroid/widget/ImageView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->restore(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v1

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mOffScreenCache:Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->release(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 354
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method closeDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->close()V

    .line 508
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->close()V

    .line 512
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 514
    :cond_1
    return-void
.end method

.method getImageCount()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onBackground()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->shutdown()V

    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 189
    return-void
.end method

.method protected onChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V
    .locals 2
    .parameter "sender"
    .parameter "enable"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->close(Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Z)V

    .line 224
    return-void
.end method

.method protected onClose()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->shutdown()V

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->clearSwitchImages()V

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->clearTiltingImages()V

    .line 160
    return-void
.end method

.method protected onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 228
    return-void
.end method

.method public onForeground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 4
    .parameter "dataStore"

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 194
    .local v0, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 198
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->create(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->startup()V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v1

    const/16 v2, 0xf

    invoke-interface {v1, v3, v2}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->startTilting(II)V

    goto :goto_0
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 1
    .parameter "dataStore"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->shutdown()V

    .line 239
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->clearSwitchImages()V

    .line 241
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->clearTiltingImages()V

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 243
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 1
    .parameter "dataStore"

    .prologue
    .line 232
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->create(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->startup()V

    .line 234
    return-void
.end method

.method protected onShow(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 4
    .parameter "dataStore"
    .parameter "outputMode"

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 140
    .local v0, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->create(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->startup()V

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->clearSwitchImages()V

    .line 147
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setCurrentSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isLoaded()Z

    move-result v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onUpdateContent(ZZ)V

    goto :goto_0
.end method

.method protected onTilting(Lcom/sonyericsson/android/camera3d/viewer/service/TiltDetector;I)V
    .locals 1
    .parameter "sender"
    .parameter "current"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iput p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCurrentPosition:I

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->showTiltingImage()V

    .line 251
    :cond_0
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUpdate(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 6
    .parameter "dataStore"

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getPreviousContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v1

    .line 165
    .local v1, prevContent:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getCurrentContent()Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    move-result-object v0

    .line 166
    .local v0, content:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 167
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->clearTiltingImages()V

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->clearSwitchImages()V

    .line 169
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setNextSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V

    .line 170
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setCurrentSwitchImage(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V

    .line 172
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->setMpo(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Z

    .line 177
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->shouldMirror()Z

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->detectSlideDirection(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Z)Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isLoaded()Z

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->isBroken()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V

    goto :goto_0
.end method

.method public onUpdate(Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImageUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method

.method performDelete()V
    .locals 4

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mComfirmListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->show()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mDeleteComfirmDialog:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;

    .line 474
    :cond_0
    return-void
.end method

.method public performNext()V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->shouldMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->previous()V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->next()V

    goto :goto_0
.end method

.method public performPrevious()V
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->shouldMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->next()V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->previous()V

    goto :goto_0
.end method

.method performShare()V
    .locals 4

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->closeDialogs()V

    .line 447
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialogCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mMpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->show()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mShareDialog:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;

    .line 456
    :cond_0
    return-void
.end method

.method showCorruptedImage()V
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 561
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const v2, 0x3f4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 565
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 568
    return-void
.end method

.method showReviewImage()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mReviewImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->updateImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 554
    :cond_0
    return-void
.end method

.method showTiltingImage()V
    .locals 6

    .prologue
    .line 522
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 523
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCorruptedIcon:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCurrentPosition:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCurrentPosition:I

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    iget v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCurrentPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 529
    .local v0, active:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v4

    if-nez v4, :cond_3

    .line 530
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 531
    .local v1, center:I
    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCurrentPosition:I

    if-ge v4, v1, :cond_4

    const/4 v2, 0x1

    .line 532
    .local v2, direction:I
    :goto_1
    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mCurrentPosition:I

    .local v3, i:I
    :goto_2
    if-eq v3, v1, :cond_3

    .line 533
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 534
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #active:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 540
    .end local v1           #center:I
    .end local v2           #direction:I
    .end local v3           #i:I
    .restart local v0       #active:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->updateImage(Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;)Z

    goto :goto_0

    .line 531
    .restart local v1       #center:I
    :cond_4
    const/4 v2, -0x1

    goto :goto_1

    .line 532
    .restart local v2       #direction:I
    .restart local v3       #i:I
    :cond_5
    add-int/2addr v3, v2

    goto :goto_2
.end method

.method startSlideAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "toRight"
    .parameter "listener"

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 575
    .local v0, inAnimation:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 576
    .local v1, outAnimation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 577
    const-wide/16 v2, -0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 578
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->clearAnimation()V

    .line 579
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 580
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 581
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$4;

    invoke-direct {v3, p0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$4;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 598
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 599
    return-void
.end method
