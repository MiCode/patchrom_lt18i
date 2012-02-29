.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Lmiui/app/screenelement/ScreenElement;

.field protected mCurrentX:I

.field protected mCurrentY:I

.field private mHeight:Lmiui/app/screenelement/Expression;

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

.field protected mPressedSound:Ljava/lang/String;

.field protected mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

.field protected mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

.field private mState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

.field private mWidth:Lmiui/app/screenelement/Expression;

.field protected mX:Lmiui/app/screenelement/Expression;

.field protected mY:Lmiui/app/screenelement/Expression;

.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 296
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Invalid:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    .line 297
    invoke-virtual {p0, p2, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 298
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "move_x"

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 299
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "move_y"

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 300
    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "move_dist"

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 301
    return-void
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;
    .locals 2
    .parameter "name"

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, ele:Lmiui/app/screenelement/ScreenElement;
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 416
    :goto_0
    return-object v1

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 409
    goto :goto_0

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 414
    goto :goto_0

    .line 416
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentX()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentX:I

    return v0
.end method

.method public getCurrentY()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentY:I

    return v0
.end method

.method public getState()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    return-object v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mX:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mY:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mX:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentX:I

    .line 348
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mY:Lmiui/app/screenelement/Expression;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentY:I

    .line 349
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->init()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->init()V

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->init()V

    .line 355
    :cond_2
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 3
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "wrong node name"

    invoke-static {v1, v2}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 305
    const-string v1, "normalSound"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalSound:Ljava/lang/String;

    .line 306
    const-string v1, "pressedSound"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedSound:Ljava/lang/String;

    .line 307
    const-string v1, "reachedSound"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedSound:Ljava/lang/String;

    .line 309
    const-string v1, "x"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mX:Lmiui/app/screenelement/Expression;

    .line 310
    const-string v1, "y"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mY:Lmiui/app/screenelement/Expression;

    .line 311
    const-string v1, "w"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mWidth:Lmiui/app/screenelement/Expression;

    .line 312
    const-string v1, "h"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mHeight:Lmiui/app/screenelement/Expression;

    .line 314
    const-string v1, "NormalState"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 315
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 316
    new-instance v1, Lmiui/app/screenelement/ElementGroup;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    .line 319
    :cond_0
    const-string v1, "PressedState"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_1

    .line 321
    new-instance v1, Lmiui/app/screenelement/ElementGroup;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    .line 325
    :cond_1
    const-string v1, "ReachedState"

    invoke-static {p1, v1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_2

    .line 327
    new-instance v1, Lmiui/app/screenelement/ElementGroup;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    .line 330
    :cond_2
    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Normal:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {p0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    .line 331
    return-void
.end method

.method public moveTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 342
    iput p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentX:I

    .line 343
    iput p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentY:I

    .line 344
    return-void
.end method

.method protected onStateChange(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V
    .locals 0
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 468
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->pause()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->pause()V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->pause()V

    .line 364
    :cond_2
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 376
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mX:Lmiui/app/screenelement/Expression;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v3

    double-to-int v1, v3

    .line 377
    .local v1, x:I
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mY:Lmiui/app/screenelement/Expression;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v3

    double-to-int v2, v3

    .line 378
    .local v2, y:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 379
    .local v0, rs:I
    iget v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentX:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentY:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 380
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Lmiui/app/screenelement/ScreenElement;

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/app/screenelement/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 382
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 383
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->resume()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->resume()V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->resume()V

    .line 373
    :cond_2
    return-void
.end method

.method public setState(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 436
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    if-ne v2, p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    .line 439
    .local v1, preState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, img:Lmiui/app/screenelement/ScreenElement;
    sget-object v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;->$SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I

    invoke-virtual {p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 456
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPressed:Z
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 457
    :cond_1
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->init()V

    .line 458
    :cond_2
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Lmiui/app/screenelement/ScreenElement;

    .line 460
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mState:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->onStateChange(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V

    goto :goto_0

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    .line 444
    goto :goto_1

    .line 446
    :pswitch_1
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    move-object v0, v2

    .line 448
    :goto_2
    goto :goto_1

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    move-object v0, v2

    goto :goto_2

    .line 450
    :pswitch_2
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    move-object v0, v2

    :goto_3
    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    move-object v0, v2

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    move-object v0, v2

    goto :goto_3

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mPressedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mNormalStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mReachedStateElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 397
    :cond_2
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Lmiui/app/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mCurrentStateElements:Lmiui/app/screenelement/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElement;->tick(J)V

    .line 388
    :cond_0
    return-void
.end method

.method public touched(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 334
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mX:Lmiui/app/screenelement/Expression;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v4

    double-to-int v2, v4

    .line 335
    .local v2, cx:I
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mWidth:Lmiui/app/screenelement/Expression;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v4

    double-to-int v1, v4

    .line 336
    .local v1, cw:I
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mY:Lmiui/app/screenelement/Expression;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v4

    double-to-int v3, v4

    .line 337
    .local v3, cy:I
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->mHeight:Lmiui/app/screenelement/Expression;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$1800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v4

    double-to-int v0, v4

    .line 338
    .local v0, ch:I
    if-lt p1, v2, :cond_0

    add-int v4, v2, v1

    if-gt p1, v4, :cond_0

    if-lt p2, v3, :cond_0

    add-int v4, v3, v0

    if-gt p2, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
