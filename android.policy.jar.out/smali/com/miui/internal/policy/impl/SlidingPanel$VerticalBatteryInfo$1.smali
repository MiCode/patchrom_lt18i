.class Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;
.super Ljava/lang/Object;
.source "SlidingPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->setBatteryAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

.field final synthetic val$barSet1:Landroid/view/animation/AnimationSet;

.field final synthetic val$lightAlpha1:Landroid/view/animation/AlphaAnimation;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;Landroid/view/animation/AnimationSet;Landroid/view/animation/AlphaAnimation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

    iput-object p2, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->val$barSet1:Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->val$lightAlpha1:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->access$2600(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1066
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->access$2700(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->val$barSet1:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1067
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->access$2800(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->val$lightAlpha1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1068
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;->this$1:Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->access$2600(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1069
    return-void
.end method
