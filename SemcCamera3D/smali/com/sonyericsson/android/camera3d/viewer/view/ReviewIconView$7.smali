.class Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$7;
.super Ljava/lang/Object;
.source "ReviewIconView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$7;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$7;->this$0:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->access$300(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 278
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 280
    return-void
.end method
