.class Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;
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
    name = "VerticalBatteryInfo"
.end annotation


# instance fields
.field private mBatteryAnimationBar:Landroid/widget/ImageView;

.field private mBatteryAnimationBarHeight:I

.field private mBatteryAnimationLight:Landroid/widget/ImageView;

.field private mBatteryAnimationRunnable:Ljava/lang/Runnable;

.field private mBatteryInfo:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/internal/policy/impl/SlidingPanel;


# direct methods
.method private constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/policy/impl/SlidingPanel;Lcom/miui/internal/policy/impl/SlidingPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 898
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public clearBatteryAnimations()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 988
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 989
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 990
    return-void
.end method

.method public needLayoutBattery()Z
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

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
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1116
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1118
    return-void
.end method

.method public setBackgroundFor(I)V
    .locals 10
    .parameter "mode"

    .prologue
    const/high16 v9, 0x4040

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 907
    const/4 v3, 0x0

    .line 908
    .local v3, resId:I
    const/4 v0, 0x0

    .line 909
    .local v0, batteryAnimationBarId:I
    const/4 v1, 0x0

    .line 911
    .local v1, batteryAnimationLightId:I
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #setter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I
    invoke-static {v4, p1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1002(Lcom/miui/internal/policy/impl/SlidingPanel;I)I

    .line 912
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPaused:Z
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1100(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-nez v4, :cond_2

    .line 916
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBattery:Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1400(Lcom/miui/internal/policy/impl/SlidingPanel;)Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;->setupBatteryArea()V

    .line 918
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 946
    :goto_1
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mButtonRegion:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1600(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 947
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->clearBatteryAnimations()V

    .line 954
    if-eqz v1, :cond_4

    .line 955
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 957
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 963
    :goto_2
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$400(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 964
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 965
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBarHeight:I

    .line 969
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->setBatteryAnimations()V

    .line 975
    :goto_3
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 976
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBackgroundMode:I
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1000(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$400(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    move v2, v4

    .line 977
    .local v2, batteryInfoVisible:Z
    :goto_4
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 920
    .end local v2           #batteryInfoVisible:Z
    :pswitch_0
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mIsPressing:Z
    invoke-static {v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$400(Lcom/miui/internal/policy/impl/SlidingPanel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 921
    const v3, 0x60202b5

    .line 922
    const v1, 0x60202b7

    goto :goto_1

    .line 924
    :cond_3
    const v3, 0x60202b4

    .line 926
    goto :goto_1

    .line 929
    :pswitch_1
    const v0, 0x60202aa

    .line 933
    :pswitch_2
    const v1, 0x60202ae

    .line 934
    const v3, 0x60202ad

    .line 935
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    const v5, -0x4cb70100

    invoke-virtual {v4, v9, v6, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_1

    .line 939
    :pswitch_3
    const v3, 0x60202b1

    .line 940
    const v0, 0x60202b0

    .line 941
    const v1, 0x60202b2

    .line 942
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    const/high16 v5, -0x4c01

    invoke-virtual {v4, v9, v6, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_1

    .line 959
    :cond_4
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 971
    :cond_5
    iget-object v4, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move v2, v7

    .line 976
    goto :goto_4

    .restart local v2       #batteryInfoVisible:Z
    :cond_7
    move v5, v8

    .line 977
    goto :goto_5

    .line 918
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBatteryAnimations()V
    .locals 25

    .prologue
    .line 997
    const/16 v15, 0x3e8

    .line 998
    .local v15, duration1:I
    const/16 v16, 0x3e8

    .line 999
    .local v16, duration2:I
    const/16 v17, 0x3e8

    .line 1000
    .local v17, duration3:I
    const/16 v13, 0x1194

    .line 1002
    .local v13, delayDuration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v21, v0

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2500(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x60c0013

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move v14, v0

    .line 1003
    .local v14, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1004
    .local v8, barLayout:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v8

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1007
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move v0, v14

    int-to-float v0, v0

    move/from16 v24, v0

    move-object v0, v11

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1009
    .local v11, barTranslate1:Landroid/view/animation/TranslateAnimation;
    const/16 v21, 0x1

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1011
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const v21, 0x3e4ccccd

    const/high16 v22, 0x3f80

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1012
    .local v5, barAlpha1:Landroid/view/animation/AlphaAnimation;
    const/16 v21, 0x1

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1014
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/16 v21, 0x1

    move-object v0, v9

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1015
    .local v9, barSet1:Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1017
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object v0, v9

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1018
    new-instance v21, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1021
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v0, v14

    int-to-float v0, v0

    move/from16 v23, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v24, v0

    move-object v0, v12

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1024
    .local v12, barTranslate2:Landroid/view/animation/TranslateAnimation;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f80

    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1025
    .local v6, barAlpha2:Landroid/view/animation/AlphaAnimation;
    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1027
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1028
    .local v10, barSet2:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1029
    invoke-virtual {v10, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1030
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object v0, v10

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1033
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1034
    .local v7, barAlpha3:Landroid/view/animation/AlphaAnimation;
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1035
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object v0, v7

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1037
    new-instance v21, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1038
    new-instance v21, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1043
    new-instance v18, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f00

    const/high16 v22, 0x3f00

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1044
    .local v18, lightAlpha1:Landroid/view/animation/AlphaAnimation;
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1045
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1048
    new-instance v19, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f00

    const/high16 v22, 0x3f80

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1049
    .local v19, lightAlpha2:Landroid/view/animation/AlphaAnimation;
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1050
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1053
    new-instance v20, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f80

    const/high16 v22, 0x3f00

    invoke-direct/range {v20 .. v22}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1054
    .local v20, lightAlpha3:Landroid/view/animation/AlphaAnimation;
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1055
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1057
    new-instance v21, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1058
    new-instance v21, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$AnimationSequenceListener;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 1062
    new-instance v21, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo$1;-><init>(Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;Landroid/view/animation/AnimationSet;Landroid/view/animation/AlphaAnimation;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    .line 1072
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1194

    invoke-virtual/range {v21 .. v24}, Lcom/miui/internal/policy/impl/SlidingPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1073
    return-void
.end method

.method public setBatteryInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 1123
    return-void
.end method

.method public setupBatteryArea()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, -0x1

    const/16 v5, 0x51

    const/4 v4, -0x2

    .line 1077
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2900(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1302(Lcom/miui/internal/policy/impl/SlidingPanel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 1078
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1079
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$3000(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    .line 1080
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationBar:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$3100(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    .line 1087
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryAnimationLight:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$3200(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    .line 1094
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1095
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1096
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->mBatteryInfo:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mFooterRegionHeight:I
    invoke-static {v3}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$3300(Lcom/miui/internal/policy/impl/SlidingPanel;)I

    move-result v3

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    iget-object v0, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mContentArea:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$2400(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/policy/impl/SlidingPanel$VerticalBatteryInfo;->this$0:Lcom/miui/internal/policy/impl/SlidingPanel;

    #getter for: Lcom/miui/internal/policy/impl/SlidingPanel;->mBatteryArea:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/SlidingPanel;->access$1300(Lcom/miui/internal/policy/impl/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    return-void
.end method
