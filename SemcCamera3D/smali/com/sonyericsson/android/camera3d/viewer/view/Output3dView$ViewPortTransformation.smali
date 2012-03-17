.class Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;
.super Ljava/lang/Object;
.source "Output3dView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewPortTransformation"
.end annotation


# instance fields
.field private final mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field private final mSource:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(IILcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    .line 137
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 138
    return-void
.end method


# virtual methods
.method destLeftEye()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 146
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$1;->$SwitchMap$com$sonyericsson$android$camera3d$viewer$Constants$OutputMode:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 170
    .local v0, dest:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 148
    .end local v0           #dest:Landroid/graphics/Rect;
    :pswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .restart local v0       #dest:Landroid/graphics/Rect;
    goto :goto_0

    .line 156
    .end local v0           #dest:Landroid/graphics/Rect;
    :pswitch_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 161
    .restart local v0       #dest:Landroid/graphics/Rect;
    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method destRightEye()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$1;->$SwitchMap$com$sonyericsson$android$camera3d$viewer$Constants$OutputMode:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 199
    .local v0, dest:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 177
    .end local v0           #dest:Landroid/graphics/Rect;
    :pswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    .restart local v0       #dest:Landroid/graphics/Rect;
    goto :goto_0

    .line 185
    .end local v0           #dest:Landroid/graphics/Rect;
    :pswitch_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .restart local v0       #dest:Landroid/graphics/Rect;
    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method source()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView$ViewPortTransformation;->mSource:Landroid/graphics/Rect;

    return-object v0
.end method
