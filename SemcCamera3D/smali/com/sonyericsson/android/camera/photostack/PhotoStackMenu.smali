.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.super Landroid/widget/RelativeLayout;
.source "PhotoStackMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareCancelListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteCancelListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteRefuseListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$IconTouchListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoStackMenu"


# instance fields
.field private mBalloonBaseLeft:Landroid/graphics/drawable/Drawable;

.field private mBalloonBaseRight:Landroid/graphics/drawable/Drawable;

.field private mBalloonIcon:Landroid/graphics/drawable/Drawable;

.field private mBalloonIconPort:Landroid/graphics/drawable/Drawable;

.field private mBalloonLand:Landroid/widget/LinearLayout;

.field private mBalloonPort:Landroid/widget/LinearLayout;

.field private mBalloonPosition:I

.field private mBalloonPositionLeft:I

.field private mBalloonPositionRight:I

.field private mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

.field private mCount:I

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

.field private mGalleryIcon:Landroid/widget/ImageView;

.field private mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

.field private mIndex:I

.field private mIsPreparingShareDialogShowing:Z

.field private mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

.field private mMarginOffsetLand:I

.field private mMarginOffsetPort:I

.field private mMenuMarginBaseMax:I

.field private mMenuMarginBaseMin:I

.field private mMenuPositionUnit:I

.field private mOrientation:I

.field private mShareConfirmationDialog:Landroid/app/Dialog;

.field private mShareIcon:Landroid/widget/ImageView;

.field private mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

.field private mShareIntent:Landroid/content/Intent;

.field mShareResolveInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareSelectedItem:I

.field private mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonLand:Landroid/widget/LinearLayout;

    .line 80
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPort:Landroid/widget/LinearLayout;

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    .line 93
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .line 95
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseLeft:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseRight:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIconPort:Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIcon:Landroid/widget/ImageView;

    .line 101
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIcon:Landroid/widget/ImageView;

    .line 102
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;

    .line 104
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 105
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 118
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    .line 120
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mOrientation:I

    .line 122
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIsPreparingShareDialogShowing:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonLand:Landroid/widget/LinearLayout;

    .line 80
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPort:Landroid/widget/LinearLayout;

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    .line 93
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .line 95
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseLeft:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseRight:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIconPort:Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIcon:Landroid/widget/ImageView;

    .line 101
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIcon:Landroid/widget/ImageView;

    .line 102
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;

    .line 104
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 105
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 118
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    .line 120
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mOrientation:I

    .line 122
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIsPreparingShareDialogShowing:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)Lcom/sonyericsson/android/camera3d/view/RotatableImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareSelectedItem:I

    return p1
.end method

.method private setupFunctionIcons()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 147
    const v3, 0x7f0d0068

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonLand:Landroid/widget/LinearLayout;

    .line 148
    const v3, 0x7f0d006d

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPort:Landroid/widget/LinearLayout;

    .line 150
    const v3, 0x7f0d006b

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIcon:Landroid/widget/ImageView;

    .line 151
    const v3, 0x7f0d006e

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 152
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-direct {v0, p0, v3, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;)V

    .line 154
    .local v0, deleteListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteIconListener;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->fixRotation(I)V

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    const v3, 0x7f0d0069

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;

    .line 159
    const v3, 0x7f0d0070

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 160
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->fixRotation(I)V

    .line 161
    new-instance v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-direct {v1, p0, v3, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;)V

    .line 163
    .local v1, launchListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$LaunchViewIconListener;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    const v3, 0x7f0d006a

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIcon:Landroid/widget/ImageView;

    .line 167
    const v3, 0x7f0d006f

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    .line 168
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->fixRotation(I)V

    .line 169
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-direct {v2, p0, v3, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Landroid/widget/ImageView;Lcom/sonyericsson/android/camera3d/view/RotatableImageView;)V

    .line 171
    .local v2, shareListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareIconListener;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseLeft:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseRight:Landroid/graphics/drawable/Drawable;

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIconPort:Landroid/graphics/drawable/Drawable;

    .line 182
    return-void
.end method

.method private setupFunctionValues()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 186
    .local v3, photoStackWidth:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 188
    .local v4, thumbnailFrameSize:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 190
    .local v1, menuWidthForLand:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 192
    .local v2, menuWidthForPort:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 195
    .local v0, balloonLimitForLand:I
    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    .line 196
    sub-int v5, v3, v4

    iget v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuPositionUnit:I

    .line 201
    :goto_0
    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMin:I

    .line 203
    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMin:I

    add-int/2addr v5, v3

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMax:I

    .line 205
    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMin:I

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMarginOffsetLand:I

    .line 207
    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMin:I

    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMarginOffsetPort:I

    .line 208
    div-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPosition:I

    .line 209
    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPositionLeft:I

    .line 210
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPositionLeft:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPositionRight:I

    .line 212
    return-void

    .line 198
    :cond_0
    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuPositionUnit:I

    goto :goto_0
.end method


# virtual methods
.method public closeDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->dismiss()V

    .line 223
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 227
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    .line 229
    :cond_1
    return-void
.end method

