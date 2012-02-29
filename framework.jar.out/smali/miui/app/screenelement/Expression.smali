.class public abstract Lmiui/app/screenelement/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/Expression$1;,
        Lmiui/app/screenelement/Expression$FunctionExpression;,
        Lmiui/app/screenelement/Expression$BinaryExpression;,
        Lmiui/app/screenelement/Expression$UnaryExpression;,
        Lmiui/app/screenelement/Expression$NumberExpression;,
        Lmiui/app/screenelement/Expression$VariableExpression;,
        Lmiui/app/screenelement/Expression$Tokenizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"

.field private static mOperatorsPriority:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 509
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*/%"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/app/screenelement/Expression;->mOperatorsPriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method static synthetic access$000(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lmiui/app/screenelement/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lmiui/app/screenelement/Expression;->isDigitChar(C)Z

    move-result v0

    return v0
.end method

.method public static build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;
    .locals 8
    .parameter "exp"

    .prologue
    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 p0, 0x0

    .line 488
    .end local p0
    :goto_0
    return-object p0

    .line 420
    .restart local p0
    :cond_0
    new-instance v5, Lmiui/app/screenelement/Expression$Tokenizer;

    invoke-direct {v5, p0}, Lmiui/app/screenelement/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 421
    .local v5, tk:Lmiui/app/screenelement/Expression$Tokenizer;
    const/4 v3, 0x0

    .line 422
    .local v3, token:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    const/4 v1, 0x0

    .line 423
    .local v1, preToken:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 424
    .local v4, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/Expression$Tokenizer$Token;>;"
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 425
    .local v2, expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/Expression;>;"
    const/4 v0, 0x0

    .line 426
    .local v0, minus:Z
    :goto_1
    invoke-virtual {v5}, Lmiui/app/screenelement/Expression$Tokenizer;->getToken()Lmiui/app/screenelement/Expression$Tokenizer$Token;

    move-result-object v6

    .end local v3           #token:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    .local v6, token:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    if-eqz v6, :cond_6

    .line 430
    sget-object v3, Lmiui/app/screenelement/Expression$1;->$SwitchMap$miui$app$screenelement$Expression$Tokenizer$TokenType:[I

    iget-object v7, v6, Lmiui/app/screenelement/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    invoke-virtual {v7}, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_0

    .line 475
    .end local v1           #preToken:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    :goto_2
    move-object v1, v6

    .restart local v1       #preToken:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    move-object v3, v6

    .end local v6           #token:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    .restart local v3       #token:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    goto :goto_1

    .line 434
    .end local v3           #token:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    .restart local v6       #token:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    :pswitch_0
    const/4 v1, 0x0

    .line 435
    .local v1, newExp:Lmiui/app/screenelement/Expression;
    sget-object v3, Lmiui/app/screenelement/Expression$1;->$SwitchMap$miui$app$screenelement$Expression$Tokenizer$TokenType:[I

    iget-object v7, v6, Lmiui/app/screenelement/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    invoke-virtual {v7}, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_1

    :cond_1
    move-object v3, v1

    .line 449
    .end local v1           #newExp:Lmiui/app/screenelement/Expression;
    .local v3, newExp:Lmiui/app/screenelement/Expression;
    :goto_3
    if-eqz v0, :cond_9

    .line 450
    new-instance v1, Lmiui/app/screenelement/Expression$UnaryExpression;

    const-string v7, "-"

    invoke-direct {v1, v3, v7}, Lmiui/app/screenelement/Expression$UnaryExpression;-><init>(Lmiui/app/screenelement/Expression;Ljava/lang/String;)V

    .line 451
    .end local v3           #newExp:Lmiui/app/screenelement/Expression;
    .restart local v1       #newExp:Lmiui/app/screenelement/Expression;
    :goto_4
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 437
    :pswitch_1
    new-instance v1, Lmiui/app/screenelement/Expression$VariableExpression;

    .end local v1           #newExp:Lmiui/app/screenelement/Expression;
    iget-object v3, v6, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v1, v3}, Lmiui/app/screenelement/Expression$VariableExpression;-><init>(Ljava/lang/String;)V

    .restart local v1       #newExp:Lmiui/app/screenelement/Expression;
    move-object v3, v1

    .line 438
    .end local v1           #newExp:Lmiui/app/screenelement/Expression;
    .restart local v3       #newExp:Lmiui/app/screenelement/Expression;
    goto :goto_3

    .line 440
    .end local v3           #newExp:Lmiui/app/screenelement/Expression;
    .restart local v1       #newExp:Lmiui/app/screenelement/Expression;
    :pswitch_2
    new-instance v1, Lmiui/app/screenelement/Expression$NumberExpression;

    .end local v1           #newExp:Lmiui/app/screenelement/Expression;
    iget-object v3, v6, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v1, v3}, Lmiui/app/screenelement/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .restart local v1       #newExp:Lmiui/app/screenelement/Expression;
    move-object v3, v1

    .line 441
    .end local v1           #newExp:Lmiui/app/screenelement/Expression;
    .restart local v3       #newExp:Lmiui/app/screenelement/Expression;
    goto :goto_3

    .line 443
    .end local v3           #newExp:Lmiui/app/screenelement/Expression;
    .restart local v1       #newExp:Lmiui/app/screenelement/Expression;
    :pswitch_3
    invoke-static {v6, v4}, Lmiui/app/screenelement/Expression;->buildBracket(Lmiui/app/screenelement/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    .line 444
    if-nez v1, :cond_1

    .line 445
    const/4 p0, 0x0

    goto :goto_0

    .line 454
    .local v1, preToken:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    :pswitch_4
    iget-object v0, v6, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .end local v0           #minus:Z
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_2

    iget-object v0, v1, Lmiui/app/screenelement/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    sget-object v1, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->OPE:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    .end local v1           #preToken:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    if-ne v0, v1, :cond_4

    .line 456
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #minus:Z
    goto :goto_2

    .line 463
    .end local v0           #minus:Z
    :cond_3
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/Expression;

    .line 464
    .local v1, exp2:Lmiui/app/screenelement/Expression;
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/Expression;

    .line 465
    .local v0, exp1:Lmiui/app/screenelement/Expression;
    new-instance v7, Lmiui/app/screenelement/Expression$BinaryExpression;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    iget-object v3, v3, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v3}, Lmiui/app/screenelement/Expression$BinaryExpression;-><init>(Lmiui/app/screenelement/Expression;Lmiui/app/screenelement/Expression;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v0           #exp1:Lmiui/app/screenelement/Expression;
    .end local v1           #exp2:Lmiui/app/screenelement/Expression;
    :cond_4
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v1, v6, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    iget-object v0, v0, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v1, v0}, Lmiui/app/screenelement/Expression;->cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 459
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 460
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to buid: invalid operation position:"

    .end local v2           #expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/Expression;>;"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 467
    .restart local v2       #expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/Expression;>;"
    .restart local p0
    :cond_5
    invoke-virtual {v4, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, minus:Z
    goto/16 :goto_2

    .line 472
    .local v1, preToken:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    :pswitch_5
    invoke-virtual {v4, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 478
    :cond_6
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    .end local v0           #minus:Z
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v1

    .end local v1           #preToken:Lmiui/app/screenelement/Expression$Tokenizer$Token;
    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_7

    .line 479
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to buid: invalid expression:"

    .end local v2           #expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/Expression;>;"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 483
    .restart local v2       #expStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/Expression;>;"
    .restart local p0
    :cond_7
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/screenelement/Expression;

    .local p0, exp2:Lmiui/app/screenelement/Expression;
    move-object v0, p0

    .line 484
    .end local p0           #exp2:Lmiui/app/screenelement/Expression;
    .local v0, exp2:Lmiui/app/screenelement/Expression;
    :goto_5
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 485
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/app/screenelement/Expression;

    .line 486
    .local p0, exp1:Lmiui/app/screenelement/Expression;
    new-instance v1, Lmiui/app/screenelement/Expression$BinaryExpression;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    iget-object v3, v3, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v3}, Lmiui/app/screenelement/Expression$BinaryExpression;-><init>(Lmiui/app/screenelement/Expression;Lmiui/app/screenelement/Expression;Ljava/lang/String;)V

    .end local v0           #exp2:Lmiui/app/screenelement/Expression;
    .local v1, exp2:Lmiui/app/screenelement/Expression;
    move-object v0, v1

    .line 487
    .end local v1           #exp2:Lmiui/app/screenelement/Expression;
    .restart local v0       #exp2:Lmiui/app/screenelement/Expression;
    goto :goto_5

    .end local p0           #exp1:Lmiui/app/screenelement/Expression;
    :cond_8
    move-object p0, v0

    .line 488
    goto/16 :goto_0

    .local v0, minus:Z
    .restart local v3       #newExp:Lmiui/app/screenelement/Expression;
    .local p0, exp:Ljava/lang/String;
    :cond_9
    move-object v1, v3

    .end local v3           #newExp:Lmiui/app/screenelement/Expression;
    .local v1, newExp:Lmiui/app/screenelement/Expression;
    goto/16 :goto_4

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 435
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static buildBracket(Lmiui/app/screenelement/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/app/screenelement/Expression;
    .locals 5
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/app/screenelement/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/app/screenelement/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/app/screenelement/Expression;"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lmiui/app/screenelement/Expression$Tokenizer$Token;>;"
    iget-object v2, p0, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v2}, Lmiui/app/screenelement/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/app/screenelement/Expression;

    move-result-object v1

    .line 496
    .local v1, newExps:[Lmiui/app/screenelement/Expression;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/app/screenelement/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    sget-object v3, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->FUN:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    if-ne v2, v3, :cond_0

    .line 497
    new-instance v3, Lmiui/app/screenelement/Expression$FunctionExpression;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lmiui/app/screenelement/Expression$FunctionExpression;-><init>([Lmiui/app/screenelement/Expression;Ljava/lang/String;)V

    move-object v2, v3

    .line 506
    :goto_0
    return-object v2

    .line 498
    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 499
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 502
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 505
    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :cond_1
    const-string v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/screenelement/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static buildMultiple(Ljava/lang/String;)[Lmiui/app/screenelement/Expression;
    .locals 7
    .parameter "exp"

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, bracketCount:I
    const/4 v5, 0x0

    .line 397
    .local v5, start:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/screenelement/Expression;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 399
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 400
    .local v1, c:C
    if-nez v0, :cond_0

    .line 401
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_0

    .line 402
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v5, v3, 0x1

    .line 406
    :cond_0
    const/16 v6, 0x28

    if-ne v1, v6, :cond_2

    .line 407
    add-int/lit8 v0, v0, 0x1

    .line 398
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :cond_2
    const/16 v6, 0x29

    if-ne v1, v6, :cond_1

    .line 409
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 412
    .end local v1           #c:C
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Lmiui/app/screenelement/Expression;

    .line 414
    .local v4, ret:[Lmiui/app/screenelement/Expression;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lmiui/app/screenelement/Expression;

    return-object p0
.end method

.method private static cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "op1"
    .parameter "op2"

    .prologue
    .line 512
    invoke-static {p0}, Lmiui/app/screenelement/Expression;->getPriority(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lmiui/app/screenelement/Expression;->getPriority(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getPriority(Ljava/lang/String;)I
    .locals 2
    .parameter "op"

    .prologue
    .line 516
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lmiui/app/screenelement/Expression;->mOperatorsPriority:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 517
    sget-object v1, Lmiui/app/screenelement/Expression;->mOperatorsPriority:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    move v1, v0

    .line 520
    :goto_1
    return v1

    .line 516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static isDigitChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 390
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 386
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract evaluate(Lmiui/app/screenelement/Variables;)D
.end method
