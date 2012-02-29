.class Lmiui/app/screenelement/Expression$FunctionExpression;
.super Lmiui/app/screenelement/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;,
        Lmiui/app/screenelement/Expression$FunctionExpression$Fun;
    }
.end annotation


# static fields
.field private static sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

.field private mParaExps:[Lmiui/app/screenelement/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 290
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sin"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "cos"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->COS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tan"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->TAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "asin"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ASIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "acos"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ACOS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "atan"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ATAN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sinh"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SINH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "cosh"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->COSH:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sqrt"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->SQRT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "abs"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ABS:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "len"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->LEN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "round"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ROUND:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "int"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->INT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v4}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "min"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->MIN:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "max"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->MAX:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    const-string v1, "digit"

    new-instance v2, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    sget-object v3, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->DIGIT:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-direct {v2, v3, v5}, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;-><init>(Lmiui/app/screenelement/Expression$FunctionExpression$Fun;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method public constructor <init>([Lmiui/app/screenelement/Expression;Ljava/lang/String;)V
    .locals 0
    .parameter "exps"
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Lmiui/app/screenelement/Expression;-><init>()V

    .line 311
    iput-object p1, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    .line 312
    invoke-direct {p0, p2}, Lmiui/app/screenelement/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private digit(II)I
    .locals 3
    .parameter "number"
    .parameter "n"

    .prologue
    const/4 v2, -0x1

    .line 366
    if-gtz p2, :cond_0

    move v1, v2

    .line 371
    :goto_0
    return v1

    .line 368
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lez p1, :cond_1

    const/4 v1, 0x1

    sub-int v1, p2, v1

    if-ge v0, v1, :cond_1

    .line 369
    div-int/lit8 p1, p1, 0xa

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    :cond_1
    if-lez p1, :cond_2

    rem-int/lit8 v1, p1, 0xa

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private len(I)I
    .locals 2
    .parameter "number"

    .prologue
    .line 376
    const/4 v0, 0x1

    .line 377
    .local v0, len:I
    :goto_0
    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    .line 378
    div-int/lit8 p1, p1, 0xa

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return v0
.end method

.method private parseFunction(Ljava/lang/String;)V
    .locals 6
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    sget-object v1, Lmiui/app/screenelement/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;

    .line 317
    .local v0, fd:Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;
    if-eqz v0, :cond_0

    move v1, v5

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid function:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 319
    iget-object v1, v0, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;->fun:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    iput-object v1, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    .line 320
    iget-object v1, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    array-length v1, v1

    iget v2, v0, Lmiui/app/screenelement/Expression$FunctionExpression$FunctionDesc;->params:I

    if-ne v1, v2, :cond_1

    move v1, v5

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters count not matching for function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 321
    return-void

    :cond_0
    move v1, v4

    .line 317
    goto :goto_0

    :cond_1
    move v1, v4

    .line 320
    goto :goto_1
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    sget-object v0, Lmiui/app/screenelement/Expression$1;->$SwitchMap$miui$app$screenelement$Expression$FunctionExpression$Fun:[I

    iget-object v1, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mFun:Lmiui/app/screenelement/Expression$FunctionExpression$Fun;

    invoke-virtual {v1}, Lmiui/app/screenelement/Expression$FunctionExpression$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    const-string v0, "Expression"

    const-string v1, "fail to evalute FunctionExpression, invalid function"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 327
    :pswitch_0
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    goto :goto_0

    .line 333
    :pswitch_3
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto :goto_0

    .line 337
    :pswitch_5
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    goto :goto_0

    .line 339
    :pswitch_6
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v0

    goto :goto_0

    .line 341
    :pswitch_7
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v0

    goto :goto_0

    .line 343
    :pswitch_8
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    .line 345
    :pswitch_9
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto/16 :goto_0

    .line 347
    :pswitch_a
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lmiui/app/screenelement/Expression$FunctionExpression;->len(I)I

    move-result v0

    int-to-double v0, v0

    goto/16 :goto_0

    .line 349
    :pswitch_b
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    goto/16 :goto_0

    .line 351
    :pswitch_c
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    goto/16 :goto_0

    .line 353
    :pswitch_d
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto/16 :goto_0

    .line 355
    :pswitch_e
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto/16 :goto_0

    .line 357
    :pswitch_f
    iget-object v0, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lmiui/app/screenelement/Expression$FunctionExpression;->mParaExps:[Lmiui/app/screenelement/Expression;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lmiui/app/screenelement/Expression$FunctionExpression;->digit(II)I

    move-result v0

    int-to-double v0, v0

    goto/16 :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
