.class Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
.super Ljava/lang/Object;
.source "SweepProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field public final mBackgroundImage:Landroid/graphics/drawable/Drawable;

.field public final mFrameImage:Landroid/graphics/drawable/Drawable;

.field public final mParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

.field public final mTextId:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V
    .locals 0
    .parameter "frameImage"
    .parameter "backgroundImage"
    .parameter "parameters"
    .parameter "textId"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mFrameImage:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .line 77
    iput p4, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mTextId:I

    .line 78
    return-void
.end method
