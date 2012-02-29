.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceAnimationController"
.end annotation


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lmiui/app/screenelement/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lmiui/app/screenelement/Expression;

.field private mBounceStartPointIndex:I

.field private mBounceStartTime:J

.field private mEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

.field private mPreDistance:J

.field private mStartX:I

.field private mStartY:I

.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    return-void
.end method

.method private getPoint(IIIIJ)Lmiui/app/screenelement/Utils$Point;
    .locals 17
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "distance"

    .prologue
    .line 202
    new-instance v6, Lmiui/app/screenelement/Utils$Point;

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide v12, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v14, v0

    invoke-direct {v6, v12, v13, v14, v15}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 203
    .local v6, pt1:Lmiui/app/screenelement/Utils$Point;
    new-instance v7, Lmiui/app/screenelement/Utils$Point;

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide v12, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v14, v0

    invoke-direct {v7, v12, v13, v14, v15}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 204
    .local v7, pt2:Lmiui/app/screenelement/Utils$Point;
    const/4 v12, 0x1

    invoke-static {v6, v7, v12}, Lmiui/app/screenelement/Utils;->Dist(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)D

    move-result-wide v10

    .line 205
    .local v10, total:D
    move-wide/from16 v0, p5

    long-to-double v0, v0

    move-wide v12, v0

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_0

    .line 206
    const/4 v12, 0x0

    .line 210
    :goto_0
    return-object v12

    .line 207
    :cond_0
    move-wide/from16 v0, p5

    long-to-double v0, v0

    move-wide v12, v0

    sub-double v12, v10, v12

    div-double v8, v12, v10

    .line 208
    .local v8, ratio:D
    iget-wide v12, v7, Lmiui/app/screenelement/Utils$Point;->x:D

    iget-wide v14, v6, Lmiui/app/screenelement/Utils$Point;->x:D

    sub-double/2addr v12, v14

    mul-double v2, v12, v8

    .line 209
    .local v2, dx:D
    iget-wide v12, v7, Lmiui/app/screenelement/Utils$Point;->y:D

    iget-wide v14, v6, Lmiui/app/screenelement/Utils$Point;->y:D

    sub-double/2addr v12, v14

    mul-double v4, v12, v8

    .line 210
    .local v4, dy:D
    new-instance v12, Lmiui/app/screenelement/Utils$Point;

    iget-wide v13, v6, Lmiui/app/screenelement/Utils$Point;->x:D

    add-double/2addr v13, v2

    iget-wide v15, v6, Lmiui/app/screenelement/Utils$Point;->y:D

    add-double/2addr v15, v4

    invoke-direct/range {v12 .. v16}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    goto :goto_0
.end method

