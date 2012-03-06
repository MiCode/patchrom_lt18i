.class Lcom/android/internal/widget/SlidingTabSemc$4;
.super Ljava/lang/Object;
.source "SlidingTabSemc.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTabSemc;->moveAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTabSemc;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTabSemc;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc$4;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$4;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V

    .line 714
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 710
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 709
    return-void
.end method
