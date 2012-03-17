.class public Lcom/sonyericsson/android/camera3d/view/NotTakenArea;
.super Landroid/widget/RelativeLayout;
.source "NotTakenArea.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;


# static fields
.field private static final AREA_3D_PANORAMA:I = 0x318

.field private static final AREA_MULTI_ANGLE:I = 0x516

.field public static final TAG:Ljava/lang/String; = "NotTakenArea"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private updateLayout(Ljava/lang/String;)V
    .locals 2
    .parameter "capturingMode"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mSizeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 106
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 62
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mSizeMap:Ljava/util/HashMap;

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getDisplaySize()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 66
    const-wide/high16 v2, 0x407e

    .line 70
    .local v2, surfaceWidth:D
    :goto_0
    const-wide/high16 v4, 0x4099

    div-double v0, v2, v4

    .line 72
    .local v0, ratio:D
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mSizeMap:Ljava/util/HashMap;

    const-string v5, "PANORAMA_3D"

    new-instance v6, Landroid/graphics/Rect;

    const-wide v7, 0x4088c00000000000L

    mul-double/2addr v7, v0

    double-to-int v7, v7

    invoke-direct {v6, v9, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mSizeMap:Ljava/util/HashMap;

    const-string v5, "MULTI_ANGLE"

    new-instance v6, Landroid/graphics/Rect;

    const-wide v7, 0x4094580000000000L

    mul-double/2addr v7, v0

    double-to-int v7, v7

    invoke-direct {v6, v9, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mSizeMap:Ljava/util/HashMap;

    const-string v5, "PANORAMA_2D"

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const v4, 0x7f0d0030

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->mImageView:Landroid/widget/ImageView;

    .line 82
    return-void

    .line 68
    .end local v0           #ratio:D
    .end local v2           #surfaceWidth:D
    :cond_0
    const-wide/high16 v2, 0x4084

    .restart local v2       #surfaceWidth:D
    goto :goto_0
.end method

.method public onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "changed"

    .prologue
    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p1, v0, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/view/NotTakenArea;->updateLayout(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 111
    return-void
.end method
