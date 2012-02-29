.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;
.super Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lmiui/app/screenelement/Expression;

.field private mPathY:Lmiui/app/screenelement/Expression;

.field public mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

.field private mTolerance:I

.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 554
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .line 555
    const-string v0, "EndPoint"

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 552
    const/16 v0, 0x96

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTolerance:I

    .line 556
    invoke-direct {p0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 557
    return-void
.end method

.method static synthetic access$3300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;II)Lmiui/app/screenelement/Utils$Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 541
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->getNearestPoint(II)Lmiui/app/screenelement/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getNearestPoint(II)Lmiui/app/screenelement/Utils$Point;
    .locals 24
    .parameter "x"
    .parameter "y"

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 567
    new-instance v19, Lmiui/app/screenelement/Utils$Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object/from16 v20, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetX:I
    invoke-static/range {v20 .. v20}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I

    move-result v20

    sub-int v20, p1, v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetY:I
    invoke-static/range {v22 .. v22}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$3000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I

    move-result v22

    sub-int v22, p2, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-direct/range {v19 .. v23}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 587
    :goto_0
    return-object v19

    .line 570
    :cond_0
    const/4 v13, 0x0

    .line 571
    .local v13, pos:Lmiui/app/screenelement/Utils$Point;
    const-wide v7, 0x7fefffffffffffffL

    .line 572
    .local v7, dist:D
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetX:I
    invoke-static/range {v19 .. v19}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I

    move-result v19

    sub-int v17, p1, v19

    .line 574
    .local v17, x0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetY:I
    invoke-static/range {v19 .. v19}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$3000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I

    move-result v19

    sub-int v18, p2, v19

    .line 575
    .local v18, y0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;

    .line 576
    .local v15, pt1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;

    .line 577
    .local v16, pt2:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    new-instance v11, Lmiui/app/screenelement/Utils$Point;

    invoke-virtual {v15}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getX()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-virtual {v15}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getY()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-object v0, v11

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 578
    .local v11, p1:Lmiui/app/screenelement/Utils$Point;
    new-instance v12, Lmiui/app/screenelement/Utils$Point;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getX()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->getY()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-object v0, v12

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 579
    .local v12, p2:Lmiui/app/screenelement/Utils$Point;
    new-instance v10, Lmiui/app/screenelement/Utils$Point;

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-object v0, v10

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    .line 580
    .local v10, p0:Lmiui/app/screenelement/Utils$Point;
    const/16 v19, 0x1

    move-object v0, v11

    move-object v1, v12

    move-object v2, v10

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lmiui/app/screenelement/Utils;->pointProjectionOnSegment(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)Lmiui/app/screenelement/Utils$Point;

    move-result-object v14

    .line 581
    .local v14, pt:Lmiui/app/screenelement/Utils$Point;
    const/16 v19, 0x0

    move-object v0, v14

    move-object v1, v10

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/Utils;->Dist(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)D

    move-result-wide v5

    .line 582
    .local v5, d:D
    cmpg-double v19, v5, v7

    if-gez v19, :cond_1

    .line 583
    move-wide v7, v5

    .line 584
    move-object v13, v14

    .line 572
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v5           #d:D
    .end local v10           #p0:Lmiui/app/screenelement/Utils$Point;
    .end local v11           #p1:Lmiui/app/screenelement/Utils$Point;
    .end local v12           #p2:Lmiui/app/screenelement/Utils$Point;
    .end local v14           #pt:Lmiui/app/screenelement/Utils$Point;
    .end local v15           #pt1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    .end local v16           #pt2:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
    .end local v17           #x0:I
    .end local v18           #y0:I
    :cond_2
    move-object/from16 v19, v13

    .line 587
    goto/16 :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 562
    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 611
    const-string v4, "Path"

    invoke-static {p1, v4}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 612
    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_1

    .line 613
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 626
    :cond_0
    return-void

    .line 616
    :cond_1
    const-string v4, "tolerance"

    const/16 v5, 0x96

    invoke-static {v0, v4, v5}, Lmiui/app/screenelement/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTolerance:I

    .line 618
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 619
    const-string v4, "x"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPathX:Lmiui/app/screenelement/Expression;

    .line 620
    const-string v4, "y"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPathY:Lmiui/app/screenelement/Expression;

    .line 621
    const-string v4, "Position"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 622
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 623
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 624
    .local v2, item:Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    iget-object v7, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPathX:Lmiui/app/screenelement/Expression;

    iget-object v8, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPathY:Lmiui/app/screenelement/Expression;

    invoke-direct {v5, v6, v2, v7, v8}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;Lmiui/app/screenelement/Expression;Lmiui/app/screenelement/Expression;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 629
    const-string v1, "Intent"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 630
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 631
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    invoke-direct {v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;)V

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    .line 632
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    const-string v2, "action"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->action:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    const-string v2, "type"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->type:Ljava/lang/String;

    .line 634
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    const-string v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->category:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    const-string v2, "package"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->packageName:Ljava/lang/String;

    .line 636
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    const-string v2, "class"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->className:Ljava/lang/String;

    .line 637
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    iget-object v1, v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    iput-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTask:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Task;

    .line 640
    :cond_0
    return-void
.end method


# virtual methods
.method public getTransformedDist(Lmiui/app/screenelement/Utils$Point;II)I
    .locals 9
    .parameter "pt"
    .parameter "x"
    .parameter "y"

    .prologue
    const v8, 0x7fffffff

    .line 594
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 595
    const v3, 0x7ffffffe

    .line 606
    :goto_0
    return v3

    .line 597
    :cond_0
    if-nez p1, :cond_1

    move v3, v8

    .line 598
    goto :goto_0

    .line 600
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetX:I
    invoke-static {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I

    move-result v3

    sub-int v1, p2, v3

    .line 601
    .local v1, x0:I
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mTouchOffsetY:I
    invoke-static {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$3000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)I

    move-result v3

    sub-int v2, p3, v3

    .line 602
    .local v2, y0:I
    new-instance v3, Lmiui/app/screenelement/Utils$Point;

    int-to-double v4, v1

    int-to-double v6, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lmiui/app/screenelement/Utils$Point;-><init>(DD)V

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lmiui/app/screenelement/Utils;->Dist(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)D

    move-result-wide v3

    double-to-int v0, v3

    .line 603
    .local v0, dist:I
    iget v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mTolerance:I

    if-ge v0, v3, :cond_2

    move v3, v0

    .line 604
    goto :goto_0

    :cond_2
    move v3, v8

    .line 606
    goto :goto_0
.end method

.method protected onStateChange(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 644
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Invalid:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    if-ne p1, v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 648
    :cond_0
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;->$SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I

    invoke-virtual {p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 650
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$EndPoint;->mReachedSound:Ljava/lang/String;

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
