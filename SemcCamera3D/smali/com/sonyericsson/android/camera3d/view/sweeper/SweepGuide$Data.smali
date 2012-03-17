.class Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
.super Ljava/lang/Object;
.source "SweepGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field public final mAnimatingDuration:I

.field public final mRealImage:Landroid/graphics/drawable/Drawable;

.field public final mRealParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

.field public final mShadowImage:Landroid/graphics/drawable/Drawable;

.field public final mShadowParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V
    .locals 0
    .parameter "realImage"
    .parameter "shadowImage"
    .parameter "realParameters"
    .parameter "shadowParameters"
    .parameter "animatingDuration"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mRealImage:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mShadowImage:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mRealParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .line 99
    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mShadowParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .line 100
    iput p5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mAnimatingDuration:I

    .line 101
    return-void
.end method