.method private startBounceAnimation(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)V
    .locals 12
    .parameter "ep"

    .prologue
    const/4 v11, 0x1

    .line 117
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/app/screenelement/Expression;

    if-eqz v7, :cond_0

    .line 118
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/app/screenelement/Expression;

    iget-object v8, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v8}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v7, v8}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeed:I

    .line 119
    :cond_0
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceAccelationExp:Lmiui/app/screenelement/Expression;

    if-eqz v7, :cond_1

    .line 120
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceAccelationExp:Lmiui/app/screenelement/Expression;

    iget-object v8, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v8}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v7, v8}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceAccelation:I

    .line 121
    :cond_1
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 122
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    .line 123
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
    invoke-static {v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getCurrentX()I

    move-result v7

    iput v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mStartX:I

    .line 124
    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
    invoke-static {v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getCurrentY()I

    move-result v7

    iput v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mStartY:I

    .line 125
    const/4 v7, -0x1

    iput v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    .line 126
    if-eqz p1, :cond_2

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 127
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 128
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    sub-int v8, v0, v11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;

    .line 129
    .local v5, pt1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;

    .line 130
    .local v6, pt2:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    new-instance v2, Lmiui/app/screenelement/Utils$Point;

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getX()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getY()I

    move-result v9

    int-to-double v9, v9

    invoke-direct {v2, v7, v8, v9, v10}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 131
    .local v2, p1:Lmiui/app/screenelement/Utils$Point;
    new-instance v3, Lmiui/app/screenelement/Utils$Point;

    invoke-virtual {v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getX()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getY()I

    move-result v9

    int-to-double v9, v9

    invoke-direct {v3, v7, v8, v9, v10}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 132
    .local v3, p2:Lmiui/app/screenelement/Utils$Point;
    new-instance v1, Lmiui/app/screenelement/Utils$Point;

    iget v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mStartX:I

    int-to-double v7, v7

    iget v9, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mStartY:I

    int-to-double v9, v9

    invoke-direct {v1, v7, v8, v9, v10}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 133
    .local v1, p0:Lmiui/app/screenelement/Utils$Point;
    const/4 v7, 0x0

    invoke-static {v2, v3, v1, v7}, Lmiui/app/screenelement/Utils;->pointProjectionOnSegment(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)Lmiui/app/screenelement/Utils$Point;

    move-result-object v4

    .line 134
    .local v4, pt:Lmiui/app/screenelement/Utils$Point;
    if-eqz v4, :cond_3

    .line 135
    sub-int v7, v0, v11

    iput v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    .line 140
    .end local v0           #i:I
    .end local v1           #p0:Lmiui/app/screenelement/Utils$Point;
    .end local v2           #p1:Lmiui/app/screenelement/Utils$Point;
    .end local v3           #p2:Lmiui/app/screenelement/Utils$Point;
    .end local v4           #pt:Lmiui/app/screenelement/Utils$Point;
    .end local v5           #pt1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    .end local v6           #pt2:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    :cond_2
    return-void

    .line 127
    .restart local v0       #i:I
    .restart local v1       #p0:Lmiui/app/screenelement/Utils$Point;
    .restart local v2       #p1:Lmiui/app/screenelement/Utils$Point;
    .restart local v3       #p2:Lmiui/app/screenelement/Utils$Point;
    .restart local v4       #pt:Lmiui/app/screenelement/Utils$Point;
    .restart local v5       #pt1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    .restart local v6       #pt2:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 106
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 100
    const-string v0, "bounceInitSpeed"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/app/screenelement/Expression;

    .line 101
    const-string v0, "bounceAcceleration"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceAccelationExp:Lmiui/app/screenelement/Expression;

    .line 102
    return-void
.end method

.method public startCancelMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)V
    .locals 1
    .parameter "ep"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Lmiui/app/screenelement/Expression;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->startBounceAnimation(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 28
    .parameter "currentTime"

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 146
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 147
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mPreDistance:J

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    move-wide v5, v0

    sub-long v26, p1, v5

    .line 150
    .local v26, time:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeed:I

    move v5, v0

    int-to-long v5, v5

    mul-long v5, v5, v26

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceAccelation:I

    move v7, v0

    int-to-long v7, v7

    mul-long v7, v7, v26

    mul-long v7, v7, v26

    const-wide/32 v9, 0x1e8480

    div-long/2addr v7, v9

    add-long v10, v5, v7

    .line 151
    .local v10, dist:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeed:I

    move v5, v0

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceAccelation:I

    move v7, v0

    int-to-long v7, v7

    mul-long v7, v7, v26

    const-wide/16 v12, 0x3e8

    div-long/2addr v7, v12

    add-long v24, v5, v7

    .line 152
    .local v24, speed:J
    const-wide/16 v5, 0x0

    cmp-long v5, v24, v5

    if-gtz v5, :cond_2

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 154
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    goto :goto_0

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    move-object v5, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_6

    .line 159
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getX()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getY()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mStartX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mStartY:I

    move v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->getPoint(IIIIJ)Lmiui/app/screenelement/Utils$Point;

    move-result-object v22

    .line 161
    .local v22, pt:Lmiui/app/screenelement/Utils$Point;
    if-nez v22, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 163
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 194
    .end local v22           #pt:Lmiui/app/screenelement/Utils$Point;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    .line 195
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mPreDistance:J

    goto/16 :goto_0

    .line 165
    .restart local v22       #pt:Lmiui/app/screenelement/Utils$Point;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lmiui/app/screenelement/Utils$Point;->x:D

    move-wide v6, v0

    double-to-int v6, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lmiui/app/screenelement/Utils$Point;->y:D

    move-wide v7, v0

    double-to-int v7, v7

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->moveStartPoint(II)V
    invoke-static {v5, v6, v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;II)V

    goto :goto_1

    .line 168
    .end local v22           #pt:Lmiui/app/screenelement/Utils$Point;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getCurrentX()I

    move-result v15

    .line 169
    .local v15, x2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mStartPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->getCurrentY()I

    move-result v16

    .line 170
    .local v16, y2:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mPreDistance:J

    move-wide v5, v0

    sub-long v17, v10, v5

    .line 171
    .local v17, d:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    move/from16 v19, v0

    .local v19, i:I
    :goto_2
    if-ltz v19, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;

    move-object v5, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;

    .line 173
    .local v23, pt1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    invoke-virtual/range {v23 .. v23}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getX()I

    move-result v13

    invoke-virtual/range {v23 .. v23}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getY()I

    move-result v14

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v18}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->getPoint(IIIIJ)Lmiui/app/screenelement/Utils$Point;

    move-result-object v22

    .line 174
    .restart local v22       #pt:Lmiui/app/screenelement/Utils$Point;
    if-nez v22, :cond_8

    .line 175
    if-nez v19, :cond_7

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 177
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    goto/16 :goto_1

    .line 180
    :cond_7
    new-instance v20, Lmiui/app/screenelement/Utils$Point;

    invoke-virtual/range {v23 .. v23}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getX()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual/range {v23 .. v23}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getY()I

    move-result v7

    int-to-double v7, v7

    move-object/from16 v0, v20

    move-wide v1, v5

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 181
    .local v20, p1:Lmiui/app/screenelement/Utils$Point;
    new-instance v21, Lmiui/app/screenelement/Utils$Point;

    int-to-double v5, v15

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide v7, v0

    move-object/from16 v0, v21

    move-wide v1, v5

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 182
    .local v21, p2:Lmiui/app/screenelement/Utils$Point;
    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide v5, v0

    const/4 v7, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move v2, v7

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/Utils;->Dist(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)D

    move-result-wide v7

    sub-double/2addr v5, v7

    move-wide v0, v5

    double-to-long v0, v0

    move-wide/from16 v17, v0

    .line 183
    invoke-virtual/range {v23 .. v23}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getX()I

    move-result v15

    .line 184
    invoke-virtual/range {v23 .. v23}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getY()I

    move-result v16

    .line 171
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 187
    .end local v20           #p1:Lmiui/app/screenelement/Utils$Point;
    .end local v21           #p2:Lmiui/app/screenelement/Utils$Point;
    :cond_8
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$BounceAnimationController;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object v5, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lmiui/app/screenelement/Utils$Point;->x:D

    move-wide v6, v0

    double-to-int v6, v6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lmiui/app/screenelement/Utils$Point;->y:D

    move-wide v7, v0

    double-to-int v7, v7

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->moveStartPoint(II)V
    invoke-static {v5, v6, v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;II)V

    goto/16 :goto_1
.end method