.method public completePreparationForDialogShowing()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 568
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIsPreparingShareDialogShowing:Z

    if-eqz v1, :cond_0

    .line 569
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIsPreparingShareDialogShowing:Z

    .line 571
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 573
    .local v0, iconTextdapter:Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareListener;

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V

    new-instance v3, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareCancelListener;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareCancelListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showShareSelectionReopenable(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    .line 578
    .end local v0           #iconTextdapter:Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 264
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 265
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 266
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonLand:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 267
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPosition:I

    .line 268
    .local v0, balloonPosition:I
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIndex:I

    if-nez v2, :cond_1

    .line 269
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPositionLeft:I

    .line 274
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseLeft:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 276
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseRight:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonBaseRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    .end local v0           #balloonPosition:I
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 293
    return-void

    .line 270
    .restart local v0       #balloonPosition:I
    :cond_1
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIndex:I

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 271
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPositionRight:I

    goto :goto_0

    .line 287
    .end local v0           #balloonPosition:I
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 288
    .restart local v1       #rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPort:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 289
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIconPort:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonIconPort:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getShareIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getShareSelectedItem()Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareSelectedItem:I

    if-gt v0, v1, :cond_1

    .line 545
    :cond_0
    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareSelectedItem:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public getThumbnail()Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    return-object v0
.end method

.method public getThumbnailIndex()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIndex:I

    return v0
.end method

.method protected hidePhotoStackDialog()V
    .locals 4

    .prologue
    const v3, 0x7f020069

    const v2, 0x7f020065

    const v1, 0x7f020062

    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->closeDialog()V

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mDeleteIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setImageResource(I)V

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setImageResource(I)V

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mGalleryIconPort:Lcom/sonyericsson/android/camera3d/view/RotatableImageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setImageResource(I)V

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;->onHidePhotoStackDialog()V

    .line 541
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setListener(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;)V

    .line 218
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setupFunctionIcons()V

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setupFunctionValues()V

    .line 130
    return-void
.end method

.method protected onShowPhotoStackDialog()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;->onShowPhotoStackDialog()V

    .line 526
    :cond_0
    return-void
.end method

.method protected performDelete()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;->onPerformDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    .line 496
    :cond_0
    return-void
.end method

.method protected performLaunchShareApp()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;->onPerformShare(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    .line 520
    :cond_0
    return-void
.end method

.method protected performShare()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 431
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareConfirmationDialog:Landroid/app/Dialog;

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;->onSelectShareStart(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    if-nez v1, :cond_3

    .line 440
    const-string v1, "PhotoStackMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShareResolveInfo ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mShareIntent ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_2
    :goto_0
    return-void

    .line 446
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 449
    .local v0, iconTextdapter:Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/util/ShareIconTextAdapter;->getCount()I

    move-result v1

    if-lt v1, v3, :cond_2

    .line 452
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIsPreparingShareDialogShowing:Z

    .line 453
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->onShowPhotoStackDialog()V

    goto :goto_0
.end method

.method protected performView()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;->onPerformView(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    .line 461
    :cond_0
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;

    .line 233
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 133
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mOrientation:I

    .line 136
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonLand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonLand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mBalloonPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareIntent:Landroid/content/Intent;

    .line 557
    return-void
.end method

.method public setShareResolveInfo(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mShareResolveInfo:Ljava/util/List;

    .line 561
    return-void
.end method

.method public setThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;I)V
    .locals 5
    .parameter "thumbnail"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .line 237
    iput p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mIndex:I

    .line 238
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuPositionUnit:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMarginOffsetLand:I

    add-int v0, v2, v3

    .line 239
    .local v0, margin:I
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMin:I

    if-ge v0, v2, :cond_1

    .line 240
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMin:I

    .line 244
    :cond_0
    :goto_0
    const v2, 0x7f0d0067

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuPositionUnit:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMarginOffsetPort:I

    add-int v1, v2, v3

    .line 247
    .local v1, marginPort:I
    const v2, 0x7f0d006c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->requestLayout()V

    .line 250
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->invalidate()V

    .line 251
    return-void

    .line 241
    .end local v1           #marginPort:I
    :cond_1
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMax:I

    if-ge v2, v0, :cond_0

    .line 242
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mMenuMarginBaseMax:I

    goto :goto_0
.end method

.method protected showConfirmationDelete()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->dismiss()V

    .line 414
    iput-object v9, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getMessagePopup()Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    move-result-object v0

    const v1, 0x7f0c007b

    const v2, 0x7f0c00d9

    const/4 v3, 0x1

    const v4, 0x7f0c0118

    const v5, 0x7f0c0119

    new-instance v6, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;

    invoke-direct {v6, p0, v9}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V

    new-instance v7, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteRefuseListener;

    invoke-direct {v7, p0, v9}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteRefuseListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V

    new-instance v8, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteCancelListener;

    invoke-direct {v8, p0, v9}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteCancelListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showOkCancelReopenable(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->mConfirmationDialog:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 425
    return-void
.end method

.method public updateLayout()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->requestLayout()V

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->invalidate()V

    .line 256
    return-void
.end method
