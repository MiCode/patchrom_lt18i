.class Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;
.super Ljava/lang/Object;
.source "SlidingPanel.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalBatteryInfo"
.end annotation


# instance fields
.field private MAX_BATTERY_LEVEL:I

.field private mBatteryAnimationArrow:Landroid/widget/ImageView;

.field private mBatteryAnimationLight:Landroid/widget/ImageView;

.field private mBatteryAnimationProgress:Landroid/widget/ImageView;

.field private mBatteryAnimationRunnable:Ljava/lang/Runnable;

.field private mBatteryLevel:I

.field final synthetic this$0:Lcom/miui/internal/policy/impl/SlidingPanel;


# direct methods
.method private constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    const/16 v0, 0x64

    iput v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->MAX_BATTERY_LEVEL:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;Lcom/miui/internal/policy/impl/SlidingPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public clearBatteryAnimations()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 764
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 765
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 766
    return-void
.end method

.method public needLayoutBattery()Z
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSliding()V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public setBackgroundFor(I)V
    .locals 12
    .parameter "mode"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 687
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #setter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I
    invoke-static {v8, p1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1002(Lcom/miui/internal/policy/impl/SlidingPanel;I)I

    .line 688
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPaused:Z
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1100(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    if-nez p1, :cond_2

    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsShowBatteryLevel:Z
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1200(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v8

    if-nez v8, :cond_3

    .line 693
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1400(Lcom/miui/internal/policy/impl/SlidingPanel;)Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setupBatteryArea()V

    .line 695
    :cond_3
    const v7, 0x60202de

    .line 696
    .local v7, resId:I
    const/4 v4, 0x0

    .line 697
    .local v4, batteryAnimationProgressId:I
    const/4 v2, 0x0

    .line 698
    .local v2, batteryAnimationArrowId:I
    const/4 v3, 0x0

    .line 699
    .local v3, batteryAnimationLightId:I
    const/4 v6, -0x1

    .line 700
    .local v6, progressMarginLeft:I
    packed-switch p1, :pswitch_data_0

    .line 724
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$400(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 725
    const v7, 0x60202df

    .line 728
    :cond_5
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1600(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 729
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 732
    if-eqz v4, :cond_7

    move v0, v10

    .line 733
    .local v0, BatteryVisibility:I
    :goto_2
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 734
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 736
    const/4 v8, -0x1

    if-eq v6, v8, :cond_6

    .line 737
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 738
    .local v5, progressLayout:Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 739
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    .end local v5           #progressLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    if-eqz v2, :cond_8

    move v1, v10

    .line 744
    .local v1, animVisibility:I
    :goto_3
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->clearBatteryAnimations()V

    .line 749
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->setBatteryAnimations()V

    goto/16 :goto_0

    .line 702
    .end local v0           #BatteryVisibility:I
    .end local v1           #animVisibility:I
    :pswitch_1
    const v3, 0x60202ac

    .line 703
    const v4, 0x60202a8

    .line 704
    const v2, 0x60202ab

    goto :goto_1

    .line 711
    :pswitch_2
    const v4, 0x60202b3

    .line 713
    const/4 v6, 0x0

    .line 714
    goto :goto_1

    .line 716
    :pswitch_3
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsShowBatteryLevel:Z
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1200(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 717
    const v4, 0x60202a8

    .line 718
    iget-object v8, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static {v8}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1500(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryLevel:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->MAX_BATTERY_LEVEL:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static {v9}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1500(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v9

    sub-int v6, v8, v9

    goto/16 :goto_1

    :cond_7
    move v0, v11

    .line 732
    goto/16 :goto_2

    .restart local v0       #BatteryVisibility:I
    :cond_8
    move v1, v11

    .line 743
    goto :goto_3

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBatteryAnimations()V
    .locals 28

    .prologue
    .line 772
    const/16 v13, 0x3e8

    .line 773
    .local v13, duration1:I
    const/16 v14, 0x3e8

    .line 774
    .local v14, duration2:I
    const/16 v12, 0xdac

    .line 776
    .local v12, delayDuration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v24, v0

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static/range {v24 .. v24}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1500(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryLevel:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->MAX_BATTERY_LEVEL:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    const/high16 v25, 0x3f00

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 777
    .local v18, lightOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v24, v0

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mDisplayWidth:I
    invoke-static/range {v24 .. v24}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1500(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v24

    sub-int v23, v24, v18

    .line 778
    .local v23, progressMarginLeft:I
    move/from16 v6, v23

    .line 781
    .local v6, arrowOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/NinePatchDrawable;

    .line 782
    .local v21, progressDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    if-eqz v21, :cond_0

    .line 783
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 784
    .local v20, padding:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 785
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v18, v18, v24

    .line 786
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v6, v6, v24

    .line 789
    .end local v20           #padding:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/FrameLayout$LayoutParams;

    .line 790
    .local v22, progressLayout:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 794
    .local v17, lightLayout:Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 798
    .local v5, arrowDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 799
    .local v8, barLayout:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object v1, v8

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/16 v24, 0x0

    move v0, v6

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v0, v10

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 804
    .local v10, barTranslate1:Landroid/view/animation/TranslateAnimation;
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object v0, v10

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 805
    new-instance v24, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 808
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    mul-int/lit8 v24, v24, 0x2

    add-int v19, v6, v24

    .line 809
    .local v19, offsetX:I
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    move v0, v6

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v0, v11

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 811
    .local v11, barTranslate2:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v24, 0x3f80

    const/16 v25, 0x0

    move-object v0, v7

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 813
    .local v7, barAlpha2:Landroid/view/animation/AlphaAnimation;
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/16 v24, 0x0

    move-object v0, v9

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 814
    .local v9, barSet2:Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 815
    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 816
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object v0, v9

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 818
    new-instance v24, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 822
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v0, v15

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 823
    .local v15, lightAlpha1:Landroid/view/animation/AlphaAnimation;
    const/16 v24, 0x1

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 824
    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object v0, v15

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 827
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v24, 0x3f80

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 828
    .local v16, lightAlpha2:Landroid/view/animation/AlphaAnimation;
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 829
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 831
    new-instance v24, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 834
    new-instance v24, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo$1;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;Landroid/view/animation/TranslateAnimation;Landroid/view/animation/AlphaAnimation;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    .line 844
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    const-wide/16 v26, 0xdac

    invoke-virtual/range {v24 .. v27}, Lcom/miui/internal/policy/impl/SlidingPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 845
    return-void
.end method

.method public setBatteryInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 759
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 893
    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->MAX_BATTERY_LEVEL:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->MAX_BATTERY_LEVEL:I

    :goto_0
    iput v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryLevel:I

    .line 894
    return-void

    :cond_0
    move v0, p1

    .line 893
    goto :goto_0
.end method

.method public setupBatteryArea()V
    .locals 7

    .prologue
    const/16 v6, 0x13

    const/16 v4, 0x8

    const/4 v5, -0x2

    .line 849
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2000(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1302(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 850
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x60202a7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 852
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2100(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    .line 853
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationProgress:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2200(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    .line 860
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationArrow:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    .line 867
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2400(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$HorizontalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x31

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    return-void
.end method
