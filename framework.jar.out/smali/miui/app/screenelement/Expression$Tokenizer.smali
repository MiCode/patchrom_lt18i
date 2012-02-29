.class Lmiui/app/screenelement/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/Expression$Tokenizer$Token;,
        Lmiui/app/screenelement/Expression$Tokenizer$TokenType;
    }
.end annotation


# instance fields
.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lmiui/app/screenelement/Expression$Tokenizer;->reset()V

    .line 49
    return-void
.end method


# virtual methods
.method public getToken()Lmiui/app/screenelement/Expression$Tokenizer$Token;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7a

    const/16 v7, 0x61

    const-string v10, "Expression"

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, bracketCount:I
    const/4 v1, -0x1

    .line 58
    .local v1, bracketStart:I
    iget v3, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mPos:I

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 59
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 61
    .local v2, c:C
    if-nez v0, :cond_a

    .line 62
    const/16 v5, 0x23

    if-ne v2, v5, :cond_3

    .line 65
    add-int/lit8 v4, v3, 0x1

    .local v4, j:I
    :goto_1
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 66
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    #calls: Lmiui/app/screenelement/Expression;->isVariableChar(C)Z
    invoke-static {v5}, Lmiui/app/screenelement/Expression;->access$000(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    :cond_0
    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_2

    .line 70
    const-string v5, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid variable name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 115
    .end local v2           #c:C
    .end local v4           #j:I
    :goto_2
    return-object v5

    .line 65
    .restart local v2       #c:C
    .restart local v4       #j:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    :cond_2
    iput v4, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mPos:I

    .line 74
    new-instance v5, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    sget-object v6, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->VAR:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    iget-object v7, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lmiui/app/screenelement/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/Expression$Tokenizer;Lmiui/app/screenelement/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 75
    .end local v4           #j:I
    :cond_3
    const/16 v5, 0x30

    if-lt v2, v5, :cond_6

    const/16 v5, 0x39

    if-gt v2, v5, :cond_6

    .line 78
    add-int/lit8 v4, v3, 0x1

    .restart local v4       #j:I
    :goto_3
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 79
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    #calls: Lmiui/app/screenelement/Expression;->isDigitChar(C)Z
    invoke-static {v5}, Lmiui/app/screenelement/Expression;->access$100(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 82
    :cond_4
    iput v4, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mPos:I

    .line 83
    new-instance v5, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    sget-object v6, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->NUM:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    iget-object v7, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lmiui/app/screenelement/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/Expression$Tokenizer;Lmiui/app/screenelement/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 84
    .end local v4           #j:I
    :cond_6
    if-lt v2, v7, :cond_9

    if-gt v2, v8, :cond_9

    .line 87
    add-int/lit8 v4, v3, 0x1

    .restart local v4       #j:I
    :goto_4
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 88
    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_7

    iget-object v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v8, :cond_8

    .line 91
    :cond_7
    iput v4, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mPos:I

    .line 92
    new-instance v5, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    sget-object v6, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->FUN:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    iget-object v7, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lmiui/app/screenelement/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/Expression$Tokenizer;Lmiui/app/screenelement/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 93
    .end local v4           #j:I
    :cond_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/app/screenelement/Expression$BinaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    move-result-object v5

    sget-object v6, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    if-eq v5, v6, :cond_a

    .line 95
    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mPos:I

    .line 96
    new-instance v5, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    sget-object v6, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->OPE:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lmiui/app/screenelement/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/Expression$Tokenizer;Lmiui/app/screenelement/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :cond_a
    const/16 v5, 0x28

    if-ne v2, v5, :cond_d

    .line 101
    if-nez v0, :cond_b

    .line 102
    add-int/lit8 v1, v3, 0x1

    .line 103
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 104
    :cond_d
    const/16 v5, 0x29

    if-ne v2, v5, :cond_c

    .line 105
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_c

    .line 106
    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mPos:I

    .line 107
    new-instance v5, Lmiui/app/screenelement/Expression$Tokenizer$Token;

    sget-object v6, Lmiui/app/screenelement/Expression$Tokenizer$TokenType;->BRACKET:Lmiui/app/screenelement/Expression$Tokenizer$TokenType;

    iget-object v7, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lmiui/app/screenelement/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/Expression$Tokenizer;Lmiui/app/screenelement/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    .end local v2           #c:C
    :cond_e
    if-eqz v0, :cond_f

    .line 113
    const-string v5, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mismatched bracket:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object v5, v9

    .line 115
    goto/16 :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/screenelement/Expression$Tokenizer;->mPos:I

    .line 53
    return-void
.end method
