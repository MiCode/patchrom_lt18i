.class public Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;
.super Lcom/sonyericsson/android/camera3d/viewer/AppLayer;
.source "BrowserLayer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d.viewer.Browser"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field private static final TAG:Ljava/lang/String; = "BrowserLayer"


# instance fields
.field private final mBackground:Landroid/widget/ImageView;

.field private final mGridView:Landroid/widget/GridView;

.field private final mHandler:Landroid/os/Handler;

.field private final mNoDataMessage:Landroid/view/View;

.field private final mOutput3dView:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

.field private final mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

.field private final mTitle:Landroid/widget/TextView;

.field private final mToGallery:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;)V
    .locals 12
    .parameter "mediator"
    .parameter "thumbnailViewFactory"
    .parameter "view"

    .prologue
    const/4 v11, 0x0

    .line 148
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera3d/viewer/AppLayer;-><init>(Lcom/sonyericsson/android/camera3d/viewer/Mediator;Landroid/widget/RelativeLayout;)V

    .line 149
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 150
    .local v6, resource:Landroid/content/res/Resources;
    const v9, 0x7f010022

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 151
    .local v0, column:I
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v9

    const v10, 0x7f0d000f

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mToGallery:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v9

    const v10, 0x7f0d0011

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mTitle:Landroid/widget/TextView;

    .line 170
    const v9, 0x7f0d000d

    invoke-virtual {p3, v9}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    .line 171
    const v9, 0x7f0d0012

    invoke-virtual {p3, v9}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mNoDataMessage:Landroid/view/View;

    .line 172
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v9, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 173
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v9, v11}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 174
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mToGallery:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 178
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 179
    .local v1, dispHeight:I
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 180
    .local v2, dispWidth:I
    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->isPortrait(Landroid/view/WindowManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    move v7, v1

    .line 184
    .local v7, tmp:I
    move v1, v2

    .line 185
    move v2, v7

    .line 188
    .end local v7           #tmp:I
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const v10, 0x7f09016c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int v10, v1, v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090164

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 192
    .local v3, frameWidth:I
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09016b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 194
    .local v4, horizontalSpace:I
    mul-int v9, v3, v0

    add-int/lit8 v10, v0, -0x1

    mul-int/2addr v10, v4

    add-int/2addr v9, v10

    sub-int v9, v2, v9

    div-int/lit8 v5, v9, 0x2

    .line 195
    .local v5, padding:I
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v9, v5, v11, v5, v11}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 202
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mOutput3dView:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    .line 203
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    .line 204
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v9

    const v10, 0x7f0d000c

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mBackground:Landroid/widget/ImageView;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateListSelector()V

    return-void
.end method

