.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;
.super Ljava/lang/Object;
.source "Panorama3dLayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->startSlideAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

.field final synthetic val$listener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 689
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 693
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$4;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 684
    return-void
.end method
