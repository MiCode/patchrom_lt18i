.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Lmiui/app/screenelement/Expression;

.field private mBaseY:Lmiui/app/screenelement/Expression;

.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;Lmiui/app/screenelement/Expression;Lmiui/app/screenelement/Expression;)V
    .locals 0
    .parameter
    .parameter "node"
    .parameter "baseX"
    .parameter "baseY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 515
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->mBaseX:Lmiui/app/screenelement/Expression;

    .line 517
    iput-object p4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->mBaseY:Lmiui/app/screenelement/Expression;

    .line 518
    invoke-virtual {p0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->load(Lorg/w3c/dom/Element;)V

    .line 519
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->mBaseX:Lmiui/app/screenelement/Expression;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->x:I

    int-to-double v0, v0

    :goto_0
    double-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->x:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->mBaseX:Lmiui/app/screenelement/Expression;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public getY()I
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->mBaseY:Lmiui/app/screenelement/Expression;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->y:I

    int-to-double v0, v0

    :goto_0
    double-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->y:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->mBaseY:Lmiui/app/screenelement/Expression;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "node is null"

    .line 530
    if-nez p1, :cond_0

    .line 531
    const-string v0, "LockScreen_UnlockerScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v3}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "wrong node tag"

    invoke-static {v0, v1}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 536
    const-string v0, "x"

    invoke-static {p1, v0, v2}, Lmiui/app/screenelement/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->x:I

    .line 537
    const-string v0, "y"

    invoke-static {p1, v0, v2}, Lmiui/app/screenelement/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$Position;->y:I

    .line 538
    return-void
.end method