.method private fetchSemcThemeBackground()V
    .locals 11

    .prologue
    .line 305
    const/4 v5, 0x0

    .line 306
    .local v5, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 307
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 308
    const-string v8, "BrowserLayer"

    const-string v9, "context == null"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 313
    .local v1, conf:Landroid/content/res/Configuration;
    invoke-static {v1}, Lcom/sonyericsson/theme/RuntimeThemeConfiguration;->getThemeComponentFromConfiguration(Landroid/content/res/Configuration;)Landroid/content/ComponentName;

    move-result-object v0

    .line 315
    .local v0, activeTheme:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 317
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/16 v8, 0x80

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 321
    .local v7, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v6, Lcom/sonyericsson/theme/RuntimeThemeInfo;

    invoke-direct {v6, v2, v7}, Lcom/sonyericsson/theme/RuntimeThemeInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 324
    .local v6, runtimeThemeInfo:Lcom/sonyericsson/theme/RuntimeThemeInfo;
    invoke-virtual {v6, v4}, Lcom/sonyericsson/theme/RuntimeThemeInfo;->loadApplicationBackground(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 337
    .end local v0           #activeTheme:Landroid/content/ComponentName;
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #runtimeThemeInfo:Lcom/sonyericsson/theme/RuntimeThemeInfo;
    .end local v7           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 344
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 326
    :catch_0
    move-exception v3

    .line 328
    .local v3, e:Ljava/io/IOException;
    const-string v8, "BrowserLayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fetchSemcThemeBackground :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 331
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "BrowserLayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fetchSemcThemeBackground :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    .line 334
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "BrowserLayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fetchSemcThemeBackground :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPortrait(Landroid/view/WindowManager;)Z
    .locals 1
    .parameter "wm"

    .prologue
    .line 396
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 404
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 399
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupIcons(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 411
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne p1, v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mToGallery:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    return-void

    .line 460
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne p1, v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateListSelector()V
    .locals 4

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, loaded:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 578
    .local v0, current:Landroid/view/View;
    instance-of v2, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;

    if-eqz v2, :cond_0

    .line 579
    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;

    .end local v0           #current:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ThumbnailView;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    const/4 v1, 0x1

    .line 584
    :cond_0
    if-eqz v1, :cond_1

    .line 586
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(I)V

    .line 591
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->postInvalidate()V

    .line 592
    return-void

    .line 589
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(I)V

    goto :goto_0
.end method

.method private updateNoDataMessageVisiblity()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v0

    .line 378
    .local v0, thumbnailCount:I
    if-lez v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mNoDataMessage:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mNoDataMessage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBackground()V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 247
    return-void
.end method

.method protected onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 3
    .parameter "sender"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->fetchSemcThemeBackground()V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mOutput3dView:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelected(Z)V

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mOutput3dView:Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelected(Z)V

    goto :goto_0
.end method

.method protected onChangeStorageState(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;Z)V
    .locals 1
    .parameter "sender"
    .parameter "enable"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateNoDataMessageVisiblity()V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->clearFocus()V

    .line 300
    return-void
.end method

.method protected onClose()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    .line 227
    .local v0, adapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->removeListener(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;)V

    .line 229
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->resetViewFactory()V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    return-void
.end method

.method protected onFinishScanning(Lcom/sonyericsson/android/camera3d/viewer/service/StorageEventReceiver;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateNoDataMessageVisiblity()V

    .line 258
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 595
    const-string v0, "BrowserLayer"

    const-string v1, "onFocusChange(hasFocus"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ")"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 596
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    .line 597
    return-void
.end method

.method protected onForeground(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 2
    .parameter "dataStore"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateNoDataMessageVisiblity()V

    .line 253
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->play(I)V

    .line 373
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateListSelector()V

    .line 566
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public onLoaded(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailLoader;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V
    .locals 4
    .parameter "sender"
    .parameter "index"
    .parameter "thumb"

    .prologue
    .line 535
    if-nez p3, :cond_0

    .line 561
    :goto_0
    return-void

    .line 545
    :cond_0
    move v0, p2

    .line 546
    .local v0, requestIndex:I
    move-object v1, p3

    .line 547
    .local v1, requestThumb:Lcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;ILcom/sonyericsson/android/camera3d/viewer/model/Thumbnail;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;->destroy(Landroid/view/View;)V

    .line 350
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateListSelector()V

    .line 571
    return-void
.end method

.method protected onPause(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 276
    return-void
.end method

.method protected onResume(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 0
    .parameter "dataStore"

    .prologue
    .line 272
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 358
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    .line 359
    .local v0, adapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
    if-eqz v0, :cond_0

    .line 360
    move v1, p2

    .line 361
    .local v1, head:I
    add-int v2, p2, p3

    .line 362
    .local v2, tail:I
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->updateVisibleBounds(II)Z

    .line 364
    .end local v1           #head:I
    .end local v2           #tail:I
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 367
    return-void
.end method

.method protected onShow(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 3
    .parameter "dataStore"
    .parameter "outputMode"

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->setupIcons(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)V

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getThumbnailAdapter()Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;

    move-result-object v0

    .line 212
    .local v0, adapter:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mThumbnailViewFactory:Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->setViewFactory(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$ThumbnailViewFactory;)V

    .line 213
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter;->addListener(Lcom/sonyericsson/android/camera3d/viewer/model/ThumbnailAdapter$LoadThumbnailListener;)V

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelected(Z)V

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateNoDataMessageVisiblity()V

    .line 222
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdate(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V
    .locals 2
    .parameter "dataStore"

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMpoInfoRetriever()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v0

    .line 237
    .local v0, set:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->setupIcons(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->updateNoDataMessageVisiblity()V

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->clearFocus()V

    .line 242
    return-void
.end method
